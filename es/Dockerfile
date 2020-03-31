FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y wget
RUN wget https://download.java.net/java/GA/jdk13/5b8a42f3905b406298b72d750b6919f6/33/GPL/openjdk-13_linux-x64_bin.tar.gz
RUN mkdir /usr/lib/jvm
RUN tar -zxf openjdk-13_linux-x64_bin.tar.gz --directory /usr/lib/jvm/
RUN rm openjdk-13_linux-x64_bin.tar.gz
RUN ln -s /usr/lib/jvm/jdk-13 /openjdk13

ENV JAVA_HOME=/openjdk13
