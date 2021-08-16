---
layout: default
---
<!-- List all recipes -->
<h2 id="all-recipes">All recipes</h2>
<ul>
{% for page in site.pages %}
    {% if page.layout == "recipe" %}
        <li><a href="{{ page.url }}">{{ page.title }}</a></li>
    {% endif %}
{% endfor %}
</ul>

<!-- List recipes by category -->
<h2 id="{{ category }}">{{ category | capitalize | replace:'-',' ' }}</h2>
<ul>
    {% for page in site.pages %}
        {% if page.categories contains category %}
            <li><a href="{{ page.url }}">{{ page.title }}</a></li>
        {% endif %}
    {% endfor %}
</ul>
{% endfor %}
