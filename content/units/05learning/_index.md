---
title: "Unit 5: Learning and Classification"
weight: 5
---

In this unit we extend our modeling skills to encompass classification models, and start to build the tools that will let us represent complex functions by using hidden layers. Both of these objectives require us to learn about *nonlinear* operations. We'll focus on the two most commonly used ones: the *softmax* operator (which converts scores to probabilities) and the *rectifier* ("ReLU", which clips negative values).

Students who complete this unit will demonstrate that they can:

- Describe the difference between a metric and a loss function.
- Describe and compute cross-entropy loss
- Explain the purpose and mathematical properties of the softmax operation.
- Explain the role of nonlinearities in a neural network (e.g., why they are used between linear layers)
- Implement a logistic regression model using basic numerical computing primitives

<!-- - Activities
	- some variation on Learning Proportions lab? ^^bandit learning^^: how likely is each arm to give a payout? -->

## Preparation

The fastai course videos are a bit disorganized here, sorry about that.

<!-- - Watch the Lab 4 [walk-through video](https://calvincollege.sharepoint.com/:f:/s/Section_81629/EiZcXdth0VZMhjz4S_69w0oByq-i_tuvqJMm1VgDMjNtJw?e=EC58DP) if you have not yet. -->

- Read {{< fastbook num="5" nbname="05_pet_breeds.ipynb" >}}.
  - skip (or skim) Presizing and the LR finder
  - skim "discriminative" rates (which would better be called "layer-dependent learning rates")
  - Some of this material was covered in {{<fastvideo num="3" >}}, and the rest is in {{<fastvideo num="5">}}. 
- *Recommended* skim {{<fastbook num="17" nbname="17_foundations.ipynb">}}.
  - This should reinforce what we've been studying about how linear regression works and how Tensors work, and give you a preview of how we'll extend it to a full neural net.

### Supplemental Material

We're using Elo scores for intuition a few times this week, but we're intentionally not diving deep on it. If you do want to dive deep:

- [Elo as a statistical learning model | Steven Morse](https://stmorse.github.io/journal/Elo.html)
- [FiveThirtyEight's Elo Ratings and Logistic Regression – Nic Dobson – half a thought in the head](https://nicidob.github.io/nba_elo/)

## Class Meetings

{{% details summary="Monday Class" %}}

- Deuteronomy 22:4: responsibility for what we build. Resilience.

- **Discuss**: Explain "gradient" in the context of last week's activity and lab.
- Where we are: review last week's learning objectives
- Where a linear layer fits in a neural net
- Introduction to classification

{{% /details %}}

{{% details summary="Wednesday Class" %}}

- Classification ([slides](/slides/w5/w5-classification.html))
  - intuition of scores: Elo
  - cross-entropy
    - intuition: maximize prob given to the correct answer
      - illustration: `plot_top_losses` output: probs and losess
    - math: sum the *log of* the prob given to the right answer
  - how do we make probabilities? softmax (and its relative the sigmoid)
  - where do the "right" scores come from?

{{% /details %}}

{{% details summary="Friday Lab" %}}

[Lab 5](lab/)

{{% /details %}}
