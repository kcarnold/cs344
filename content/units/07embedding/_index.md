---
title: "Unit 7: Learned Representations (Embeddings)"
date: 2022-02-21
weight: 7
---

In this unit we introduce one of the most powerful concepts in machine learning: the *embedding*. It's the idea that instead of being explicitly given a representation for something, we *learn* it from data *based on the properties it should have*. We've actually already seen embeddings of various kinds (the inputs to the last layer of an image classifier for one), but we'll look at two examples where the embedding aspect is even clearer: movies and words.

Students who complete this unit will demonstrate that they can:

- Describe how *embeddings* are used in recommender systems.
- Describe how embeddings can be learned from data by gradient descent.
- Explain both intuitively and mathematically what it means for the vectors for two items to be "close".
- Explain how a trained decision tree makes a prediction.
- Fit and evaluate a model on tabular data using Scikit-Learn

## Preparation

- Read {{<fastbook num="8" nbname="08_collab.ipynb">}}.
  - Their `DotProduct` class doesn't *implement* a dot product; it *uses* it for a rating prediction task.
  - Think about how this task is *almost* equivalent to a logistic regression that takes a user embedding and predicts the score of each of the movie classes: the shape of the movie weights and biases are the same. What's different?
- Watch {{<fastvideo num="6">}} from 1h30m to the end.
- *Skim* {{<fastbook num="9" nbname="09_tabular.ipynb">}}
  - Focus on what kinds of models are used (decision tree, random forest) and the `sklearn` API for them (`fit()` and `predict()`).
  - {{<fastvideo num="7">}} discusses this material. Watching it is optional but encouraged.

## Class Meetings

### Monday

- [Slides](https://cs.calvin.edu/courses/cs/344/22sp/slides/w7/w7-recsys-embedding.html#1)
- Project
- Introduction to Recommendation Systems
- Latent Factors

### Wednesday

- (No discussion this week)
- Continue lecture: Embeddings
  - What do they look like?
  - Where do they come from?
  - [Worksheet](embedding_worksheet.pdf): exploring movie embeddings
- It's still all about functions from data to outputs.

### Friday

- Discussion kickoff
- sklearn bootcamp:
  - The `fit`-`predict` API
  - Decision Trees and Random Forests
- Start Homework 7

<!--
Prep question

Suppose we have (correctly) defined the function `dot_product(x1, x2)` that computes the dot product of two vectors (stored as lists of numbers).

What would the following code print?

```python
print(dot_product(
  [1.0, 2.0, -1.0],
  [0.0, 2.0, -1.0]
))
```

Fill in the blanks to implement `dot_product(x1, x2)`:

```python
def dot_product(x1, x2):
    result = 0.0
    for ... in range(...):
        ...
    return result
```
-->
