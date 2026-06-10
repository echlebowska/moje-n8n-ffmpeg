FROM mwader/static-ffmpeg:latest AS ffmpeg
FROM n8nio/n8n:2.19.5
USER root
COPY --from=ffmpeg /ffmpeg /usr/local/bin/
COPY --from=ffmpeg /ffprobe /usr/local/bin/
USER node
