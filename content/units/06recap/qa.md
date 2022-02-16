---
title: "Week 6 Q&A"
---

## Chapter 5

### Do the concepts of loss functions and optimization apply to other ML models besides image classifiers?

Yes!

- language (NLP): basically the same loss functions (typically cross-entropy on picking the next word), similar optimization approach.
- regression: see chapter 6; just use MSE or MAE instead of cross-entropy.
- generative models: sometimes use contrastive losses, which are just classification losses where the model has to distinguish true from generated data.

### how transferrable models are between physical machines.

### Guidelines for how cleaning relates to modeling?

- Garbage in, garbage out.
- Focus time making sure the labels are what you want, rather than including and excluding specific examples. You'll get lots of weird examples in the wild, so the weirder your training set examples are the better (though perhaps include an "ignore" category, so your system learns when to not even try to make a decision)

### How do people actually choose learning rates?

- First pass: just use Adam with the default parameters, it often works well enough.
  - I've never seen the "LR Finder" used outside of FastAI.
- General wisdom is that if you have time to tune it, SGD with the right learning rate schedule will give best results.

### Why relu and not absolute value?

The abs function should work as a nonlinearity, but my intuition is it would be harder to learn (because the effect of increasing an activation *flips* when you're on the other side of 0).

### How do we actually fix clf errors?

- Don't worry about individual errors; make sure you're focusing on systematic issues.
- Make sure your training is converging and your model has actually fit your training data well. Beyond that, trace it back to the training data. Get more examples like the ones that fail. Augment more so your existing examples look more like the failing examples. etc.

### Where does the score come from that gets fed into softmax?

A linear layer.

### Why does cross-entropy need negative-log?

The [Wikipedia article](https://en.wikipedia.org/wiki/Cross_entropy) is actually pretty good here.
