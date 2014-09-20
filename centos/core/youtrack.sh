#!/bin/sh

echo "Install YouTrack"
    wget http://download-cf.jetbrains.com/charisma/youtrack-5.2.4-8815.jar
    java -XX:MaxPermSize=256m -jar youtrack-5.2.4-8815.jar 8080
echo "-> Success"