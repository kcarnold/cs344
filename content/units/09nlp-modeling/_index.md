---
title: "Unit 9: NLP Modeling"
weight: 9
---

Now that we've seen the basic capabilities of NLP models, let's start getting under the hood. How do they work? How do we measure that?

- Describe the basic steps in an NLP pipeline and what the data looks like coming into and going out of each step.

## Preparation

Either:

- Read NLPT Chapter 2

Or:

- Read chapter 2 of the [Hugging Face NLP Course](https://huggingface.co/course/); do the end-of-chapter quiz.
- Read chapter 3 of the course. Do the end-of-chapter quiz. Additionally, be able to answer the following questions:
  - Section 2
    - In the first code chunk:
      - Was the `model` given the desired output for each sentence?
      - For how many iterations was the model trained?
      - *Review*: What does `loss.backward()` do?
      - *Note*: In case you haven't seen an `optimizer` object before, go back to the [*Extension* section of Fundamentals u05n3](/fundamentals/u05n3-mnist-clf.html#Extension)
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
- Read [Evaluation Metrics for Language Modeling](https://thegradient.pub/understanding-evaluation-metrics-for-language-models/); stop at "Reasoning about entropy as a metric"

### Supplemental Material

## Class Meetings

### Monday

- Code Together: Inside an NLP pipeline
  - What's the shape of everything? What are batches?
- `perplexity = mean_cross_entropy.exp()` and what that means

### Wednesday

- Discussion summary
- More coding together
  - Review what we did last time
    - Review the tensors: what they mean, what their shapes are
    - Label each part.
  - How to read the [implementation](https://github.com/huggingface/transformers/blob/1d43933fbc1c1e40fd26117e47910a18c69fca74/src/transformers/models/gpt2/modeling_gpt2.py#L946): *find the data flow*
  - Hidden states (`output_hidden_states`) and word embeddings

### Friday

- Notes:
  - [Feedback survey](https://forms.office.com/Pages/ResponsePage.aspx?id=uUljdRAGAUuReypKwQ35Rw0bDGF2ImlDp6FjI7QrXehUMUtET1YyOFk0MFkzSTVISk9OR1I4RllETC4u) posted
  - Study Quizzes posted
- Review loss, look at how it's implemented, clarify perplexity
- Review embeddings and hidden states
