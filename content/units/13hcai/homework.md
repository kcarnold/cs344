---
title: "Homework 13"
date: 2022-04-14
due: 2022-04-21
draft: true
---

Our goal for the homework assignment this week is:

- Practice thinking about and working with different kinds of sequence models

## Count the Parameters

The large language model we looked at for our discussion last week, PaLM, reports that it has 540 billion parameters. What are all of those numbers used for? This week, we'll count parameters.

This is the Fundamentals notebook for this week:

- {{% fundamentals name="Why so big? Counting parameters in sequence models" nbname="u13n1-count-params.ipynb" %}}

## Train a Sequence Model on Your Own Data

- Collect a plain text file (`.txt`) of things that you've written recently. (perhaps all of your discussion posts in this class, or all of the papers you've written in the past year, or even all of the code you've written for a recent project). It should be your own work.
- Fine-tune the GPT-2 on your text using the [`run_clm.py` script](https://github.com/huggingface/transformers/tree/main/examples/pytorch/language-modeling) documented in the Hugging Face Transformers repo.
  - You will need a validation `txt` file also, but it need not be large.
  - Unless line breaks are significant, use `--keep_linebreaks=false`.
- Generate some example text. We did this in a Fundamentals notebook a few weeks ago, or you can use [this script](https://github.com/huggingface/transformers/tree/main/examples/pytorch/text-generation).

## Submitting

In the Moodle assignment for this Homework:

1. Attach the `ipynb` file. **Make sure you've done a "Restart and Run All" before submitting.**
2. Copy and paste your responses to the Analysis questions into the text box.
