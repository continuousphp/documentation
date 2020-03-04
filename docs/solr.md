---
layout:         doc
title:          "SolR - Documentation"
category:       "queues"
order:          3
excerpt:        "SolR support by continuousphp"
---
[SolR](https://lucene.apache.org/solr/) is supported by continuousphp.

## Specification

SolR containers are available for each activity in your build. To enable one of them, simply add the environment
variable `CPHP_SERVICE_SOLR` with the desired SolR version as value to your pipeline configuration. Available versions are :

* ***8.4***
* ***8.3***
* ***8.2***
* ***8.1***
* ***8.0***
* ***7.7***
* ***7.6***
* ***7.5***
* ***6.6***
* ***5.5***

E.g. if you need `SolR 8.0` in your Behat tests, go to the Testing Settings (step 2 of the Pipeline) and add the
environment variable `CPHP_SERVICE_SOLR = 8.0` to the Behat configuration.

## Connecting to SolR

<table>
  <tr>
    <td>Host</td><td>solr</td>
  </tr>
  <tr>
    <td>Port</td><td>8983</td>
  </tr>
</table>
