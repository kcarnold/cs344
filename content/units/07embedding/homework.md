---
title: "Homework 7"
date: 2022-02-25
due: 2022-03-10
draft: false
---

Only Fundamentals this week.

## This Week's Fundamentals

Complete the following notebooks for this week. Do your work in the corresponding notebook.

- {{% fundamentals name="Regression in scikit-learn" nbname="u7n1-sklearn-regression.ipynb" %}}
- {{% fundamentals name="Classification in scikit-learn" nbname="u7n2-sklearn-classification.ipynb" %}}

## Submitting

In the Moodle assignment for this Homework:

1. Attach the `ipynb` files.
2. Copy and paste your responses to the Analysis questions (where applicable) into the text box.

<!--

**Outcome**: Excellent!
**Outcome**: Meets expectations.
**Outcome**: needs Revision.

## Regression

- looks good!
- `X` is the independent variables, `y` the dependent. (this terminology is more common in a statistics setting)
- in ML, we call the columns of `X` the *features* or *predictors*, and `y` the *target*.
- Nice that you looked at the MSE and MAE.
- The parallel lines are *contours* of the prediction, which is actually smooth (in fact, too smooth.)
- Why might the RF give lines like the tree, but less sharp lines? Answer: it's the average of a bunch of trees, each of which has those sharp lines, but different ones.

## Classification

- great!
- (Revise) oops: *accuracy* is good if it's *high*, so logistic regression is *worst*.
- This affects your answer to Q4 also.
- remember that the log loss (cross-entropy) considers not just the classifier's decision but the *confidence* of that decision. The decision tree was **confidently wrong** so it got high log loss.
- The decision tree was the classifier that *overfit*. It does really well on the training set but overly relied on happenstance features of that training set.
- The logistic regression *underfit*: it was not able to capture meaningful patterns even in the training set.


-->