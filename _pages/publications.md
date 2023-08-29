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
{% assign ustat = site.publications | where:"title", "Limit theorems for non-degenerate U-statistics of block maxima for time series" | first %}
{%include archive-single.html}
