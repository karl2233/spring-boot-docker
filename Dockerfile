# Using oficial java 8 as base docker image.
FROM java:8

# Maintainer of this dockerfile.
MAINTAINER Muhammad Zaky Alvan (zaky@innovez-one.com)

# Update os. java:8 image is based on debian
RUN apt-get update

# Add new user for running application
RUN groupadd -r appgroup && useradd -r -g appgroup webappuser

# Set webappuser as user for running webapp.
USER webappuser

# Copy built jar to image.
COPY target/spring-boot-docker-1.0-SNAPSHOT.jar /home/webappuser/spring-boot-docker.jar

# Set default work directory.
WORKDIR /home/webappuser/

# Expose port 8080
EXPOSE 8080

# Start
CMD java -jar spring-boot-docker.jar