---
title: "Wednesday class: Fundamentals of Gradient-Based Learning"
date: 2022-02-02
type: Class
---

### Plan

- Model = architecture + loss + data + optimization
- How does this apply to linear regression?
- Add a bias term to reinforce how gradient descent works. Draw loss as function of both weight and bias.
- *optional* Stochastic Gradient Descent: we only need a few points to find a descent direction
- Intuition of backpropagation for MAE
  - Not numerical gradient computation. It's "ill-conditioned" (viz. delta of 1e-3 vs 1e-4)
    > "Using the limit definition of the derivative for finite difference approximation commits both cardinal sins of numerical analysis:
      "*thou shalt not add small numbers to big numbers*", and "*thou shalt not subtract numbers which are approximately equal*". [Automatic differentiation in machine learning: a survey](https://arxiv.org/abs/1502.05767)
  - Not symbolic differentiation
- Loss functions and their gradients: MSE vs MAE
- Extend to a linear combination of basis functions (secretly ReLUs)

### Resources

[Interactive Gradient Descent demo](https://observablehq.com/d/80f8b8504873a853)
