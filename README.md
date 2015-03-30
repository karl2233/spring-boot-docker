#README

This project intended for learning 
1. How to build docker image (with Dockefile) with this simple spring-boot application as the main process
2. How to running container based on created image, and 
3. How to perform housekeeping process. 

This project by default using [```org.codehaus.mojo:maven-exec-plugin```]() Before starting, please make sure you have docker installed (and non root user can execute docker command).

This project is not using default maven profile but custom profile with id ```docker```. So, to build image and run docker container, use following command.

```sh
$ mvn --activate-profile docker install

...or...

$ mvn -P docker install
```

Be patient, first time running may take longer time, i.e for downloading base docker's java images and also for update base images os (Please loot at ```Dockerfile``` content for details), all depend on your internet speed. After build success, open browser and point to [```http://localhost:8888/user```](http://localhost:8888/user) (Port 8888 of host machine is mapped to 8080 of running container). Use ```user:password``` credentials pair if your browser prompt username and password. After that you should have getting response similar with following json document

```json
{
    details: {
        remoteAddress: "172.17.42.1",
        sessionId: null
    },
    authorities: [
        {
            authority: "ROLE_USER"
        }
    ],
    authenticated: true,
    principal: {
        password: null,
        username: "user",
        authorities: [
            {
                authority: "ROLE_USER"
            }
        ],
        accountNonExpired: true,
        accountNonLocked: true,
        credentialsNonExpired: true,
        enabled: true
    },
    credentials: null,
    name: "user"
}
```

For stopping container and removing our docker images, please execute following command, inspect ```maven-exec-plugin```'s executions configuration inside ```pom.xml``` for details.

```sh
$ mvn --activate-profile docker clean

...or...

$ mvn -P docker clean
```