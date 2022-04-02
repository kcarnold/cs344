---
title: "Unit 11: Generation"
date: 2022-03-28
weight: 11
---

We've seen models that *classify* images and text, then more recently models that can generate one single token. What if we want to generate whole articles? Or images? Music? Programs? We can adapt the same basic approaches that we used already, but with interesting twists... and, I must admit, the results are fun.

{{% next-year %}}
By the end of this week you should be able to answer the following questions:

- TODO

{{% /next-year %}}

## Preparation

- **Read** A basic introduction to *decoding*: [How to generate text: using different decoding methods for language generation with Transformers](https://huggingface.co/blog/how-to-generate)
- **Watch** Lecture 4 of [MIT 6.S191](http://introtodeeplearning.com/) (skim Lecture 3 if needed)

We'll also discuss GANs and Diffusion Models. I found the [Foreward](https://link.springer.com/content/pdf/bfm%3A978-3-030-93158-2%2F1.pdf) to this [book on Deep Generative Modeling](https://link.springer.com/book/10.1007/978-3-030-93158-2) (Available through Calvin library) to be reasonably accessible, but you may prefer the author's [blog posts](https://jmtomczak.github.io/blog.html). ([github](https://github.com/jmtomczak/intro_dgm)).

Now, how do you control *what* gets generated? Choose your favorite modality and skim a very recent paper:

- Controlling generated text
  - [Prefix-Tuning: Optimizing Continuous Prompts for Generation](https://arxiv.org/abs/2101.00190); extension: [Control Prefixes for Text Generation](https://arxiv.org/abs/2110.08329)
- Captioning images
  - [Multimodal Few-Shot Learning with Frozen Language Models](https://arxiv.org/abs/2106.13884); extension: [MAGMA -- Multimodal Augmentation of Generative Models through Adapter-based Finetuning](https://arxiv.org/abs/2112.05253)
- Generating images
  - [GLIDE: Towards Photorealistic Image Generation and Editing with Text-Guided Diffusion Models | Abstract](https://arxiv.org/abs/2112.10741)
  - *probably the best starting point for a project like this*: [Autoregressive Image Generation using Residual Quantization | Papers With Code](https://paperswithcode.com/paper/autoregressive-image-generation-using?from=n28) - pretrained models in the [official implementation](https://github.com/kakaobrain/rq-vae-transformer), nice clean implementation in [lucidrains/vector-quantize-pytorch: Vector Quantization, in Pytorch](https://github.com/lucidrains/vector-quantize-pytorch)

### Supplemental Material

- [ML and NLP Research Highlights of 2021](https://ruder.io/ml-highlights-2021/)
- [Some slides](https://web.stanford.edu/class/cs224n/slides/cs224n-2019-lecture15-nlg.pdf)
- An extensive collection of notebooks on generative models: [Hitchhiker's Guide To The Latent Space: Community Notebook Document - Google Docs](https://docs.google.com/document/d/1ON4unvrGC2fSEAHMVb4idopPlWmzM0Lx5cxiOXG47k4/edit)
- Here's a good intro to text-guided image generation and manipulation: [StyleCLIP: Text-Driven Manipulation of StyleGAN Imagery](https://github.com/orpatashnik/StyleCLIP) ([paper](https://arxiv.org/abs/2103.17249))

## Class Meetings

### Monday

We worked through the [decoding activity](decoding-handout) ([PDF](decoding-handout.pdf)) using {{% fundamentals name="Translation as Language Modeling notebook" nbname="translation_lm.ipynb" %}}

### Wednesday

- [Slides](/slides/2022-03-30%20Generative%20Models.pdf)
- We briefly discussed [StyleGAN 3](https://nvlabs.github.io/stylegan3/) ([blog post](https://lambdalabs.com/blog/stylegan-3/)).
  - The demo was done in [this notebook](https://colab.research.google.com/drive/1eYlenR1GHPZXt-YuvXabzO9wfh9CWY36) which also includes text-guided refinements via a method called [CLIP: Connecting Text and Images](https://openai.com/blog/clip/) ([code](https://github.com/openai/CLIP))
  - Here is the [core code for StyleGAN 3](https://github.com/NVlabs/stylegan3/blob/main/training/networks_stylegan3.py)

{{% next-year %}}

- Actually show a random image generation
- Show class-average images as an example of why we need to model relationships between pixels

{{% /next-year %}}

### Friday: Guest Lecture