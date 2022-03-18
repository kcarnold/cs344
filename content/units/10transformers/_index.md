---
title: "Unit 10: Transformers"
date: 2022-03-21
weight: 10
---

The Transformers architecture (sometimes called *self-attention networks*) has been the power behind many recent advances not just in NLP but also vision, audio, etc.
The week we'll see how they work!

By the end of this week you should be able to answer the following questions:

- What is a *layer* in a self-attention network: what goes in, what comes out, and what are the shapes of all those things?
- How does data flow in a self-attention network? In what sense does it use *conditional logic*?
- What does an *attention head* do? Specifically, what are queries, keys, and values, and what do they do? And how does this relate with our old friends the *dot product* and *softmax*? (Wait, is this logistic classification yet again?)
- How do self-attention networks keep track of position?
- What are *encoder*s and *decoder*s? Why does that matter? What impact does that have on what you can do with the model?

## Preparation

Read and/or watch two things about how Transformers work.

- [Transformers Study Materials](https://github.com/dair-ai/Transformers-Recipe) at a range of levels of detail.
- Twitter threads more your thing? [Part 1](https://twitter.com/MishaLaskin/status/1479246928454037508), [Part 2](https://twitter.com/MishaLaskin/status/1481767733972901888)

### Supplemental Material

## Class Meetings

### Monday

- Review Transformers layers
- Attention: draw it, code it.

### Wednesday: Advising Break

### Friday

- Position embeddings
- Encoders and decoders
