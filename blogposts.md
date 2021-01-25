---
title: Posts 
---

{% include analytics.html %}

<link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
<link rel="icon" type="image/x-icon" href="favicon.ico">

## Posts:

Post list with excerpts:

<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a><br>
      {{ post.date | date_to_string }} - {{ post.author }} <br>
      {{ post.extra_info }}
      {{ post.excerpt }}
    </li>
  {% endfor %}
</ul>