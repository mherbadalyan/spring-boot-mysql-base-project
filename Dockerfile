#FROM openjdk:17.0.2-slim
#VOLUME /main-app
#ADD build/libs/spring-boot-mysql-base-project-0.0.1-SNAPSHOT.jar app.jar
#EXPOSE 8080
#ENTRYPOINT ["java", "-jar","/app.jar"]

FROM gradle:jdk17-focal as cache
RUN mkdir -p /home/gradle/cache
ENV GRADLE_USER_HOME /home/gradle/cache
WORKDIR /home/gradle/app
COPY build.gradle settings.gradle /home/gradle/app/
RUN gradle init -i --stacktrace

FROM gradle:jdk17-focal as builder
COPY --from=cache /home/gradle/cache /home/gradle/.gradle
COPY ./ /opt/app
WORKDIR /opt/app
RUN gradle build

FROM openjdk:17.0.2-slim
COPY --from=builder /opt/app/build/libs/*-SNAPSHOT.jar /deployments/app-run.jar
EXPOSE 8080
ENTRYPOINT java -jar /deployments/app-run.jar