---
title: "Unit 2: Data"
date: 2022-01-17
weight: 2
---

Students who complete this unit will demonstrate that they can:

- Describe the structure of the data provided as input to an image classifier in terms of batches and labels
- Contrast a training set and validation set; explain appropriate uses of both
- Adapt Python code to load data to be used by an image classifier.
- Implement numerical computing operations on multidimensional arrays using PyTorch

## Preparation

- Read {{< fastbook num="2" nbname="02_production.ipynb" >}}
    - *note: ignore the implementation details of `class DataLoaders`*; you only need to know that it has a  `.train` and a `.valid`, each of which are `DataLoader`s that take filenames and give batches of `(image, label)` pairs.
    - If you want to replicate the code, use duckduckgo instead of trying to get a Bing API key.
- Start reading {{< fastbook num="3" nbname="03_ethics.ipynb" >}}
    - *note*: you can spread out this reading between this week and next week.
- Watch {{< fastvideo num="2" >}}
    - *note*: The first hour of {{< fastvideo num="3" >}} finishes up this chapter's material. The first 12 or so minutes may be particularly helpful at this point.
- Complete the preparation quiz in Moodle.

<!-- Note for next year: 

Chapter 13, "A color picture is a rank-3 tensor" -- shows the decomposition of an image into its 3 color channels. -->

### Optional Supplemental Material

Read the paper that introduced a well-known dataset: [ImageNet](https://ieeexplore.ieee.org/document/5206848), Microsoft [COCO](https://arxiv.org/abs/1405.0312v3), [MNIST](https://ieeexplore.ieee.org/document/726791), etc.

<!-- 
Discussion Forum:

- who has data on you? how much? what do you feel about that?

Midterm project milestone: summarize existing results, generate questions -->
