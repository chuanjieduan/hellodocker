FROM openjdk:8-jdk-alpine
VOLUME /tmp
RUN yum install -y maven && \
    ls && \
    mvn clean package
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]