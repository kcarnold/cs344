---
title: "Week 5 Q&A"
date: 2022-02-10
---

Sorry there's some Week 4 questions that I didn't get to...

## Chapter 4

### Chapter 4 uses "gradient" in several different ways. What's up with that?

Ignore the Pandas `df.style.background_gradient`; that's a tangent and has nothing to do with the gradient we're interested in.

The other several ways are actually the same: **gradient** always means "how much does the output we got change when this changes?" Note the focus on a specific value, not a general function: we've run the model with a specific set of parameters on a specific input and got a specific loss value; now we ask how much that loss would have changed if we changed one of the parameters *and left everything else the same*.

So if we do:

```python
def f(param, x): return x * param
x = tensor(1.0)
param = tensor(3.0, requires_grad=True)
loss = abs(f(param, x) - 2.0)
loss.backward()
```

Then we'd get a value at `param.grad`, which would be...

- the gradient of the **loss**
- with respect to *that parameter*
- at the current setting of inputs and parameters.

### Are there other ways of representing images besides pixels?

Look up how CT and MRI machines work! They're pretty neat. Ultimately you're going to get pixels (or *voxels*) out, but the in-between can look different. Also check out NeRFs!

### PyTorch vs NumPy arrays?

They're very similar, especially under the hood. You can make a PyTorch view of a NumPy array and vice versa.

### Why not go even deeper?

Each layer requires more parameters, more computation, and more memory.

It used to be that deeper networks were also much harder to train. But *residual connections* have basically removed that issue now.

### Isn't there something smarter to do than initialize randomly?

A random initialization *at the right scale* can be really helpful. (see chapter 17-- basically, make sure that a forward pass through your network gives you a *reasonable* output, even if it's dead-wrong.)

You can try fancier things to get the network started, but that would come at the expense of just giving the whole network more glances at the data. And data usually wins.

### Might mini-batches mislead us?

Using minibatches instead of the whole dataset can be viewed as a way of adding noise. And in machine learning, noise often *helps*! It often helps the model generalize better. One recent paper even claims that *anticorrelated* noise (i.e., adding noise that tends to be in the opposite direction as the noise added in the previous step) helps generalization even more: [Anticorrelated Noise Injection for Improved Generalization | Abstract](https://arxiv.org/abs/2202.02831)

### What if there are a different number of elements in every row?

This comes up frequently in natural language modeling, where you have sentences or documents of different size. Generally you have to *pad* the inputs to the same length and then find some way of masking out the contribution of the padding you added.

### Why do we need ReLUs or other nonlinearities?

Because otherwise we'd have linear layers back to back. Suppose the first linear layer's weights are the matrix A, and the second linear layer has the weight matrix B, and we're going to feed in an input x. The activations after the first layer would be Ax, and the second layer would be B(Ax).

But matrix multiplication is commutative, so that would be the same as (BA)x. So it's the same as if we'd just had a *single* linear layer with weights given by the matrix product of B and A. So nothing gained by adding a layer.

The *nonlinearity* breaks the linear trick, so we can actually get the benefit of mulitple layers.

### Why use backprop (automatic differentiation*) when we could just do the calculus?

Symbolic differentiation is reasonable when you have a simple function, but gets messy very quickly when your function gets more complex.

Moreover, automatic differentiation can often take advantage of intermediate results that would otherwise have to get recalculated between the main function call and the gradient computation.

Note that reverse-mode autodiff (like PyTorch uses) isn't necessarily optimal for all problems. For example, it's great when you have one output from lots of inputs, but it would be terrible if you had one input and lots of outputs; in that case *forward-mode autodiff* works much better. In general the optimal approach combines forward accumulation and backward accumulation; figuring out the optimal sequencing is NP-hard in general. So we just backward-mode everything and it generally works well enough.

### What are limitations of SGD?

- Getting the learning rate right is hard. Hence there's been a whole bunch of research on *adaptive* optimizers that automatically tune the learning rates. The most popular is probably one called Adam.
- It requires being able to compute the gradient. That might be tricky if, for example, your model is making a discrete choice and only gets information about the results of one action out of many.
- For structured problems (like classic linear regression and its relatives) there are often *much* faster algorithms.
