FROM maven:3.9.9-eclipse-temurin-21

COPY . /app

WORKDIR /app

RUN mvn clean package

RUN mkdir build 

RUN mv target/dockermastery-0.0.1-SNAPSHOT.jar build/

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "build/dockermastery-0.0.1-SNAPSHOT.jar"]
