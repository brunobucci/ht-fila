FROM rabbitmq:3.12-management

# Copia o arquivo de definições para o contêiner
COPY definitions.json /etc/rabbitmq/definitions.json

# Garante que o RabbitMQ tenha permissão para acessar o arquivo
RUN chown rabbitmq:rabbitmq /etc/rabbitmq/definitions.json \
    && chmod 644 /etc/rabbitmq/definitions.json

# Configuração do RabbitMQ para carregar o arquivo de definições
RUN echo "load_definitions = /etc/rabbitmq/definitions.json" > /etc/rabbitmq/rabbitmq.conf

# Expor as portas padrão do RabbitMQ
EXPOSE 5672 15672