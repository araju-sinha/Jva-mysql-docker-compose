FROM ubuntu

MAINTAINER Aarju Sinha<aarju.sinha024@gmail.com>

RUN apt-get update 
RUN apt-get upgrade -y

RUN apt-get install -y openjdk-8-jdk

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/

RUN export JAVA_HOME

RUN apt-get update \
&& apt-get install -y maven

RUN mvn -version
RUN java -version

VOLUME /tmp

EXPOSE 9097

ADD target/springboot-docker-maven-new.jar docker-maven.jar

ENTRYPOINT ["java","-jar","/docker-maven.jar"]