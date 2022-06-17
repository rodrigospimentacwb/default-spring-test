#!/bin/bash

# Example to clone, build and run spring boot project into docker
#
# Link project : https://github.com/rodrigospimentacwb/rodrigospimentacwb-default-spring-test
#
# Author: Rodrigo S. Pimenta/Brazil
# -----------------------------------------------------------------------------

git clone https://github.com/rodrigospimentacwb/rodrigospimentacwb-default-spring-test.git
cd rodrigospimentacwb-default-spring-test
mvn clean install
java -jar /app/rodrigospimentacwb-default-spring-test/target/hello-0.0.1-SNAPSHOT.jar
