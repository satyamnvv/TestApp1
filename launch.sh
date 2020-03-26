#!/bin/bash

JAVA_OPTS="-Xmx2048m -Xms2048m  -Dspring.profiles.active=${SPRING_PROFILES_ACTIVE} ${OPTIONS}"

java ${JAVA_OPTS} -jar /TestApp1.jar