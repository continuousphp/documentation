---
layout:         doc
title:          "PostgreSQL - Documentation"
category:       "databases"
order:          3
excerpt:        "PostgreSQL support by continuousphp"
---
[PostgreSQL](http://www.postgresql.org/) is supported by continuousphp. It uses the [official PostgreSQL Docker images](https://hub.docker.com/_/postgres/).

## Specification

PostgreSQL containers are available for each activity in your build. To enable one of them, simply add the environment
variable `CPHP_SERVICE_POSTGRESQL` with the desired PostgreSQL version as value to your pipeline configuration. Available versions are :

* ***10.0.0***
* ***9.6.5***
* ***9.5.9***

E.g. if you need `PostgreSQL 9.6.5` in your Behat tests, go to the Testing Settings (step 2 of the Pipeline) and add the
environment variable `CPHP_SERVICE_POSTGRESQL = 9.6.5` to the Behat configuration.

### PHP Extensions

Our containers implement the following PHP extensions for PostgreSQL :

* pdo_pgsql
* pgsql

## Connecting to PostgreSQL

<table>
  <tr>
    <td>Hostname</td><td>postgres</td>
  </tr>
  <tr>
    <td>Username</td><td>postgres</td>
  </tr>
  <tr>
    <td>Password</td><td>password</td>
  </tr>
</table>

## Importing database dump

ContinuousPHP provides users with the ability to import postgresql database dump files. To enable it, simply add an environment variable `PATH_IMPORT_DUMP_DB_POSTGRESQL` which refers to the absolute path of specified database dump file in repository context. 
If you are using GitHub you should store it with [Git LFS](https://git-lfs.github.com/).
