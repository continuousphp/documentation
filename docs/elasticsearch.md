---
layout:         doc
title:          "ElasticSearch - Documentation"
category:       "queues"
order:          1
excerpt:        "ElasticSearch support by continuousphp"
---
[ElasticSearch](https://github.com/elastic/elasticsearch) is supported by continuousphp.

## Specification

ElasticSearch containers are available for each activity in your build. To enable one of them, simply add the environment
variable `CPHP_SERVICE_ELASTICSEARCH` with the desired ElasticSearch version as value to your pipeline configuration. Available versions are :

* ***6.2.4***
* ***5.6.9***

E.g. if you need `ElasticSearch 6.2.4` in your Behat tests, go to the Testing Settings (step 2 of the Pipeline) and add the
environment variable `CPHP_SERVICE_ELASTICSEARCH = 6.2.4` to the Behat configuration.

## Connecting to elasticsearch

<table>
  <tr>
    <td>Host</td><td>elasticsearch</td>
  </tr>
  <tr>
    <td>Port</td><td>9200</td>
  </tr>
</table>
