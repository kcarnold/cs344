---
title: "Project Scratch"
---

-   write a thorough explainer about a topic beyond the scope of the course and teach it to the class

    -   Examples: [Jay Alammar's blog](https://jalammar.github.io/), many articles on [distill.pub](https://distill.pub/), [3Blue1Brown videos](https://www.youtube.com/c/3blue1brown),

-   create an interactive application - using a model to do something interesting (e.g., [GANPaint](https://ganpaint.io/)), or allowing interesting exploration / interaction with the model itself (e.g., [LSTMVis](http://lstm.seas.harvard.edu/) or [Seq2Seq-Vis](https://seq2seq-vis.io/)). Links to lots of examples [here](https://distill.pub/2020/communicating-with-interactive-articles/).

-   try out a different deep learning toolkit (e.g., TensorFlow, tensorflow.js or [Flux.jl](https://fluxml.ai/)) on several tasks from class


### Face Generation GAN

Teachers have a hard time getting to know students by face, especially when students are wearing masks. Flashcard apps help, but the teacher can easily "overfit" to quirks of the student photo (background, clothing, etc.).

-   **Input**: students' profile photos
-   **Output**: a dozen different images for each student, with variation in background, lighting, clothing, etc. so that these factors are informative

Potential resources:

- [Third Time's the Charm? Image and Video Editing with StyleGAN3 | Papers With Code](https://paperswithcode.com/paper/third-time-s-the-charm-image-and-video)
- [Near Perfect GAN Inversion | Abstract](https://arxiv.org/abs/2202.11833) "To edit a real photo using Generative Adversarial Networks (GANs), we need a GAN inversion algorithm to identify the latent vector that perfectly reproduces it"

### Code Analysis for Intro Programming Classes

AI models of (programming) code have improved markedly in recent years (see, e.g., [Unified Pre-training for Program Understanding and Generation](https://arxiv.org/abs/2103.06333)), but intro programming classes haven't yet been able to benefit from them. Could you figure out a way to use program understanding methods to give good feedback to CS learners and their instructors? (e.g., help the instructor see patterns in students' code)

Some code and pre-trained models you might play with:

- [CodeParrot](https://huggingface.co/blog/codeparrot)
- Facebook's [TransCoder](https://github.com/facebookresearch/TransCoder)
- Microsoft's [CodeXGLUE](https://github.com/microsoft/CodeXGLUE)
- the [PLBART code](https://github.com/wasiahmad/PLBART)

### Learned Multimedia Decoder

Many existing images/videos/audio are locked in poor quality low-efficiency codecs (old personal pictures, audio Bible recordings, video, music, graphics, etc.). If we could invert the poor-quality encoder, we could both recover a more faithful representation of the original and also re-encode the result in a high-efficiency codec.

-   **Input**: a JPEG (or other legacy codec) bitstream, unpacked (e.g., the JPEG data could be arranged spatially, so the data for each macroblock would align with where it is in the image).
-   **Output**: the correct image (or audio, video, etc.)


### Deepfake Detection

Make some deepfakes. Try to detect them.

### Miscellaneous ideas

-   Language

    -   sequence-to-sequence-to-sequence (the latent code is a sequence). Ask me for details.

-   General

    -   Dynamic range compression on gradient updates by changing sensitivity based on the current and recent values. Perhaps as simple as computing the weight as a nonlinear function of the stored value and perhaps a running average.
