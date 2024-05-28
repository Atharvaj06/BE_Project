# Use a MySQL base image
FROM mysql:latest

# Set environment variables
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=docapp
ENV MYSQL_USER=atharva
ENV MYSQL_PASSWORD=1234

# Copy the SQL dump file into the container
COPY backup.sql /docker-entrypoint-initdb.d/

# Expose MySQL port
EXPOSE 3306
