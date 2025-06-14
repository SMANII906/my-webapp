# Use official Java image
FROM openjdk:17-jdk-alpine
WORKDIR /app

# Copy built jar file
COPY target/*.jar app.jar

# Run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]
