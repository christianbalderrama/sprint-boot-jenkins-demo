# Use a base image with Java installed
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the Spring Boot application to the container
COPY /build/libs/demo.jar demo.jar

# Expose the port that the application will run on
EXPOSE 8080

# Start the Spring Boot application when the container starts
ENTRYPOINT ["java", "-jar", "demo.jar"]
