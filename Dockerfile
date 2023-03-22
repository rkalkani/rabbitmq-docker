FROM rabbitmq:3.11.11-management-alpine

RUN cd /opt/rabbitmq/plugins \
    && wget https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/3.11.1/rabbitmq_delayed_message_exchange-3.11.1.ez \
    && rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange