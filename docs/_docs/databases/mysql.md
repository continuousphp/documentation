---
layout:         doc
title:          "MySQL - Documentation"
category:       "databases"
order:          1
excerpt:        "MySQL support by continuousphp"
---
[MySQL](http://www.mysql.com/) is supported by continuousphp. It uses the [official MySQL Docker images](https://hub.docker.com/_/mysql/).

## Specification

MySQL containers are available for each activity in your build. To enable one of them, simply add the environment
variable `CPHP_SERVICE_MYSQL` with the desired MySQL version as value to your pipeline configuration. Available versions are :

* ***8.0.3***
* ***5.7.20***
* ***5.6.38***
* ***5.5.58***

E.g. if you need `MySQL 5.7.20` in your Behat tests, go to the Testing Settings (step 2 of the Pipeline) and add the
environment variable `CPHP_SERVICE_MYSQL = 5.7.20` to the Behat configuration.

### PHP Extensions

Our containers implement the following PHP extensions for MySQL :

* mysql
* mysqli
* mysqlnd
* pdo_mysql

## Connecting to MySQL

<table>
  <tr>
    <td>Hostname</td><td>mysql</td>
  </tr>
  <tr>
    <td>Username</td><td>root</td>
  </tr>
  <tr>
    <td>Password</td><td>(blank)</td>
  </tr>
</table>