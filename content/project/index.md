---
title: "Project"
---

This course will culminate in a semester project. Successful projects will demonstrate that you can:

-   Design, implement, and/or analyze an intelligent system

    -   Your work should dig below the surface in some way, but how you do it is up to you. Some suggestions are given below.

-   Communicate your work in both technical and non-technical terms.

    -   You should include a summary that's understandable to the general public (friends and family, for example) as well as a detailed report.

Projects should generally be done in pairs, though allowances may be made on request.

## Milestones

### Proposal

First, read the [Project Guidelines](https://cs.calvin.edu/courses/cs/344/22sp/project/) for a description of what sort of projects are expected in this class.

Then, think of two or three potential project ideas. (Note that there are three types of projects; you might perhaps try to think of an idea for each type.)

For each idea, write a paragraph (or informative bullet points) to address:

-   What are you trying to do? (What would a successful project look like?)
-   What overall approach or technology are you thinking about using? (Do you need help picking between several approaches?)
-   What data have you found, if applicable? (Do you need help finding data?)

Mention whom you might work with (the ideal team size is probably 2, but 1 or 3 is ok too). It may be different for different projects. Submit individually, though.

### Updated Proposal

Submit (as a Jupyter notebook, `proposal.ipynb`), an enhanced version of your vision statement. It should include:

1. *Who* is working on this project. (One person submits the document, other teammates just submit a note about who submitted the document.) Describe how you plan to work together so that everyone feels ownership of the result.

2. Very preliminary drafts of all of the sections of your final report (leave clearly marked placeholders as necessary):

    - *Vision*: Overview of your project and its purpose. What are you trying to do? Why is it important or interesting? What does a successful project outcome look like?
    - *Background*:
      - What *data* are you using? Describe what you chose and why. Include a "backup" dataset in case the primary one doesn't work out (or give specific evidence for your confidence in the primary dataset).
      - What *technologies* are you using? Briefly describe a few options you're considering and what criteria you'll use to evaluate them.
      - Your final report will describe the technologies you're using and why you chose to use them. Include citations of the work on which you've based your system, both what we've used in class and new technologies you've experimented with (include descriptions of these if applicable).
    - *Implementation*: 
      - What prior code can you build on?
      - Your final report will summarize your implementation and, if appropriate, how it extends the work you've reverenced.
    - *Results*: Include quantitative (tables, plots) and qualitative (examples) results, including comparisons with similar work if applicable.
    - *Implications*: Discuss the social and ethical implications of using the technologies you've chosen for your project.

3. A description of what concrete steps you've taken towards the project, typically trying out an example of some related system. Some concrete step is expected; it could be "I tried out this example notebook (URL). It worked on Colab but failed on the lab machines ..."

4. What *help* you think you'll need from the course staff? (If this is substantial, follow up in person or on Teams).

## Picking a Project

Your project should be one of the following 3 types. The criteria for success differ by type:

1. **Application** of a specific technique that we studied in class to a different situation. For example, you might train an image classifier on a new set of images, or a text classification model on a new domain.

    - For these projects, we will allow simple methods (e.g., using code right out of class materials) but expect high-quality motivation, execution, and analysis.
    - Participating in a Kaggle competition could be one good version of this project (or a Replication project).

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

The report should be at the level of polish and formality of a blog post (more than a class homework assignment, less than an academic paper). Precise technical language should be used in descriptions of methods.

-   Assume an audience that is familiar with AI / machine learning in general but none of the specific software used (e.g., fastai or transformers).
-   The report should still make sense if all of the source code is hidden.
-   Submit your work as a Jupyter Notebook (`.ipynb`) file if possible.
-   Use Markdown (text) cells to format headers (`## Header`) and links.

Here are some elements that would generally be expected in a report. Not all reports need to have all elements, and reports may include other elements. The following table is formatted in a way that should be useful as a checklist to include in your submission; see the [source code for this page](https://raw.githubusercontent.com/kcarnold/cs344/main/content/project/index.md) for how to include it in your report.

Reports should generally include:

- A succinct but descriptive **title**
- A **real-world question or goal** and *why* it's interesting.
- A description of the **dataset**: what sort of data does it contain? Where did it come from? Why did you choose it? What are its strengths and limitations?
- A specific technical goal or question
- Your technical **approach** for achieving that goal or answering that question
- What you noticed from **exploring the data** (e.g., counts by category, distributions of continuous variables, things you notice from inspecting individual samples at random)
- Your **modeling setup**: what are your features? Targets? Metrics? Loss function?
- Your **validation approach**: train-val-test split? cross-validation?
- Your **baseline results**: applying the simplest model you can think of; how good were the results (quantitatively and perhaps qualitatively)?
- Your **attempts at improved results**: what did you adjust, and why? How did the results change?
- An **analysis of errors** (quantitatively and perhaps qualitatively)
- **An analysis of the effects of alternative choices.** You can consider differences in model architecture, specific task, hyperparameter choices, inclusion/exclusion criteria, etc. Remember to think about the choice of **metrics** and the **uncertainty** involved in any estimate of them.
- A **summary of your findings**. Did you achieve your goal or answer your question?
- **Limitations and future directions**

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

### Choosing a Replication Project

If you're choosing a replication project, ask yourself:

1. Is there some specific write-up, with quantitative results clearly reported, that I can use to anchor the project?
2. Can I easily access the same data that the original authors used? (Does it fit on computing hardware I can easily access?)
3. Do I understand the basic approach? Maybe there's fancy stuff too, but you should be able to think of how you'd implement a simple version of it.

### How to replicate without duplicating

One strategy: the Benjamin Franklin replication. Here's how I adapt it to code:

1. Read the original. Take notes in a separate document. Make them mostly in human language or math; put code in your notes only sparingly.
2. Close the original. Try to write a replication based on your notes.
3. Fail at some point because your notes aren't detailed enough. So **close your replication** and open the original again, and return to step 1.

### Tips for Replication Projects

Basic outline of a project here:

- Get the code running (could be very easy if you find a Colab notebook etc)
- Replicate something interesting that's already been done.
- Use an example that you provide instead of one of their pre-built ones.
- Push the limits a bit.

### Ideas of what to replicate

See <https://paperswithcode.com/> for some examples. Their [newsletter](https://paperswithcode.com/newsletter) is particularly approachable.

Also, see proceedings of general conferences like NeurIPS, ICML, ICLR, ..., or domain-focused conferences: text (EMNLP, ACL), speech and music (ISMIR, InterSpeech), computer vision (ICCV, SIGGRAPH), recommender systems (RecSys), etc.

### Some potential papers to replicate

A very incomplete list of things that crossed my radar once.

-   [Deep Image Prior](https://dmitryulyanov.github.io/deep_image_prior): doing cool stuff with images and deep neural nets, without even training them.
-   [Image Representations Learned With Unsupervised Pre-Training Contain Human-like Biases](https://arxiv.org/abs/2010.15052)
-   <https://towardsdatascience.com/how-to-build-a-controllable-writing-assistant-for-novel-authors-a9fa15b57c6a>
-   [Taming Transformers for High-Resolution Image Synthesis](https://compvis.github.io/taming-transformers/)
-   [Multimodal Few-Shot Learning with Frozen Language Models](https://arxiv.org/abs/2106.13884) or [Prefix Tuning](https://arxiv.org/pdf/2101.00190.pdf)
-   [Concept Bottleneck Models](https://arxiv.org/abs/2007.04612)
-   [GradInit](https://paperswithcode.com/paper/gradinit-learning-to-initialize-neural) (try this on some simple models)

Some potential libraries or codebases:

- [NVIDIA/NeMo: NeMo: a toolkit for conversational AI](https://github.com/NVIDIA/NeMo)
- Demos from Google's [Magenta group](https://github.com/magenta/magenta-demos).
- Lots of stuff on PapersWithCode

## Research Projects

Professor Arnold is willing to advise one of the following research-y projects. Others may be permitted if you have a very clear proposal, discussed well in advance.

(You may notice some commonalities among these ideas. That's intentional.)

### Denoising Autoencoder for Text

**Goal**: help people clean up or edit text.

**Approach**: train a model to go from corrupted text to original text. (in general this is called a "denoising autoencoder" because it removes "noise"). Specific approaches:

- drop out some words entirely (this is the main approach used in [TSDAE](https://www.sbert.net/examples/unsupervised_learning/README.html))
- add noise to the word vectors
- treat position as a continuous value and add noise to it (so word order gets partly shuffled) -- this is a unique characteristic of Transformers models and I don't know if this has been explored in autoencoders before.

### Text vectorization using prefix learning

In many tasks it's helpful to have a vector that captures the general meaning of a sentence. (Search, paraphrasing, summarization, etc.). In Transformers models, generally the representation has one vector per input token (exception: the Perceiver architecture, e.g., Perceiver AR). But it's unclear how to compare these by similarity, and they may capture *too much* specific information about the input. So: what if we try to use smaller sequences to represent the larger ones? This is the basic idea of *compression*, that's fundamental to learning.

The paper [Multimodal Few-Shot Learning with Frozen Language Models](https://arxiv.org/abs/2106.13884) exemplifies recent results in using pretrained models: you keep the generation model frozen, but just *prepend* some virtual tokens to the input, represented by vectors that are generated by an *encoder* model. Those tokens basically make a virtual context that the existing model finishes. This is cool because there are way fewer parameters to learn: you don't need to learn to generate English, only to control the existing model so that *it* generates the sequence you want by itself.

The approach here would look like:

- Set up a frozen language model (like GPT-2) as a decoder.
- Set up the model to take a learnable vector (or several vectors) as the beginning of the decoded text.
- Set up an *encoder* to read the input sentence and output those vectors.
- Train the model so that both the encoder and decoder get the target sentence, and optimize the cross-entropy loss of the target sequence.
- Investigate the representation that it learned, e.g., what word vectors are close to the learned vectors for the sentence?
- Evaluate this using sentence-vector metrics; see [Sentence Transformers](https://www.sbert.net/)

### Question generation by inverting a QA system

**Goal**: When a writer feels "stuck" about what to write about, they can request for a system to generate questions that they might answer.

**Approach**: One approach for this is to take an existing question-answering system and just run it *backwards*: given answers, generate questions. But that might not help writers, because the system would need to already have the answer written. But question-answering datasets usually annotate where in the document the answer to the question was found. So what if we just *blank out* the part of the document that gives the answer, and train the model to generate the corresponding question?

See [Question Answering Datasets | Papers With Code](https://paperswithcode.com/datasets?task=question-answering&page=1) for some potential datasets. You could probably use one of the [`transformers` examples](https://github.com/huggingface/transformers/tree/master/examples/pytorch/question-answering) code bases with little modification.

### Decompose and Recompose Complex Sentences using Simple Sentences

Writers sometimes like to write really long and complicated sentences because those are the first things that come to mind and it's easy to just keep typing and get your ideas out there but it's not really clear what you're trying to say and you're thinking while you're writing so you end up with this big long train of thought that's hard for people to follow and it would be really helpful to readers if the writer could split the big sentence apart into little sentences that are simpler but sometimes there are actually complicated things that the writer is trying to explain and the simple little sentences get hard to follow so we don't necessary want to do this entirely automatically so it would be helpful to have the writer stay in control of this process. So:

- **Task 1**: Complex input sentence in, set of simpler sentences out.
- **Task 2**: Set of simple sentences in, combined sentence out.

Possible dataset: [BiSECT Dataset | Papers With Code](https://paperswithcode.com/dataset/bisect). There are also "sentence combination" exercises that language students do; there are probably some datasets from those.

### Effect of different loss functions for NLP

NLP models tend to focus on common, expected phrasing. How could we get models to capture the richness of how people express themselves? One of many possible approaches could be to tweak the *loss function*. Current models almost exclusively use cross-entropy loss, but other losses might encourage different model behavior. A few potential options:

- [cyclical focal loss](https://arxiv.org/abs/2202.08978) (see [General Cyclical Training of Neural Networks](https://arxiv.org/abs/2202.08835v1) for a description in context)
- use the unigram or bigram frequency to weight the cross-entropy loss
- penalize the *difference* between the model's cross-entropy loss and the cross-entropy loss that a sentence *should* have---certain sequences just *should* be more informative / surprising than others because they convey information, so a model shouldn't be too confident about it. The expected loss could be computed from corpus statistics perhaps. (Related idea: *actor-critic* setting in reinforcement learning.)

One way to measure success would be to generate from this model and check if the distribution of characteristics of the generated sentences match the corpus distribution.

### Predictive Text from Very Rough Drafts (e.g., rambling speech)

Speech recognition technology is a powerful and efficient way to enter text on a touchscreen device, but many people don't use it. One reason is that it is cognitively challenging: you must think of exactly what to say, and how to say it clearly enough to be understood, on the first time, potentially in a distracting or non-private environment. But what if you could first "think out loud" about what you want to say, perhaps whispering a stream of consciousness to your phone---then your phone would give you (a) an outline of the main points you wanted to say and (b) really accurate predictions about what word to type next in order to say it?

-   **Input**: a "stream of consciousness" rambling about something you want to communicate, likely already in text form (perhaps by a low-quality speech recognizer)

    -   Training data could be generated automatically by corrupting ground-truth outputs in various ways.

-   **Output**: a prediction of the next word to be typed in the final message you want to send.

### Other language tasks

- Paraphrasing using any-to-any translation
- Mining Wikipedia edit history (or other datasets, like Newsela) for data on editing language
- Language models that learn to generate "blanks" that a writer would need to fill in

### De-EQ

Given a sound corrupted by a random EQ curve or other processing step, predict the parameters for that processing step. *This kind of task is called [self supervised learning](https://lilianweng.github.io/lil-log/2019/11/10/self-supervised-learning.html).* See Microsoft's [HEXA](https://www.microsoft.com/en-us/research/blog/hexa-self-supervised-pretraining-with-hard-examples-improves-visual-representations/).

<!--

Feedback:

I wrote up some general comments here: https://cs.calvin.edu/courses/cs/344/22sp/project/#choosing-a-replication-project

These are both replication projects; they could be great **if** you find good data and an exemplar write-up. I wrote up some general comments here: https://cs.calvin.edu/courses/cs/344/22sp/project/#choosing-a-replication-project

I think the tl;dr generator (summary generator) could be an excellent project. There\'s a lot of good systems out there, including an example in the transformers repo. You might try to reproduce the results of one of the papers on the repo README list that tries to do summarization.\

Generative art is cool. You\'ll need to think about how you\'ll make it your own, though. Last year, several groups worked with image generation projects, but they ended up treating the model as a totally black box because it was too complicated. One approach would be to dig into a codebase and try intentionally changing something about it\... maybe you\'d \"\"break\"\" it in the process, but understanding what happened could be insightful.


Kaggle will be most straightforward, the others more interesting.

If you can get access to the dataset, the replication project could also be cool, especially if it connects with some of your personal interests.

Have you found existing work that you\'d replicate?

I agree that a Kaggle competition would be good for you. Maybe warm up on a closed competition to get used to how it works, then jump to a live one when you feel ready?

For tabular data, get a random forest running first, then try xgboost, and only after that go for anything more complicated.

All three look pretty good. The house prices competition is going to be the most straightforward but hardest to make interesting, because there\'s been so much done on that competition already, and the data isn\'t super-rich.

Prompt engineering is pretty cool overall. See https://arxiv.org/abs/2106.13884 for a simple approach to that idea.

I think the landscape generation one seems promising because the approaches are similar to what we've been working with already in class, and the results can look cool, and you have opportunity to control the inputs and intermediate results in interesting ways too.

Note that there have been lots of other papers since the Taming Transformers paper (which I added to the replication ideas list last year); you could do a little Google Scholar citation tracking (or browsing on paperswithcode) to find a good starting point to work from. 

I wrote up some general comments about replication projects that might help you here: https://cs.calvin.edu/courses/cs/344/22sp/project/#choosing-a-replication-project



If you want to try the research project, that would be cool. If so, let\'s find a time to meet. Easiest would be to try to book an "advising" meeting with me: https://outlook.office365.com/owa/calendar/Arnoldmeetings@calvincollege.onmicrosoft.com/bookings/s/HPLJtsUd4EWK0_CV-nIgEg2

I wrote up some general comments about replication projects that might help you here: https://cs.calvin.edu/courses/cs/344/22sp/project/#choosing-a-replication-project

General notes to everyone:

- this is rough feedback on project proposals. I probably haven\'t clicked on any of your links or thought deeply about what issues you might encounter.
- A positive reaction to one of your project ideas isn\'t necessarily a negative reaction to the others, but I am going to try to pick the project that I think will work out best.

-->