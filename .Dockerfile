FROM openjdk:8-jdk-alpine
RUN addgroup -S spring && adduser -S pessoa -G pessoa
USER pessoa:pessoa
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]