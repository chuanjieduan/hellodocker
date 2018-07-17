FROM java:8
VOLUME /tmp
ADD hellodocker.jar /tmp/
WORKDIR /tmp/
EXPOSE 8080
CMD ["java", "-jar", "hellodocker.jar"]