---
title: "Homework 3: MNIST Classifier from Scratch"
draft: false
---


## Task

Build a simple image classifier from scratch, using only basic numerical computing primitives (like matrix multiplication).

Specifically:

- Train a model to label the MNIST handwritten digits
  - First, try to predict the digit as a *regression* task using Mean Squared Error loss. Analyze the results of this exercise.
  - Then, try to predict the digit as a *classification* task, using cross-entropy loss.
- Evaluate the accuracy on the test set.
- Compare two different models: a single layer (logistic regression) model and a two-layer model with 30 hidden dimensions and ReLU activation.

Constraints:

- You may refer only to Fundamentals notebooks, and you must retype all code that you use for this assignment.
- Do not use any material other than the official documentation for PyTorch Tensors.
- Do not use any `fastai` capabilities beyond the data loading code provided.
- *Optional*: do not use any of the PyTorch autograd mechanisms.

## Why?

- How everything works from the ground up
- Practice with array computing
- Build intuition for things like learning rates

Remember, this is about the *process*, not the result. You may be able to find a solution to this problem on the internet, but that's not the point. The point is to learn how to build a model from scratch, and to understand the process of training a model. If you find a solution on the internet, you should try to understand it, and then try to implement it yourself without looking at that solution. Please collaborate with your classmates, but all of the code you submit should be your own work.

## Instructions

Create a new notebook. You may start with this code, which sets up the data loading.

```python
# Import fastai, but only for the DataBlock part.
from fastai.vision.all import *

path = untar_data(URLs.MNIST)

# Create a subset of the images, so we train faster. We do this by taking 500 random images of each digit.
set_seed(0)
num_imgs_per_digit = 500
items = [
    p
    for split in ['training', 'testing']
    for digit in range(10)
    for p in (path/split/str(digit)).ls().shuffle()[:num_imgs_per_digit]
]

# Create the `dataloaders`. We need a slightly special `ImageBlock` because we want grayscale images.

block = DataBlock(
    blocks=(ImageBlock(PILImageBW), CategoryBlock),
    get_y = parent_label,
    splitter=GrandparentSplitter(train_name='training', valid_name="testing"),
)
dataloaders = block.dataloaders(items, bs=16)
print(f"{dataloaders.train.n} training images, {dataloaders.valid.n} validation images")
```

Beyond that, you're on your own! See "constraints" above.

## Optional Constraint: No Autograd

I have a suggested structure for implementing backpropagation yourself in a modular way. If you're interested, please ask me.

Note: the PyTorch `cross_entropy` function does some interesting things under the hood. See {{% fundamentals name="this notebook" nbname="cross_entropy_logsumexp.ipynb" %}}.

## Suggested Steps

(This section was written largely by GitHub Copilot.)

1. Set up a simple model with a single layer, and train it to predict the digit as a regression task.
2. Set up a simple model with a single layer, and train it to predict the digit as a classification task.
3. Set up a two-layer model with 30 hidden dimensions and ReLU activation, and train it to predict the digit as a classification task.
4. Compare the results of the two models.
5. Try to improve the results by changing the learning rate, the number of epochs, or the number of hidden dimensions.

Notes:

- Remember the basic steps of training a model:
  - Initialize the weights
  - Compute the predictions
  - Compute the loss
  - Compute the gradients
  - Update the weights (step the optimizer)
  - log the loss and other metrics
  - Repeat until convergence
