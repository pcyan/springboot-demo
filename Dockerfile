FROM openjdk:17-alpine

WORKDIR /home/admin
COPY target/springboot-demo-0.0.1-SNAPSHOT.jar /home/admin/springboot-demo-0.0.1-SNAPSHOT.jar
EXPOSE 8080/tcp
EXPOSE 9090/tcp

ENV JAVA_OPTS "-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=9090 -Xmx2G -Xms2G -Dfile.encoding=UTF8 -Duser.timezone=Asia/Shanghai"

ENTRYPOINT java $JAVA_OPTS -jar springboot-demo-0.0.1-SNAPSHOT.jar
