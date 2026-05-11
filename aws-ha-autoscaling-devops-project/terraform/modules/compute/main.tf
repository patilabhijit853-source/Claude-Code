variable "vpc_id" { type = string }
variable "private_subnets" { type = list(string) }
variable "security_group_id" { type = string }
variable "target_group_arn" { type = string }
variable "instance_type" { type = string }
variable "project_name" { type = string }

data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_launch_template" "main" {
  name_prefix            = "${var.project_name}-lt-"
  image_id               = data.aws_ami.amazon_linux_2.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [var.security_group_id]

  user_data = base64encode(file("${path.root}/../scripts/user-data.sh"))

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "main" {
  name                = "${var.project_name}-asg"
  vpc_zone_identifier = var.private_subnets
  target_group_arn    = var.target_group_arn
  min_size            = 2
  max_size            = 4
  desired_capacity   = 2

  launch_template {
    id      = aws_launch_template.main.id
    version = "$Latest"
  }

  tag {
    key                                 = "Name"
    value                               = "${var.project_name}-asg-instance"
    propagate_at_launch                 = true
  }
}

# Target Tracking Scaling Policy: Average CPU Utilization
resource "aws_autoscaling_policy" "cpu_tracking" {
  name                   = "${var.project_name}-cpu-tracking"
  autoscaling_group_name = aws_autoscaling_group.main.name
  policy_type            = "TargetTrackingScaling"

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 50.0 # Target 50% CPU utilization
  }
}
