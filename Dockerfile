FROM openjdk:8

RUN apt-get update && apt-get install -y x11-apps libxtst6

WORKDIR /app

RUN wget http://www.tnlab.inf.uec.ac.jp/daihinmin/2022/files/devkit_j-20101114.tar.gz
RUN tar -xzf devkit_j-20101114.tar.gz

WORKDIR /app/devkit_j-20101112

ENV DISPLAY host.docker.internal:0.0

CMD ["java", "-jar", "daihinmin.jar"]
