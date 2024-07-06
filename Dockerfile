FROM openjdk:11-jre-slim
COPY target/hello-world-0.0.1-SNAPSHOT.jar hello-world.jar
ENTRYPOINT ["java", "-jar", "/hello-world.jar"]