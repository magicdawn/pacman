<footer class="article-footer clearfix">
  {% include "catetags.swig" %}

  <div class="article-share" id="share">
    {% if theme.jiathis.enable %}
      {% include "jiathis.swig" %}
    {% else %}
      <div data-url="{{ item.permalink }}" data-title="{{ item.title || config.title }}" 
        data-tsina="{{ theme.author.tsina }}" class="share clearfix">
      </div>
    {% endif %}
  </div>
</footer>