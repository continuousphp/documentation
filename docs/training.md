\--- layout: default title: "Continuous Training" excerpt:
"continuousphp is not only a great platform, it is also a team of
experts who strongly believe that you need someone at your side to put
Continuous Delivery and Continuous Deployment in place in your daily
work. To do so, we have created training courses which will help you to
understand all the knowledge required to master CD." permalink:
/training/ ---

# Training

{{ page.excerpt }}

{% for training in site.trainings | sort: 'date'
%}

## {% if training.link %} [{{ training.title }}](%7B%7B%20training.link%20%7D%7D) {% else %} [{{ training.title }}](%7B%7B%20training.url%20%7D%7D) {% endif %}

Posted about   
Written by [{{ site.data.members\[training.author\].name
}}](/about-us#%7B%7B%20training.author%20%7D%7D)

{{ training.content }} {% if training.link %} [Read
more](%7B%7B%20training.link%20%7D%7D) {% else %} [Read
more](%7B%7B%20training.url%20%7D%7D) {% endif %}

{% endfor %}

