---
title: "Lab 8"
draft: true
---

Our goals for the homework assignment this week are:

- Practice working with tokenization, so that you have a clear idea about how you might convert strings into sequences of numbers that you can provide to a neural net

## This Week's Fundamentals

There's only one notebook this week, designed to help you practice with tokenizers. As usual, do your work in the corresponding notebook.

- {{% fundamentals name="Tokenization" nbname="u8n1-tokenization.ipynb" %}}

## Try Out NLP Benchmarks

Try out a benchmark of NLP progress. I suggest [BIG-Bench](https://github.com/google/BIG-bench), organized by Google, but you're welcome to try a different one. 

1. Pick one task, e.g., [one of these](https://github.com/google/BIG-bench/blob/main/bigbench/benchmark_tasks/keywords_to_tasks.md#summary-table).
2. Pick two example items from that task, arbitrarily. For example, if you're using BIG-Bench, I clicked the first task, [bbq-lite](https://github.com/google/BIG-bench/tree/main/bigbench/benchmark_tasks/bbq_lite), clicked the first JSON file under Resources, and grabbed an example from there.
  - If you have the patience, the BIG-Bench [Task Testing Notebook](https://colab.research.google.com/github/google/BIG-bench/blob/main/notebooks/TaskTestingNotebook.ipynb#scrollTo=t9qUsUiWczu6) is really useful for exploring the tasks, but it takes a while to initially set up.
3. Test three different models:
  1. Yourself.
  2. ChatGPT or the OpenAI Playground
  3. A pre-built model from Hugging Face, such as [flan-ul2](https://huggingface.co/google/flan-ul2)

Provide a brief reflection on the experience.

- Which task did you pick? (Give enough detail so that someone else would be able to try it too.)
- Do you think the task is a good measure of progress in NLP? Why or why not?
- Did you find it easy to do yourself?
- How did the models do?
