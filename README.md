# Spring Test

Playground repository to test docker images and CI&amp;CD

# To use in Docker Unique:

    docker build -t rodrigospimenta/spring-java .
    docker run -it -p 8080:8080 -v ~/.m2:/root/.m2  rodrigospimenta/spring-java bash

Volume (-v) created to avoid downloading all files from central maven on each run. For this reason, it is necessary to run a maven clean install of this project on your machine beforehand, to have the dependencies installed in your local .m2 repository

# To see what is generated in the first part of multi-stage docker

    docker build -t rodrigospimenta/spring-java . -f Dockerfile.dev
    docker run -it -p 8080:8080 rodrigospimenta/spring-java bash

# To use multi-stage build

    docker build -t rodrigospimenta/spring-java . -f Dockerfile.prod
    docker run -it -p 8080:8080 rodrigospimenta/spring-java bash

PS: If you build your application and update your application in git, you may need to add '-no-cache' to the 'docker build' command so that the build gets your update.

    docker build --no-cache -t rodrigospimenta/spring-java . -f Dockerfile.prod 

## To test

Open your browser and access this link: 

    localhost:8080

You will see: Hello World

# If you want to continue...
More ideas for playground customization: https://spring.io/guides/topicals/spring-boot-docker/

If you also want to create an image registry with a .m2 repository loaded for the builds, it would be a cool idea too, but know that there are already other ways to build this bulild in a more correct way.