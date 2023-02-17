---
title: "Lab 7"
draft: true
---

Complete the following notebooks for this week. Do your work in the corresponding notebook.

- {{% fundamentals name="Regression in scikit-learn" nbname="u07n1-sklearn-regression.ipynb" %}}
- {{% fundamentals name="Classification in scikit-learn" nbname="u07n2-sklearn-classification.ipynb" %}}


<!--

## Regression

- looks good!
- `X` is the independent variables, `y` the dependent. (this terminology is more common in a statistics setting)
- in ML, we call the columns of `X` the *features* or *predictors*, and `y` the *target*.
- Nice that you looked at the MSE and MAE.
- The parallel lines of the linear regression are *contours* of the prediction, which is actually smooth (in fact, too smooth.)
- The descriptions of the plots are not clear. Notice how some of the boundaries are strictly horizontal/vertical while others are not. Notice how some boundaries are sharp while others are not.
- Why might the RF give lines like the tree, but less sharp lines? Answer: it's the average of a bunch of trees, each of which has those sharp lines, but different ones.

## Classification

- great!
- (Revise) oops: *accuracy* is good if it's *high*, so logistic regression is *worst*.
- This affects your answer to Q4 also.
- remember that the log loss (cross-entropy) considers not just the classifier's decision but the *confidence* of that decision. The decision tree was **confidently wrong** so it got high log loss.
- The decision tree was the classifier that *overfit*. It does really well on the training set but overly relied on happenstance features of that training set.
- The logistic regression *underfit*: it was not able to capture meaningful patterns even in the training set.
- While the high cross-entropy is a symptom of overfitting, that was not sufficient by itself to determine if underfitting or overfitting occurred. For that, we need to compare the training set and test set performance (the optional extension).

## Overall

- Restart and Run All before submitting. Your notebooks include outputs that don't correspond to the code.
- 

-->