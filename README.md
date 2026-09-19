# Weather Monitoring & Alert System

A robust, containerized weather data pipeline designed to ingest, store, and visualize atmospheric metrics. This project demonstrates a full DevOps lifecycle, from automated CI/CD deployment to real-time observability using the Prometheus-Grafana stack.



## Project Overview
This application fetches and processes weather metrics, storing them in a structured PostgreSQL database. It is built with a focus on **observability**, allowing engineers to analyze environmental fluctuations through high-fidelity dashboards and automated alerting.

### Key Features
* **Persistent Storage:** PostgreSQL integration for long-term metric logging and historical analysis.
* **Real-time Observability:** Custom Prometheus exporters configured for seamless metric scraping.
* **Visual Analytics:** Dynamic Grafana dashboards monitoring temperature, humidity, and pressure trends.
* **Containerization:** Fully Dockerized components ensuring environment parity across development and production.
* **CI/CD Pipeline:** Automated build and deployment workflows managed via Jenkins.

---

## Tech Stack

| Category | Tools Used |
| :--- | :--- |
| **Database** | PostgreSQL |
| **Monitoring** | Prometheus |
| **Visualization** | Grafana |
| **Containerization**| Docker & Docker Compose |
| **CI/CD** | Jenkins |

---

## Architecture & Data Flow

1.  **Ingestion Stage:** The application core fetches data from external weather providers and commits structured records to the **PostgreSQL** database.
2.  **Exposition Stage:** A dedicated metrics exporter pulls data from the database, translating it into a format compatible with **Prometheus** scraping intervals.
3.  **Visualization Stage:** **Grafana** connects to Prometheus as a data source to render real-time time-series graphs and health indicators.
4.  **Automation Stage:** Code commits trigger a **Jenkins** pipeline that rebuilds the **Docker** images and updates the running containers automatically.



---

## DevOps & Monitoring Insights
As a Monitoring Analyst, my focus was on turning raw environmental data into actionable system insights:
* **Threshold Monitoring:** Configured Prometheus alert rules to detect and notify on extreme weather anomalies.
* **Performance Analysis:** Utilized dashboard data to identify correlation patterns in fluctuations and ensure maximum system uptime.
* **Dashboard Design:** Developed intuitive Grafana layouts including heatmaps and time-series graphs for historical trend analysis.

---

## Deployment & CI/CD Workflow
The project follows a modern DevOps workflow to ensure rapid and reliable updates:
* **Source Control:** Version-controlled code hosted on Git.
* **Automated Pipeline:** The Jenkinsfile defines stages for checking out code, building Docker images, and verifying database connectivity.
* **Service Orchestration:** Docker Compose manages the multi-container environment, handling networking between the database, application, and monitoring tools.

---

##  Future Enhancements
* **Scalability:** Transitioning the stack to Kubernetes (K8s) for improved orchestration and scaling.
* **Advanced Alerting:** Integrating Prometheus Alertmanager with Slack or Email for instant incident response.
* **Automated Testing:** Expanding the CI/CD pipeline to include automated unit and integration testing.
