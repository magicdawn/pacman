{% if site.tags.length %}
  <div class="tagslist">
    <p class="asidetitle">{{ __('tags') }}</p>
    <ul class="clearfix">
      {% set items = site.tags.sort('name').slice(0,20) %}
      {% for item in items %}
        <li>
          <a href="{{ config.root + item.path }}" title="{{ item.name }}">
            {{ item.name }}
            <sup>{{ item.posts.length }}</sup>
          </a>
        </li>
      {% endfor %}
    </ul>
  </div>
{% endif %}