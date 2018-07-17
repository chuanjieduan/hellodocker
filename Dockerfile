FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD pom.xml
ADD src/
RUN apt-get install -y maven && \
    mvn clean package
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]