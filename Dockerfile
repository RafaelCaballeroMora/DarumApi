# Use the specified base image
FROM maven:3.9.6-eclipse-temurin-17-alpine as install

# Set the working directory inside the container
WORKDIR /installFolder

# Copy all project files
COPY . /installFolder

# Set the environment variable
ARG DARUMA_FIREBASE_JSON=

# Write the contents of the JSON environment variable to a file
RUN echo $DARUMA_FIREBASE_JSON > /installFolder/src/main/resources/firebase.json

RUN mvn clean install

# Use the specified base image
FROM eclipse-temurin:17-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file from the host into the container
COPY --from=install /installFolder/target/Daruma-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the container port
EXPOSE 8080

# Set environment variables
ENV SPRING_DATASOURCE_URL= 

# Set the command to run the JAR file with the specified Spring profile
CMD ["sh", "-c", "java -jar -Dspring.profiles.active=prod /app/app.jar"]
