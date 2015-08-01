<section class="{{ item.layout }}" itemscope itemprop="blogPost">
  {# a start #}
  {% if item.link %}
  <a href="{{ item.link }}" target="_blank">
  {% else %}
  <a href="{{ config.root }}{{ item.path }}" title="{{ item.title }}" itemprop="url">
  {% endif %}

    <h1 itemprop="name">
      {{item.title}}
    </h1>

    {% if desc %}
      {% if item.description %}
        <p itemprop="description" >{{ item.description }}</p>
      {% elif item.excerpt %}
        <p itemprop="description" >
          {{ strip_html(item.excerpt).trim().substring(0, 140) }}
        </p>
      {% else %}
        <p itemprop="description" >
          {{ strip_html(item.content).trim().substring(0, 140) }}
        </p>
      {% endif %}
    {% endif %}

    <time datetime="{{ date_xml(item.date) }}" itemprop="datePublished">
      {{ item.date.format(config.date_format) }}
    </time>

  {# a end #}
  </a>
</section>