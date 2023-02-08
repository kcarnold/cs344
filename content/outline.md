---
title: "Outline"
---

This page will become an outline of the entire class.

## Moments

Please feel free to ask us to do one of these in class.

### Coding

- Python tips and tricks
  - list, set, and dict comprehensions
  - `zip`
  - `enumerate`
  - iterators and generators
  - `*args` and `**kwargs`
  - `@property`
  - decorators
  - `functools.partial`
- AI engineering
  - stream processing
  - data pipelines

### Math

- Estimating things
  - variance of validation set accuracy estimate (how big of a validation set do you need?)

### Theory

- Empirical risk minimization
- Generalization
- Overfitting
- Double descent
- Bias-variance tradeoff
- Regularization
- Inductive bias

### News

- Anything you want to share or ask about
- [Grokking paper](https://arxiv.org/abs/2201.02177)

## Unit 1: Introduction

{{% details level="2" summary="Overfitting as a problem?" %}}

The [figure in the book](https://nbviewer.org/github/fastai/fastbook/blob/master/01_intro.ipynb#How-Our-Image-Recognizer-Works) is misleading.

![overfitting, supposedly](https://nbviewer.org/github/fastai/fastbook/blob/master/images/att_00000.png)

- That's a polynomial fit. It's much more sensitive than the functions typically used in NN's.
- Recent results: a model can completely memorize its training set while still generalizing well (its behavior away from training set points is typically much better behaved than the figure suggests!), and in fact continue to improve generalization performance after reaching 100% accuracy (e.g., [Grokking paper](https://arxiv.org/abs/2201.02177)).
- Early stopping might *hurt* because of "double descent".
- So yes, overfitting can be a problem, but don't angst over it, just keep training.
- **But**: *memorization* might be a problem. "Phone: xxx-yyy-zzzz. SSN: "

There's also *underfitting*. Underfitting means that the model isn’t capturing the patterns even of the training data. It usually means that your model is too small (so the range of functions it can approximate isn’t rich enough), or your training is insufficient (your learning rate is too low, you’re not giving it enough time to train, there’s something broken about the training process, etc.).

{{% /details %}}

#### Why Python?

- Many libraries: talk with databases, webservers, IoT, GUIs, etc.
- Particularly good scientific computing ecosystem (NumPy, SciPy)
- Readable!
- Flexible: Enough metaprogramming to be concise where needed; some limited amount of magic is possible.
- Fast enough. Core operations are in low-level code; Python is the conductor.
  - [Array programming](https://en.wikipedia.org/wiki/Array_programming)
  - Benefits of GPU: highly parallel. Good for array operations (matrix multiply, nonlinearity, softmax)
    - Computer graphics often requires doing nearly the same sequence of operations to lots of polygons and ending up with lots of pixels. Analogously, machine learning often requires doing nearly the same sequence of operations to lots of numbers. So hardware that was designed to do graphics well has been repurposed to do machine learning well too.
    - GPU hardware has been adapted to be better suited for machine learning too, e.g., the addition of tensor cores.

#### Lots of jargon!

The more often something shows up in class, the more important it is to know.

#### Do we need math?

Yes! But not all at once. Some highlights:

- Linear algebra: vectors, linear operators (matrix multiplication), dimensionality reduction
- Calculus: chain rule

#### Can we explore the validation set, or should we leave it totally hidden?

To get some assurance about how our model will work once deployed, we need some data that we intentionally don't look at until the very end. That's the *test set*. But we often need to guess at how well it's going to work before then---e.g., because we're adjusting a parameter that might affect how well the model generalizes. The validation set (or, sometimes, validation *sets*) help us estimate that.

In general, it's a good idea to look at the validation set to understand how and why the model worked or didn't, e.g., get an overview of what kinds of images an image classifier tends to misclassify. But it's probably not a good idea to study it in too much depth, or it will stop being a good proxy for the test set.

#### What if the randomly selected held-out part was the most unhelpful?

(Note: validation of 20% means training set is 80%.)

- This is why we need sizeable validation sets. (What if it happened to pick only the *easiest* examples for validation?)
- Randomness usually helps: it's pretty unlikely to randomly select all extreme examples
- But do audit your choices, especially when summary stats may hide issues, e.g., unusually poor performance for a minority.

#### What are layers? What does each one do?

Gradually integrating information from wider area of the image. Lower layers = really zoomed in.

#### Converting sound to image is a cool idea.

Recently this approach has been replaced by: turn everything into a *sequence* and pretend it's language.

#### Pretrained models are useful.

But can introduce bias, may not actually be as helpful as thought (more later).

#### How might we prove the universal approximation theorem?

- Specific theorems vary, but generally: any two linear transforms with a nonlinearity in between can approximate an arbitrary function.
- Intuitively, think about representing a single-variable function by piecewise lines (that's basically a ReLU approximation, as we'll study.)
- More generally, you can approximate any function by gradually refining a mesh and interpolating between the points.
- Beyond that, see the [Wikipedia page](https://en.wikipedia.org/wiki/Universal_approximation_theorem) and citations there.

#### How to collect data?

- Lots of preexisting datasets
- Logs from your website, app, IoT
- Crowdsource labels

#### AI libraries?

- PyTorch vs TensorFlow: very similar; historically Tensorflow more industry and PyTorch more research but that's less clear now
- Keras, fast.ai, PyTorch Lightning: high-level libraries for making common patterns fast in TensorFlow and PyTorch
- newcomer: JAX. Simple automatic differentiation layer (autograd) on top of hardware-accelerated linear algebra primitives (XLA). Google.

#### Epoch?

One full pass through the training data. Not uncommon to see tens or hundreds of epochs, depending on training set size.

#### SGD?

- Gradient descent: which little wiggle would improve performance on the whole dataset?
- SGD: which would improve performance on *these few images I just saw*?
- SGD gets to a *better* solution *faster* than complete gradient descent. (intuition: more chances to try something and get feedback.)

## Unit 2

### General

- **Your notebooks should generally make sense when read top to bottom**. So:
  - Use Markdown cells to narrate what you're doing, and for narrative answers (like the rule for Jupyter cell output).
  - Intersperse Markdown cells with corresponding code, so you don't have to scroll up and down to match things up.
  - Write narrative answers in complete sentences, so you don't have to look at the questions to understand the answers.
    - I suggest one response per cell; start each response with a `**bold**` micro-heading, e.g., `**accuracy**: My classifier achieved accuracies between 75% and 100%.`
  - *Read it* before you submit it.
- We'll get to the low-level details that matter soon, so:
  - Don't worry that you don't know all the low-level details of how classifiers work, e.g., what all the numbers do. We're gradually peeling back layers over the next few weeks.
  - Don't worry about not knowing the low-level details of how to make fastai `DataLoaders`. That's not a learning objective of this class.
    - If you understand what the data loaders give you (batches of numbers paired with labels), you're set.
    - I've had to look up things in the tutorials and docs; see, e.g., [Homework 3](../homework/).
- Be clear what the notebook output rule is: the value of the last expression in the cell. (Assignments aren't expressions.) It also shows the result of any `print()`, `display()`, or plotting.
  - Instead of `print()`ing outputs, leverage the notebook cell output rule: just put the variable name on the last line of the cell. e.g.:
      ```python
      resid = y_true - y_pred
      resid
      ```
- `show_batch` shows the *labels*, not the model's *predictions*. (for that you can `show_predictions`.)

## Unit 5

*This section contains text generated by GitHub Copilot, an AI.*

Classification = scores (from linear layers), transformed to *probabilities* via softmax, trained to optimize *cross-entropy loss*.

```goat
                                                            correct answer
                                                                 |
                            scores                               v
                .--------. (logits)  .---------.  probs   .---------------. 
in features --->| Linear +---------->| softmax +--------->| cross-entropy +-----> loss
                '--------'       n   '---------'      n   '---------------'    1
                              (vector)              (vector)                (number)
```

note: *scores* are more commonly called *logits*.

### Basic Implementation of a Classifier

We do the normal training loop: `for batch, labels in dataloader:`. Inside the training loop:

```python
logits = model(batch)
probs = F.softmax(logits, axis=1)
loss = F.nll_loss(probs, labels)
# Or, better replacement for the above two lines:
# loss = F.cross_entropy(logits, labels)
# F.cross_entropy is a PyTorch function that combines the softmax and the negative log likelihood loss
# it is faster and more computationally stable.
loss.backward()
optimizer.step()
model.zero_grad()
```

We also usually want to keep track of our metrics. So we might do:

```python
prediction = logits.argmax(axis=1)
num_correct_this_batch = (prediction == labels).float().sum()
num_correct += num_correct_this_batch
```

- Logistic regression
  - `model = nn.Linear(n_input_features, n_classes)`.
  - That is, the model is a single linear layer.
  - Its weight matrix is `n_input_features` by `n_classes`.
  - Its bias vector is `n_classes` long.
    - It adds a fixed amount to each class score, to allow us to model some classes as being just more likely than others a priori.

### Metric vs Loss

- **Metric**: a number that tells you how well your model is doing. (e.g., accuracy)
- **Loss**: a number that tells you how well your model is doing, but is used to train the model. (e.g., cross-entropy loss)
- **Why do we need both?** Because we want to know how well our model is doing, but we also want to train it to do better.
- **Why not just use the loss?** Because the loss is not always a good metric. For example, if you're ultimately trying to make a decision, you might want to optimize for accuracy (or a related measure like false-positive rate), not cross-entropy loss.
- **Why can't we train using a metric?** Because metrics are not differentiable. (e.g., accuracy is not differentiable.) The gradient of accuracy with respect to any of the model parameters is always zero, so the model can't learn anything.

### Cross-entropy loss

Negative logarithm of the probability of the correct class.

Let `$y_i$` be the correct class for the `$i$`th example in a batch. Let `$p_i$` be the probability of that class, as computed by the softmax function. Then the cross-entropy loss for that example is `$-\log(p_i)$`. The cross-entropy loss for the whole batch is the average of the losses for each example.

- Can be thought of as "surprise"
- Like MSE, lower is better.
- How to get lower? Be confident in the right answer, and not confident in the wrong answers.
- How to compute it, for a classification setting?
  1. Compute the classifier's scores for each class.
  2. Convert them into probabilities (usually by softmax)
  3. Look up what the right answer was (which class it should have been).
  4. Look up what probability the classifier gave to that class.
  5. Compute the negative logarithm of that probability.
  6. Do this same thing for all the examples in the batch; average the results.
- Why do we take the logarithm?
  - Intuition 1: information theory.
    - If there were 2 classes, but we had no information about which class it was, we'd learn 1 bit of information from finding out what the right answer was.
    - If there were 4 classes, but we had no information about which class it was, we'd learn 2 bits of information from finding out what the right answer was.
    - The pattern: we learn log2(number of classes) bits of information from finding out what the right answer was -- if we had no prior idea what the right answer was.
    - That's the *loss*: how uncertain we were about this example.
    - If we were 100% certain (and right), we'd learn 0 bits of information.
    - The better the classifier, the less uncertain we are about the right answer.
  - Intuition 2: product of probabilities
    - The probability of two independent events is the product of their individual probabilities.
    - But products are hard to deal with
    - So it's easier to work with sums of logs.
      - An average is just a sum divided by the number of things being averaged.
- Units: **bits** (if the log is base *2*), or **nats** (for log base *e*).
  - A bit is just ln(2) (about 0.7) nats.
  - A nat is just log2(e) (about 1.4) bits.
  - So they're the same thing, just in different units.

> *Aside*: cross-entropy is a general idea, not just for classification. For example, MSE for a regression problem can be viewed as a cross-entropy loss, where we view the model as predicting the mean of a distribution with constant variance. It's related to the idea of maximum likelihood estimation.

### Softmax

A way to turn *scores* (unconstrained) into *probabilities* (nonnegative, sum to 1).

$$\text{softmax}(scores) = \frac{\exp{score_i}}{\sum_j \exp{score_j}}$$

- Remember the two rules for probabilities:
  - All probabilities are between 0 and 1.
  - The sum of all probabilities is 1.
- Scores might be negative, or positive, or both, and they probably don't sum to 1, so we can't use them as probabilities.
- But we can fix both problems:
  1. Subtract the largest score from all the scores, so the largest score becomes 0. (optional, but we'll see why it's useful later.)
  2. Take the exponential of each score, so all the scores are positive.
  3. Divide each score by the sum of all the scores, so the sum of all the scores is 1.
- So now we have a function that takes scores and gives probabilities, and it satisfies the two rules for probabilities.
- This function is called `softmax`.
  - In math notation, `softmax(x)` is written `exp(x) / sum(exp(x))`.
  - `exp` is the exponential function, e.g., `exp(1) == e`.
  - In code, `softmax(x)` is written `exp(x) / exp(x).sum()`.
  - In PyTorch, `softmax(x)` is written `F.softmax(x, dim=1)` (where `dim=1` indicates which axis has the scores for each class).
- Numerical aside: Why do we subtract the largest score?
  - If we don't, then the largest score might be so large that the exponential overflows.
  - So we subtract the largest score, so the largest score becomes 0, and the exponential doesn't overflow.
  - This is a common trick in numerical computing: subtract the largest number to avoid overflows.
  - This works because you can add or subtract a constant from the input to `softmax` without changing the output. (exercise to the reader: prove it!)

### Where do scores come from?

- How does the classifier compute scores?
  - A linear regression for each class
  - So each score is the dot product of the input with the weights for that class.
  - So, intuitively, the classifier is measuring how similar the input is to each class, and then converting those similarities into probabilities.
- How do we know what was the *right* score?
  - In linear regression we were given the right scores.
  - In classification, we have to learn the scores from data. (hence Elo scores)

### Why nonlinearities?

- Remember we're trying to fit a function from inputs to outputs.
  - The function is a model.
  - The inputs are the (training) data.
  - The outputs are the labels.
  - A wide range of interesting problems can be expressed as a function from inputs to outputs.
    - Example: classifying an image. The inputs are the pixels, and the outputs are the probabilities of each class.
    - Example: predicting the price of a house. The inputs are the features of the house, and the outputs are the price.
    - Example: predicting the next word in a sentence. The inputs are the previous words, and the outputs are the probabilities of each word.
- Without nonlinearities, the model is just a linear regression.
  - Linear regression is not powerful enough to learn anything interesting.
  - So we need nonlinearities to make the model more powerful.
- Example nonlinearity: the rectifier (ReLU)
  - other examples: sigmoid, tanh, leaky ReLU, etc.
  - ReLU is the most common (and simplest)
- Why is ReLU useful?
  - We can approximate any function as a piecewise linear function.
    - It's easiest to see this with a 1D function, as we started to see in last week's lab.
    - But it's true for any number of dimensions.
  - We can make any piecewise linear function we want by combining ReLUs.
  - So we can approximate any function we want by combining ReLUs.
- The same applies for other nonlinearities also.
