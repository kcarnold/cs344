---
title: "Homework 3: Generalization"
date: 2022-01-28
draft: false
---

## Outcomes

The process of completing this assignment will improve your ability to:

- Explain the importance of evaluating image classifiers on unseen data. <!-- TODO: could align more with this -->
- Describe factors that affect how image classifiers generalize.

## Task

Load up the classifier you trained in [Homework 2](../../02data/homework/). **Evaluate it on a set of images collected by others** in the class. Report the following:

1. Metadata about your original (Homework 2) dataset (see below for details),
2. Metadata about the dataset you are testing on.
3. What accuracy range you estimated on Homework 2,
4. What accuracy you obtain on your test set,
5. Whether the answer to Q4 is within the range of Q3, and
6. What factors may have influenced the answer to Question 5.

Include both *helpful* and *hurtful* factors in your answer to Question 5. (That is, you should have something substantial to say regardless of whether the answer turned out to be "yes" or "no".)

Also, make sure you include at least the following *metadata* about both datasets:

- What the two buildings were
- How big the dataset is (number of images per building and total)
- Any other characteristics that are relevant

## Details

### Obtaining data

Refer to Homework 2 for the link to the shared dataset. If you click Download in a folder there it should give you a ZIP file to download. (Don't try to use `untar_data`; just move things manually like you did in HW2.)

You should have at least 5 images of each building, ideally more, ideally from several people. Make sure that these are images that you (and your code) *never saw* in the course of doing Homework 2.

If you cannot find examples of the same two buildings that you used, *you do not need to collect new data*. You may either:

1. Reinterpret the problem as detecting a specific building (i.e., rename the other images to be just "Other"), or
2. Retrain your Homework 2 classifier on a different set of buildings, based on images from other students.

Either way, *clearly describe the choices you made*.

### Loading Data

You will need to create a new `DataLoader` for the test dataset. Here's how to do that.

First, you'll need to get the image files for your test set:

```python
test_path = Path('/wherever/.../...')
test_image_files = get_image_files(test_path)
```

Then ask your original `dataloaders` object (the book calls it `dls`) to create a new, *test* `DataLoader`. (This is different than creating a new `dataloaders` because we don't want to split the new data into a training set and validation set; we want to use the whole thing.)

```python
test_dl = dataloaders.test_dl(test_files, with_labels=True)
```

Once we have the test `DataLoader`, we can use it for `ClassificationInterpretation`. By default, the *validation* set is used, but we can tell it to use `test_dl` instead:

```python
interp = ClassificationInterpretation.from_learner(learn, dl=test_dl)
```

And finally we can ask it for various things, like the confusion matrix, top losses, or classification report, just like Chapter 2 shows:

```python
interp.plot_top_losses(k = 5)
interp.plot_confusion_matrix()
```

To get the accuracy, you can either use the classification report...

```python
interp.print_classification_report()
```

... or you can compute the accuracy or error rate directly by treating a correct prediction as a 1 and an incorrect prediction as 0 (I call this the *sum-as-count pattern*). This code also demonstrates a clean way to spread out a Python expression over multiple lines: put everything in parentheses.

```python
(
    # Make a Tensor of Trues and Falses, True if the classifier got the corresponding image right
    (
        # the predictions that the model made on the test set
        interp.decoded
        # compare with the target labels provided by the DataLoader
        == interp.targs
    )
    # convert True to 1.0, False to 0.0
    .to(float)
    # Compute the fraction of True's.
    .mean()
)
```

I think this should work too:

```python
accuracy(interp.preds, interp.targs)
```

<!-- ## Other Notes

- Describe how the concept of *distributions* applies to image data. -->
