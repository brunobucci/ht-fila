ls /etc/rabbitmq/
cat ls /etc/rabbitmq/definitions.json 
exit
rabbitmqctl import_definitions /etc/rabbitmq/definitions.json
rabbitmqctl list_queues
docker-compose down -v
rabbitmqctl status
exit
