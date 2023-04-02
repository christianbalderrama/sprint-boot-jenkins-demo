# Use a base image with Java installed
FROM adoptopenjdk/openjdk17:alpine-jre

# Set the working directory in the container
WORKDIR /app

# Copy the Spring Boot application to the container
COPY target/myapp.jar app.jar

# Expose the port that the application will run on
EXPOSE 8080

# Start the Spring Boot application when the container starts
ENTRYPOINT ["java", "-jar", "app.jar"]
