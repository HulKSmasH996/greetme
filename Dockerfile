# Use an official Java runtime as a parent image
FROM openjdk:17-jdk-slim as builder

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the local machine to the container
COPY build/libs/microservice-example-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the port your Spring Boot app will run on (default is 8080)
EXPOSE 8080

# Set the command to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
