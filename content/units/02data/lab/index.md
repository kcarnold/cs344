---
title: 'Lab 2: PyTorch intro, image batch structure'
summary: 'Start to practice computing on arrays.'
draft: false
---

You might have heard (or experienced) that Python is slow. So how can Python be the language behind basically all of the recent advances in AI, which all require huge amounts of computing? The secret is *array computing*. The Python code is orchestrating operations that happen on powerful "accelerator" hardware like GPUs and TPUs. Those operations typically involve repeatedly applying an operation to a big (usually rectangular) arrays of numbers, hence, *array* computing.

For those used to writing loops, this sort of coding can take some getting used to. Here are two exercises that previous students have found very helpful in getting their mind around how arrays work in PyTorch. (The concepts are basically identical in other libraries like TensorFlow, NumPy, and JAX.)

## Objectives

- Apply mathematical operations to arrays using PyTorch
- Encapsulate functionality into functions
- Describe the structure of image batches
- Write code to access and modify image data

## PyTorch Warmup

Work through this notebook:

{{% fundamentals name="PyTorch Warmup" nbname="u02n1-pytorch.ipynb" %}}

## Image Batch Structure

Now, let's see what's going *into* the classifier. The images are given in *batches* of `dataloaders.train.bs` (defaults to 64) images at a time. They all get packed into a single PyTorch `Tensor`. That's possible because `Tensor`s can have multiple axes. Let's see how those work:

{{% fundamentals name="Image Operations" nbname="u02n2-image-ops.ipynb" %}}
