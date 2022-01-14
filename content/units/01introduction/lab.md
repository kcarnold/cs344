---
title: 'Lab 1: Warmup'
author: Ken Arnold
date: '2022-01-14'
tags:
  - lab
---

## Objectives

- Use a Jupyter notebook to run Python code on the lab computers
- Apply mathematical operations to arrays using NumPy
- Encapsulate functionality into functions

### Environment Setup

1. Boot the computer to Linux and log in.
2. Open a Terminal (main menu in top-left, start typing "term" and it should show up)
3. Practice using tab-complete: type `/home/cs/344/set` and press the Tab key. You should get `/home/cs/344/setup-cs344.sh`. Run that script.
   You should see something like:

  ```
  setting up Anaconda
  setting up TORCH_HOME
  setting up FastAI config
  Done.
  ```
4. Log off and log back in.

## Jupyter Notebooks

Make a folder for this class, perhaps `cs344`. Download the Lab 1 Template notebook and put it in your folder.

You can start the Jupyter Notebook server either by finding it on the main menu
(start typing "jup" and it should come right up) or running `jupyter notebook`
in a Terminal window. Find your Lab 1 notebook and open it.

Run the Envirenmont Check cells by selecting the first one and pressing Shift-Enter once for each cell. Stop when you get to "Jupyter Notebooks". A number will appear next to each of the code cells when they have run successfull.

{{<task>}}
Add a code cell that computes 1+1. Check the output.
{{</task>}}

**Note carefully** the difference between **Command mode** and **Edit mode**. (see Help->Keyboard shortcuts).

{{<task>}}
Add a Markdown cell that looks like this (you may need to refer to Help->Markdown)

> Here is some Markdown formatting:
> 
> - This is **bold**.
> - This *is* italic.
> - This is a [link to Calvin's website](https://calvin.edu).

"Run" the cell to ensure that it gets formatted correctly. Check that the website link opens correctly.
{{</task>}}

I highly encourage you to get comfortable with keyboard shortcuts for the following operations:

- Switch between edit and command mode.
- Insert a cell above or below
- Change a cell to code / Markdown
- Run the current cell (with or without selecting the cell below)

{{<task>}}
Suppose a cell has multiple expressions in it, like this:

```python
x = 1.0
x * 2
print("Something")
x = x * 2
x * 2
```

Which one gets displayed? Can you figure out the general rule for what output gets displayed from a notebook cell?
{{</task>}}

## Image Classifier

In the next section, you'll find the image classifier code from Chapter 1 of the textbook.

Although the original was famously short, it was inhospitably jam-packed. So I've taken the liberty to space things out a bit and split it into multiple cells.

{{<task>}}Run the code blocks as is.{{</task>}}

<!-- Although several things appear on the way, refer to the final table for the accuracy of the resulting classifier. -->

> Optionally, you may try the uploader widget on a photo of your choice.

For our first look at this code, let's explore a few of its parts. Add Markdown cells for your answers to each of these exercises:

{{<task>}}
1. What is `path`? (Make a cell that displays its value.) Find the corresponding files on your computer. Describe how they are organized.
2. Run `images = get_image_files_sorted(path)`, then `first_img = images[0]`. Describe what `images` is a list of. And find the file corresponding to the first image. Is it a cat or a dog?
3. Run `is_cat(first_img.name)`. Describe what `is_cat` is and how it works.
4. Run `dls.train.show_batch()`. Describe what the text over each image indicates.
{{</task>}}

## PyTorch

[PyTorch](https://pytorch.org/) is the open-source machine learning framework that we'll be using in this class. It has a wide range of functionality, but today we'll just get started with some of its very basic array-processing functionality.

### Dot Products

Recall that we can make a line by an expression like `y = w*x + b`. (Some of you may remember *mx+b* , but we'll use *w* for the *weight(s)* instead.)

That's a multiplication followed by a sum. We can extend that to lots of *x*'s, each of which needs a corresponding *w*:

`y = w1*x1 + w2*x2 + ... + wN*xN + b`

For simplicity, let's start by ignoring the `b`ias.  So we're left with

`y = w1*x1 + w2*x2 + ... + wN*xN`

that is, multiply each number in `w` by its corresponding number in `x` and add up the results: `sum(w[i] * x[i] for i in range(N))`.

The result is called a *dot product*, and is one of the fundamental operations in linear algebra. At this point you don't need to understand all the linear algebra part of this, we're just implementing a common calculation.

Let's do that in Python, and then Torch. To start, let's make a `w`eights and an `x`. (See the notebook.) Note that the shapes must match.

#### `for` loop approach

{{<task>}}
**Write a function that uses a `for` loop** to compute the dot product of `w` and `x`. Name the function `dot_loop`. Check that you get `-1.0` for the `w` and `x` provided in the template.
{{</task>}}

#### Torch Elementwise Operations

But that's a lot of typing for a concept that we're going to use very frequently. To shorten it (and make it run way faster too!), we'll start taking advantage of some of Torch's builtin functionality.

First, we'll learn about *elementwise operations* (called *pointwise operations* in the [PyTorch docs](https://pytorch.org/docs/stable/torch.html#pointwise-ops)).

If you try to `*` two Python lists together, you get a `TypeError` (how do you multiply lists??). But in PyTorch (and NumPy, which it's heavily based on), array operations happen *element-by-element* (sometimes called *elementwise*): to multiply two tensors that have the same shape, multiply each number in the first tensor with the corresponding number of the second tensor. The result is a new tensor of the same shape with all the elementwise products.

{{<task>}}Try running `w * x`{{</task>}}

Torch also provides [*reduction* methods](https://pytorch.org/docs/stable/torch.html#reduction-ops), so named because they *reduce* the number of elements in a Tensor.

One really useful reduction op is `.sum`.

{{<task>}}Try running `w.sum()`.{{</task>}}

> You can also write that as `torch.sum(w)`.

{{<task>}}Now **make a new version of `dot_loop`, called `dot_ops`**, that uses an elementwise op to multiply corresponding numbers and a reduction op to sum the result. Check that the result is the same.{{</task>}}

Finally, since `dot` is such an important operation, PyTorch provides it directly:

```python
torch.dot(w, x)
```

Python recently introduced a "matmul operator", `@`, that does the same thing.

```python
w @ x
```

To apply this knowledge, let's try writing a slightly more complex function: a linear transformation layer.

## Linear Layer

The most basic component of a neural network (and many other machine learning methods) is a *linear transformation layer*. Going back to our `y = w*x + b` example, the `w*x + b` is the linear transformation: given an `x`, dot it with some `w`eights and add a `b`ias.

{{<task>}}
**Write a function that performs a linear transformation of a vector `x`.** Use PyTorch's built-in functionality for dot products.
{{</task>}}

### Linear layer, Module-style

Notice that `linear`'s job is to transform `x`, but it needed 3 parameters, not just 1. It would be convenient to view the `linear` function as simply a function of `x`, with `weights` and `bias` being internal details.

One way to do this is to make a `Linear` class that has these as parameters. Fill in the blanks in the template code to do this.

## Mean Squared Error

Now let's apply what you just learned about elementwise operations on PyTorch tensors to another very common building block in machine learning: measuring *error*. (How bad is our prediction?) A very common loss function (a technical term for a measure of error) is the *mean squared error*:

- compute `resid` as true minus predicted.
- compute `squared_error` by squaring each number in `resid`
- compute `mean_squared_error` by taking the `mean` of `squared_error`.

We've provided a sample `y_true` and `y_pred`icted in the template so you can try coding this up.

{{<task>}}
1. Implement each line of the above algorithmm in PyTorch code. Use separate cells so you can check the results. **You should not need to write any loops.**
  - Try using both `squared_error.mean()` and `torch.mean(squared_error)`.
2. Try to write the entire computation in a single succinct expression.
{{</task>}}

Notes:

- Recall that Python's exponentiation operator is `**`.
- PyTorch tensors also have a `.pow()` method. So you might see `.pow(2)`.

## Submitting

Submit your `ipynb` file on Moodle. Normally there will be a "Lab" assignment, but for this week, homework is just to finish this lab, so submit it there.

Before submitting, use the Group Chooser to pick a group for you and your partner.
