---
title: "Project"
---

This course will culminate in a semester project. Successful projects will demonstrate that you can:

-   Design, implement, and/or analyze an intelligent system

    -   Your work should dig below the surface in some way, but how you do it is up to you. Some suggestions are given below.

-   Communicate your work in both technical and non-technical terms.

    -   You should include a summary that's understandable to the general public (friends and family, for example) as well as a detailed report.

Projects should generally be done in pairs, though allowances may be made on request.

## Picking a Project

Your project should be one of the following 3 types. The criteria for success differ by type:

1. **Application** of a specific technique that we studied in class to a different situation. For example, you might train an image classifier on a new set of images, or a text classification model on a new domain.

  - For these projects, we will allow simple methods (e.g., using code right out of class materials) but expect high-quality motivation, execution, and analysis.

2. **Replication** of a quantitative result that you find in a research paper, blog post, etc.

  - For these projects, we will not expect as much discussion of motivation, assuming that the original artifact took care of that.
  - Depending on your results, you should either:
    - Demonstrate *surmounting significant technical challenge* in attaining the result,
    - Provide a thoughtful *analysis* of the decisions you and the original authors made, or
    - Improve on the quantitative result in some measurable and well-motivated way.

3. **Research** along one of the directions listed below.

  - For these projects, any meaningful progress towards answering the research question will be considered a successful project, if reported well.

## Project Components

The project includes the components outlined below:

-   A technical report on the project

-   A **short explanation of the technology you build on** for a nontechnical audience.

-   Supporting materials, including code, as appropriate

-   Brief presentation to the class during final exam period

The following sections provide additional detail about each component.

### Technical Report

The report should be at the level of polish and formality of a blog post (more than a class homework assignment, less than an academic paper). Precise technical language should be used.

-   A Jupyter Notebook (`.ipynb`) file is preferred.

-   Assume an audience that is familiar with AI / machine learning in general but none of the specific software used (e.g., fastai).

-   The report should still make sense if all of the source code is hidden.

-   Use Markdown (text) cells to format headers (`## Header`) and links.

-   Include the checklist below (modified as appropriate) as an appendix to your notebook.

Here are some elements that would generally be expected in a report. Not all reports need to have all elements, and reports may include other elements. The following table is formatted in a way that should be useful as a checklist to include in your submission; see the [source code for this page](https://raw.githubusercontent.com/kcarnold/cs344/main/content/project/index.md) for how to include it in your report.

| Element                                                                                                                                                                                                                                                                                          | Included? | Notes |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------|-------|
| A succinct but descriptive **title**                                                                                                                                                                                                                                                             |           |       |
| A **real-world question or goal** and *why* it's interesting.                                                                                                                                                                                                                                    |           |       |
| A description of the **dataset**: what sort of data does it contain? Where did it come from? Why did you choose it? What are its strengths and limitations?                                                                                                                                      |           |       |
| A specific technical goal or question                                                                                                                                                                                                                                                            |           |       |
| Your technical **approach** for achieving that goal or answering that question                                                                                                                                                                                                                   |           |       |
| What you noticed from **exploring the data** (e.g., counts by category, distributions of continuous variables, things you notice from inspecting individual samples at random)                                                                                                                   |           |       |
| Your **modeling setup**: what are your features? Targets? Metrics? Loss function?                                                                                                                                                                                                                |           |       |
| Your **validation approach**: train-val-test split? cross-validation?                                                                                                                                                                                                                            |           |       |
| Your **baseline results**: applying the simplest model you can think of; how good were the results (quantitatively and perhaps qualitatively)?                                                                                                                                                   |           |       |
| Your **attempts at improved results**: what did you adjust, and why? How did the results change?                                                                                                                                                                                                 |           |       |
| An **analysis of errors** (quantitatively and perhaps qualitatively)                                                                                                                                                                                                                             |           |       |
| **An analysis of the effects of alternative choices.** You can consider differences in model architecture, specific task, hyperparameter choices, inclusion/exclusion criteria, etc. Remember to think about the choice of **metrics** and the **uncertainty** involved in any estimate of them. |           |       |
| A **summary of your findings**. Did you achieve your goal or answer your question?                                                                                                                                                                                                               |           |       |
| **Limitations and future directions**                                                                                                                                                                                                                                                            |           |       |

Artistic or exploratory projects may need other elements.

### Nontechnical explanation

Include a **short explanation of the technology you build on** for a nontechnical audience.

-   You may choose to do this on a different technology instead; ask the instructor.

-   The explanation should make sense without reference to the rest of your project, though you may use the project as an example.

Aim for a description that would fit on one page or less, including a carefully selected supporting image or two.

### Presentation

The final course meeting (during the designated final exam period) will be devoted to final project presentations. Feedback on others' projects is expected, so attendance is mandatory.

Aim for about 5 minutes of content. All team members should present.

### Supporting Material

Submit code needed to replicate the visual and quantitative results in your report.

-   Share any github repos with `kcarnold` or make them public.

-   Include the notebooks you used.

    -   If you used Colab, download the `ipynb` file.

    -   "Restart and Run All" before submitting, if possible.

    -   The technical report may include all of the needed code; if so, nothing more is required.

-   Include clear instructions for how to acquire any data you used. (Don't upload the dataset itself, unless it happens to be very small.)



## General Advice

* **Repeat trials** with different random seeds. Consider the variability of results.
* **Notice decisions** you make during data prep and modeling.
    * What data did you omit?
    * How did you set up the modeling problem?
    * What’s missing?
* **Analyze errors**
    * What systematic mistakes did the model make?
    * What effect did decisions have on those mistakes?


Technically: **keep it simple**. A thoughtful analysis of a technically simple thing is much better than a hasty analysis of a technically fancy thing.

-   [🚧 Simple considerations for simple people building fancy neural networks](https://huggingface.co/blog/simple-considerations)


## Application Projects

You might apply image classification to a different task (e.g., places, people, foods, etc.). Since you should be able to get a baseline approach working quickly, here are some ways you can deepen this kind of project:

-   Analyze the model's **errors**, both quantitatively and qualitatively.

-   **Compare several approaches.** You can consider differences in model architecture, specific task, hyperparameter choices, inclusion/exclusion criteria, etc. Remember to think about the choice of **metrics** and the **uncertainty** involved in any estimate of them.

-   Generate **explanations** of the classification decisions, using the model interpretation methods described in the book or otherwise.

-   Discuss how you were able to **tune** the performance of the classifier.

## Replication Projects

See <https://paperswithcode.com/> for some examples. Their [newsletter](https://paperswithcode.com/newsletter) is particularly approachable.

Also, see proceedings of general conferences like NeurIPS, ICML, ICLR, ..., or domain-focused conferences: text (EMNLP, ACL), speech and music (ISMIR, InterSpeech), computer vision (ICCV, SIGGRAPH), recommender systems (RecSys), etc.

### Some potential papers to replicate

A very incomplete list of things that crossed my radar once.

-   [Deep Image Prior](https://dmitryulyanov.github.io/deep_image_prior): doing cool stuff with images and deep neural nets, without even training them.
-   [Image Representations Learned With Unsupervised Pre-Training Contain Human-like Biases](https://arxiv.org/abs/2010.15052)
-   <https://towardsdatascience.com/how-to-build-a-controllable-writing-assistant-for-novel-authors-a9fa15b57c6a>
-   [Taming Transformers for High-Resolution Image Synthesis](https://compvis.github.io/taming-transformers/)
-   [Prefix Tuning](https://arxiv.org/pdf/2101.00190.pdf)
-   [Concept Bottleneck Models](https://arxiv.org/abs/2007.04612)
-   [GradInit](https://paperswithcode.com/paper/gradinit-learning-to-initialize-neural) (try this on some simple models)

### Tips for Replication Projects

Basic outline of a project here:

- Get the code running (could be very easy if you find a Colab notebook etc)
- Replicate something interesting that's already been done.
- Use an example that you provide instead of one of their pre-built ones.
- Push the limits a bit.

Some potential libraries or codebases:

- [NVIDIA/NeMo: NeMo: a toolkit for conversational AI](https://github.com/NVIDIA/NeMo)
- Demos from Google's [Magenta group](https://github.com/magenta/magenta-demos). 
- Lots of stuff on PapersWithCode

## Research Projects

Professor Arnold is willing to advise one of the following research-y projects. Others may be permitted if you have a very clear proposal, discussed well in advance.

### Denoising Autoencoder for Text

I'll write up a description of this soon.

### Text vectorization using prefix learning

I'll write up a description of this soon.

### Question generation by inverting a QA system

I'll write up a description of this soon.

### Paraphrasing using any-to-any translation

I'll write up a description of this soon.

### Decompose and Recompose Complex Sentences using Simple Sentences

I'll write up a description of this soon.

### Predictive Text from Very Rough Drafts (e.g., rambling speech)

Speech recognition technology is a powerful and efficient way to enter text on a touchscreen device, but many people don't use it. One reason is that it is cognitively challenging: you must think of exactly what to say, and how to say it clearly enough to be understood, on the first time, potentially in a distracting or non-private environment. But what if you could first "think out loud" about what you want to say, perhaps whispering a stream of consciousness to your phone---then your phone would give you (a) an outline of the main points you wanted to say and (b) really accurate predictions about what word to type next in order to say it?

-   **Input**: a "stream of consciousness" rambling about something you want to communicate, likely already in text form (perhaps by a low-quality speech recognizer)

    -   Training data could be generated automatically by corrupting ground-truth outputs in various ways.

-   **Output**: a prediction of the next word to be typed in the final message you want to send.

### De-EQ

Given a sound corrupted by a random EQ curve or other processing step, predict the parameters for that processing step. *This kind of task is called [self supervised learning](https://lilianweng.github.io/lil-log/2019/11/10/self-supervised-learning.html).* See Microsoft's [HEXA](https://www.microsoft.com/en-us/research/blog/hexa-self-supervised-pretraining-with-hard-examples-improves-visual-representations/).
