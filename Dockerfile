FROM maven:3.5.0-jdk-8

WORKDIR /apps
COPY . /apps
RUN mvn clean install

WORKDIR /apps/whiterabbit
ENV DISPLAY=host.docker.internal:0
ENV DISPLAY='IP:0.0'
CMD mvn exec:java -Dexec.mainClass="org.ohdsi.whiteRabbit.WhiteRabbitMain"