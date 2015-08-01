{% if item.tags && items.tags.length %}

  <div class="article-tags">
    <span>
    </span>
    {% for tag in item.tags %}
      <a href="{{ config.root + tag.path }}">{{ tag.name }}</a>
    {% endfor %}
  </div>

{% endif %}


{% if item.categories && item.categories.length %}
  <div class="article-categories">
    <span></span>
    {{ 
      list_categories(item.categories, {
        show_count: false,
        class: 'article-category',
        style: 'none',
        separator: '►'
      }) 
    }}
  </div>
{% endif %}