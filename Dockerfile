FROM openjdk:21

WORKDIR /app

COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

RUN ./mvnw package -DskipTests

ARG JAR_FILE=target/*.jar

CMD java -jar target/*.jar