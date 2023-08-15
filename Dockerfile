FROM adoptopenjdk/maven-openjdk11
COPY target/eureka-server-0.0.1-SNAPSHOT.jar eureka-server.jar
EXPOSE 8070:8070
RUN apt-get update
RUN apt-get install -y gcc
RUN apt-get install -y curl
ENTRYPOINT ["java","-jar","eureka-server.jar"]