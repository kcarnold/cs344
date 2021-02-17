---
title: Q&A Week 2
author: Ken Arnold
date: '2021-02-17'
slug: q-a-week-2
categories: []
tags: []
subtitle: ''
summary: ''
authors: []
lastmod: '2021-02-17T10:54:48-05:00'
featured: no
image:
  caption: ''
  focal_point: ''
  preview_only: no
projects: []
---

## Tech

> Why do I get different results when training the same model multiple times, even though I set the seed?

Nobody actually asked this, but it bugged me (based on my expectations from sklearn) so I looked into it.

From looking at `ImageDataLoaders.from_path_func??`, the `seed` parameter only controls the 
`RandomSplitter` (i.e., the split between training set and validation set). So
passing a `seed` should ensure that the same images make it into the training set
vs validation set each time, which is a really good idea.

To make a fastai training reproducible, call `set_seed(12345, reproducible=True)`
*before* creating the dataloader. That function seeds Python's standard library
`random`, `numpy.random`, and PyTorch's RNG.

(I eventually found this [discussed](https://github.com/fastai/fastai/issues/2832) in the fastai issue tracker. But before I did,
I poked around at the code. So: `DataLoader`s are iterators, so the `dls.train.__iter__??` code is what gets run
when you iterate through it. Notice that it starts with `self.randomize()`,
which creates a fresh `self.rng` from its previous RNG. And if you look at the definition of 
`DataLoader??` ([github link](https://github.com/fastai/fastai/blob/master/nbs/02_data.load.ipynb)),
`self.rng` is created by calling `random.Random`.)




## Context

> Will unbiased data prevent biased decisions?

Unfortunately, no. See this thread for a survey:

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Yesterday, I ended up in a debate where the position was &quot;algorithmic bias is a data problem&quot;.<br><br>I thought this had already been well refuted within our research community but clearly not.<br><br>So, to say it yet again -- it is not just the data. The model matters. <br><br>1/n</p>&mdash; Sara Hooker (\@sarahookr) <a href="https://twitter.com/sarahookr/status/1361373527861915648?ref_src=twsrc%5Etfw">February 15, 2021</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script> 


> How can I make sure that my AI project is beneficial?

Hard question. Here's [one paper](https://dl-acm-org.lib-proxy.calvin.edu/doi/pdf/10.1145/3341164) that suggests a set of questions to ask.
