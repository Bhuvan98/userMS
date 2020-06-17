FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY /target/userMS-0.0.1-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app
EXPOSE 6200
ENV JAVA_OPTS=""
RUN sh -c "touch userMS-0.0.1-SNAPSHOT.jar"
ENTRYPOINT [ "java", "-jar", "userMS-0.0.1-SNAPSHOT.jar" ]