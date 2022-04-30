FROM ubuntu:latest
RUN apt update
RUN apt upgrade -y
RUN apt install -y curl python3 ffmpeg
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"] #brackets actually used here
EXPOSE 9000