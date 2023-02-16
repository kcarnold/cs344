---
title: "Unit 6: Recap and Regularization"
date: 2022-02-14
weight: 6
---

In this unit, after reviewing where we've been, we push towards state-of-the-art models (still focusing on computer vision). We'll first show how our work last 2 weeks connects to the pre-trained models we used in the opening weeks. Then, we’ll introduce or revisit tools that allow our models to achieve high performance, such as data augmentation and regularization. Finally, we’ll get more practice with how neural networks work from the ground up as we implement our own simple neural net image classifier from scratch (definitely something to mention in an interview!).
Students who complete this unit will demonstrate that they can:

- Explain how a pre-trained model can be repurposed for a new task by separating it into a general-purpose "body" (aka "encoder") and a task-specific "head".
- Identify some examples of data augmentation and regularization.
- Predict the effect of data augmentation and regularization on model training.
- Implement a multi-layer neural network using basic numerical computing primitives

## Preparation

The fastai course videos are still a bit disorganized, sorry about that.

- Read {{<fastbook num="6" nbname="06_multicat.ipynb">}}. Pay attention to:
  - What has to change if classes are or aren't mutually exclusive?
  - What has to change if you want a regression instead of classification?
- Skim {{<fastbook num="7" nbname="07_sizing_and_tta.ipynb">}}.
- If you haven't yet, read {{<fastbook num="17" nbname="17_foundations.ipynb">}}.
- Video
  - Some of this material is part of the video you already watched, {{<fastvideo num="3">}}. Then some of it gets delayed to {{<fastvideo num="8">}}, I know, it's confusing, sorry.
  - Instead, if you want to watch something, I recommend getting ahead with next week's videos, because they split some material between two different videos again. See [Prep 7](../07embedding/) for the details.


### Supplemental Materials

A nice intuition about why layers matter: [Why depth matters in a neural network (Deep Learning / AI) - YouTube](https://www.youtube.com/watch?v=e5xKayCBOeU&list=PLbg3ZX2pWlgKV8K6bFJr5dhM7oOClExUJ&index=4)

Strategies for getting state-of-the-art performance:

- [Simple considerations for simple people building fancy neural networks](https://huggingface.co/blog/simple-considerations)
- [How to be an effective Deep Learning Researcher/Engineer](https://www.dropbox.com/s/3iv93falplmt0yc/8_effective_dl.pdf?dl=0)

We'll be doing some automatic differentiation this week:

- [Yet another backpropagation tutorial](https://windowsontheory.org/2020/11/03/yet-another-backpropagation-tutorial/) by Harvard CS Professor Boaz Barak
[Overview of PyTorch Autograd Engine | PyTorch](https://pytorch.org/blog/overview-of-pytorch-autograd-engine/)
- [Automatic differentiation in machine learning: a survey](https://arxiv.org/abs/1502.05767)
- [`autograd-for-dummies`: A minimal autograd engine and neural network library for machine learning students.](https://github.com/malwaredllc/autograd-for-dummies)

Finally, I sometimes remark that "machine learning is lazy" (in that it tends to focus on superficial easy features). Here's a more precise statement of a related claim: [What do deep networks learn and when do they learn it](https://windowsontheory.org/2021/02/17/what-do-deep-networks-learn-and-when-do-they-learn-it/). A recent paper describes what to do about it: [Learning an Invertible Output Mapping Can Mitigate Simplicity Bias in Neural Networks | Abstract](https://arxiv.org/abs/2210.01360)

## Class Meetings

{{% details summary="Monday class" %}}

> If anyone uncovers a pit or digs one and fails to cover it and an ox or a donkey falls into it, the one who opened the pit must pay the owner for the loss and take the dead animal in exchange.
>
> If anyone’s bull injures someone else’s bull and it dies, the two parties are to sell the live one and divide both the money and the dead animal equally. However, if it was known that the bull had the habit of goring, yet the owner did not keep it penned up, the owner must pay, animal for animal, and take the dead animal in exchange.
> 
> Exodus 21:33-36 (NIV)

- [Slides](../../slides/w6/w6-recap.html): Head and Body

{{% /details %}}

{{% details summary="Wednesday in lab" %}}

See Slides for the precision-recall chart I was trying to draw in class. (I almost had it right: it's True Positive vs *False* Positive.)

- [Slides](../../slides/w6/w6-recap.html)
- [Week 5 Q&A](../05learning/qa/)

- Linear layers
  - What are their parameters? How do they use them to compute the results?
  - Why do we need nonlinearities? without them, a stack of Linear layers is just a Linear layer.
  - How do ReLUs allow piecewise linear function approximation?

{{% /details %}}

<!--

Next year: the diagram of overconfidence kinda worked, but:

- more visuals would have helped
- I'm getting a lot of mileage out of 1D function approximation, but it might also be too limiting. Perhaps working with dot products from the start would be a better intuitive framework? Rotate (Linear), then selectively squish (ReLU)?

-->