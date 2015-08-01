{% extends "_extends/basic.swig" %}

{% if _.endsWith(page.source,'.md') %}
  {% include "_includes/post/article.swig" {item: page, index: false,table: false} %}
{% else %}
  {{ page.content }}
{% endif %}
