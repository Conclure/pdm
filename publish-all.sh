#!/bin/sh
echo "gradle.publish.key=$APIKEY" >> gradle.properties
echo "gradle.publish.secret=$APISECRET" >> gradle.properties

./gradlew clean publishAllToMaven

./gradlew clean pdm-gradle:publishPlugins
