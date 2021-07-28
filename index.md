---
layout: default
---

{% for category in site.category-list %}
### {{ category | capitalize | replace:'-',' ' }}
<ul>
    {% for page in site.pages %}
        {% if page.categories contains category %}
            <li><a href="{{ page.url }}">{{ page.title }}</a></li>
        {% endif %}
    {% endfor %}
</ul>
{% endfor %}
