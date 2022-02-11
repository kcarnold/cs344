---
title: "Homework 4"
date: 2022-02-04
due: 2022-02-10
draft: false
---

In this assignment, we start working on Fundamentals notebooks. Many future Homework assignments will include both Fundamentals and narrative components, but for this week we'll focus just on the Fundamentals.

## Goal

These notebooks will demonstrate proficiency in basic machine learning concepts and skills.

To complete a Fundamentals notebook, follow instructions and fill in blanks. Most blanks will be labeled `# your code here`, an ellipsis (`...`), or `*your answer here*` (for narrative answers written in Markdown). You should remove placeholder comments.

Successful solutions will:

- Include code that successfully accomplishes the task.
  - It should generate the results when run fresh ("Restart and Run All")
  - It should have no extraneous code.
  - Format code clearly (consistent spacing, one idea per line, no overly long lines, etc.)
- Document each major step succinctly but clearly.
  - Use Markdown cells (with appropriate formatting and links) to describe the overall steps taken.
    - See the Setup section of various notebooks for an example of code explanations.
    - Note that you are not required to understand the code in the "Setup" section.
  - Use clear variable names, keyword arguments, and code comments to make the code easy to follow.
- Include responses to each of the analysis questions.
  - Add a Markdown cell for each question.
  - Add code cells as necessary to run computations that some questions may need.
  - Any activities marked "Extension" are optional but encouraged.

We aim that each notebook will:

- Demonstrate a single concept
- Take less than 15 minutes to complete, if that concept is understood (if it's taking longer than 15 minutes, please let the instructor know so it can be simplified in the future)
- Take less than 5 minutes to run to completion
- Be a useful reference for how to perform that operation in the future

We also strive for the sequence to make sense.

## This Week's Fundamentals

Complete the following 4 notebooks for this week. Do your work in the corresponding notebook; it the end you'll submit 4 `ipynb` files.

The following Fundamentals should mostly be review:

- {{% fundamentals name="Classifier Diagnostics" nbname="u2n1-diagnose-image-classifier.ipynb" %}}: report on the mistakes made by a classifier
  - Reference: {{< fastbook num="2" nbname="02_production.ipynb" >}}.
  - Tip: `dataloaders.train.n`, `dataloaders.valid.n`.
  - For analysis question 1, hard-code the numbers.
- {{% fundamentals name="Image Ops" nbname="u2n2-image-ops.ipynb" %}}: perform broadcast and reduction operations on a tensor representing a batch of color images
  - For *grayscale*, just use an equal weighting of the red, green, and blue channels
  - Remember *slicing*, e.g., what does `images[2:4]` evaluate to? Also, you can "skip" a slice dimension by using `:`, e.g., `images[:, 0, 5]` returns row 5 in the red channel of all images.
  - Also remember that Python has *negative* indices. So `x[:, -5:]` means to keep the last 5 elements of everything in the second axis.

These will practice some new skills:

- {{% fundamentals name="Compute Gradient with PyTorch" nbname="u4n1-compute-grad-PyTorch.ipynb" %}}: compute the gradient of a simple function using PyTorch
- {{% fundamentals name="Trace Simple Image Classifier" nbname="u4n2-trace-mnist.ipynb" %}}: trace and explain the dimensionality of each tensor in a simple image classifier.

These are mostly self-contained, but you may find it helpful to refer to {{< fastbook num="4" nbname="04_mnist_basics.ipynb" >}}.

## Submitting

In the Moodle assignment for this Homework:

1. Attach each `ipynb` file separately.
2. Copy and paste your responses to the Analysis questions into the text box.

<!-- New:

- Fit single linear regression using PyTorch -->

<!-- - Repeat Lab 4 but using backprop
  - manual
  - PyTorch's
  - Use MAE instead
- Extend to basis functions -->
