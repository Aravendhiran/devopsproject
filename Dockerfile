FROM httpd
RUN sudo apt-get update
RUN sudo apt install -y openjdk-11-jdk
RUN sudo apt-get update
RUN cd /var/www/html/
RUN rm -rf index.html
RUN git clone https://github.com/bhavukm/cicd-pipeline-train-schedule-autodeploy.git
RUN ./gradlew build
RUN ./gradlew npm_start
EXPOSE 88
