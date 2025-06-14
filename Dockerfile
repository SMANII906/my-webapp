# Base image with Tomcat
FROM tomcat:9.0

# Remove default ROOT application (optional)
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy WAR file to Tomcat's webapps directory
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose default Tomcat port
EXPOSE 8081

# Start Tomcat
CMD ["catalina.sh", "run"]
