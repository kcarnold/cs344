---
title: "Homework 13"
date: 2022-04-14
due: 2022-04-21
draft: true
---

## Train a Sequence Model on Your Own Data

- Collect a plain text file (`.txt`) of things that you've written recently. (perhaps all of your discussion posts in this class, or all of the papers you've written in the past year, or even all of the code you've written for a recent project). It should be your own work.
- Split that into **two different files** on some criterion. You could, for example, split long vs short, essays from two different classes, etc.
- Fine-tune the GPT-2 on your text using the [`run_clm.py` script](https://github.com/huggingface/transformers/tree/main/examples/pytorch/language-modeling) documented in the Hugging Face Transformers repo.
  - You will need a validation `txt` file also, but it need not be large. You may even be able to leave it empty, I haven't tested.
  - Unless line breaks are significant, use `--keep_linebreaks=false`.
- Generate some example text. We did this in a Fundamentals notebook a few weeks ago, or you can use [this script](https://github.com/huggingface/transformers/tree/main/examples/pytorch/text-generation).
- Write a brief summary of your experience:
  - What data did you use?
  - What sort of results did you get?
  - How did the generation results compare between the two different models?

### Step 2: Evaluation

- Pick a phrase from your corpus.
- Evaluate the perplexity of three different models on your phrase:
    - The original GPT-2 model
    - Your fine-tuned model
    - A model in the OpenAI Playground (use Full Spectrum probabilities to show request the logprobs)
- What do you notice about the perplexities of the three models?

## Count the Parameters

The large language model we looked at for our discussion last week, PaLM, reports that it has 540 billion parameters. What are all of those numbers used for? This week, we'll count parameters.

This is the Fundamentals notebook for this week:

- {{% fundamentals name="Why so big? Counting parameters in sequence models" nbname="u13n1-count-params.ipynb" %}}


## Submitting

In the Moodle assignment for this Homework:

1. Attach the `ipynb` file. **Make sure you've done a "Restart and Run All" before submitting.**
2. Copy and paste your responses to the Analysis questions into the text box.
3. Copy and paste your responses to "Train a Sequence Model" here too.
