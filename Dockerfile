FROM n8nio/n8n:2.9.1
USER root
RUN apk add --no-cache ffmpeg
USER node
