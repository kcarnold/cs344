---
title: "Unit 10: Transformers"
date: 2022-03-21
weight: 10
---

The Transformers architecture (sometimes called *self-attention networks*) has been the power behind many recent advances not just in NLP but also vision, audio, etc.
That's because they're currently one of the best tools we have for representing *high-dimensional joint distributions*, such as the distribution over all possible sequences of words or images.
This week we'll see how they work!

By the end of this week you should be able to answer the following questions:

- Describe practical considerations of handling batches of variable-length sequences, such as padding, attention masking, and truncation.
- Define *perplexity*, and describe how it relates to log-likelihood and cross-entropy (and the general concept of partial credit in classifiers)
- What is a *layer* in a self-attention network: what goes in, what comes out, and what are the shapes of all those things?
- Why are variable-length sequences challenging for neural nets? How do self-attention networks handle that challenge? (Bonus: what are some alternative approaches? convolutional nets, recurrent nets, all-MLP ([spatial gating](https://arxiv.org/abs/2105.08050)) networks, etc.)
- How does data flow in a self-attention network? In what sense does it use *conditional logic*?
- What does an *attention head* do? Specifically, what are queries, keys, and values, and what do they do? And how does this relate with our old friends the *dot product* and *softmax*? (Wait, is this logistic classification yet again?)
- How do self-attention networks keep track of position?
- What are *encoder*s and *decoder*s? Why does that matter? What impact does that have on what you can do with the model?

## Preparation

Read and/or watch two things about how Transformers work.

- NLPT Chapter 3

### Supplemental Material

- A story-like derivation of Transformers: [Transformers from Scratch](https://e2eml.school/transformers.html)
- Other study material:
  - [Transformers Study Materials](https://github.com/dair-ai/Transformers-Recipe) at a range of levels of detail.
  - Twitter threads more your thing? [Part 1](https://twitter.com/MishaLaskin/status/1479246928454037508), [Part 2](https://twitter.com/MishaLaskin/status/1481767733972901888)

## Class Meetings

### Monday

- Review Transformers layers
- Attention: draw it, code it.
  - [bertviz](https://github.com/jessevig/bertviz)

### Wednesday: Advising Break

### Friday

- Logistics
  - Feedback survey
  - Project milestones
- Transformer architecture: [Annotated Transformer](https://nlp.seas.harvard.edu/2018/04/03/attention.html)
- Position embeddings
- Encoders and decoders
