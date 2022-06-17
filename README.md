# Spring Test

Default repository to test docker images and CI&amp;CD

#To run in Docker:

    docker build -t rodrigospimenta/spring-java .
    docker run -it -p 8080:8080 -v ~/.m2:/root/.m2  rodrigospimenta/spring-java bash

Volume (-v) created to avoid downloading all files from central maven on each run. For this reason, it is necessary to run a maven clean install of this project on your machine beforehand, to have the dependencies installed in your local .m2 repository

## To test

Open your browser and access this link: 

    localhost:8080

You will see: Hello World