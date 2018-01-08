--- layout: default title: "Continuous Documentation" excerpt: "Here
you'll find everything you need to implement Continuous Deployment,
Continuous Delivery and Continuous Integration for your PHP projects
on continuousphp." permalink: /documentation/ ---


Documentation
=============

Welcome to our documentation page. As you will soon figure out, this
part of our website is a work in progress as we are still working hard
to provide you with a comprehensive and friendly documentation.

You can add your comments directly under each section or you can
contact us if you have questions/comments.

Feel free to take a look at our `tutorial page`_ where you will also
find some useful step by step information.



Overview
--------

continuousphp is your one stop shop to build, package, test and deploy
your PHP applications in one workflow. It is an innovative PaaS
(Platform as a Service) providing rapid, iterative and consistent
application delivery tailored for your PHP development needs.

{% assign categories = site.docs | sort:'order' | where:"layout","doc-
toc" %} {% for category in categories %}
  +

    + {% if category.logo %} {% endif %}


    ` {{ category.title | remove: " - Documentation" }} `_
    ------------------------------------------------------
    {% assign items = site.docs | sort:'order' | where:"layout","doc" |
    where:"category",category.category %} {% for item in items %}
    + ` {% if item.logo %} {% endif %} {{ item.title | remove: " -
      Documentation" }} `_      {% endfor %}
  {% endfor %}


