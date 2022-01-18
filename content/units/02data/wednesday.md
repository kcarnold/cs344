---
title: "Class Meeting: Data"
date: 2022-01-19
---


Links:

<!--
Survey results:
- "I learn way better through struggling and hands on practice than through lecture"
- 3 Nathans, 2 Calebs
Homework 1: resubmit
Homework 2 description
Python Warm-up Quiz
Weekly reflection
Piazza

> Why Python?

- Many libraries: talk with databases, webservers, IoT, GUIs, etc.
- Particularly good scientific computing ecosystem (NumPy, SciPy)
- Readable!
- Flexible: Enough metaprogramming to be concise where needed; some limited amount of magic is possible.
- Fast enough. Core operations are in low-level code; Python is the conductor.
    - [Array programming](https://en.wikipedia.org/wiki/Array_programming)
    - Benefits of GPU: highly parallel

Learning objectives - first two weeks

data:

> Lots of jargon!

The more often something shows up in class, the more important it is to know.

> Do we need math?

Yes! But not all at once, and not big chunks of it.

- Linear algebra: vectors, linear operators (matrix multiplication), dimensionality reduction
- Calculus: chain rule

> What if the randomly selected held-out part was the most unhelpful? (Note: validation of 20% means training set is 80%.)

- This is why we need sizeable validation sets. (What if it happened to pick only the *easiest* examples for validation?)
- Randomness usually helps: it's pretty unlikely to randomly select all extreme examples
- But do audit your choices, especially when summary stats may hide issues, e.g., unusually poor performance for a minority.

> What are layers? What does each one do?

Gradually integrating information from wider area of the image. Lower layers = really zoomed in.

> Converting sound to image is a cool idea

Recently this approach has been replaced by: turn everything into a *sequence* and pretend it's language.

> Pretrained models are useful

But can introduce bias, may not actually be as helpful as thought (more later).

> General approximation theorem?

- Specific theorems vary, but generally any two linear transforms with a nonlinearity in between.
- Intuition: you can approximate any function by gradually refining a mesh and interpolating between the points.

> How to collect data?

- Lots of preexisting datasets
- Logs from your website, app, IoT
- Crowdsource labels

> AI libraries?

- PyTorch vs TensorFlow: very similar; historically Tensorflow more industry and PyTorch more research but that's less clear now
- Keras, fast.ai, PyTorch Lightning: high-level libraries for making common patterns fast in TensorFlow and PyTorch
- newcomer: JAX. Simple automatic differentiation layer (autograd) on top of hardware-accelerated linear algebra primitives (XLA). Google.

> Epoch?

One full pass through the training data. Not uncommon to see tens or hundreds of epochs, depending on training set size.

> SGD?

- Gradient descent: which little wiggle would improve performance on the whole dataset?
- SGD: which would improve performance on *these few images I just saw*?
- SGD gets to a *better* solution *faster* than complete gradient descent. (intuition: more chances to try something and get feedback.)

> Overfitting as a problem?

- Recent results: a model can completely memorize its training set while still generalizing well (its behavior away from training set points is typically much better behaved than the figure suggests!), and in fact continue to improve generalization performance after reaching 100% accuracy (e.g., Grokking paper).

-->
