#!/bin/sh

java -XX:+UseZGC -server -XX:+OptimizeStringConcat -XX:+UseStringDeduplication -XX:+UseContainerSupport -Djava.security.egd=file:/dev/./urandom $JVM_CONFIG \
    -jar /opt/inside/application/inside_cloudgateway.jar \
    $SPRING_CLOUD_CONFIG
    $SPRING_OTHERS_CONFIG
    $OTHERS_CONFIG
