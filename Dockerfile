FROM lolhens/baseimage-openjre
ADD target/credit-management.jar credit-management.jar
EXPOSE 80
ENTRYPOINT ["java", "-jar", "credit-management.jar"]
