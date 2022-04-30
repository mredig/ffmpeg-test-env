FROM ubuntu:latest
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y curl python3 ffmpeg
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"] #brackets actually used here
EXPOSE 9000