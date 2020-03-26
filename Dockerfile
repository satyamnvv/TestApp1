FROM maven:jdk-11-openj9 AS builder

COPY launch.sh /
RUN maven install
COPY target/TestApp1.jar /TestApp1.jar 
RUN chmod +x /launch.sh

EXPOSE 8086
ENTRYPOINT ["/launch.sh"]
