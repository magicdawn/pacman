{% if site.categories.length %}
<div class="categorieslist">
  <p class="asidetitle">{{ __('categories') }}</p>
    <ul>
    {% for item in site.categories.sort('name') %}
      <li>
        <a href="{{ config.root }}{{ item.path }}" title="{{ item.name }}">
          {{ item.name }}
          <sup>{{ item.posts.length }}</sup>
        </a>
      </li>
    {% endfor %}
    </ul>
</div>
{% endif %}