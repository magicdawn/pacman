<div class="archive-title" >
  <h2 class="category-icon">
    {{ __('categories') }}
  </h2>
  
  {% set items = site.categories.sort('name') %}
  {% for item in items %}
    <a data-src="{{ config.root }}{{ item.path }}" href="#{{ item.name }}" 
    title="{{ item.name }}">
      {{ item.name }}
      <sup>{{ item.posts.length }}</sup>
    </a>
  {% endfor %}
</div>

<div id="main" class="archive-part">
  <div class="all-list-box">
  </div>
</div>

