---
title: "Replication Projects"
---

### Choosing a Replication Project

If you're choosing a replication project, ask yourself:

1. Is there some specific write-up, with quantitative results clearly reported, that I can use to anchor the project?
2. Can I easily access the same data that the original authors used? (Does it fit on computing hardware I can easily access?)
3. Do I understand the basic approach? Maybe there's fancy stuff too, but you should be able to think of how you'd implement a simple version of it.

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
