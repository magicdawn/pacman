<div id="footer" >
  {% if theme.author_img_enable %}
  <div class="line">
    <span></span>
    <div class="author"></div>
  </div>
  {% endif %}

  {% if theme.author.intro_line1 && theme.author.intro_line2 %} 
    <section class="info">
      <p>
        {{ theme.author.intro_line1 }}<br/>
        {{ theme.author.intro_line2 }}</p>
    </section>
  {% endif %}

  <div class="social-font clearfix">
    {% if theme.author.weibo  %}
    <a href="http://weibo.com/{{ theme.author.weibo }}" target="_blank" title="weibo"></a>
    {% endif %}

    {% if theme.author.twitter %}
    <a href="https://twitter.com/{{theme.author.twitter }}" target="_blank" title="twitter"></a>
    {% endif %}

    {% if theme.author.github %}
    <a href="https://github.com/{{theme.author.github }}" target="_blank" title="github"></a>
    {% endif %}

    {% if theme.author.facebook %}
    <a href="https://www.facebook.com/{{theme.author.facebook }}" target="_blank" title="facebook"></a>
    {% endif %}

    {% if theme.author.linkedin %}
    <a href="https://www.linkedin.com/{{theme.author.linkedin }}" target="_blank" title="linkedin"></a>
    {% endif %}
  </div>

  <p class="copyright">
    Powered by
    <a href="http://hexo.io" target="_blank" title="hexo">hexo</a> 
    and Theme by 
    <a href="https://github.com/A-limon/pacman" target="_blank" title="Pacman">Pacman</a>
    © 2015

    {% if config.author%}
      <a href="{{ config.url }}" target="_blank" title="{{ config.author }}">
        {{ config.author }}
      </a>
    {% else %}
      <a href="{{ config.url }}" title="{{ config.title }}">
        {{ config.title }}
      </a>
    {% endif %}
  </p>
</div>