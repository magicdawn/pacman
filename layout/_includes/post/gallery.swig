

{% if item.photos && item.photos.length %}
<div class="article-gallery">
  <div class="article-gallery-photos">
    {% for i,photo in item.photos %}
      <a class="article-gallery-img fancybox" 
        href="{{ photo }}" rel="gallery_{{ item._id }}">
        <img src="{{ photo }}" itemprop="image">
      </a>
    {% endfor %}
  </div>
</div>
{% endif %}