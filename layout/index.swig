{% extends "_extends/basic.swig" %}

{% block body %}

<div id="main">
  {% for item in page.posts %}
    {% include "_includes/article.swig" {item: item, index: true,desc: true} %}
  {% endfor %}

  {% if page.total > 1 %}
    <nav id="page-nav" class="clearfix">
      {{ paginator({
        prev_text: '&laquo; Prev',
        next_text: 'Next &raquo;'
      }) }}
    </nav>
  {% endif %}
</div>

{# sidebar #}
{% include "_includes/sidebar.swig" {item: page,table: false} %}

{% endblock %}