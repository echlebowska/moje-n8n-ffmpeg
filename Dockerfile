FROM n8nio/n8n:2.9.1
USER root
RUN apt-get update && apt-get install -y ffmpeg
USER node
