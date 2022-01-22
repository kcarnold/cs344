---
title: "Homework 2: Train and evaluate a classifier on your own images"
author: Ken Arnold
date: '2022-01-21'
draft: false
---

## Goal

In this assignment, you will train and evaluate your own image classifier using `fastai`.

Completing this homework will give you practice

- Working with image datasets
- Training image classifiers
- Evaluating image classifiers
- Explaining your decisions and their possible consequences.

## Instructions

**Do this assignment individually.** You may help each other, but *use Piazza* so all benefit.

Pick two buildings on campus. Make a classifier that distinguishes photos of one from photos of the other.

- Take your own photos; don't use photos from the Internet.
- Please avoid recognizable images of people.

You will need to organize your photos into a dataset. I suggest:

- Name photos like `NorthHall_3.jpg`.
- Place all your photos in a folder for each building. So an image will actually be at `NorthHall/NorthHall_3.jpg`. (This way it's easy to rename buildings.)
- Use the approach from Chapter 2 to make a classifier based on these images.

Submit a Jupyter Notebook reporting your findings on Moodle. In addition to the code needed, include answers to these questions:

- How accurate is your classifier? Report your answer as a *range* (lower to upper) of expected accuracy values.
- What sort of mistakes did it make? Why do you think it may have made those mistakes?
- How many images do you need to get good accuracy? (Try your classifier on fewer images.)
- What choices did you have to make in the process of collecting data, processing it, and analyzing the results?
  - What are one or two choices that you could have made differently?
  - What do you expect would be different if you made that different choice?

Tips:

- Chapter 2 has some helpful low-level code for constructing an `ImageDataLoader`. Once you have that, you can use the same techniques you used in Lab 2.
- You probably need to set the batch size to be smaller than the default (which is 64 images). Do this by passing `bs=2` as a keyword parameter to your `ImageDataLoader`.
- Like in Lab 2, just hard-code the accuracy values you get from multiple different `seed`s.
- Visualize things:
  - What does one batch of your `DataLoader` look like?
  - What do the predictions of your classifier look like?
  - What does the confusion matrix look like?
  - *refer to Chapter 2 for the code for these*.
- Note that `from_name_func` fails silently with `parent_label`. (It should throw an exception. I submitted [this bug](https://github.com/fastai/fastai/issues/3559) to propose that it does.) Use `from_path_func` instead if you want to use that approach.

### Submission

Upload only your `ipynb` file to Moodle, not the image files.

Guidance:

- Include all the code needed to get *one* accuracy number.
- *Don't* try to show the results of every model you trained, but *do* make a single cell to change numbers for any aspects you varied (e.g., the seed, how many images you used)
- *Don't* include extraneous code (like the `pip` code to check the environment, or the batch practice from Lab 2)
- Use *Markdown* cells, not code comments, to report results.

### Common Dataset

Please contribute your photos to [this folder in our class Team](https://calvincollege.sharepoint.com/:f:/s/Section_81629/EpapLK3FkZlBm-AQutdecNEB8U9a6SXGDXEEGcFnTJ5YwA?e=FK6vVj). Make a new folder with your username. Upload your two folders into it. (Drag and drop should work.)
