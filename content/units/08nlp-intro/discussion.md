---
title: "Discussion for Week 8"
---

This short task is intended to help you get a sense of how we might evaluate a model's performance in a natural language processing task. Clearly a model can't understand language in the way that humans do, but what happens if we take a reductionist lens and ask how well it does on specific tasks?

## Try Out NLP Benchmarks

Try out a benchmark of NLP progress. I suggest [BIG-Bench](https://github.com/google/BIG-bench), organized by Google, but you're welcome to try a different one. 

1. Pick one task, e.g., [one of these](https://github.com/google/BIG-bench/blob/main/bigbench/benchmark_tasks/keywords_to_tasks.md#summary-table). Skim the prior postings in this forum first to try to pick a task that hasn't been done yet.
2. Pick two example items from that task, arbitrarily.
    - For example, if you're using BIG-Bench, I clicked the first task, [bbq-lite](https://github.com/google/BIG-bench/tree/main/bigbench/benchmark_tasks/bbq_lite), clicked the first JSON file under Resources, and grabbed an example from there.
    - If you have the patience, the BIG-Bench [Task Testing Notebook](https://colab.research.google.com/github/google/BIG-bench/blob/main/notebooks/TaskTestingNotebook.ipynb#scrollTo=t9qUsUiWczu6) is really useful for exploring the tasks, but it takes a while to initially set up.
3. Test three different models:
    1. Yourself.
    2. ChatGPT or the OpenAI Playground
    3. A pre-built model from Hugging Face, such as [flan-ul2](https://huggingface.co/google/flan-ul2)

## Initial Post

Post a brief reflection on the experience.

- Which task did you pick? (Give enough detail so that someone else would be able to try it too.)
- Copy and paste one interesting example of an item from the task. Include the answer choices (if any) but not the correct answer.
- How easy or difficult was the task you chose?
- How did the models do?
- Do you think the task is a good indicator of how well someone or something understands language? Why or why not?

## Replies

Give the answer to the example item that someone else posted. (Pick one that hasn't already been answered.) Also respond to their comments about the task.
