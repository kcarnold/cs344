---
title: "Homework 13"
date: 2022-04-14
due: 2022-04-21
draft: true
---

Our goal for the homework assignment this week is:

- Practice thinking about and working with different kinds of sequence models

## Count the Parameters

- Where do the parameter counts in last week's Fundamentals come from?
  - {{% fundamentals name="Models for Sequence Data" nbname="u12n1-seq-models.ipynb" %}}
- Where does 540 billion parameters come from in PaLM? See section 2.1.
- How much memory would it take, if each parameter is stored as a float16?

## Train a Sequence Model on Your Own Data

- Collect a plain text file (`.txt`) of things that you've written recently. (perhaps all of your discussion posts in this class, or all of the papers you've written in the past year, or even all of the code you've written for a recent project). It should be your own work.
- Fine-tune the GPT-2 on your text using the [`run_clm.py` script](https://github.com/huggingface/transformers/tree/main/examples/pytorch/language-modeling) documented in the Hugging Face Transformers repo.
  - You will need a validation `txt` file also, but it need not be large.
  - Unless line breaks are significant, use `--keep_linebreaks=false`.
- Generate some example text. We did this in a Fundamentals notebook a few weeks ago, or you can use [this script](https://github.com/huggingface/transformers/tree/main/examples/pytorch/text-generation).

## This Week's Fundamentals

There's only one notebook this week, designed to help you practice with different types of models. As usual, do your work in the corresponding notebook.


## Submitting

In the Moodle assignment for this Homework:

1. Attach the `ipynb` file. **Make sure you've done a "Restart and Run All" before submitting.**
2. Copy and paste your responses to the Analysis questions into the text box.
