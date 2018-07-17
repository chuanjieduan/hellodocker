FROM maven:3.5.4-jdk-8
ADD pom.xml pom.xml
ADD src/ src/
RUN mvn clean package
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]