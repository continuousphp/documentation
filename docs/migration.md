
---
layout:         doc-toc
title:          "Migration guide - Documentation"
category:       "Migration guide"
logo:           docker 
order:          8
---

## Database services

We are no longer run services inside the same containers using localhost, mysql, mongodb, redis, phantomjs, mailcatcher, graphviz
theses services are now part as side containers and can be activated using environement variables, please report to documentation.

* [mysql](/databases/mysql/) 
* [mariadb](/databases/mariadb/)
* [postgrsql](/databases/postgresql/)
* [mongodb](/nosql/mongodb/)
* [redis](/nosql/redis/)
* [apache2](/webserver/)
* phantomjs
* mailcatcher
* graphviz

## Update nodejs version

We are no longer using nvm to change nodejs version.
If in your configuration, you are using something like this

`sudo su -c "source /etc/profile ; nvm install 10.16.3 -reinstall-packages-from=v5.4.1"`

You must replace it by using `n` progam (more information on https://github.com/tj/n)

```bash
n lts
OR
n 12.16
OR
n 12.16.1
```

## Missing commands 

Commands listed below are missing: 

* rsync 
* eb
* nvm
* rbenv 
* subversion

You could encountered missing command line, like rsync, it was previously on the base image of system, but not present in official base php debian image. When you meet this error install the package using a shell script using command below:  

```xml
sudo apt update && sudo apt install rsync
```



Please feel free to contact us if face any problem !
