FROM jenkins/jenkins:2.456-jdk21
# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y make 
# drop back to the regular jenkins user - good practice
USER jenkins
