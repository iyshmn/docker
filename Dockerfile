FROM ubuntu:22.04
WORKDIR /home/ubuntu
RUN apt update
RUN apt install -y curl
RUN curl --version
COPY scrpit.sh .
CMD ./scrpit.sh
