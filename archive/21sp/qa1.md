---
title: Q&A Week 1
author: Ken Arnold
date: '2021-02-11'
slug: q-a-week-1
categories: []
tags: []
subtitle: ''
summary: ''
authors: []
lastmod: '2021-02-20'
featured: no
image:
  caption: ''
  focal_point: ''
  preview_only: no
projects: []
---

> Is it possible to train an AI to train AI?

Yes! It's called "meta-learning". It's currently quite computationally expensive but getting better. That's partly why we're going to focus on developing intuition rather than nailing down all the nitty gritty code details.

> AI seems like an art, not a science... why does number of layers vs layer width make a different?

In theory, one studies the theory of something first and then applies it. In practice, people try stuff out, figure out that it works, and then look for theory to explain systematic patterns they observe. Some theory has emerged about neural net performance, but there's a lot that still defies simple explanation. Maybe you can figure it out!

On the question of number of layers: in theory a network with one single hidden layer can learn anything... if that layer is infinitely wide. Using more layers allows each layer to be simpler. It also affects training dynamics and generalization in interesting ways, some of which we'll study as we progress.

> Will adjusting weights always lead to an optimal solution?

No! But interestingly, an "optimal" (minimum training-set loss) solution might actually be suboptimal because it overfits to inconsequential details about the training set. (There's some active debate about this in the literature.)

You can often make a model generalize better by making its task harder. We'll see that next week!

## Things we'll get to soon:

-   How do we know how to change the weights to make the AI better?
-   Is bias the fault of the training data or the model or what?
-   What can go wrong with AI? What structures / countermeasures / policies can we put in place to keep AI from being used irresponsibly?
