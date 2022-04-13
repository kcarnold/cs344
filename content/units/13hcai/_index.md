---
title: "Unit 13: Human-Centered AI"
date: 2022-04-11
weight: 13
---

What happens when AI meets people? How can we ensure that AI results are:

- Correct,
- Just, and
- Useful?

The first two are the subject of a subfield called Fairness, Accountability, and Transparency; the last is the subject of much research in human-computer interaction (HCI) and computer-supported cooperative work (CSCW). We'll explore all three in these last two weeks of class.

We'll start this week with how we might convince ourselves that model outputs are (or aren't) *correct*.

## Preparation

Read:

- [Explainable AI Guide](https://ex.pegg.io/) ("Your high-level guide to the set of tools and methods that helps humans understand AI/ML models and their predictions.")
- **Interpreting Neural Nets**: Skim one of these articles:
  - [The Building Blocks of Interpretability](https://distill.pub/2018/building-blocks/)
  - [Activation Atlas](https://distill.pub/2019/activation-atlas/)
  - [Visualizing Neural Networks with the Grand Tour](https://distill.pub/2020/grand-tour/)
  - [Multimodal Neurons in Artificial Neural Networks](https://distill.pub/2021/multimodal-neurons/)
- [imodels: leveraging the unreasonable effectiveness of rules – The Berkeley Artificial Intelligence Research Blog](https://bair.berkeley.edu/blog/2022/02/02/imodels/)

Watch:

- Watch: [Stop doing "explainable" ML](https://www.youtube.com/watch?v=I0yrJz8uc5Q)


### Supplemental Material

- See the "Hall of Fame" list at [5th VISxAI Workshop at IEEE VIS 2022](https://visxai.io/) (also the list of examples under the Call for Participation)
- [PyTorch implementation for Transformer Interpretability Beyond Attention Visualization](https://github.com/hila-chefer/Transformer-Explainability)

## Class Meetings

### Monday

Continue our discussion of Reinforcement Learning (learning from feedback)

- Reward Discounting, quantifying the good life, and value alignment
- Types of learning: Supervised, Self-Supervised, Reinforcement
- Challenges of RL
  - Exploration
  - Credit assignment
- RL formalism: Markov Decision Process
- What functions can we learn: value, Q, policy (see [lab](lab/))
- (Didn't get to) How does [MuZero](https://deepmind.com/blog/article/muzero-mastering-go-chess-shogi-and-atari-without-rules) work?

### Wednesday

- Reminder about course evals
- Project logistics
- Discussion: [PaLM](../12rl/discussion/)
- Q&A (homework, RL, interpretability, ...)
- Lab time

Topics we could discuss:

- Interpretability and Explanation
  - Post-hoc explanation (salience, etc.)
  - Interpretable models
- Human Trust of AI Explanations

### Friday

Good Friday break!
