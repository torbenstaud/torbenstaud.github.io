---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---
<!--
{% if author.googlescholar %}
  You can also find my articles on <u><a href="{{author.googlescholar}}">my Google Scholar profile</a>.</u>
{% endif %}

{% include base_path %}
{% for post in site.publications reversed %}
  {% include archive-single.html %}
{% endfor %}
-->
{% assign posts = site.publications | where: "show", "Yes"  %}
{% for post in posts reversed %}
  {% include archive-single.html %}
{% endfor %}

<h1 style="text-align:center; margin-top:40px;">Theses</h1>

{% capture theses_output %}
{% assign theses = site.publications | where: "type", "Thesis" %}
{% for thesis in theses reversed %}
  {% include archive-single.html %}
{% endfor %}
{% endcapture %}

{{ theses_output }}
