---
title: "Project"
---

## Semester Project

This course will culminate in a semester project. Successful projects will demonstrate proficiency in all of the main course learning objectives:

-   You'll design, implement, and/or analyze an intelligent system

    -   Your work should dig below the surface in some way, but how you do it is up to you. Some suggestions are given below.

-   You'll communicate your work in both technical and non-technical terms.

    -   You should include a summary that's understandable to the general public (friends and family, for example) as well as a detailed report.

-   You'll consider broader perspectives on your project.

    -   Don't think of this as "checking the ethics box"! Every AI project brings up important questions: what it means to be intelligent, where data comes from, what a good solution might be used for, etc. Think about how what we've discussed in other topics might relate to your project.

Projects should generally be done in pairs, though allowances may be made on request.

### Project Components

The project includes the components outlined below:

-   A technical report on the project

-   A **short explanation of the technology you build on** for a nontechnical audience.

-   A **summary of a social/ethical discussion** we've had as a class, for a nontechnical audience.

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

### Discussion summary

Include a **summary of a social/ethical discussion** we've had as a class, for a nontechnical audience.

-   Ideally this would be related to the content of your project, but that is not required.

-   You may choose a topic we haven't discussed also; ask the instructor.

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



## Advice

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



### Types of Projects

Many different projects are possible. When you make your project proposal, try to propose projects from at least two different ones of these types:

-   replicate, critique, and extend (part of) a published work

    -   see <https://paperswithcode.com/> for some examples. Their [newsletter](https://paperswithcode.com/newsletter) is particularly approachable.

    -   see proceedings of general conferences like NeurIPS, ICML, ICLR, ..., or domain-focused conferences: text (EMNLP, ACL), speech and music (ISMIR, InterSpeech), computer vision (ICCV, SIGGRAPH), recommender systems (RecSys), etc.

-   apply an existing approach to a new dataset or task

-   write a thorough explainer about a topic beyond the scope of the course and teach it to the class

    -   Examples: [Jay Alammar's blog](https://jalammar.github.io/), many articles on [distill.pub](https://distill.pub/), [3Blue1Brown videos](https://www.youtube.com/c/3blue1brown),

-   create an interactive application - using a model to do something interesting (e.g., [GANPaint](https://ganpaint.io/)), or allowing interesting exploration / interaction with the model itself (e.g., [LSTMVis](http://lstm.seas.harvard.edu/) or [Seq2Seq-Vis](https://seq2seq-vis.io/)). Links to lots of examples [here](https://distill.pub/2020/communicating-with-interactive-articles/).

-   try out a different deep learning toolkit (e.g., TensorFlow, tensorflow.js or [Flux.jl](https://fluxml.ai/)) on several tasks from class

-   Anything else that's fun and/or impactful---and challenges you to bring your best.

### Tips by Project Type


#### Classification

You might apply image classification to a different task (e.g., places, people, foods, etc.). Since you should be able to get a baseline approach working quickly, here are some ways you can deepen this kind of project:

-   Analyze the model's **errors**, both quantitatively and qualitatively.

-   **Compare several approaches.** You can consider differences in model architecture, specific task, hyperparameter choices, inclusion/exclusion criteria, etc. Remember to think about the choice of **metrics** and the **uncertainty** involved in any estimate of them.

-   Generate **explanations** of the classification decisions, using the model interpretation methods described in the book or otherwise.

-   Discuss how you were able to **tune** the performance of the classifier.

### Example Applications

Some applications that may be interesting and feasible:

### Face Generation GAN

Teachers have a hard time getting to know students by face, especially when students are wearing masks. Flashcard apps help, but the teacher can easily "overfit" to quirks of the student photo (background, clothing, etc.).

-   **Input**: students' profile photos
-   **Output**: a dozen different images for each student, with variation in background, lighting, clothing, etc. so that these factors are informative

### Code Analysis for Intro Programming Classes

AI models of (programming) code have improved markedly in recent years (see, e.g., [Unified Pre-training for Program Understanding and Generation](https://arxiv.org/abs/2103.06333)), but intro programming classes haven't yet been able to benefit from them. Could you figure out a way to use program understanding methods to give good feedback to CS learners and their instructors? (e.g., help the instructor see patterns in students' code)

Some code and pre-trained models you might play with:

-   Facebook's [TransCoder](https://github.com/facebookresearch/TransCoder)
-   Microsoft's [CodeXGLUE](https://github.com/microsoft/CodeXGLUE)
-   the [PLBART code](https://github.com/wasiahmad/PLBART)

### Form-to-Text

Every day I manually enter in the numbers from the [Spectrum Health COVID dashboard](https://www.spectrumhealth.org/covid19) into a Google Spreadsheet to use on Calvin's dashboard. Why so manual? It's a screenshot. **Automate this process**, ideally using no additional labeling effort. I have about 6 months worth of data.

### Predictive Text from Very Rough Drafts (e.g., rambling speech)

Speech recognition technology is a powerful and efficient way to enter text on a touchscreen device, but many people don't use it. One reason is that it is cognitively challenging: you must think of exactly what to say, and how to say it clearly enough to be understood, on the first time, potentially in a distracting or non-private environment. But what if you could first "think out loud" about what you want to say, perhaps whispering a stream of consciousness to your phone---then your phone would give you (a) an outline of the main points you wanted to say and (b) really accurate predictions about what word to type next in order to say it?

-   **Input**: a "stream of consciousness" rambling about something you want to communicate, likely already in text form (perhaps by a low-quality speech recognizer)

    -   Training data could be generated automatically by corrupting ground-truth outputs in various ways.

-   **Output**: a prediction of the next word to be typed in the final message you want to send.

### Learned Multimedia Decoder

Many existing images/videos/audio are locked in poor quality low-efficiency codecs (old personal pictures, audio Bible recordings, video, music, graphics, etc.). If we could invert the poor-quality encoder, we could both recover a more faithful representation of the original and also re-encode the result in a high-efficiency codec.

-   **Input**: a JPEG (or other legacy codec) bitstream, unpacked (e.g., the JPEG data could be arranged spatially, so the data for each macroblock would align with where it is in the image).
-   **Output**: the correct image (or audio, video, etc.)

### Learned Audio Processing

Play with Google's [DDSP](https://github.com/magenta/ddsp) (Differentiable Digital Signal Processing) or [other demos from the Magenta group](https://github.com/magenta/magenta-demos). Push its limits a bit.

### Deepfake Detection

Make some deepfakes. Try to detect them.

### Miscellaneous ideas

-   Language

    -   sequence-to-sequence-to-sequence (the latent code is a sequence). Ask me for details.

-   Audio

    -   Given a sound corrupted by a random EQ curve or other processing step, predict the parameters for that processing step. *This kind of task is called [self supervised learning](https://lilianweng.github.io/lil-log/2019/11/10/self-supervised-learning.html).* See Microsoft's [HEXA](https://www.microsoft.com/en-us/research/blog/hexa-self-supervised-pretraining-with-hard-examples-improves-visual-representations/).

-   General

    -   Dynamic range compression on gradient updates by changing sensitivity based on the current and recent values. Perhaps as simple as computing the weight as a nonlinear function of the stored value and perhaps a running average.

## Some potential papers to replicate

...or play with and extend. See the master list above for more sources.

-   [Deep Image Prior](https://dmitryulyanov.github.io/deep_image_prior): doing cool stuff with images and deep neural nets, without even training them.
-   [Image Representations Learned With Unsupervised Pre-Training Contain Human-like Biases](https://arxiv.org/abs/2010.15052)
-   <https://towardsdatascience.com/how-to-build-a-controllable-writing-assistant-for-novel-authors-a9fa15b57c6a>
-   [Taming Transformers for High-Resolution Image Synthesis](https://compvis.github.io/taming-transformers/)
-   [Prefix Tuning](https://arxiv.org/pdf/2101.00190.pdf)
-   [Concept Bottleneck Models](https://arxiv.org/abs/2007.04612)
-   [GradInit](https://paperswithcode.com/paper/gradinit-learning-to-initialize-neural) (try this on some simple models)

## Other example projects

See the [share-your-projects thread](https://forums.fast.ai/t/share-your-v2-projects-here/65757) on the fast.ai forum.

-   [Video background blurring](https://deeplearning.berlin/fastai/privacy/getting%20started/2021/02/09/Background-Blur-Part-1.html)
