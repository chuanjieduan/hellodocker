FROM maven:3.5.4-jdk-8
ADD pom.xml pom.xml
ADD src/ src/
RUN mvn clean package
COPY target/hellodocker-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]