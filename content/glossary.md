---
title: "Glossary"
---

## Data

### Tabular Data

- Sometimes specific input features have a clear meaning (examples: the age of a patient, the price of a product, etc.). If our data has mostly these sorts of features, then we call it *tabular* data. Traditional machine learning models like Random Forests and gradient boosting (XGBoost) tend to work well for these types of data. [scikit-learn](https://scikit-learn.org/stable/) has high-quality implementations of the most important algorithms here.
- However, if many features don't have a clear meaning (examples: each individual pixel in an image, each sample in a sound wave, etc.), the main task of the algorithm is to *come up with a useful internal representation* of the data. This is where *deep neural nets* shine.

### Text Data

#### Padding issues

Sentences have different lengths. But models generally need rectangular inputs, so everything has to be the same length. What do we do? *pad* inputs to be the right length.

- No padding -> can't use different size sequences in the same batch -> slow.
- Too much padding -> lots of wasted effort -> slow.
- Get it right -> fast.

## Classification Metrics

### Error Rate

- Fraction of results that were incorrect. i.e., number of wrong results divided by total number of images used to evaluate.
- Also known as "zero-one loss" (because you're penalized 1 point for every incorrect answer, no partial credit).
- *accuracy* = 1 - error rate

### Sensitivity and Specificity

[Sensitivity/Specificity / Confusion Matrix on Wikipedia](https://en.wikipedia.org/wiki/Sensitivity_and_specificity#Confusion_matrix)

### Area Under the Curve (AUC)

- Area Under the Curve = chance of correctly ranking a random positive-negative pair
  - [A visual explanation](https://madrury.github.io/jekyll/update/statistics/2017/06/21/auc-proof.html)
  - [A math-y explanation](https://www.alexejgossmann.com/auc/)

## Training Stuff

### Epoch

- One pass through the training set
- The book and course materials use 1 in some cases where the task is relatively easy or just to make the computation take less time. That doesn't mean you should.
- Generally you'll need several epochs to reach good performance.

### (Mini-)Batch

A collection of data points that are processed together. Using bigger batches can lead to more efficient processing because more work can be done in parallel, and can sometimes stabilize training, but it gives the network fewer chances to update itself per epoch, and batches that are too large may harm generalization unless mitigation measures are taken.

Not to be confused with "training set" or "validation set", both of which are processed in batches.

### Stochastic Gradient Descent

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

Resources:

- [Understanding binary cross-entropy / log loss: a visual explanation](https://towardsdatascience.com/understanding-binary-cross-entropy-log-loss-a-visual-explanation-a3ac6025181a)
- related: [Visualizing Information Theory](http://colah.github.io/posts/2015-09-Visual-Information/)

Related: *perplexity*:

- A problem with entropy as a measure is that it depends on what base you use for the logarithm. One unit of cross-entropy for the natural log (log base *e*) is one *nat*, which is *log_2(exp(1))* = 1.44 bits.
- So instead we sometimes just consider the *perplexity*, which is the exponentiation of the entropy. A coin flip has a perplexity of 2, a standard dice roll has a perplexity of 6; roughly speaking, the perplexity measures degree of confusion by way of how many items we're taking a random guess among.
- For language models, perplexity is often reported [*per word*](https://en.wikipedia.org/wiki/Perplexity#Perplexity_per_word) or *per character*. 

## Embeddings

An *embedding* is:

- a *vector* representation of something
- that is *learned from data*
- such that *similarity can be measured by dot products between embeddings*
  - i.e., [cosine similarity](https://en.wikipedia.org/wiki/Cosine_similarity) is meaningful
  - i.e., similar vectors are closer together in the vector space than dissimilar vectors
- where similarity is defined *based on the task to be performed* (e.g., predicting the next word, a user's rating on a new product, etc.)

## Tasks

### Named-Entity Recognition

Pick out things with names: people, places, organizations, etc. Sometimes includes years. Useful for when you want to identify what a sentence or article is "talking about".
