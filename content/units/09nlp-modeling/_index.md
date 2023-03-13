---
title: "Unit 9: NLP Modeling"
weight: 9
---

Now that we've seen the basic capabilities of NLP models, let's start getting under the hood. How do they work? How do we measure that?

- Describe the basic steps in an NLP pipeline and what the data looks like coming into and going out of each step.

{{% details summary="Preparation" %}}

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

{{% /details %}}

{{% details summary="Monday class" %}}

- NLP tasks ([slides](/slides/w9/w9-nlp.html))


{{% /details %}}

{{% details summary="Wednesday class" %}}

{{% /details %}}

{{% details summary="Friday lab" %}}

{{% /details %}}

{{% details summary="Q&A" %}}

- What's a hidden state?
  - It's the output of a layer of a neural network.
  - It's an *embedding* of the part of the input needed to continue the current calculation (e.g., predict the next token).
- Why is just the start token's hidden state typically used for classification?
  - Any individual token would otherwise contain some information from that single token as well as information from the entire sequence.
  - Note: It can attend to the entire sequence (in a bidirectional model like BERT).
  - Its hidden state representation doesn't need to be used for anything else (unlike other tokens, which need to be able to decode to a token.)
  - There may be better ways to do this, but this is a common approach.
- Why do we need padding?
  - Everything needs to be a tensor.
  - Tensors generally need to be rectangular, not ragged.
  - But when we put multiple sentences into a batch, they might have different lengths.
  - So we pad them to the same length.
  - (We could use ragged tensors instead, but hardware support for them isn't as good.)
  - This is mainly a concern when *training*. At inference time we often only have one sequence at a time. (unless we're doing beam search, which we'll talk about later.)
- Why is GPT-3 encoder-only?
  - See [UL2: Unifying Language Learning Paradigms | Abstract](https://arxiv.org/abs/2205.05131v3)

{{% /details %}}

<!-- 

- Code Together: Inside an NLP pipeline
  - What's the shape of everything? What are batches?
    - Review the tensors: what they mean, what their shapes are
    - Label each part.
  - Hidden states (`output_hidden_states`) and word embeddings
- `perplexity = mean_cross_entropy.exp()` and what that means
- Review loss, look at how it's implemented, clarify perplexity
- Review embeddings and hidden states

-->