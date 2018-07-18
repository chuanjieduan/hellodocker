FROM maven:3.5.4-jdk-8
ENV MY_HOME=/tmp
RUN mkdir -p $MY_HOME
WORKDIR $MY_HOME
ADD pom.xml $MY_HOME
ADD . $MY_HOME
RUN mvn clean package
COPY $MY_HOME/target/hellodocker-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]