# Use a lightweight OpenJDK 17 base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled Spring Boot JAR file from the Maven build
# This assumes your Maven build creates a JAR named 'springboot-hello-world-0.0.1-SNAPSHOT.jar'
# which is typically found in the 'target' directory after 'mvn package'
COPY target/springboot-hello-world-0.0.1-SNAPSHOT.jar app.jar

# Expose the port on which the Spring Boot application runs (default is 8080)
EXPOSE 8080

# Command to run the Spring Boot application when the container starts
ENTRYPOINT ["java", "-jar", "app.jar"]