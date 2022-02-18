---
title: "Homework 6"
date: 2022-02-18
due: 2022-02-24
draft: false
---

This week we have a *narrative* homework and a *fundamentals* homework.

## Narrative

> "Our goal was to ... derive a new strong training recipe which achieves state-of-the-art results for the vanilla ResNet50 architecture when trained from scratch on ImageNet with no additional external data."
>
> [PyTorch blog](https://pytorch.org/blog/how-to-train-state-of-the-art-models-using-torchvision-latest-primitives/)

- Read the [Key Accuracy Improvements section](https://pytorch.org/blog/how-to-train-state-of-the-art-models-using-torchvision-latest-primitives/#break-down-of-key-accuracy-improvements) (stop at the header "Baseline") of the blog post on achieving state-of-the-art (SOTA) models using PyTorch. Notes:
  - Since ImageNet has over 10k categories, some of them very similar, it's hard even for people to get the exactly right category. So it's common to look at what the classifier says were the top 5 or 10 most likely categories for an image (`torch.topk`) and measure how often the correct category appeared as the top 1 ("Acc@1"), somewhere in the top 5 ("Acc@5"), or similar.
  - DATA 202 students should recognize that that graph would have been easier to read with the coordinates flipped!
- Notice that the rest of the article consists of one section for each of about 10 techniques. Skim all the techniques to pick 5 that intrigue you, ideally ones that have a link to an academic paper that introduced it.
- Pick one of your 5 chosen techniques at random. Then:
  - Write a description about what it does and why it helped.
  - Skim the linked paper: read the *abstract*, then read at the captions for the main figures and/or tables.
  - What accuracy improvement did the paper's authors find from their technique? How did that improvement compare with what the authors of the blog post found?

<!--
## Mini-Project: Image Classifier from Scratch

Goals:

- How everything works from the ground up
- Practice with array computing
- Build intuition for things like learning rates
-->

## This Week's Fundamentals

Complete the following notebook for this week. Do your work in the corresponding notebook.

- {{% fundamentals name="MNIST Classifier" nbname="u6n1-mnist-clf.ipynb" %}}: Training a basic classifier on MNIST using mini-batch gradient descent

## Submitting

In the Moodle assignment for this Homework:

1. Attach the `ipynb` file.
2. Copy and paste your paragraph answer to the Narrative section into the Moodle text box.
3. Copy and paste your responses to the Analysis questions (where applicable) into the text box.

