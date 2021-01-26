---
title: Ken's hunches
author: Ken Arnold
date: '2021-01-25'
slug: ken-s-hunches
categories: []
tags: []
subtitle: ''
summary: ''
authors: []
lastmod: '2021-01-25T17:23:03-05:00'
featured: no
image:
  caption: ''
  focal_point: ''
  preview_only: no
projects: []
---

## Ken's hunches

The project for this class is a great place to explore crazy ideas that probably
won't work but would be cool if they did. Here's a few things I've thought of,
just for some ideas.

* Look at the *change in loss* (maybe proportional to change in activations?) on a batch *other than the one being updated*
  * could be a useful diagnostic for learning
  * could be useful for adapting learning rate / strategy
* For sequence modeling tasks, what if attention values could mix with the attention values of nearby timesteps? smoothed attention
  * More flexible: the attention given to a token at "past" timesteps can be used as input to computing the attention at the current timestep
* Regularization by “crossing wires” (mixing weights/activations with reshuffled versions from same layer) or local blur (nonlinear?) or windowed softmax for local inhibition.
