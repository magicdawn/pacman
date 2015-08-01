<!DOCTYPE HTML>
<html 
  {%- if config.language -%}
    lang="{{ config.language }}"
  {%- endif -%}>
<head>
  <title>
    {%- block title -%}
      {{ config.title }}
    {%- endblock -%}
  </title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=3, minimum-scale=1">
  {% if config.author %}
    <meta name="author" content="{{ config.author }}">
  {% endif %}

  {% if page.description %}
    <meta name="description" content="{{ page.description }}">
  {% endif %}
  
  {% if page.keywords %}
  <meta name="keywords" content="{{ page.keywords }}">
  {% endif %}

  {% if theme.author.twitter %}
  <meta name="twitter:card" content="summary" />
  <meta name="twitter:site" content="{{ theme.author.twitter }}" />
  <meta name="twitter:title" content="{{ title || config.title }}" />
    {% if (page.description) %}
      <meta name="twitter:description" content="{{ page.description }}" />
    {% endif %}
  {% endif %}

  {% if theme.rss %}
  <link rel="alternate" href="{{ theme.rss }}" title="{{ config.title }}" type="application/atom+xml">
  {% endif %}

  {% if (theme.favicon) %}
  <link rel="icon" href="{{ config.root + theme.favicon }}">
  {% endif %}

  {% if theme.apple_icon %}
  <link rel="apple-touch-icon" href="{{ config.root + theme.apple_icon }}">
  <link rel="apple-touch-icon-precomposed" href="{{ config.root + theme.apple_icon }}">
  {% endif %}

  {{ css('/css/style') }}
</head>
<body>

  {# header #}
  {% include "../_includes/header.swig" %}
  {# end header #}
  
  <div id="container">
    {# body #}
    {% block body %}
    {% endblock %}
  </div>

  {# footer #}
  {% include "../_includes/footer.swig" %}
  {# end footer #}

  {% block after_footer %}
    {# some one may want add something after footer #}
  {% endblock %}

  <script src="/js/jquery-2.1.0.min.js"></script>
  <script type="text/javascript">
    $(document).ready(function(){ 
      $('.navbar').click(function(){
        $('header nav').toggleClass('shownav');
      });
      var myWidth = 0;
      function getSize(){
        if( typeof( window.innerWidth ) == 'number' ) {
          myWidth = window.innerWidth;
        } else if( document.documentElement && document.documentElement.clientWidth) {
          myWidth = document.documentElement.clientWidth;
        };
      };
      var m = $('#main'),
          a = $('#asidepart'),
          c = $('.closeaside'),
          o = $('.openaside');
      $(window).resize(function(){
        getSize(); 
        if (myWidth >= 1024) {
          $('header nav').removeClass('shownav');
        }else
        {
          m.removeClass('moveMain');
          a.css('display', 'block').removeClass('fadeOut');
          o.css('display', 'none');
            
        }
      });
      c.click(function(){
        a.addClass('fadeOut').css('display', 'none');
        o.css('display', 'block').addClass('fadeIn');
        m.addClass('moveMain');
      });
      o.click(function(){
        o.css('display', 'none').removeClass('beforeFadeIn');
        a.css('display', 'block').removeClass('fadeOut').addClass('fadeIn');      
        m.removeClass('moveMain');
      });
      $(window).scroll(function(){
        o.css("top",Math.max(80,260-$(this).scrollTop()));
      });
    });
  </script>
</body>
</html>