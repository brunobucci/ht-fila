FROM rabbitmq:3.12-management

# Define environment variables
ENV RABBITMQ_DEFAULT_USER=${RABBITMQ_DEFAULT_USER}
ENV RABBITMQ_DEFAULT_PASS=${RABBITMQ_DEFAULT_PASS}
ENV RABBITMQ_LOAD_DEFINITIONS="/etc/rabbitmq/definitions.json"

# Copy RabbitMQ definitions file
COPY rabbitmq-definitions.json /etc/rabbitmq/definitions.json

# Define volumes for persistence
VOLUME /var/lib/rabbitmq

# Expose RabbitMQ default ports
EXPOSE 5672 15672

CMD ["rabbitmq-server"]
