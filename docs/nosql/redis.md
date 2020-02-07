---
layout:         doc
title:          "Redis - Documentation"
category:       "nosql"
order:          2
excerpt:        "Redis support by continuousphp"
---
[Redis](http://redis.io/) is supported by continuousphp containers.

## Specification 

Redis containers are available for each activity in your build. To enable one of them, simply add the environment
variable `CPHP_SERVICE_REDIS` with the desired Redis version as value to your pipeline configuration. Available versions are :


* ***5.0.7***

E.g. if you need `Redis 5.0.7` in your Behat tests, go to the Testing Settings (step 2 of the Pipeline) and add the
environment variable `CPHP_SERVICE_REDIS = 5.0.7` to the Behat configuration.

## Connecting to Redis 

There are no Authentication settings.
