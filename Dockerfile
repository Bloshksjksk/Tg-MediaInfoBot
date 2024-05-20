FROM ubuntu:latest

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8 LANGUAGE=en_US:en TZ=Asia/Kolkata

WORKDIR /usr/src/app

RUN apt-get update && RUN apt-get upgrade -y
RUN apt-get install -y python3-pip
RUN pip3 install -U pip
RUN apt-get install -y --no-install-recommends mediainfo ffmpeg
RUN apt-get install libsox-fmt-mp3

COPY requirements.txt .

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

RUN chmod +x start

CMD ["bash", "start"]


RUN apt-get update && RUN apt-get upgrade -y
RUN apt-get install -y python3-pip
RUN pip3 install -U pip
RUN apt-get install -y --no-install-recommends mediainfo ffmpeg
RUN apt-get install libsox-fmt-mp3
RUN apt-get install sox 
