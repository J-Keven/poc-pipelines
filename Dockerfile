FROM debezium/connect:1.9

# Copiar o arquivo de credenciais do Google Cloud Pub/Sub
COPY debezium/keyfile.json /etc/secrets/keyfile.json

# Configuração de variáveis de ambiente necessárias
ENV GOOGLE_APPLICATION_CREDENTIALS=/etc/secrets/keyfile.json

# Expor a porta Kafka Connect
EXPOSE 8083