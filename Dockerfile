# Use an official Tomcat image as a parent image
FROM tomcat:9.0-jdk11-openjdk-slim

# Maintainer
LABEL maintainer="yourname@example.com"

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file to Tomcat's webapps directory
COPY target/mywebapp.war /usr/local/tomcat/webapps/mywebapp.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]
