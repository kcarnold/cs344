---
title: "Unit 12: Review, Reinforcement Learning"
date: 2022-04-04
weight: 12
---

## Preparation

- Watch MIT 6.S191 Lecture 5: Deep Reinforcement Learning: \[[Slides](http://introtodeeplearning.com/2021/slides/6S191_MIT_DeepLearning_L5.pdf)\], \[[Video](https://www.youtube.com/watch?v=93M1l_nrhpQ&list=PLtBw6njQRU-rwp5__7C0oIVt26ZgjG9NI&index=6)\]


### Supplemental Material

- Contextual
  - [AlphaGo Documentary](https://www.youtube.com/watch?v=WXuK6gekU1Y)
  - [ACM Selects: AI for Robotics](https://selects.acm.org/selections/ai-for-robotics)
- Technical
  - Using Sequence Models for RL
    - Overview: [Hugging Face blog post](https://huggingface.co/blog/decision-transformers)
    - [Sequence Modeling Solutions for Reinforcement Learning Problems](https://bair.berkeley.edu/blog/2021/11/19/trajectory-transformer/) (a simple and clever approach)
      - See also: [Decision Transformer: Reinforcement Learning via Sequence Modeling | Papers With Code](https://paperswithcode.com/paper/decision-transformer-reinforcement-learning?from=n11)
  - [Spinning Up in Deep RL](https://spinningup.openai.com/en/latest/) - a hands-on introduction to reinforcement learning in PyTorch by OpenAI
  - Creativity and Exploration
    - one example paper: [BeBold: Exploration Beyond the Boundary of Explored Regions | Abstract](https://arxiv.org/abs/2012.08621)
- Other
  - Strategies for Missing Data ([a stats reference](http://www.stat.columbia.edu/~gelman/arm/missing.pdf)) - related to our guest lecture from last week


## Class Meetings

### Monday

- Review of neural network architectures:
  - Wiring doesn't change: Feed-forward (MLP)
  - Current sample wired to previous sample:
    - Recurrent Networks ([Elman](https://en.wikipedia.org/wiki/Recurrent_neural_network#Architectures); [LSTM and GRU](http://colah.github.io/posts/2015-08-Understanding-LSTMs/))
  - Current sample wired to surrounding samples: Convolutional Networks (CNN)
  - Wiring computed dynamically based on "self-attention": Transformer
- Tricks
  - Residual Connections
  - Dropout

### Wednesday

- finish topics from Monday

### Friday

- Reinforcement Learning (learning from feedback)
