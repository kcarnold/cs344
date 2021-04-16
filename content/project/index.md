---
title: "Project"
---

## Semester Project

This course will culminate in a semester project. Successful projects will demonstrate proficiency in all of the main course learning objectives:

-   You'll design, implement, and/or analyze an intelligent system

-   You'll communicate your work in both technical and non-technical terms

-   You'll consider broader perspectives on your project.

    -   Don't think of this as "checking the ethics box"! Every AI project brings up important questions: what it means to be intelligent, where data comes from, what a good solution might be used for, etc. Think about how what we've discussed in other topics might relate to your project.

Projects should generally be done in pairs, though allowances may be made on request.

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
