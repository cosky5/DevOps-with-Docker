FROM ubuntu

COPY / .

RUN apt-get update && apt-get install -y curl git
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs

RUN git clone https://github.com/docker-hy/frontend-example-docker.git
WORKDIR frontend-example-docker

RUN npm install

EXPOSE 5000

ENV API_URL=http://localhost:8000

CMD ["npm", "start"]

# Command to build & run:
# docker build -t frontend-example-docker .
# docker run -p5000:5000 frontend-example-docker
