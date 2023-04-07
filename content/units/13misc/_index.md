---
title: "Unit 13: Generation and Miscellaneous Topics"
weight: 13
---

The main objective of the rest of our time together is to understand how, at a high level, how AI models can *generate* dialogues, code, images, and other kinds of data.

We'll also mention some other topics that you should be aware of, but that we won't have time to cover in detail.

{{% details summary="Objectives" %}}

- Describe how autoregressive generation works
- Describe how generative adversarial networks work
- Describe how diffusion models work

(By "work", I mean, how do they use the building blocks of neural networks, which we've studied so far, to generate data.)

### Supplemental Objectives

Here are a few more things that would be helpful to know *about*, even though they're not the main focus of this class:

- Robotics: Reinforcement Learning (RL) and Transformers
- Explainable AI (XAI)
- Human-Centered AI

{{% /details %}}

{{% details summary="Reading" %}}

Please read the following sometime before the last day of class:

### Background

Review my blog post on [Mapping to Mimicry](https://kenarnold.org/posts/map-to-mimic/). I wrote it in one short sprint; feedback welcome!

### Generative Models

[The Illustrated Stable Diffusion – Jay Alammar – Visualizing machine learning one concept at a time.](https://jalammar.github.io/illustrated-stable-diffusion/)

- More resources: [Ai generative art tools](https://pharmapsychotic.com/tools.html)

### Robotics

Rather than study theory, let's look at two recent blog advances:

- An upgrade on a classic RL approach (Q-learning): [Pre-training generalist agents using offline reinforcement learning – Google AI Blog](https://ai.googleblog.com/2023/02/pre-training-generalist-agents-using.html)
- A new kind of approach: just use Transformers for everything. [PaLM-E: An embodied multimodal language model – Google AI Blog](https://ai.googleblog.com/2023/03/palm-e-embodied-multimodal-language.html)

### Explainable and Human-Centered AI

[ACM Selects: Trustworthy AI in Healthcare #02](https://selects.acm.org/selections/trustworthy-ai-in-healthcare-02)

{{% /details %}}

{{% details summary="Supplemental" %}}

What happens when AI meets people? How can we ensure that AI results are:

- Correct,
- Just, and
- Useful?

The first two are the subject of a subfield called Fairness, Accountability, and Transparency; the last is the subject of much research in human-computer interaction (HCI) and computer-supported cooperative work (CSCW). We'll explore all three in these last two weeks of class.

### Correctness and Transparency / Explainability

Read one or more of these:

- [Explainable AI Guide](https://ex.pegg.io/) ("Your high-level guide to the set of tools and methods that helps humans understand AI/ML models and their predictions.")
- **Interpreting Neural Nets**: Skim one of these articles:
  - [The Building Blocks of Interpretability](https://distill.pub/2018/building-blocks/)
  - [Activation Atlas](https://distill.pub/2019/activation-atlas/)
  - [Visualizing Neural Networks with the Grand Tour](https://distill.pub/2020/grand-tour/)
  - [Multimodal Neurons in Artificial Neural Networks](https://distill.pub/2021/multimodal-neurons/)
- [Interpretable Machine Learning: Fundamental Principles and 10 Grand Challenges | Abstract](https://arxiv.org/abs/2103.11251)
- Techniques and limitations of post-hoc interpretability
  - [Problems with Shapley-value-based explanations as feature importance measures](http://proceedings.mlr.press/v119/kumar20e.html)
  - [The Science Behind InterpretML: SHAP - YouTube](https://www.youtube.com/watch?v=-taOhqkiuIo)
- Built-in interpretability: [imodels: leveraging the unreasonable effectiveness of rules – The Berkeley Artificial Intelligence Research Blog](https://bair.berkeley.edu/blog/2022/02/02/imodels/)
- [Hundreds of AI tools have been built to catch covid. None of them helped. | MIT Technology Review](https://www.technologyreview.com/2021/07/30/1030329/machine-learning-ai-failed-covid-hospital-diagnosis-pandemic)
  > Many unwittingly used a data set that contained chest scans of children who did not have covid as their examples of what non-covid cases looked like. But as a result, the AIs learned to identify kids, not covid.

Watch:

- Watch: [Stop doing "explainable" ML](https://www.youtube.com/watch?v=I0yrJz8uc5Q)

#### Supplemental Material

- See the "Hall of Fame" list at [5th VISxAI Workshop at IEEE VIS 2022](https://visxai.io/) (also the list of examples under the Call for Participation)
- [PyTorch implementation for Transformer Interpretability Beyond Attention Visualization](https://github.com/hila-chefer/Transformer-Explainability)

### Justice (Fairness, Bias)

- Read one of the articles in [ACM Selects on Algorithmic Fairness](https://selects.acm.org/selections/why-algorithmic-fairness)
- Prefer to watch something? [21 fairness definitions and their politics](https://www.youtube.com/watch?v=jIXIuYdnyyk)

Supplemental: [The Effects of Regularization and Data Augmentation are Class Dependent | Abstract](https://arxiv.org/abs/2204.03632)

### Usability

Read or watch something from [Human-Centered Artificial Intelligence](https://hcil.umd.edu/human-centered-ai/).

{{% /details %}}


{{% details summary="Class Meetings" %}}

No Class Monday (Easter Monday)


### Wednesday

Generating images

## Friday

Lab: generation: autoregressive, GAN, diffusion.

### Monday

Interpretability and Explanation ([slides](/slides/2022-04-20%20Explainable%20and%20Usable.pdf))

## Wednesday

Fairness and Wrap-Up [slides](/slides/2022-04-21%20Fairness%20and%20Wrap-Up.pdf)

Final Discussion topics

- Personal Impacts
  - How AI has impacted my life in the past few years. For better? For worse?
  - How AI has impacted the lives of people unlike me.
  - How AI might impact our lives in the next 5 years.
- Development
  - Something useful or cool that has recently become possible thanks to AI.
  - What are some things that AI systems are already better than humans at?
  - What are some things that humans are still much better at than AI systems?
- Broader impacts
  - Earth Day is tomorrow. Is AI good for the environment? Bad?
  - Is AI good for society? Bad?
  - Is AI good for human creativity? is it bad?
- Christian perspective
  - Something that Christians should consider as people who *consume* AI-powered products
  - ...As people who *use* AI in their organizations
  - ...as people who *develop* AI?

## Thursday: Midterm 2

{{% /details %}}
