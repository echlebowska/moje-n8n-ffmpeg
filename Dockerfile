FROM mwader/static-ffmpeg:latest AS ffmpeg
FROM n8nio/n8n:2.19.5

USER root

# Kopiowanie ffmpeg
COPY --from=ffmpeg /ffmpeg /usr/local/bin/
COPY --from=ffmpeg /ffprobe /usr/local/bin/

# Bezpieczna instalacja Apify
RUN npm install --production --no-audit --no-fund n8n-nodes-apify

USER node
