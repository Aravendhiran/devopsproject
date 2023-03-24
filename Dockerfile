FROM httpd
RUN sudo apt-get update
RUN sudo apt install -y openjdk-11-jdk
RUN ./gradlew build
RUN ./gradlew npm_start
RUN cd /var/www/html/
RUN rm -rf index.html
RUN git clone https://github.com/bhavukm/cicd-pipeline-train-schedule-autodeploy.git
expose 88
