---
title: "Unit 9: NLP Modeling"
date: 2022-03-14
weight: 9
---

Now that we've seen the basic capabilities of NLP models, let's start getting under the hood. How do they work? How do we measure that?

- Describe the basic steps in an NLP pipeline and what the data looks like coming into and going out of each step.
- Describe practical considerations of handling batches of variable-length sequences, such as padding, attention masking, and truncation.
- Define *perplexity*, and describe how it relates to log-likelihood and cross-entropy (and the general concept of partial credit in classifiers)

## Preparation

- Review chapters 1 and 2 of the [Hugging Face NLP Course](https://huggingface.co/course/); do the end-of-chapter quizzes if you have not.
- Read chapter 3 of the course. Do the end-of-chapter quiz. Additionally, be able to answer the following questions:
  - Section 2
    - In the first code chunk:
      - Was the `model` given the desired output for each sentence?
      - For how many iterations was the model trained?
      - *Review*: What does `loss.backward()` do?
      - *Note*: We didn't see `optimizer` objects before; see the new [*Extension* of Fundamentals u6n1](/fundamentals/u6n1-mnist-clf.html#Extension)
    - What information is contained in each row of the MPRC dataset?
    - How does the tokenizer tell the model which part of the input is the first sentence vs second sentence?
    - Why do we need to pad the the inputs?
  - Section 3
    - What does a `Trainer` do?
    - What information do you need to pass when constructing a `Trainer`?
    - What information do you need to pass when `compute`ing a `metric`? What information is given in the results?
      - note: [`f1`](https://en.wikipedia.org/wiki/F-score) summarizes a model's accuracy in a way that balances precision and recall. Technically, it is the harmonic mean of precision and recall. It's not perfect, but it's very commonly used.
  - Section 4
    - *Note*: look at the `for` - `break`. That's a useful Python trick for debugging iterable things (like data loaders) in notebooks.
    - What does `model(**batch)` give us? (Note: the `**` means to pass everything in `batch` as *keyword arguments* ("kwargs") to the function. So gets parameters like `input_ids=SOMETHING, attention_mask=SOMETHING, labels=SOMETHING`.)
    - Be able to explain what each line of code in the code chunk right before "The evaluation loop" does.
    - You can skip the section on `accelerate`.

### Supplemental Material

[Evaluation Metrics for Language Modeling](https://thegradient.pub/understanding-evaluation-metrics-for-language-models/)

## Class Meetings

### Monday

- Code Together: Inside an NLP pipeline
- `perplexity = cross_entropy.exp()` and what that means

### Wednesday

- Discussion summary
- More coding together

### Friday

### Homework

