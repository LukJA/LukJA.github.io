---
title: Latest Posts 
---

{% include analytics.html %}

<link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
<link rel="icon" type="image/x-icon" href="favicon.ico">

# Latest: 
<ul>
  {% for post in site.posts limit:1 %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a><br>
      {{ post.date | date_to_string }} - {{ post.author }} <br>
      {{ post.extra_info }}
      {{ post.excerpt }}
    </li>
  {% endfor %}
</ul>
# All Posts:
<ul>
  {% for post in site.posts offset:1 %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a><br>
      {{ post.date | date_to_string }} - {{ post.author }} <br>
      {{ post.extra_info }}
      {{ post.excerpt }}
    </li>
  {% endfor %}
</ul>

