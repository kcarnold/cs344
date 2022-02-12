---
title: "Unit 6: Recap and Regularization"
date: 2022-02-14
weight: 6
---

In this unit, after reviewing where we've been, we push towards state-of-the-art models (still focusing on computer vision). We’ll introduce or revisit tools that allow our models to achieve high performance, such as data augmentation and regularization. Finally, we’ll get more practice with how neural networks work from the ground up as we implement our own simple neural net image classifier from scratch (definitely something to mention in an interview!).
Students who complete this unit will demonstrate that they can:

- Identify some examples of data augmentation and regularization.
- Predict the effect of data augmentation and regularization on model training.
- Implement a multi-layer neural network using basic numerical computing primitives

## Preparation

The fastai course videos are still a bit disorganized, sorry about that.

- Read {{<fastbook num="6" nbname="06_multicat.ipynb">}}. Pay attention to:
  - What has to change if classes are or aren't mutually exclusive?
  - What has to change if you want a regression instead of classification?
- Skim {{<fastbook num="7" nbname="07_sizing_and_tta.ipynb">}}.
- Watch {{<fastvideo num="6">}} from 30m to 1h30m for this material.
- If you haven't yet, read {{<fastbook num="17" nbname="17_foundations.ipynb">}}.

### Supplemental Materials

Strategies for getting state-of-the-art performance:

- [Simple considerations for simple people building fancy neural networks](https://huggingface.co/blog/simple-considerations)
- [How to be an effective Deep Learning Researcher/Engineer](https://www.dropbox.com/s/3iv93falplmt0yc/8_effective_dl.pdf?dl=0)
- [A Light in the Dark: Deep Learning Practices for Industrial Computer Vision | Abstract](https://arxiv.org/abs/2201.02028)
  > We find that our neural networks achieve similar performances as pre-trained DNNs, even though they consist of far fewer parameters and do not rely on third-party datasets.

We'll be doing some automatic differentiation this week:

- [Automatic differentiation in machine learning: a survey](https://arxiv.org/abs/1502.05767)
- [`autograd-for-dummies`: A minimal autograd engine and neural network library for machine learning students.](https://github.com/malwaredllc/autograd-for-dummies)

## Class Meetings

### Monday

- Review
  - Homework 4 materials
  - Backpropagation
- Homework 5 work time

### Wednesday

- Discussion summary (come prepared to contribute)
- Augmentation and Regularization

### Friday

- 