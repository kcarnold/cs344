---
title: "Week 3 Feedback"
type: Feedback
draft: true
---


## Lab 2

- 18 layers may have looked similar at first, but once you repeated the experiment, many (but not all!) people saw that the ResNet34 tended to do a bit better. How could you tell if that was a *statistically significant* difference?
  - Perhaps *plot* the error rates?
  - Perhaps a statistical test? (are samples*paired* or *unpaired*?)
- The image tensor is *batch* by *color channel* by *height* by *width*. (I may have width and height flipped, can someone check this?)
- `255 - image` *inverts* the colors in the image: black goes to white, etc.

## Homework 2

- The numerical value of the seed is unimportant and should not be reported in narrative. It just "throws the dice" again.
- *Sideways images*: fastai doesn't honor EXIF orientation flags. I submitted a [bug report](https://github.com/fastai/fastai/issues/3565).
- You can use the approach of chapter 2 to construct the `DataLoaders`, or just use the chapter 1 convenience function: `ImageDataLoaders.from_path_func(..., label_func=parent_label)`.

Questions to reflect on:

- Burst photos: what effect would that have?
- Accuracy numbers: why might we see the exact same accuracy number from several trials?
- Include stats about your dataset, e.g., how many photos total?
- When you're using a smaller dataset, you're probably also using a smaller *validation* set. What does that do to your accuracy numbers?

### Choices

#### Data collection

- Which buildings?
- Inside or outside?
- Lighting and other environmental conditions
- Framing and photography
- Burst mode or not?
- How many images?

#### Modeling

- Resizing
- Augmentation
- Validation set size
- Model architecture
- Batch size
- Number of epochs to train
- How many trials to perform

#### Reporting

- How to translate accuracy numbers into an expected range

