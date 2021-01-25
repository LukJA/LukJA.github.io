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

Images:
![Include an Image](/assets/img/chain.png)

<br>

_Read another post?_

## Latest:
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

## Recent:
<ul>
  {% for post in site.posts offset:1 limit:2 %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a><br>
      {{ post.date | date_to_string }} - {{ post.author }} <br>
      {{ post.extra_info }}
    </li>
  {% endfor %}
</ul>

