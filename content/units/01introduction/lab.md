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

Add a Markdown cell that looks like this:

> Here is some Markdown formatting:
> 
> - This is **bold**.
> - This *is* italic.
> - This is a [link to Calvin's website](https://calvin.edu).

## NumPy

- Compute error, squared error, and MSE
- Compute one-dim linear projection (mx + b)
- Compute 3D linear projection (Sepia kernel)

## Python Functions

- Write a function that does the linear projection
- Write a function that returns a function that does a given linear projection
