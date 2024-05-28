# Basic Usage

### Using Client
* Access the client UI: [http://localhost:3000](http://localhost:3000)
* Interact with the particular UI to access a particular service.

### Using Prometheus
* Access the prometheus UI: [http://localhost:9090](http://localhost:9090).
* Example query: `up{job="node_exporter"}` to see if node exporter is up and running.
* Enter queries like the above to analyse the different metrics.

### Using Grafana
* Login to Grafana either using default credentials (username: admin, password: admin) or by creating an account.
* Create a dashboard:
    1. Go to `Create -> Dashboard`.
    2. Add a new panel with a Prometheus data source.
    3. Example Query: `node_cpu_seconds_total` to visualize CPU usage.
* Receiving alerts: Alerts are configured to be sent to your email. Ensure your email configuration in `alertmanager.yml` is correct.

# Advanced Usage
* Create custom dashboards tailored to your specific metrics and monitoring needs.
* Run direct SQL queries by attaching your local terminal with the database docker container by using the command `docker attach <container-id>`.
Note: you have to find the appropriate container id of the database and replace it in the command.
Run the command `mysql -u <username> -p` and enter the password in the prompt that follows. You can login as root user by entering both username and passoword as 'root'.