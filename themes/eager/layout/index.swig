{% extends "_layout.swig" %}
{% import '_macro/post.swig' as post_template %}

{% block title %} {{ config.title }} {% endblock %}

{% block content %}

  <div class="basic-info">
    <h1>Chongming Gao 高崇铭<span></span></h1>
    <!-- <p>The first year Ph.D. student, under the supervision of <a href="https://sites.google.com/site/dbhongzhi/" target="_blank">Hongzhi Yin</a>.</p>
    <p>at <a href="https://www.uq.edu.au/" target="_blank">The University of Queensland, Australia</a>.</p> -->
    <p>D.Eng. at University of Science and Technology of China <a href="http://en.ustc.edu.cn/" target="_blank">(USTC)</a>.</p>
    <p>Advisor: <a href="http://staff.ustc.edu.cn/~hexn/" target="_blank">Xiangnan He (何向南)</a>.</p>
    <p><br/></p>
    <p><B>Research Interests:</B> Causal recommendation,</p>
    <p>Conversational recommender system,</p>
    <p>and natural language processing.</p>
    <p><br/></p>
    <a href="mailto:{{ theme.social.email }}" class="iconfont icon-email" title="{{ email }}">
      <span>{{ theme.social.email }}</span>
    </a>
    <p>Hefei, China</p>
  </div>


  <script>
      document.getElementById('mobile-panel').classList.add('home-page');
      $( "a:contains('{{ __('menu.home') }}')" )[0].classList.add('current');
  </script>
{% endblock %}

