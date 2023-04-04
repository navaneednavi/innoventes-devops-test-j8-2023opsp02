FROM openjdk:11
WORKDIR /app
COPY mvnw pom.xml ./
COPY .mvn/ .mvn
RUN ./mvnw dependency
COPY src ./src
CMD ["./mvnw"]
