---
title: "Homework 12"
date: 2022-04-08
due: 2022-04-14
draft: false
---

Our goals for the homework assignment this week are:

- Practice thinking about and working with different kinds of sequence models
- Reflect on what went into a state-of-the-art large language model.

## This Week's Fundamentals

There's only one notebook this week, designed to help you practice with different types of models. As usual, do your work in the corresponding notebook.

- {{% fundamentals name="Models for Sequence Data" nbname="u12n1-seq-models.ipynb" %}}

## State-of-the-Art in Sequence Modeling

Google recently released a paper on an enormous language model that they built. First, **skim their [blog post](https://ai.googleblog.com/2022/04/pathways-language-model-palm-scaling-to.html)**. Then, open up the [paper](https://arxiv.org/abs/2204.02311). Don't read all of it. Instead, **pick one or two of the following items** and **write a short response**.

- **Architecture**: How does this model relate with the models we have been studying (Transformers in general, or specific models like GPT-2 or MarianMT that we used in notebooks)? Specifically, section 2 describes various modifications to the standard architecture.
  - What aspects of the model architecture or training setup (e.g., vocabulary) do you think you understand? Make a sketch of that part of the model, either on paper or in code.
  - What aspects do you not quite understand?
- **Infrastructure**: if you're into software engineering: what aspects of Section 4 do you find interesting?
- **Training setup**: You should be able to read much of Section 5. What do you find interesting? What length of documents do you expect this model to be able to handle?
- **Experiments**: pick one or two experiments (sections 6 through 9). What is the experiment meant to test? What input was provided to the model? What output did it generate? Was any fine-tuning required? What do you think about the example results given?
- **Bias, Fairness, and Ethics**: See sections 10 and 11, and Appendices B--E. What do we learn from this model? Is it good that this model exists? Was it worth the environmental cost to train? Should Google deploy anything based on it in their products?
- **Vocation**: Read Appendix A (Contributions). Which part could you see yourself doing?

## Submitting

In the Moodle assignment for this Homework:

1. Attach the `ipynb` file. **Make sure you've done a "Restart and Run All" before submitting.**
2. Copy and paste your responses to the Analysis questions into the text box.
