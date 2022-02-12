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

