---
layout:         doc
title:          "Beanstalkd - Documentation"
category:       "queues"
order:          1
excerpt:        "Beanstalkd support by continuousphp"
---
[Beanstalkd](http://kr.github.io/beanstalkd/) is supported by continuousphp.

## Specification

Beanstalkd containers are available for each activity in your build. To enable one of them, simply add the environment
variable `CPHP_SERVICE_BEANSTALKD` with the desired Beanstalkd version as value to your pipeline configuration. Available versions are :

* ***1.10.0***

E.g. if you need `Beanstalkd 1.10.0` in your Behat tests, go to the Testing Settings (step 2 of the Pipeline) and add the
environment variable `CPHP_SERVICE_BEANSTALKD = 1.10.0` to the Behat configuration.

## Connecting to beanstalkd

<table>
  <tr>
    <td>Host</td><td>beanstalkd</td>
  </tr>
  <tr>
    <td>Port</td><td>11300</td>
  </tr>
</table>