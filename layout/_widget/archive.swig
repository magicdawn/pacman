{% if site.posts.length %}
  <div class="archiveslist">
    <p class="asidetitle">
      <a href="{{ config.root }}archives">{{ __('archive_a') }}</a>
    </p>

    {% autoescape false %}
    {{ list_archives() }}
    {% endautoescape %}
  </div>
{% endif %}