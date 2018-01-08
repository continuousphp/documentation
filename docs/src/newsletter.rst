--- layout: default title: "Continuous Newsletters" excerpt: "Do you
want to be notified about new products and services, software updates
and specials? Then join our monthly newsletter. It's a recap of what
happened during the past 4 weeks (when we are on schedule to release
it!)." permalink: /newsletter/ ---


Newsletters
===========

Do you want to be notified about new products and services, software
updates and specials? Then join our monthly newsletter. It's a recap
of what happened during the past 4 weeks (when we are on schedule to
release it!).

If you prefer real time notifications, follow us on your favorite
social media.
And if you can’t wait at all, you can even `call us`_!
` Subscribe `_ {% for post in site.categories['newsletter'] %}


{% if post.link %} ` {{ post.title }} `_ {% else %} ` {{ post.title }}
`_ {% endif %}
--------------
Posted about
Written by `{{ site.data.members[post.author].name }}`_ {{
post.excerpt }} {% if post.link %} ` Read more `_ {% else %} ` Read
more `_ {% endif %} {% endfor %}
