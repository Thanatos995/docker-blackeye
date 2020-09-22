FROM kalilinux/kali-rolling:latest

MAINTAINER Vishnu Nair

RUN mkdir /src

WORKDIR /src

RUN apt-get update && \
    apt-get install -y git php curl unzip wget && \
    git clone https://github.com/Thanatos995/blackeye.git

WORKDIR /src/blackeye

EXPOSE 80 443

ENTRYPOINT ["tail", "-f", "/dev/null"]
