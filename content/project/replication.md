---
title: "Replication Projects"
---

### Choosing a Replication Project

If you're choosing a replication project, ask yourself:

1. Is there some specific write-up, with quantitative results clearly reported, that I can use to anchor the project?
2. Can I easily access the same data that the original authors used? (Does it fit on computing hardware I can easily access?)
3. Do I understand the basic approach? Maybe there's fancy stuff too, but you should be able to think of how you'd implement a simple version of it.

### Expository Notebooks ("Notebookify")

One strategy to take when starting with an existing code is to "Notebookify" it. Most notebooks you'll find are *demo* notebooks, designed to show off the best results but hide a lot of details behind opaque code chunks or external libraries. In contrast, an *expository* notebook **walks the reader through what's going on**.

The code part of such a project is relatively straightforward: find a demo notebook, step through it, pull in the contents of the "do-all-the-stuff" functions (test that it still works), split things up into individual cells (test that it still works), and show intermediate results and shapes. But you'll also write up descriptions of what's happening.

You will almost certainly want to refer to a paper by the original authors. It'll usually explain the names of variables and methods, and it'll show what parameters and data are likely to work well.

If the original has big loops, flatten them. For example, show one example of how the data is prepared, run one minibatch of the model training, show how the evaluation scores are computed for one datapoint.

Simplify the code as needed. e.g., if there are `if`s to do different things depending on configuration, remove the code that isn't actually run in your case.

Most importantly, explain what is going on. Start with an intro about the overall goal of the approach you're demoing, and the basic outline of what the process looks like. Then dive in. End with a conclusion summarizing the main points that you highlighted about what's going on. Perhaps end with some questions and future directions: what decisions did the original authors make that aren't clear to you? What ideas might you have for doing something differently?

### How to replicate without duplicating

One strategy: the Benjamin Franklin replication. Here's how I adapt it to code:

1. Read the original. Take notes in a separate document. Make them mostly in human language or math; put code in your notes only sparingly.
2. Close the original. Try to write a replication based on your notes.
3. Fail at some point because your notes aren't detailed enough. So **close your replication** and open the original again, and return to step 1.

### Tips for Replication Projects

Basic outline of a project here:

- Get the code running (could be very easy if you find a Colab notebook etc)
- Replicate something interesting that's already been done.
- Use an example that you provide instead of one of their pre-built ones.
- Push the limits a bit.

### Ideas of what to replicate

See <https://paperswithcode.com/> for some examples. Their [newsletter](https://paperswithcode.com/newsletter) is particularly approachable.

Also, see proceedings of general conferences like NeurIPS, ICML, ICLR, ..., or domain-focused conferences: text (EMNLP, ACL), speech and music (ISMIR, InterSpeech), computer vision (ICCV, SIGGRAPH), recommender systems (RecSys), etc.

### Some potential papers to replicate

A very incomplete list of things that crossed my radar once.

-   [Deep Image Prior](https://dmitryulyanov.github.io/deep_image_prior): doing cool stuff with images and deep neural nets, without even training them.
-   [Image Representations Learned With Unsupervised Pre-Training Contain Human-like Biases](https://arxiv.org/abs/2010.15052)
-   <https://towardsdatascience.com/how-to-build-a-controllable-writing-assistant-for-novel-authors-a9fa15b57c6a>
-   [Taming Transformers for High-Resolution Image Synthesis](https://compvis.github.io/taming-transformers/)
-   [Multimodal Few-Shot Learning with Frozen Language Models](https://arxiv.org/abs/2106.13884) or [Prefix Tuning](https://arxiv.org/pdf/2101.00190.pdf)
-   [Concept Bottleneck Models](https://arxiv.org/abs/2007.04612)
-   [GradInit](https://paperswithcode.com/paper/gradinit-learning-to-initialize-neural) (try this on some simple models)

Some potential libraries or codebases:

- [NVIDIA/NeMo: NeMo: a toolkit for conversational AI](https://github.com/NVIDIA/NeMo)
- Demos from Google's [Magenta group](https://github.com/magenta/magenta-demos).
- Lots of stuff on PapersWithCode
