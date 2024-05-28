# Setup

### Setting up Prometheus and Grafana
To set up Prometheus and Grafana for server monitoring, its essential that the server to be monitored and the monitoring system are within the same network.


### Prometheus Setup
* Prometheus is configured through a YAML file, typically named prometheus.yml
* This file includes various sections such as global configuration, alerting rules, and scrape configs. It also requires a rules-file generally (alert.rules.yml) where all the alerting rules are expressed in promQL which are evaluated periodically to check system health and trigger alerts.
* In prometheus.yml file
    1. Global section defines global configuration options that apply
 to the entire Prometheus instance. 
    2. scrape-interval sets the
 interval at which Prometheus will scrape (collect) metrics from
 the configured targets and evaluation-interval determines how
 often Prometheus will evaluate rules and update the alerting
 status. 
    3. Scrape-config defines the configurations for scraping
 metrics from specific targets. 
    4. Prometheus scrapes metrics from a application and prometheus itself on host.docker.internal:3005 and host.docker.internal:9090 respectively is configured to send alerts to Alertmanager running on host.docker.internal:9093. 

* Alerting defines configurations related to alerting.
    1. Alertmanager specifies the Alertmanager
 instances that Prometheus will send alerts to. 
    2. Static-config allows statically configuring the targets for Alertmanager instances. 
    3. target is set to host.docker.internal on port 9093, indicating that the alerts will be sent to the Alertmanager running on this address.

* Note: host.docker.internal needs to be replaced by the appropriate ip address of the repsective services.


### Alertmanager Setup
* alertmanager.yml provides a yaml configuration file which includes (global, routes, receiver, etc) configuration settings.
    1. Global section defines global configuration options that apply to the entire Alertmanager instance.
    2. Resolve-timeout sets the timeout duration for resolving alerts. If an alert remains active for longer than this duration, it will be considered resolved.
    3. Route specifies the routing configuration for incoming alerts.
    4. group-by defines how alerts should be grouped. Alerts with the same name and severity will be grouped together. 
    5. group wait determines how long Alertmanager should wait beforegrouping alerts together. 
    6. group-interval specifies the interval at which Alertmanager should group. 
    7. repeat-interval sets the interval at which Alertmanager should resend notifications for the same alert. 
    8. Receivers in alert manager is a configuration entity that defines how alerts are routed and where notifications are sent when triggered by an alerting system. Each receiver has a unique name and is associated with specific notification setting (email).
    9.  Alertmanager.yaml file dictates how to configure route and receiver for conveying alerts through emails. SMTP server and port used for sending emails are dictated by smarthost configuration.
    10. Auth-username specifies the username used for authenticating with the SMTP server. Its typically the same as the email address. 
    11. Auth-password would normally contain the password associated with the auth-username for authentication. 
    12. Auth-identity specifies the identity used for authentication, which is often the same as the auth-username.

### Grafana Setup
*  For creating a dashboard, firstly we need to specify the
 appropriate datasource (Prometheus Data source). 
* Then we need to run a prometheus query consisting of either raw metrics (exported metrics) or performing operations on these
 raw metrics of which results can be visualized in (time series graphs, bar graph, histogram, stats, etc).

### Alert Rules Setup
* alert.rules.yml file sets up Prometheus alerts for detecting down instances, high CPU usage, and high request rates, ensuring prompt notifications for maintaining system health and performance.

* This configuration file defines alerting rules for monitoring system health and performance using Prometheus.

* Groups: The groups section contains one or more alerting rule groups. Each group has a name and a list of rules.

* Group Name: The name assigned to the group of alerting rules.

* Rules: The rules section within a group defines individual alerting rules.

* Alerting Rule Components:
   1. alert: The name of the alert.
   2. expr: The PromQL expression that evaluates whether the alert should be triggered.
   3. for: The duration for which the condition must be true before the alert is fired.
   4. labels: Metadata associated with the alert, typically used for categorization or routing (e.g., severity).
   5. annotations: Additional information provided with the alert, such as a summary or description.

* InstanceDown: Triggers a critical alert if any instance is unreachable (up == 0) for 10 seconds.
* HighCpuUsage: Triggers a warning alert if CPU usage exceeds 90% for 1 minute, indicating high CPU load.
* HighRequestRate: Triggers a warning alert if the request rate for BE_Project exceeds 0.4 requests per second for 1 minute, indicating high traffic.