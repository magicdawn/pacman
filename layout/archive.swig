{% extends "_extends/basic.swig" %}

{% block body %}
  {% include "_includes/archive.swig" {item: page, index: false,table: false} %}
{% endblock %}

{% block after_footer %}
  {% include "_includes/after_footer.swig" %}
{% endblock %}