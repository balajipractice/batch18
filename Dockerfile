# Use OpenJDK 17 Alpine as base image
FROM openjdk:17-jdk-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy built JAR file into image
COPY target/simple-java-app-1.0.jar simple-java-app.jar

# Expose port 8080
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "simple-java-app.jar"]
