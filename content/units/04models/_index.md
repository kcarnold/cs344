---
title: "Unit 4: Models"
date: 2022-01-31
weight: 4
---

Students who complete this unit will demonstrate that they can:

- Describe the basic structure of a machine learning model.
- Describe the overall approach of Stochastic Gradient Descent.
- Describe the parameters and operation of a linear layer.
- Describe the difference between a metric and a loss function.
- Identify the following loss functions: Mean Squared Error, Mean Absolute Difference, and Cross-Entropy. <!-- - Contrast sensible vs non-sensible sequences of model layers (e.g., alternating linear and nonlinear) -->
- Implement a basic image classifier model using a fully-connected network.
- Compute the gradients of programs with respect to parameters using one level of backpropagation

## Preparation

- Read {{< fastbook num="4" nbname="04_mnist_basics.ipynb" >}}.
- Watch {{< fastvideo num="3" >}}.
- Watch the first hour of {{< fastvideo num="4" >}}.
- Complete the prep quiz in Moodle.

### Prep Notes

- For this week, focus on how things are *used* rather than the underlying math, especially for tensors (which have several different definitions) and derivatives (which we'll get to shortly).
- The book uses "rank" to refer to the number of axes of a tensor, but "rank" means something different in linear algebra. To avoid confusion, let's call it "number of axes", or perhaps "number of dimensions" (abbreviated "ndim" in PyTorch).
  - For example, a length-5 column vector times a length-4 row vector would give a matrix (tensor) with two axes (2-dimensional), with shape (5, 4) and rank 1 in the linear algebra sense. See [this notebook](https://nbviewer.jupyter.org/github/kcarnold/cs344/blob/main/src/Number_of_Dimensions_is_not_Rank.ipynb).

### Optional Supplemental Materials

- [Lecture 1 of MIT 6.S191 Deep Learning](https://www.youtube.com/watch?v=5tvmMX8r_OM&list=PLtBw6njQRU-rwp5__7C0oIVt26ZgjG9NI&index=1)
- [$1 gesture recognizer](https://depts.washington.edu/acelab/proj/dollar/index.html) for a different style of simple model (we won't study this)
