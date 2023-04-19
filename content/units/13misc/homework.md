---
title: "Final Homework"
---

You have two options for this final assignment. You may choose to do one or both.

1. Do the assignment described here, on your own or with a partner.
2. Do the [discussion](../discussion/) assignment and post in the Forum on Moodle.

## Train a Sequence Model on Your Own Data

### Part 1: Training

- Collect a plain text file (`.txt`) of some text that you've written recently. (Perhaps all of your discussion posts in this class, or all of the papers you've written in the past year, or even all of the code you've written for a recent project). It should be your own work.
- Fine-tune the GPT-2 on your text using the [`run_clm.py` script](https://github.com/huggingface/transformers/tree/main/examples/pytorch/language-modeling) documented in the Hugging Face Transformers repo.
  - You will need a validation `txt` file also, but it need not be large. You may even be able to leave it empty, I haven't tested.
  - Unless line breaks are significant, use `--keep_linebreaks=false`.
  - If you get complains about the version of `transformers`, grab the script from an older release tag, e.g., [4.27.0](https://github.com/huggingface/transformers/tree/v4.27.0/examples/pytorch/language-modeling)

### Part 2: Generation

Generate some example text. We did this in a Fundamentals notebook a few weeks ago, or you can use [this script](https://github.com/huggingface/transformers/tree/main/examples/pytorch/text-generation).

### Part 3: Evaluations

- Pick a phrase from your corpus.
- Evaluate the perplexity of three different models on your phrase:
    - The original GPT-2 model
    - Your fine-tuned model
    - A model in the OpenAI Playground (use Full Spectrum probabilities to show request the logprobs)
- What do you notice about the perplexities of the three models?

### Wrap-Up

Write a brief summary of your experience:

- What data did you use?
- What sort of results did you get?
