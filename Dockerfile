# Start with a base image containing Java. OpenJDK 17 is a good choice for Spring Boot 3+.
FROM eclipse-temurin:17-jre-focal

# Set the working directory inside the container
WORKDIR /app

# Copy the executable JAR file from your target directory into the container's /app directory
# Make sure to replace 'todo-0.0.1-SNAPSHOT.jar' with the actual name of your JAR file.
# You can find the exact name in your 'target' directory after running 'mvn clean package'.
COPY target/basicTodo-0.0.1-SNAPSHOT.jar app.jar

# Expose the port that your Spring Boot application runs on.
# By default, Spring Boot runs on port 8080.
EXPOSE 8080

# Define the command to run your application when the container starts.
# Use 'java -jar' to execute the JAR file.
ENTRYPOINT ["java", "-jar", "app.jar"]