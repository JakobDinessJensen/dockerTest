# Use an official OpenJDK image
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy current directory contents into container
COPY src ./src

# Compile the Java code
RUN javac src/Main.java

# Define the command to run the app
CMD ["java", "-cp", "src", "Main"]
