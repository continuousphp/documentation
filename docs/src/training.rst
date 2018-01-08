--- layout: default title: "Continuous Training" excerpt:
"continuousphp is not only a great platform, it is also a team of
experts who strongly believe that you need someone at your side to put
Continuous Delivery and Continuous Deployment in place in your daily
work. To do so, we have created training courses which will help you
to understand all the knowledge required to master CD." permalink:
/training/ ---


Training
========

{{ page.excerpt }}
{% for training in site.trainings | sort: 'date' %}


{% if training.link %} ` {{ training.title }} `_ {% else %} ` {{
training.title }} `_ {% endif %}
--------------------------------
Posted about
Written by `{{ site.data.members[training.author].name }}`_ {{
training.content }} {% if training.link %} ` Read more `_ {% else %} `
Read more `_ {% endif %} {% endfor %}
