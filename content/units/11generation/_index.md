---
title: "Unit 11: Generation"
date: 2022-03-28
weight: 11
---

We've seen models that *classify* images and text, then more recently models that can generate one single token. What if we want to generate whole articles? Or images? Music? Programs? We can adapt the same basic approaches that we used already, but with interesting twists... and, I must admit, the results are fun.

By the end of this week you should be able to:

- Compare and contrast the process and results of generating sequences using three different algorithms: greedy generation, sampling, and beam search.
- Explain the concept of a *generator network*.
- Explain how a Generative Adversarial Network is trained.

{{% next-year %}}

Quiz questions?

- Which sequence generation algorithm will give only a single output?
  - greedy
  - sampling, beam search
- Which sequence generation algorithm yields different results each time it is run? (sampling)
- Which sequence generation algorithm requires the most computation (i.e., forward passes through the model): beam search
- Why might beam search give higher quality translations than greedy sampling?
  - Beam search allows the generation algorithm to revisit prior decisions.
  - Greedy sampling is too noisy.
  - The network was trained using beam search.
- In a generative adversarial network (GAN), which of the following is a correct description of the *input* to a generator network (typically called `z`)?
  - A random vector
  - The generated image, expressed as a vector
  - A vector that has been optimized to represent a specific given image
- If z1 and z2 are both input vectors to a generator network, what can you say about a linear interpolation between z1 and z2 (i.e., alpha * z1 + (1 - alpha) * z2)?
  - The generated image will probably look reasonable.
  - When alpha is 1, the output image will correspond to z2
  - The output will be a cross-fade between the two images, like a double-exposure.
  - The operation is invalid because the dimensionality doesn't match up.
- The *input* to the discriminator network of a GAN is:
  - Images, either real images or outputs of the generator network. 
  - The same vectors that are given to the generator network (z1, z2, etc.)
  - Binary labels, representing *real* or *fake*
- A discriminator network is best described as
  - A binary classifier computing the probability of an image being real or fake.
  - A probability distribution that defines the manifold of generated images.
  - A function that gives the probability of the next pixel
- When training the discriminator, we want to take gradient steps that...
  - Reduce the cross-entropy loss of the real-fake classifier
  - Increase the cross-entropy loss of the real-fake classifier
- When training the generator, we want to take gradient steps that...
  - Increase the cross-entropy loss of the real-fake classifier
  - Reduce the cross-entropy loss of the real-fake classifier


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

<!-- We worked through the [decoding activity](decoding-handout) ([PDF](decoding-handout.pdf)) using {{% fundamentals name="Translation as Language Modeling notebook" nbname="translation_lm.ipynb" %}} -->

We reviewed and extended Lab 9. Summary in the following:

- {{% fundamentals name="Demo of Logits and Embeddings from a Language Model" nbname="u11n0-logits-demo.ipynb" %}}


### Wednesday

We worked through:

{{% fundamentals name="Programming with Self-Attention" nbname="u11n1-self-attention.ipynb" %}}

<!--
- [Slides](/slides/2022-03-30%20Generative%20Models.pdf)
- We briefly discussed [StyleGAN 3](https://nvlabs.github.io/stylegan3/) ([blog post](https://lambdalabs.com/blog/stylegan-3/)).
  - The demo was done in [this notebook](https://colab.research.google.com/drive/1eYlenR1GHPZXt-YuvXabzO9wfh9CWY36) which also includes text-guided refinements via a method called [CLIP: Connecting Text and Images](https://openai.com/blog/clip/) ([code](https://github.com/openai/CLIP))
  - Here is the [core code for StyleGAN 3](https://github.com/NVlabs/stylegan3/blob/main/training/networks_stylegan3.py)

-->

{{% next-year %}}

- Actually show a random image generation
- Show class-average images as an example of why we need to model relationships between pixels

{{% /next-year %}}

### Friday: More transformers.
