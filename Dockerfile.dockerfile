# Use a base image with OpenJDK 17 and Maven pre-installed
FROM maven:3.8.4-openjdk-17 AS build

# Set the working directory in the container
WORKDIR /app

# Copy the application source code to the container
COPY . .

# Build the Spring PetClinic application using Maven
RUN mvn clean install -DskipTests

# Use a lightweight base image with OpenJDK 17 to run the application
FROM openjdk:17

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the build stage
COPY --from=build /app/target/spring-petclinic-*.jar app.jar

# Expose the application's port (adjust this if needed)
EXPOSE 8080

# Start the application when the container starts
CMD ["java", "-jar", "app.jar"]
