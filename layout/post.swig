{% extends "_extends/basic.swig" %}

{% block body %}
  {% include "_includes/post/article.swig" {item: page, index: false,table: false} %}
  {% include '_includes/sidebar.swig' {item: page,table: true} %}
{% endblock %}

{% block after_footer %}
  {% include "_includes/after_footer.swig" %}
{% endblock %}