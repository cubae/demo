FROM openjdk:8-jre-slim

COPY build/libs/*.jar app.jar

RUN cp /usr/share/zoneinfo/Asia/Seoul /etc/localtime && \
    echo "Asia/Seoul" > /etc/timezone

ENTRYPOINT ["java","-jar", "-Duser.timezone=Asia/Seoul", "app.jar"]
