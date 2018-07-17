FROM openjdk:8-jdk-alpine
ADD pom.xml pom.xml
ADD src/ src/
RUN apt-get install -y maven && \
    mvn clean package
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]