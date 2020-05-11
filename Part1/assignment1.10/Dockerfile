FROM ubuntu

RUN apt-get update 
RUN apt-get install -y curl git > /dev/null 2>&1

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs > /dev/null 2>&1

RUN git clone https://github.com/docker-hy/frontend-example-docker.git
WORKDIR frontend-example-docker

RUN npm install 
EXPOSE 5000/tcp

CMD npm start
