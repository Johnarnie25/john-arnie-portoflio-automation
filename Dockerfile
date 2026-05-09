FROM node:20-alpine

RUN apk add --no-cache python3 make g++ && \
    npm install -g n8n

RUN mkdir -p /root/.n8n && \
    chmod 700 /root/.n8n

ENV N8N_PROTOCOL=https
ENV NODE_ENV=production
ENV N8N_ENCRYPTION_KEY=xK9mP2qL7nR4vT8w3jB6
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV N8N_RUNNERS_ENABLED=false
ENV N8N_LISTEN_ADDRESS=0.0.0.0

EXPOSE 10000

CMD ["sh", "-c", "N8N_PORT=${PORT:-10000} n8n start"]
