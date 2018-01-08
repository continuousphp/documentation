--- layout: default title: "Continuous Tutorials" excerpt: "Here you
will find comprehensive tutorials which will help you to understand
continuousphp and how to configure, test, package and deploy your
projects with it." permalink: /tutorial/ ---


Tutorials
=========
{% for post in site.categories['tutorial'] %}


{% if post.link %} ` {{ post.title }} `_ {% else %} ` {{ post.title }}
`_ {% endif %}
--------------
Posted about
Written by `{{ site.data.members[post.author].name }}`_ {{
post.excerpt }} {% if post.link %} ` Read more `_ {% else %} ` Read
more `_ {% endif %} {% endfor %}
