FROM openjdk:latest

# Set the working directory to /app
WORKDIR /app

#RUN mvn clean package

# Copy the JAR file to the container
COPY workspace/source/target/spring-petclinic-*.jar app.jar

# Expose port 8080 for the container
EXPOSE 8080

# Set the command to run the JAR file
CMD ["java", "-jar", "app.jar"]