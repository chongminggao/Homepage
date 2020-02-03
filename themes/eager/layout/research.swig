{% extends "_layout.swig" %}
{% import '_macro/post.swig' as post_template %}

{% block title %} Research - Chongming Gao {% endblock %}

{% block content %}
    <script>
        document.getElementById('mobile-panel').classList.add('research-page');
        $( "a:contains('{{ __('menu.research') }}')" )[0].classList.add('current');
        $('.research-page')[0].classList.remove('container');
    </script>


    <section id="posts" class="posts">
        <section id="accepted" class="stage">
            <h1 class="stage"><span>Accepted</span></h1>
        {% for post in site.posts %}
            {% if post.top>=100 %}
                {{ post_template.render(post) }}
            {% endif %}
        {% endfor %}
        </section>
        <section id="underReview" class="stage">
            <h1 class="stage"><span>Under Review</span></h1>
            {% for post in site.posts %}
                {% if post.top>=10 and post.top<100 %}
                    {{ post_template.render(post) }}
                {% endif %}
            {% endfor %}
        </section>
        <section id="underReview" class="stage">
            <h1 class="stage"><span>To Be Submitted</span></h1>
            {% for post in site.posts %}
                {% if not post.top or post.top<10 %}
                    {{ post_template.render(post) }}
                {% endif %}
            {% endfor %}
        </section>
        <script>
            $('attached a').attr('target', '_blank');

            // Truncate the empty section.
            $('section.stage').each(function(){
                var num = $(this).find("article").length;
                if(num <= 0){
                    $(this).remove();
                }
            });

            // Add page number mark.
            $("article").each(function(index){
                index = index + 1;
                var page = '<p class="paper-page"><span>' + index +  '</span></p>';
                $(this).append(page);
            });

        </script>
    </section>

    {% include "_partial/pagination.swig" %}


{% endblock %}

