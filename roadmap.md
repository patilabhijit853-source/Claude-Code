# Portfolio Website Development Roadmap

## Phase 1: Static Presence (Current)
- [x] GitHub project analysis and curation.
- [x] Professional corporate-style frontend (HTML/CSS/JS).
- [x] Dockerization with Nginx.
- [ ] ngrok public exposure.

## Phase 2: Dynamic Backend Integration (Future)
- **Goal**: Transition from static content to API-driven content.
- **Backend**: Implementation of a lightweight API (Node.js/Express or Python/FastAPI).
- **Database**: Integration of a database (PostgreSQL or MongoDB) to store:
    - Project details and descriptions.
    - Blog posts or case studies.
    - Contact form submissions.
- **Frontend Update**: Refactor `index.html` to fetch data via `fetch()` API from the new backend.

## Phase 3: Administration & Optimization (Future)
- **CMS**: Build a secure admin dashboard to manage projects without manual code updates.
- **CI/CD**: Full automation using GitHub Actions to deploy the Docker image to a cloud provider (AWS/Azure/GCP).
- **Observability**: Add basic analytics to track visitor engagement.
- **Advanced UX**: Implement a "Dark Mode" toggle and advanced animations.
