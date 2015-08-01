<div id="main" class="{{ item.layout }}" itemscope itemprop="blogPost">
  <article itemprop="articleBody"> 
    {% include "header.swig" %}
    <div class="article-content">
      {% include "gallery.swig" %}

      {% if table && (item.toc !== false) && theme.toc.article %}
        <div id="toc" class="toc-article">
          <strong class="toc-title">{{ __('contents') }}</strong>
        {{ toc(item.content) }}
        </div>
      {% endif %}

      {{ item.content }}  
    </div>

    {% include "footer.swig" %}
  </article>

  {% include "pagination.swig" %}
  {% include "comment.swig" %}
</div>