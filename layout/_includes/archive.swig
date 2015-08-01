{% if page.category %}
  {% set title = page.category %}
  {% set icon = 'category' %}
{% endif %}

{% if page.tag %}
  {% set title = page.tag %}
  {% set icon = 'tag' %}
{% endif %}

{% if page.archive %}
  {% set icon = 'archive' %}

  {% if page.year %}
    {% set title = page.year %}

    {% if page.month %}
      {% set title += '/' + page.month %}
    {% endif %}

  {% else %}
    {% set title = __('archive_a') %}
  {% endif %}
{% endif %}

<div class="archive-title" >
  <h2 class="{{ icon }}-icon">{{ title }}</h2>
  {% if page.archive %}
    <div class="archiveslist archive-float clearfix">
     {{ list_archives() }}
    </div>
  {% endif %}
</div>

<div id="main" class="archive-part clearfix">
  <div id="archive-page">
  
  {% for item in page.posts %}
    {% include "article.swig" {item: item, index: true,desc: false} %}
  {% endfor %}
  
  {% if page.total > 1 %}
    <nav id="page-nav" class="clearfix archive-nav">
      {{ paginator({
        prev_text: '&laquo; Prev',
        next_text: 'Next &raquo;'
      }) }}
    </nav>
  {% endif %}

  </div>
</div>