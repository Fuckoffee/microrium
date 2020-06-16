FROM openjdk:14-alpine
COPY target/microrium-*.jar microrium.jar
EXPOSE 8080
CMD ["java", "-Dcom.sun.management.jmxremote", "-Xmx128m", "-jar", "microrium.jar"]