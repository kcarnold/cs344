---
title: 'Lab 2'
author: Ken Arnold
date: '2021-03-05'
slug: lab-2
categories: []
tags:
  - lab
subtitle: ''
summary: 'Understand backprop and gradient descent using physical analogies'
authors: []
lastmod: '2021-03-05'
featured: no
image:
  caption: ''
  focal_point: ''
  preview_only: no
projects: []
---

# Lab 2

## Getting Started

Partner up (optional but encouraged) and create a notebook. You may use Colab or the lab machines.

### Setup code

If using Colab, create and run a code cell with the following (to update fastai):

```
!pip install -Uq fastbook
```

Then import the usual functionality with this code cell:

```python
from fastai.vision.all import *
```

### Modeling our chain

Create a 10-link chain by defining the 10 angles that each segment makes with the previous one:

```python
set_seed(0)
n = 10
angles = torch.randn(n) * np.pi / 4
orig_angles = angles.clone() # for later
```

Copy in this function to compute the positions of each endpoint in the chain. (You don't need to understand how it works.)

```
def compute_positions(relative_angles):
    angles = relative_angles.cumsum(dim=0)
    deltas = torch.stack([angles.cos(), angles.sin()])
    end_positions = deltas.cumsum(dim=1)
    return torch.cat([torch.zeros(2, 1), end_positions], dim=1)
```

And here is a function to show the chain:

```
def show_chain(positions):
    n = len(positions[0])
    line = plt.plot(positions[0], positions[1], marker='o')
    plt.gca().set_xlim(-n, n); plt.gca().set_ylim(-n, n)
    return line
```

Try running these two code chunks to test the above.
```
positions = compute_positions(angles); positions
```

```
show_chain(positions);
```

Notice that `positions` is a Torch tensor. **Look at `positions.shape` and explain each number.**
Now look at `positions` itself and see if you understand the shape of what you see.

### Pulling the Chain

Can we pull the end of the chain towards the right? We'll do this by tugging on the end position.

Make a new code cell that we're going to build up into a *training loop*, but we'll start small:
**create a variable called `loss` (we'll see why soon) that will get a value of 0 if the chain
is straight out to the right, and greater than 0 otherwise**. Do this by first
creating a variable called `end_position` that gives the `x` and `y` coordinates of the end of the chain (the last position in `positions`).
Try to figure out the syntax for this yourself, but if it takes more than 1 minute **please ask for a hint**.

Now we want to see how we might change `angles` in order to reduce `loss`. We'll do this by *backpropagating* 
`loss` through the chain. Within this same code cell:

1. Try running `loss.backward()` and notice that it fails. Comment it out and leave it at the bottom of the cell.
2. At the top of the cell, use `angles = orig_angles.clone()` so that `angles` starts from the same thing each time you run the cell.
3. Tell `angles` that you want its gradient.
4. Uncomment `loss.backward()` now. It will still fail, but now you can fix it: you have an `angles` that requires gradient, so use *that* to compute `loss`. (This should involve only copy and paste from code above; you should not need to change `compute_positions` or `show_chain`.) Test that `backward` succeeds.
5. Look at `loss`. It's basically a single number, but it has two extra things about it; what are they?
5. Look at `angles.grad`. How does its representation compare with `angles`?
6. Add a line at the end to step down the gradient of `angles`: `angles.data -= angles.grad * lr`. (Define the learning rate `lr` to be .01 at the top of the cell.)
7. Plot the new position of the chain. You'll need to use `show_chain(positions.detach())` so PyTorch doesn't try to take the gradient of the plotting function.
8. Put this whole process in a loop: compute loss, backprop, update. You'll need to think about what sequence these operations need to be done in. **Don't forget to `.zero()` the `.grad`!

### Extensions

Try changing the definition of `loss`.


## Wrap-up

Make sure that both partners have a copy of the notebook.
