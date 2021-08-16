---
layout: default
---
{% assign categoryListSorted = site.category-list | sort %}
{% assign pagesSortedByTitle = site.pages | sort: "title" %}

<!-- List all recipes -->
<h2 id="all-recipes">All recipes</h2>
<ul>
{% for page in pagesSortedByTitle %}
    {% if page.layout == "recipe" %}
        <li><a href="{{ page.url }}">{{ page.title }}</a></li>
    {% endif %}
{% endfor %}
</ul>

<!-- List recipes by category -->
{% for category in categoryListSorted %}
<h2 id="{{ category }}">{{ category | capitalize | replace:'-',' ' }}</h2>
<ul>
    {% for page in pagesSortedByTitle %}
        {% if page.categories contains category %}
            <li><a href="{{ page.url }}">{{ page.title }}</a></li>
        {% endif %}
    {% endfor %}
</ul>
{% endfor %}
