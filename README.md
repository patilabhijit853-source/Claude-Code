# DevOps Portfolio Website

A professional corporate-style portfolio website designed to showcase a comprehensive DevOps skill set, featuring curated projects and technical expertise.

## 🚀 Project Overview
This project is a static portfolio website that serves as a central hub for my DevOps work. It is built with a focus on performance, simplicity, and professionalism to effectively communicate technical capabilities to recruiters and technical managers.

### Key Features
- **Professional Design**: Clean, corporate-style UI built with vanilla HTML, CSS, and JavaScript.
- **Containerized**: Fully Dockerized using Nginx for consistent deployment and high performance.
- **Curated Showcases**: Highlights key projects including:
    - CI/CD Automation pipelines.
    - AWS Infrastructure as Code (Terraform).
    - Kubernetes & Container orchestration.
    - Comprehensive DevOps Tooling.

## 🛠 Tech Stack
- **Frontend**: HTML5, CSS3, JavaScript (Vanilla)
- **Web Server**: Nginx
- **Virtualization**: Docker

## 📂 Project Structure
- `assets/`: Contains CSS, JS, and images.
- `decisions/`: Documentation of architectural and tech stack decisions.
- `Dockerfile`: Configuration for the Nginx container.
- `nginx.conf`: Custom Nginx configuration for optimized delivery.

## 🗺 Roadmap
- [x] **Phase 1: Static Presence** - Professional frontend and Dockerization.
- [ ] **Phase 2: Dynamic Integration** - Transition to API-driven content with a lightweight backend (Node.js/Python) and database.
- [ ] **Phase 3: Administration & Optimization** - Admin dashboard, full CI/CD automation with GitHub Actions, and advanced UX features.

## ⚙️ Getting Started

### Prerequisites
- [Docker](https://www.docker.com/) installed on your machine.

### Running the Project
1. Clone the repository:
   ```bash
   git clone https://github.com/patilabhijit853-source/Claude-Code.git
   cd Claude-Code
   ```
2. Build the Docker image:
   ```bash
   docker build -t portfolio-website .
   ```
3. Run the container:
   ```bash
   docker run -d -p 80:80 --name portfolio-container portfolio-website
   ```
4. Open your browser and navigate to `http://localhost`.

---
*Developed as part of a continuous learning journey in DevOps Engineering.*
