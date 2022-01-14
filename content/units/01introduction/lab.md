---
title: 'Lab 1: Warmup'
author: Ken Arnold
date: '2022-01-14'
tags:
  - lab
draft: true
---

## Objectives

- Use a Jupyter notebook to run Python code on the lab computers
- Apply mathematical operations to arrays using NumPy
- Encapsulate functionality into functions

### Environment Setup

1. Boot the computer to Linux and log in.
2. Open a Terminal (main menu in top-left, start typing "term" and it should show up)
3. Type `/home/cs/344/setup-cs344.sh` (practice using tab-complete: type `/home/cs/344/set` and press the Tab key).
   You should see something like:

  ```
  setting up Anaconda
  setting up TORCH_HOME
  setting up FastAI config
  Done.
  ```
4. Log off and log back in.

## Jupyter Notebooks

You can start the Jupyter Notebook server either by finding it on the main menu
(start typing "jup" and it should come right up) or running `jupyter notebook`
in a Terminal window.

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

Although several things appear on the way, refer to the final table for the accuracy of the resulting classifier.

For our first look at this code, let's explore a few of its parts. Add Markdown cells for your answers to each of these exercises:

{{<task>}}
1. What is `path`? (Make a cell that displays its value.) Find the corresponding files on your computer. Describe how they are organized.
2. Run `images = get_image_files_sorted(path)`, then `first_img = images[0]`. Describe what `images` is a list of. And find the file corresponding to the first image. Is it a cat or a dog?
3. Run `is_cat(first_img.name)`. Describe what `is_cat` is and how it works.
4. Run `dls.train.show_batch()`. Describe what the text over each image indicates.
{{</task>}}


## PyTorch

we're just going to be using it as an array processing library for now

- write a dot product by hand with lists
- upgrade to Tensors (same code)
- do the elementwise multiply and then sum
- call `dot`

Notice the 

Add a cell to `import numpy as np`; that's the standard way to import it.

- Compute error, squared error, and MSE
- Compute one-dim linear projection (mx + b)
- Compute 3D linear projection (Sepia kernel) TODO move to NEXT WEEK

## Python Functions

- Write a function that does the linear projection
- Write a function that returns a function that does a given linear projection
