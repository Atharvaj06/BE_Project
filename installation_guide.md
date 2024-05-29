# Installation Guide

### Clone the Repository:

* To begin the installation process, clone the entire repository. You can use the following command:
`Git clone <repository_url>`
* Replace <repository_url> with the URL of the Git repository.


### Build and Run the Services:

Follow the following steps in order:

* Navigate to the directory 'server-monitor' and make required changes in the 'docker-compose.yml' file. For example, changing the name of the image used or changing the name of the container that should be formed. Making no changes will retain the default configuration.
Note: If an image with the given name exists, then docker will use the local image and build the container else it will search the docker hub for the image.

* Run the following command in the terminal of the current directory to start the process of downloading the images (if they do not exists locally) and creation of containers.
`docker compose up -d`

* Now navigate to the directory 'application' and follow the given steps for creating the images.

    1. Navigate to the directory 'client' and make required changes in the '.dockerfile'. This file helps docker to build the image with the specified configurations.

    2. Run the following command in the terminal in the current directory to build the image using the '.dockerfile'.
    `docker build -t <image-name> .`
    Give an appropriate name to the image and replace it in the command above. Also notice the dot at the end of the command.

    3. Repeat the above two steps for the remaining directories. (server, nginx and db).

    
* Docker Network Creation:
    1. Use the following command to create a Docker network
       `docker network create <network_name>`
    2. Replace <network_name> with a suitable name for your Docker network.
    Example, `docker network create my_network`

* Creating and Running container on the network:
    1. Start with the database container creation, running. Run the following command.
    `docker run --name <container_name> -p <host_port>:<container_port> --network <network_name> -d <image_name>`
    Replace <container_name> with the name of your database container that you wish to assign, <host_port> with the port you want to assign on your host machine, <container_port> with the port inside the Docker container, <network_name> with the name of the Docker network you created, and <image_name> with the name of the database image you built earlier.

    2. The next step is to configure the database. Our application requires the mysql_native_password authentication method. The command provided is used to alter the authentication method for a MySQL user to mysql_native_password. This ensures compatibility between your application and the database.
    `ALTER USER 'app_user'@'hostname' IDENTIFIED WITH mysql_native_password BY 'app_password';`
    In our case hostname = '%'.
    Note: hostname can also be found by following command -
    `SELECT Host FROM mysql.user WHERE User = 'username';`

    3. In our case, we need to create 2 procedures in the mysql database. Those procedures can be found in the 'db' directory. This step is completely optional in case you have used a different mysql dump file.

    4. Now we can create and run the server container, client container and nginx container(in order) in the same manner as mentioned in step 1.


# Quick Start

* Access the Application:
    1. Client: [http://localhost](http://localhost)
    2. This URL allows you to access the main application client. Simply enter it in your web browser to interact with the application.

* Access Prometheus:
    1. [http://localhost:9090](http://localhost:9090)
    2. Prometheus is a monitoring tool used to collect and display metrics. Accessing this URL in your browser allows you to view the Prometheus dashboard and monitor your application's performance.


* Access Grafana:
    1. [http://localhost:3000](http://localhost:3000)
    2. Grafana is a data visualization and monitoring tool often used with Prometheus. Visit this URL in your browser to access the Grafana dashboard. Default credentials are admin/admin.


* Access Alertmanager:

    1. [http://localhost:9093](http://localhost:9093)
    2. Alertmanager is a component of the Prometheus monitoring system used for alerting. You can access its interface by visiting this URL in your browser.

### Project Structure:

    server-monitor/
    ├── prometheus/       # Prometheus configuration
    ├── grafana/          # Grafana configuration
    ├── alertmanager/     # Alertmanager configuration
    ├── docker-compose.yml
    └── README.md

 
    application/
    ├── client/           # React client
    ├── server/           # Node.js server
    ├── nginx/            # Nginx configuration
    ├── database/               # DB configuration

