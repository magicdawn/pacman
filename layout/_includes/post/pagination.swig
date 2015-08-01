{% if page.prev || page.next %}
<nav class="article-nav clearfix">

  {% if page.prev %}
    <div class="prev" >
      <a href="{{ config.root }}{{ page.prev.path }}" title="{{ page.prev.title }}">
        <strong>PREVIOUS:</strong><br/>
        <span>
          {% if page.prev.title %}
            {{ page.prev.title }}
          {% else %}
            (no title)
          {% endif %}
        </span>
      </a>
    </div>
  {% else %}
    <div class="next">
      <a href="{{ config.root }}{{ page.next.path }}" title="{{ page.next.title }}">
        <strong>NEXT:</strong>
        <br/> 
        <span>
          {% if page.next.title %}
            {{ page.next.title }}
          {% else %}
            (no title)
          {% endif %}
        </span>
      </a>
    </div>
  {% endif %}

</nav>
{% endif %}