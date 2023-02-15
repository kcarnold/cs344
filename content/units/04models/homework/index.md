---
title: "Homework 2: Generalization"
draft: false
---

## Outcomes

The process of completing this assignment will improve your ability to:

- Explain the importance of evaluating image classifiers on unseen data. <!-- TODO: could align more with this -->
- Describe characteristics of a dataset that are relevant to downstream performance.
- Tweak a model to try to improve its performance.

<!-- ## Other Notes

- Describe how the concept of *distributions* applies to image data. -->

We'll be making a [Datasheets for Datasets](https://www.microsoft.com/en-us/research/project/datasheets-for-datasets/).

## Task

Load up the classifier you trained in [Homework 1](../../02data/homework/). **Evaluate it on a set of images collected by others** in the class.

To keep our attention on the data instead of the process of writing code, an [example is provided of all of the code necessary for a basic analysis](example-homework-2.html). However, *please do not simply copy and paste from this notebook*; retype any code you need yourself. That should help you make sure that you understand what each step is for.

> Note: The example provided would re-train the training set classifier each time, leading 
> to different performance depending on the random initialization of the classifiaction head. 
> **You may want to save your trained classifier**. (e.g., `saved_clf_file = Path('classifier.pkl'); if saved_clf_file.exists(): learn.load(saved_clf_file); else: learn = ...; learn.export(saved_clf_file)`.
> Think about what other sources of variation might come up, and how you might be systematic about them.

1. Report what actual accuracy you got.
2. What were your classifier's most frequent mistakes? Describe both quantitatively (via the confusion matrix) and qualitatively (by studying the top losses).
3. Recall that in Homework 1 you estimated the accuracy that your classifier would obtain on other people's images. Compare the accuracy you observe to the accuracy that you thought you'd get.
4. Now let's write a **datasheet for the specific training data you collected**. Read the introduction to the [Dataset Documentation (Datasheets for Datasets) template](https://www.microsoft.com/en-us/research/uploads/prod/2022/07/aether-datadoc-082522.pdf). Then, skim through the questions that follow. **Choose two or three questions** that are most relevant to *how well the model that you trained worked on new data*. At the end of your notebook, include both the question texts and your answers.
5. Go back to your Homework 1 classifier. Make one change to how the classifier is trained. Evaluate the change in accuracy you observe during training, and the change in accuracy you observe here.

Possible things to adjust:

- How big your validation set is
- Which foundation model to use (e.g., `resnet34` vs `resnet16`)
- What data augmentation (if any) to apply
- How many epochs to train
- What learning rate to use

## Details

### Obtaining data

A dataset of images uploaded by 11 different students is available here: <https://students.cs.calvin.edu/~ka37/letter_images_dataset_v0.zip>. The structure is the same as what was expected in Homework 1. So you should be able to run:

```python
dataset_path = untar_data(url)

```

*In future years we might actually make this a Kaggle competition, but I couldn't get the logistics worked out in time this year.*

### Batches

- `fastai` drops incomplete batches in the training set. Unfortunately you can't set the batch size to 1 (because the model uses *batch normalization*--beyond the scope of this course). So give the keyword arg `bs = 2` to whatever creates your `dataloaders` (e.g., `ImageDataLoaders.from_path_func(..., bs = 2)`).
  - There's a code chunk in the sample solution that demonstrates how to look at the batch sizes and number of images that your classifier actually gets trained on.
- Since you have so little data, `fine_tune()` for several epochs -- at least `fine_tune(4)`.


### Other details

All code is given in the example linked above.
