# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app

# Copy all JAR files from the target directory
#COPY $(System.DefaultWorkingDirectory)/target/my-artifact/demo-0.0.1-SNAPSHOT.jar /app/
COPY . /app

# Set environment variables
ENV AppName=${AppName}
ENV PortNumber=${PortNumber}
ENV mysql=${mysql}
ENV username=${username}
ENV password=${password}

# Specify the command to run on container start
cd my-artifact
CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]
