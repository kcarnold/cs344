---
title: 'Lab 2: Basic image classifier'
author: "Ken Arnold"
date: 2022-01-17
summary: 'Try out some variations on a classification model.'
draft: true
---

## Objectives

- Run experiments to determine the effects of hyperparameters on classifier performance
- Describe the structure of image batches
- Write code to access and modify image data

## Getting Started

Get the template TODO

## Instructions

(the text below duplicates the instructions in the template.)

We're going to start with the cat-vs-dog classifier that we built in chapter 1 and try changing a few things.

You might see a task like this:

> Train a classifier to distinguish between images of cats and dogs.
> 
> - Use the [Oxford-IIIT Pet Dataset](http://www.robots.ox.ac.uk/~vgg/data/pets/).
> - Fine-tune a 34-layer ResNet model for 1 epoch
> - Report the error rate on a held-out validation set of 20% of the data.

The first code block from chapter 1 (or lab 1) accomplishes this task. Retype or copy-paste it here, but add some comments if you haven't already:


```python
from fastai.vision.all import *
path = untar_data(URLs.PETS)/'images'

# Your code here. Include a comment indicating what each line does.
```

**Exercise**: Use an 18-layer ResNet instead (`resnet18`). How does the error rate compare?

To determine this, we will run multiple trials of an experiment.

Setting seed, repeating trials, statistical test.



Consider the We just changed the *architecture*, but not anything else. We could also change:

* The *data*: give it different images (or more or fewer of the same images)
* The *task*: have it try to predict something different
* The *hyperparameters*: train it a different way, e.g., let it train longer (more epochs) or adjust itself faster (higher learning rate)

In a future week we will try varying more aspects.


## Image Batch Structure

Try each of the following:

1. **Run `images.shape`**. What does each number represent?
2. **Run `labels`**. Explain those numbers, with the help of `dataloaders.train.vocab`.
3. **Show the first image in the batch.**
4. **Show the average image (mean along dimension ___)**.
5. **Make the images grayscale**. Show the result.
6. **Invert the color of the images** (e.g., black becomes white). Show the result.
7. **Show only the red color channel**. *it's okay if it's not shown as red.*
8. **Show a 64-pixel-square cutout of the image, starting at 64 pixels in from the top and left.**
9. **Show the result of applying `Rotate` on the images.** Set `max_deg` to 45 and `p` to 1.0.



# Summarize

1. Write a short summary of the results of all of the experiments you performed in this lab.
2. Reflect on how confident you are that each of those comparisons didn't just happen by chance. Also reflect on which of the results would be likely to generalize to other tasks.

# Wrap-up

* Make sure you Save this notebook.
* From the Kernel menu, select "Restart and Run All". This will take a few minutes, but will ensure that all of your code still runs. Double-check that your results still make sense.

