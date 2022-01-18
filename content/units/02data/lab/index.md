---
title: 'Lab 2: Basic image classifier'
author: "Ken Arnold"
date: 2022-01-17
summary: 'Try out some variations on a classification model.'
draft: false
---

## Objectives

- Run experiments to determine the effects of hyperparameters on classifier performance
- Describe the structure of image batches
- Write code to access and modify image data

## Getting Started

Get the [template](lab02.ipynb). Save it in your `cs344` folder.

## Instructions

We're going to start with the cat-vs-dog classifier that we built in chapter 1 and try changing a few things.

### Classifier 1

Here is an example of a task that an advisor might give you:

> Train a classifier to distinguish between images of cats and dogs.
> 
> - Use the [Oxford-IIIT Pet Dataset](http://www.robots.ox.ac.uk/~vgg/data/pets/).
> - Fine-tune a 34-layer ResNet model for 1 epoch
> - Report the error rate on a held-out validation set of 20% of the data.

The first code block from chapter 1 (or lab 1) accomplishes this task. It has been included in your lab template with a few blanks; fill them in. (You may reference Lab 1.)

> Note: If you experience an "out of memory error":
> 
> 1. Check that you don't have another notebook already running (if you're not sure, log off and log back in).
> 2. "Restart and Run All" on the Kernel menu.
> 3. If this still doesn't work, add `bs=8` as a keyword parameter to `ImageDataLoaders.from_name_func`. 

{{<task>}}
Make a list with one element: the last `error_rate` reported during classifier training: `clf_1_error_rates = [0.005413]`.

(Just hard-code the number. Also: you'll see two tables; look at the second table.)
{{</task>}}

### Classifier 2

{{<task>}}
Repeat the previous task, but use an 18-layer ResNet architecture instead (`resnet18`). Record the result in `clf_2_error_rates`. How does the error rate compare?
{{</task>}}

### Comparisons

*Optional, come back to this when you're done with the rest of the lab.*

One of our goals in this class is to get in the habit of treating numbers critically, especially understanding the variability behind them.

So, instead of just comparing the single accuracy (error rate) numbers we get from both classifiers, let's compare the *range* of results we'd get from repeating the experiment several times.

A random *seed* makes a sequence of random numbers (or decisions) identical, which really helps for reproducibility. So to run our experiment several times, all we need to do is change the seed before each run.

{{<task>}}
Repeat the two classifier training runs we did above, changing the seed we pass to `set_seed` (*not* the `seed` passed to `ImageDataLoaders`; we'll discuss why later). Put the accuracy numbers in the `error_rates` lists we constructed. Aim for at least 3 numbers in each list.

Now, compare the two lists. Which classifier performs better? Do you think the difference you observe between the two classifiers could have arisen simply by chance? Why or why not?
{{</task>}}



We just changed the *architecture*, but not anything else. We could also change:

* The *data*: give it different images (or more or fewer of the same images)
* The *task*: have it try to predict something different
* The *hyperparameters*: train it a different way, e.g., let it train longer (more epochs) or adjust itself faster (higher learning rate)

In a future week we will try varying more aspects.

## Image Batch Structure

Now, let's see what's going *into* the classifier. The images are given in *batches* of `dataloaders.train.bs` (defaults to 64) images at a time. They all get packed into a single PyTorch `Tensor`. That's possible because `Tensor`s can have multiple axes.

{{<task>}}
**Run `images.shape`**. What do you think each number represents? (We'll study this more below.)
{{</task>}}

### Get one image

The first axis is the **batch size**. To show the first image in the batch, run

`show_image(images[0])`.

{{<task>}}
Show the third image in the batch.
{{</task>}}

### Get one channel

The second batch is the color channel (red, green, and blue).

You can provide multiple indices at the same time, e.g., `images[0, 0]` is the *red* channel of the first image.

{{<task>}}
Show the *blue* channel of the *5th* image in the batch.
{{</task>}}

### Elementwise operations

{{<task>}}
Explain the result of running `show_images(255 - images)`.
{{</task>}}

<!-- 2. **Run `labels`**. Explain those numbers, with the help of `dataloaders.train.vocab`.
3. **Show the first image in the batch.**
4. **Show the average image (mean along dimension ___)**.
5. **Make the images grayscale**. Show the result.
6. **Invert the color of the images** (e.g., black becomes white). Show the result.
7. **Show only the red color channel**. *it's okay if it's not shown as red.*
8. **Show a 64-pixel-square cutout of the image, starting at 64 pixels in from the top and left.**
9. **Show the result of applying `Rotate` on the images.** Set `max_deg` to 45 and `p` to 1.0. -->
