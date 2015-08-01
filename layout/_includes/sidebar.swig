<div class="openaside">
  <a class="navbutton" href="#" title="{{ __('showsidebar') }}">
  </a>
</div>

{% if table && (item.toc !== false) && theme.toc.aside %}
  <strong class="toc-title">
    {{ __('contents') }}
  </strong>
  {{ toc(item.content) }}
{% endif %}

<div id="asidepart">
  <div class="closeaside">
    <a class="closebutton" href="#" title="{{ __('hidesidebar') }}">
    </a>
  </div>
  <aside class="clearfix">
    {% for w in theme.widgets %}
      {% set tpl =  '../_widget/' + w + '.swig' %}
      {% include tpl %}
    {% endfor %}
  </aside>
</div>