FROM adoptopenjdk:11-jre-hotspot

WORKDIR /app

COPY target/hello-world-0.0.1-SNAPSHOT.jar hello-world.jar

EXPOSE 8080

CMD ["java", "-jar", "hello-world.jar"]
