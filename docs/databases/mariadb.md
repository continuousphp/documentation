---
layout:         doc
title:          "MariaDB - Documentation"
category:       "databases"
order:          2
excerpt:        "MariaDB support by continuousphp"
---
[MariaDB](https://mariadb.org/) is supported by continuousphp. It uses the [official MariaDB Docker images](https://hub.docker.com/_/mariadb/).

## Specification

MariaDB containers are available for each activity in your build. To enable one of them, simply add the environment
variable `CPHP_SERVICE_MARIADB` with the desired MariaDB version as value to your pipeline configuration. Available versions are :

* ***10.2.15***
* ***10.3.2***

E.g. if you need `MariaDB 10.3.2` in your Behat tests, go to the Testing Settings (step 2 of the Pipeline) and add the
environment variable `CPHP_SERVICE_MARIADB = 10.3.2` to the Behat configuration.

### PHP Extensions

Our containers implement the following PHP extensions for MariaDB :

* mysql
* mysqli
* mysqlnd
* pdo_mysql

## Connecting to MariaDB

<table>
  <tr>
    <td>Hostname</td><td>mariadb</td>
  </tr>
  <tr>
    <td>Username</td><td>root</td>
  </tr>
  <tr>
    <td>Password</td><td>(blank)</td>
  </tr>
</table>
