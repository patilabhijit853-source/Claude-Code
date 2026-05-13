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
### Screenshots
<img width="1920" height="1080" alt="Screenshot (48)" src="https://github.com/user-attachments/assets/86b0766a-8b59-4efa-8f9c-8efa1ba9a378" />
<img width="1920" height="1080" alt="Screenshot (49)" src="https://github.com/user-attachments/assets/1abfe841-20e2-456e-a86a-292be8efc95b" />
<img width="1920" height="1080" alt="Screenshot (50)" src="https://github.com/user-attachments/assets/88b49cd0-9857-4dd0-b16c-e70467e32e9d" />

