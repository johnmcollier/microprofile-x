#!/usr/bin/env bash

# TEST
# watch the java files and continously deploy the service
mvn -B package -DskipTests=true liberty:install-apps -DskipTests=true
skaffold run -p dev
reflex -r "\.java$" -- bash -c 'mvn -B package -DskipTests=true liberty:install-apps -DskipTests=true && skaffold run -p dev'
