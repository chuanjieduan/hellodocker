FROM java:8
ADD /target/hellodocker.jar hellodocker.jar
EXPOSE 8080
CMD ["java", "-jar", "hellodocker.jar"]