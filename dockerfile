FROM adoptopenjdk:11-jre-hotspot
VOLUME /tmp
ADD target/*.jar app.jar
EXPOSE 8091
CMD ["java", "-jar", "app.jar", "--spring.profiles.active=prod"]
