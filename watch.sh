#!/usr/bin/env bash

# watch the java files and continously deploy the service
mvn -B package liberty:install-apps -DskipTests=true
skaffold run -p dev
reflex -r "\.java$" -- bash -c 'mvn install && skaffold run -p dev'
