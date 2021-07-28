---
layout: default
---

{% for category in site.category-list %}
<h2 id="{{ category }}">{{ category | capitalize | replace:'-',' ' }}</h2>
<ul>
    {% for page in site.pages %}
        {% if page.categories contains category %}
            <li><a href="{{ page.url }}">{{ page.title }}</a></li>
        {% endif %}
    {% endfor %}
</ul>
{% endfor %}
