#FROM tomcat:8.0.20-jre8 
#COPY target/maven-web-application*.war /usr/local/tomcat/webapps/maven-web-application.war

# You can change this base image to anything else
# But make sure to use the correct version of Java
FROM adoptopenjdk/openjdk11:alpine-jre

# Simply the artifact path
ARG artifact=target/maven-web-application.jar

WORKDIR /opt/app

COPY ${artifact} app.jar

# This should not be changed
ENTRYPOINT ["java","-jar","app.jar"]

