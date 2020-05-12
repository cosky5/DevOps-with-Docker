FROM ubuntu 

RUN apt-get update && apt-get install -y curl git

WORKDIR /backend-example-docker

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN git clone https://github.com/docker-hy/backend-example-docker.git
RUN apt install -y nodejs

WORKDIR backend-example-docker

RUN npm install 

EXPOSE 8000

CMD ["npm", "start"]

