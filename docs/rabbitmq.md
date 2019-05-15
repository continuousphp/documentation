---
layout:         doc
title:          "RabbitMQ - Documentation"
category:       "queues"
order:          1
excerpt:        "RabbitMQ support by continuousphp"
---
[RabbitMQ](https://github.com/rabbitmq) is supported by continuousphp.

## Specification

RabbitMQ containers are available for each activity in your build. To enable one of them, simply add the environment
variable `CPHP_SERVICE_RABBITMQ` with the desired RabbitMQ version as value to your pipeline configuration. Available versions are :

* ***3.7.5***

E.g. if you need `RabbitMQ 3.7.5` in your Behat tests, go to the Testing Settings (step 2 of the Pipeline) and add the
environment variable `CPHP_SERVICE_RABBITMQ = 3.7.5` to the Behat configuration.

## Connecting to elasticsearch

<table>
  <tr>
    <td>Host</td><td>rabbitmq</td>
  </tr>
  <tr>
    <td>Port</td><td>15672</td>
  </tr>
</table>
