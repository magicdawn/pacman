<div class="archive-title" >
  <h2 class="tag-icon">{{ __('tags') }}</h2>
  {% set tags = site.tags.sort('name') %}

  {% for item in tags %}
    <a data-src="{{ config.root + item.path }}" href="#{{ item.name }}" 
      title="{{ item.name }}">
        {{ item.name }}
        <sup>{{ item.posts.length }}</sup>
    </a>
  {% endfor %}
</div>

<div id="main" class="archive-part">
  <div class="all-list-box"></div>
</div>