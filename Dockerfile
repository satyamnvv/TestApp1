FROM maven:3.5-jdk-8 AS build  
COPY src /usr/src/app/src  
COPY pom.xml /usr/src/app  
RUN mvn -f /usr/src/app/pom.xml clean package

FROM gcr.io/distroless/java  
COPY --from=build /usr/src/app/target/TestApp1.jar /usr/app/TestApp1.jar  
EXPOSE 8080  
ENTRYPOINT ["java","-jar","/usr/app/TestApp1.jar"]  
