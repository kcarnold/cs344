---
title: "Glossary"
---

## Error Rate

- Fraction of results that were incorrect. i.e., number of wrong results divided by total number of images used to evaluate.
- Also known as "zero-one loss" (because you're penalized 1 point for every incorrect answer, no partial credit).
- *accuracy* = 1 - error rate

## Epoch

- One pass through the training set
- The book and course materials use 1 in some cases where the task is relatively easy or just to make the computation take less time. That doesn't mean you should.
- Generally you'll need several epochs to reach good performance.

## (Mini-)Batch

A collection of data points that are processed together. Using bigger batches can lead to more efficient processing because more work can be done in parallel, and can sometimes stabilize training, but it gives the network fewer chances to update itself per epoch, and batches that are too large may harm generalization unless mitigation measures are taken.

Not to be confused with "training set" or "validation set", both of which are processed in batches.

## Stochastic Gradient Descent

An algorithm for finding parameters to a function that are in the neighborhood of a shallow local minimum.

- "In the neighborhood of": it won't hit the local minimum exactly because of mini-batch noise.
- "Local minimum": it won't necessarily be near the *global* minimum of the function (the best possible setting of the parameters). But that's ok because...
- "shallow": small changes in the parameters don't lead to a big change in loss. That's important for *generalization*.

Algorithm:

**Input**: a dataset, a model architecture, and some *hyperparameters*:

- N (number of iterations)
- learning rate (`$\gamma$`)
- momentum parameter (`$\mu$`)
- weight decay parameter (`$\lambda$`)

Steps:

- Initialize parameters randomly (draw them from distributions chosen so that the typical values of both the loss and the gradient are reasonable).
- Repeat N times:
  - Draw a batch of data. (Typically organized into "epochs" of complete passes through the training set, but you can also just choose samples at random.)
  - Compute and keep track of the loss on that batch.
  - Compute the gradient of the loss with respect to each parameter (call that each parameter's "gradient").
  - For each parameter:
    - compute the *update* as that parameter's gradient plus `$\lambda$` times the current parameter value
    - update the parameter by subtracting from it `$\gamma$` times the update.

For the math, and extra details like the momentum parameter, see, e.g., the [PyTorch SGD docs](https://pytorch.org/docs/stable/generated/torch.optim.SGD.html#torch.optim.SGD).

## Neural Net Layers

### Linear

### Softmax

## Loss functions

### MSE

### MAE

### Cross-Entropy Loss

## Embeddings

