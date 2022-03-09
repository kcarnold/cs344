---
title: "Unit 8: NLP Intro"
date: 2022-03-07
weight: 8
---

Some of the most impactful developments in AI recently have come from modeling and generating *sequences*.
In this lesson we'll start learning about how we can extend the sort of modeling we've been doing to them.

Students who complete this unit will demonstrate that they can:

- Identify at least two different language understanding tasks that can be addressed using machine learning methods.
- Describe causal language modeling as a prediction problem
- Explain at least two different approaches for converting text data into a form usable by a machine learning model.
- Identify both word and character n-grams in a given string.
- Describe how perplexity relates to log-likelihood and cross-entropy (and the general concept of partial credit in classifiers)
- Implement basic data manipulation operations in language processing

## Preparation

Since NLP has advanced so much in the past few years, we're going to use the [Hugging Face NLP Course](https://huggingface.co/course/) instead of the material in our textbook.

- Do chapters 1 and 2 of the [Hugging Face NLP Course](https://huggingface.co/course/).
- Watch Jay Alammar's "gentle visual intro to Transformers models" from the [Part 2 Release Event](https://huggingface.co/course/event/1?fw=pt), and one more of your choice.

### Supplemental Material

- Watch [Lecture 2 of MIT 6.S191](https://www.youtube.com/watch?v=qjrad0V0uJE&list=PLtBw6njQRU-rwp5__7C0oIVt26ZgjG9NI&index=2)
  - You may want to go back to skim [Lecture 1](https://www.youtube.com/watch?v=5tvmMX8r_OM&list=PLtBw6njQRU-rwp5__7C0oIVt26ZgjG9NI&index=1) if you didn't do so back in Week 4.
- Textbook: [SLP3](https://web.stanford.edu/~jurafsky/slp3/) (architectures, tasks, RNN etc.)
- Videos: [Stanford course on Natural Language Understanding 21SP](https://www.youtube.com/playlist?list=PLoROMvodv4rPt5D0zs3YhbWSZA8Q_DyiJ)
- [Jay Alammar](https://jalammar.github.io/) ([YouTube](https://www.youtube.com/channel/UCmOwsoHty5PrmE-3QhUBfPQ)) has made some nice visual explanations of language models.

## Class Meetings

### Monday

Lecture: NLP Intro and Predictive Text ([slides](https://cs.calvin.edu/courses/cs/344/22sp/slides/2022-03-07%20NLP%20intro%20and%20Predictive%20Text.pdf))

### Wednesday

- Discussion summary (come prepared to contribute)
- [Slides](/slides/w8/w8-nlp-tasks.html)
  - Language understanding *tasks*
  - Tokenization

### Friday

- Word embeddings
- Tokenization practice

### Homework

- tokenization fundamentals
- n-gram LM
