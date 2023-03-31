---
title: "Unit 12: Review, Reinforcement Learning"
date: 2022-04-04
weight: 12
---

## Preparation

- Just to make sure you're following: [Everything to Know About Artificial Intelligence, or AI - The New York Times](https://www.nytimes.com/article/ai-artificial-intelligence-chatbot.html) (we have [a campus-wide subscription to NYTimes](https://library.calvin.edu/content/blog/9768), so you can read it for free)
- Review the [Thinking like Transformer](https://srush.github.io/raspy/) blog post. This will be review and broader context for those who were following last week.
- Skim [Illustrating Reinforcement Learning from Human Feedback (RLHF)](https://huggingface.co/blog/rlhf) and [What Makes a Dialog Agent Useful?](https://huggingface.co/blog/dialog-agents) on the Hugging Face blog.


Recommended but not essential:

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

Reinforcement Learning (learning from feedback)

- Reward Discounting, quantifying the good life, and value alignment
  - Jesus’s discount factor: he endured the cross for the joy set before him. Infinite time horizon, no convergence problems.
- Types of learning: Supervised, Self-Supervised, Reinforcement
- Challenges of RL
  - Exploration
  - Credit assignment
- RL formalism: Markov Decision Process
- What functions can we learn: value, Q, policy (see [lab](lab/))
- (Didn't get to) How does [MuZero](https://deepmind.com/blog/article/muzero-mastering-go-chess-shogi-and-atari-without-rules) work?

### Friday

No class (Good Friday)