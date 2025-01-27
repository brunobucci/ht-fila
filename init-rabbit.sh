#!/bin/bash
rabbitmq-server &
sleep 10 # Aguarda o RabbitMQ inicializar completamente
rabbitmqctl import_definitions /etc/rabbitmq/definitions.json
rabbitmqctl stop
rabbitmq-server
