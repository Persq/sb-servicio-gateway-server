FROM openjdk:12
VOLUME /tmp
EXPOSE 8090
ADD ./target/springboot-servicio-gateway-server-0.0.1-SNAPSHOT.jar scg-server.jar
ENTRYPOINT ["java","-jar","/scg-server.jar"]