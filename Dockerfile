# Use an OpenJDK 17 base image
FROM openjdk:17-jdk-slim

# Copy the compiled Java web application (JAR file) into the Docker image
COPY target/demo-0.0.1-SNAPSHOT.jar /


# Expose the port that your Java application runs on
EXPOSE 8080

# Define the entry point for your application
ENTRYPOINT ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]