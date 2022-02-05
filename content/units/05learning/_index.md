---
title: "Unit 5: Learning"
date: 2022-02-07
weight: 5
---

Students who complete this unit will demonstrate that they can:

- Describe the difference between a metric and a loss function.
- Describe and compute cross-entropy loss
- Contrast sensible vs non-sensible sequences of model layers (e.g., alternating linear and nonlinear)
- Implement a logistic regression model from fundamentals

*This week focuses on classification*.

<!-- - Activities
	- softmax fundamentals 1 and 2
	- some variation on Learning Proportions lab? ^^bandit learning^^: how likely is each arm to give a payout? -->

## Preparation

The fastai course videos are a bit disorganized here, sorry about that.

- Watch the Lab 4 [walk-through video](https://calvincollege.sharepoint.com/:f:/s/Section_81629/EiZcXdth0VZMhjz4S_69w0oByq-i_tuvqJMm1VgDMjNtJw?e=EC58DP) if you have not yet.
- Read {{< fastbook num="5" nbname="05_pet_breeds.ipynb" >}}.
  - skip Presizing and LR finder
  - skim "discriminative" rates (which would better be called "layer-dependent learning rates")
  - Watch {{< fastvideo num="4" >}} (starting about 1 hr in) and {{<fastvideo num="6">}} (first half hour) for this material.
- Skim {{<fastbook num="6" nbname="06_multicat.ipynb">}}.
  - Watch {{<fastvideo num="6">}} from 30m to 1h30m for this material.

## Class Meetings

### Monday

- Backpropagation review
- Work session for Homework 4

### Wednesday

- Discussion summary (come prepared to contribute)
- Classification losses and metrics
  - the bracket vs the Elo

### Friday

- Nonlinearities

### Homework

- Softmax fundamentals
- Extend linear regression to logistic regression