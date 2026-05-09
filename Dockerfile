FROM node:20-alpine

RUN apk add --no-cache python3 make g++ && \
    npm install -g n8n@1.30.1

RUN mkdir -p /root/.n8n && \
    chmod 700 /root/.n8n

ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV NODE_ENV=production
ENV EXECUTIONS_PROCESS=main
ENV N8N_ENCRYPTION_KEY=xK9mP2qL7nR4vT8w3jB6
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV N8N_RUNNERS_ENABLED=false

EXPOSE 5678

CMD ["n8n", "start"]
