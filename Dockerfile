RUN ls -al /home/gradle/src/build/libs/*.jar
FROM openjdk:8
COPY ./build/libs/demo-*.jar app.jar
RUN cp /usr/share/zoneinfo/Asia/Seoul /etc/localtime && \
    echo "Asia/Seoul" > /etc/timezone
ENTRYPOINT ["java","-jar", "-Duser.timezone=Asia/Seoul", "app.jar"]
