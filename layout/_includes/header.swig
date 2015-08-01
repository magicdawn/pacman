<header>
  <div>
    {% if theme.imglogo.enable && theme.imglogo.src %}
    <div id="imglogo">
      <a href="{{ config.root }}">
        <img src="{{ config.root + theme.imglogo.src }}" alt="{{ config.title }}" title="{{ config.title }}"/>
      </a>
    </div>
    {% endif %}

    <div id="textlogo">
      <h1 class="site-name">
        <a href="{{ config.root }}" title="{{ config.title }}">
          {{ config.title }}
        </a>
      </h1>
      <h2 class="blog-motto">
        {% if config.subtitle %}
          {{ config.subtitle }}
        {% endif %}
      </h2>
    </div>

    <div class="navbar">
      <a class="navbutton navmobile" href="#" title="{{ __('menu') }}">
      </a>
    </div>

    <nav class="animated">
      <ul>
        {% for text,url in theme.menu %}
          <li>
            <a href="{{ url }}">{{ text }}</a>
          </li>
        {% endfor %}

        <li>
          {% if theme.google_cse && theme.google_cse.enable %}
            <form class="search" action="{{ config.root }}search/index.html" method="get" accept-charset="utf-8">
              <label>Search</label>
              <input type="text" id="search" autocomplete="off" name="q" maxlength="20" 
                placeholder="{{ __('search') }}" />
            </form>
          {% else %}
            <form class="search" action="//google.com/search" method="get" accept-charset="utf-8">
              <label>Search</label>
              <input type="text" id="search" name="q" autocomplete="off" maxlength="20" 
                placeholder="{{ __('search') }}" />
              <input type="hidden" name="q" value="site:{{ config.url.replace('https://','') }}">
            </form>
          {% endif %}
        </li>
      </ul>
    </nav>      
  </div>
</header>