FROM openjdk:11.0.4-jre-slim
#за основу взята 11 версия джавы
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]