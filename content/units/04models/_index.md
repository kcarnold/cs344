---
title: "Unit 4: Models"
date: 2022-01-31
weight: 4
---

Students who complete this unit will demonstrate that they can:

- Describe the basic structure of a machine learning model.
- Describe the overall approach of Stochastic Gradient Descent: how does it use information from a batch of data to improve its performance on that and other data?
- Describe the parameters of a linear layer and how they are used to compute its output.
- Identify the following loss functions: Mean Squared Error and Mean Absolute Difference.
- Trace the execution of a basic image classifier model using a fully-connected network. <!-- next year: clarify this one; it's currently trace-mnist fundamentals -->
- Apply automatic differentiation (as implemented in PyTorch) to compute the gradients of programs

(Note that we're focusing on *regression* models this week; next week we'll add *classification*.)

## Preparation

- Check your prior knowledge:
  - can you define the Mean Squared Error (MSE) of a linear regression (i.e., `y = m*x + b`)?
  - can you write an algorithm that, given some data and a starting `m` and `b`, returns a new `m` and `b` that give a lower MSE?
- If not, skim through [this linreg explainer](https://cs.calvin.edu/courses/info/602/resources/linreg-explainer/) originally by Amazon Web Services, some [edits by Prof Arnold](https://github.com/kcarnold/aws-mlu-explain))

**New way**: Watch [Zero to Hero](https://karpathy.ai/zero-to-hero.html) part 1: [The spelled-out intro to neural networks and backpropagation: building micrograd](https://www.youtube.com/watch?v=VMj-3S1tku0)

- First, watch the video and take conceptual notes.
- Then, do [these exercises](https://colab.research.google.com/drive/1FPTx1RXtBfc4MaTkf7viZZD4U2F9gtKN?usp=sharing#scrollTo=qXaH59eL9zxf)
- Then, re-watch and write the code along with him.

**Old way** (still valid, though video links were for the previous version of the course)

- Read {{< fastbook num="4" nbname="04_mnist_basics.ipynb" >}}.
- Watch {{< fastvideo num="3" >}}.
- Watch the first hour of {{< fastvideo num="4" >}}.
- Complete the prep quiz in Moodle.
- Play [the loss game](https://ds100.org/fa18/assets/lectures/lec09/loss_game.html)

### Prep Notes

- For this week, focus on how things are *used* rather than the underlying math, especially for tensors (which have several different definitions) and derivatives (which we'll get to shortly).
- The book uses "rank" to refer to the number of axes of a tensor, but "rank" means something different in linear algebra. To avoid confusion, let's call it "number of axes", or perhaps "number of dimensions" (abbreviated "ndim" in PyTorch).
  - For example, a length-5 column vector times a length-4 row vector would give a matrix (tensor) with two axes (2-dimensional), with shape (5, 4) and rank 1 in the linear algebra sense. See [this notebook](https://nbviewer.jupyter.org/github/kcarnold/cs344/blob/main/src/Number_of_Dimensions_is_not_Rank.ipynb).

### Optional Supplemental Materials

For an explanation of minimizing squared error, see [Ordinary Least Squares Regression explained visually](https://setosa.io/ev/ordinary-least-squares-regression/).

There are too many videos out there on deep learning to list here, but here's a few very different styles:

- (MIT) [Lecture 1 of MIT 6.S191 Deep Learning](https://www.youtube.com/watch?v=5tvmMX8r_OM&list=PLtBw6njQRU-rwp5__7C0oIVt26ZgjG9NI&index=1)
- (elementary) [CrashCourse AI Playlist](https://www.youtube.com/playlist?list=PL8dPuuaLjXtO65LeD2p4_Sb5XQ51par_b)
- (mathy) [3Blue1Brown Neural Networks](https://www.youtube.com/playlist?list=PLZHQObOWTQDNU6R1_67000Dx_ZCJB-3pi) (highly recommended channel for math)

<!-- - [$1 gesture recognizer](https://depts.washington.edu/acelab/proj/dollar/index.html) for a different style of simple model (we won't study this) -->

{{% details summary="Monday Class" %}}

- Scripture: [Genesis 1](https://www.biblegateway.com/passage/?search=Genesis%201&version=NIV)
  - Ctrl-F for "saw"
  - We are surrounded by rich data.
- Modeling Fundamentals
  - What are the basic steps of gradient-based learning?
  - How does a neural net make a prediction? Simple MLP.
  - How do we evaluate those predictions?
  - How do we iteratively improve a model?
- some [slides from last week](https://cs.calvin.edu/courses/cs/344/23sp/slides/w3/w3-data-and-ethics.html#21)
- Programming Moment: [Comprehensions](https://cs.calvin.edu/courses/cs/106/cur/units/14bonus/slides.html#/comprehensions) <!-- TODO: move these into local slides -->

{{% /details %}}
