# Project Title
Application Monitoring using Prometheus and Grafana

## Introduction
Monitoring the performance and health of web applications is crucial to ensure reliability and optimal user experience. This project provides a comprehensive solution to monitor a full-stack web application consisting of a Node.js server, MySql database and a React client, with Nginx acting as a reverse proxy. We utilize Prometheus for collecting and storing metrics, and Grafana for visualizing these metrics through informative dashboards. Additionally, Alertmanager is set up to send email notifications for any critical issues that arise.

### Key Components
- **Node.js Server:** A backend server that handles API requests and business logic.
- **React Client:** A frontend application that interacts with the backend and provides a user interface.
- **MySql database:** A database management system used to store all the required data, which is queried by the server.
- **Nginx:** A high-performance web server that serves the React application and acts as a reverse proxy to the Node.js server.
- **Prometheus:** An open-source systems monitoring and alerting toolkit that collects metrics from configured targets at given intervals.
- **Grafana:** An open-source platform for monitoring and observability that allows you to visualize the metrics collected by Prometheus.
- **Node Exporter:** A Prometheus exporter for hardware and OS metrics exposed by Linux kernels, to monitor the server running the Node.js application.
- **Alertmanager:** A component of Prometheus that handles alerts sent by client applications, such as the Prometheus server, and can send notifications via email.

### Objectives
- **Monitor System Health:** Track and visualize the performance metrics of the Node.js server and React client.
- **Set Up Alerts:** Configure alerts to notify administrators of any critical issues or performance bottlenecks.
- **Ensure High Availability:** Maintain high availability and reliability of the web application through proactive monitoring and alerting.

By following this guide, you will set up a robust monitoring infrastructure that provides deep insights into your application's performance and helps you maintain a reliable service for your users.

### Architecture Diagram
Below is an architecture diagram that illustrates the components and their interactions in this monitoring setup:

![Architecture Diagram](https://miro.medium.com/v2/resize:fit:1400/1*p5P9bpsI_0Qx6ZF9aQ3gtQ.png)

## Table of Contents
- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Installation Guide](/installation_guide.md)
- [Quick Start](/installation_guide.md#quick-start)
- [Project Structure](/installation_guide.md#project-structure)
- [Setup](/setup.md)
- [Usage](/usage.md)

## Prerequisites
Before you start with the installation and setup, make sure you have the following prerequisites:

1. **Docker and Docker Compose**
   - Ensure Docker is installed on your machine. You can download Docker from [here](https://www.docker.com/get-started).
   - Docker Compose should also be installed. It usually comes with Docker Desktop, but you can verify its installation by running:
     `docker-compose --version`

2. **Basic Understanding of the Following Technologies**
   - **Node.js:** Familiarity with setting up and running a Node.js server.
   - **React:** Basic knowledge of creating and managing a React application.
   - **Nginx:** Understanding of Nginx configuration, especially as a reverse proxy.
   - **MySQL:** Knowledge of setting up and interacting with a MySQL database.
   - **Docker:** Basic operations of Docker such as building images and running containers.

3. **Email Account for Receiving Alerts**
   - An email account that can be used to receive alerts from Alertmanager. This could be a Gmail account or any other email service that supports SMTP.

4. **Prometheus and Grafana**
   - No prior experience required, but a basic understanding of what Prometheus and Grafana are will be helpful. Prometheus is used for monitoring and alerting, and Grafana is used for visualization of the metrics collected by Prometheus.

