---
layout:         doc-toc
title:          "Containers - Documentation"
category:       "containers"
logo:           docker 
order:          8
excerpt:        "continuousphp docker containers."
---
continuousphp docker containers include by default the following services: 

* [mysql](/databases/mysql/) 
* [postgreql](/databases/postgresql/)
* [couchbase](/nosql/couchbase/)
* [apache2](/webserver/)
* [mongodb](/nosql/mongodb/)
* [redis](/nosql/redis/)

They also include also the following tools and applications:

* [eb](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3.html) (AWS ElasticBeanstalk)
* [graphviz](http://www.graphviz.org/Documentation.php)
* latex base & recommended 
* [nvm](/nodejs/) 
* [rbenv](/ruby/)
* [subversion](https://subversion.apache.org/)
* [mailcatcher](/emails/mailcatcher/)

All locales have been installed and configured.

If you need any other packages installed, as sudo, you can easily install them with a Phing target in your *build.xml*:

```xml
<target name="apt-package">
   <echo message="Install packages"/>
   <exec dir="${project.basedir}"
         command="sudo apt-get update ; sudo apt-get -y install <PACKAGE_NAME>"
         checkreturn="true"
         passthru="true"/>
</target>
```

Please feel free to contact us if you think that there is missing something essential in our containers!
