FROM ubuntu
RUN apt update 
ARG DEBIAN_FRONTEND=noninteractive
ENV DEBIAN_FRONTEND=noninteractive
RUN apt upgrade -y
RUN apt install curl unzip golang nginx -y
RUN curl -L "rclone.org/install.sh" |bash
