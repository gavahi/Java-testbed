FROM eclipse-temurin:8-jre-alpine

EXPOSE 8080

# Copy whatever JAR Gradle built and rename to app.jar
COPY build/libs/*.jar /usr/app/app.jar
WORKDIR /usr/app

# Use the renamed JAR in ENTRYPOINT
ENTRYPOINT ["java", "-jar", "app.jar"]
