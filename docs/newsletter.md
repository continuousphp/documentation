\--- layout: default title: "Continuous Newsletters" excerpt: "Do you
want to be notified about new products and services, software updates
and specials? Then join our monthly newsletter. It's a recap of what
happened during the past 4 weeks (when we are on schedule to release
it\!)." permalink: /newsletter/ ---

# Newsletters

Do you want to be notified about new products and services, software
updates and specials? Then join our monthly newsletter. It's a recap of
what happened during the past 4 weeks (when we are on schedule to
release it\!).

If you prefer real time notifications, follow us on your favorite
[social media](#footer).  
And if you can’t wait at all, you can even [call
us](tel:+352545580270)\!

[Subscribe](https://zc1.maillist-manage.com/ua/Optin?od=11287eca5741e9&opDgs=7200cd3a4fff9f7a6e7afab5049fd5c6d71b62c3142be692&lD=1153c9e46b9c1e7e&n=11699f750f406b6)

{% for post in site.categories\['newsletter'\]
%}

## {% if post.link %} [{{ post.title }}](%7B%7B%20post.link%20%7D%7D) {% else %} [{{ post.title }}](%7B%7B%20post.url%20%7D%7D) {% endif %}

Posted about   
Written by [{{ site.data.members\[post.author\].name
}}](/about-us#%7B%7B%20post.author%20%7D%7D)

{{ post.excerpt }} {% if post.link %} [Read
more](%7B%7B%20post.link%20%7D%7D) {% else %} [Read
more](%7B%7B%20post.url%20%7D%7D) {% endif %}

{% endfor %}

