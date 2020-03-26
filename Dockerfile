FCOPY src /usr/src/app/src  
COPY pom.xml /usr/src/TestApp1  
RUN mvn -f /usr/src/TestApp1/pom.xml clean package

FROM gcr.io/distroless/java  
COPY --from=build /usr/src/app/target/TestApp1.jar /usr/app/TestApp1.jar  
EXPOSE 8080  
ENTRYPOINT ["java","-jar","/usr/app/TestApp1.jar"]  
