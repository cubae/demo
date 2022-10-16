FROM openjdk:8
RUN echo `ls -al /home/gradle/src/build/libs/*.jar`
COPY ./build/libs/demo-*.jar app.jar
RUN cp /usr/share/zoneinfo/Asia/Seoul /etc/localtime && \
    echo "Asia/Seoul" > /etc/timezone
ENTRYPOINT ["java","-jar", "-Duser.timezone=Asia/Seoul", "app.jar"]
