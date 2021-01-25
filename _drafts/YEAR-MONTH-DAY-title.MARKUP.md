---
layout: post
title:  "Post Title"
author: Luke J
permalink: /blogpost/:year/:title:output_ext
published: true

tags: isolated post tags
tag: singletag

categories: isolated post categories
category: singlecat

customvariable: ilovepizza

excerpt_separator: <!--more-->
extra_info: "This will show up on the listing"
---

This will appear on the listing and in the main post
<!--more-->

Posts List:
<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>

Tag and Tagged Post list:
{% for tag in site.tags %}
  <h3>{{ tag[0] }}</h3>
  <ul>
    {% for post in tag[1] %}
      <li><a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
{% endfor %}

Post list with excerpts:
<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
      {{ post.excerpt }}
    </li>
  {% endfor %}
</ul>

Images:
![Include an Image](/assets/img/chain.png)
