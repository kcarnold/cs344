---
title: "Project"
toc: true
---

This course will culminate in a semester project. Successful projects will demonstrate that you can:

- **Apply fundamental ML concepts** to the task of designing, implementing, and/or analyzing an intelligent system. So your work should dig below the surface in some way, but how you do it is up to you. Some suggestions are given below.
- **Implement and/or experiment** with a system that uses ML. 
- **Communicate your work** using text and visuals that are precise, concise, and appropriate for the audience.

Projects should generally be done in pairs, though allowances may be made on request.

Successful projects will also demonstrate mastery of various other skills, but the specific skills will vary between people and projects. Some options include:

- systematic experimentation
- detailed understanding of model architecture and function
- structuring (or wrangling) data
- detailed assessment of model performance
- systematic exploration of variations (parameter choices, architecture choices, data choices, etc.)
- Clean coding
- Efficient coding
- ...many others are possible.

You are encouraged to try to demonstrate mastery of several of these topics even before the final project submission. Please either write a note or arrange a brief meeting.

## Milestones and Deliverables

{{% details summary="Proposal" %}}

First, read the [Project Guidelines](/project/) for a description of what sort of projects are expected in this class.

Then, think of two or three potential project ideas. (Note that there are three types of projects; you might perhaps try to think of an idea for each type.)

For each idea, write a paragraph (or informative bullet points) to address:

-   What are you trying to do? (What would a successful project look like?)
-   What overall approach or technology are you thinking about using? (Do you need help picking between several approaches?)
-   What data have you found, if applicable? (Do you need help finding data?)

Mention whom you might work with (the ideal team size is probably 2, but 1 or 3 is ok too). It may be different for different projects. Submit individually, though.

{{% /details %}}

{{% details summary="Updated Proposal" %}}

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

{{% /details %}}

{{% details summary="Walkthrough and Showcase" %}}

- **Walkthrough meetings**: Meet with the professor (in person or online) before Reading Recess. Show what steps you have taken so far.
- Attend the **final project showcase** in which you can see everyone’s project. See details below.

The final course meeting (during the designated final exam period) will be devoted to final project presentations. Feedback on others' projects is expected, so attendance is mandatory.

Be prepared to demo your system and to explain its key points. Presentations are informal, so slides are not required (but may be helpful if your notebook is large or your results don't easily fit in a notebook.)

Aim for about 5 minutes of content. All team members should participate.

{{% /details %}}

{{% details summary="Final Deliverables" %}}

By the **end of the day of final presentations**, submit the following:

-   A technical report on the project. This can be your Jupyter notebook file, or you may use a different technology if you want to include results that don't fit in a notebook easily.
-   A **short explanation of the technology you build on** for a nontechnical audience.
-   Supporting materials, including code/notebooks, as appropriate

The following sections provide additional detail about each component.

### Technical Report

The report should be at the level of polish and formality of a blog post (more than a class homework assignment, less than an academic paper). Precise technical language should be used in descriptions of methods.

- Audience:
  - The introduction and conclusion should be written for a general audience (friends and family, for example).
  - The rest of the report should be written for someone who is familiar with AI / machine learning in general but none of the specific software used (e.g., `fastai` or Hugging Face `transformers`).
- Explain your overall approach and the choices you make along the way.
  - The report should still make sense if all of the source code is hidden. (i.e., don't use code comments to explain what you're doing or why)
  - Use Markdown (text) cells appropriately, e.g., to format headers (`## Header`) and links.
-   Submit your work as a Jupyter Notebook (`.ipynb`) file if possible.

Here are some elements that would generally be expected in a report. Not all reports need to have all elements, and reports may include other elements. Reports should *generally* include:

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

### Reflection

Write, individually, about a page on:

1. What was your role or contribution to the project (if it was a team project)? Look at some examples of Author contributions statements, such as [this one](https://transformer-circuits.pub/2022/in-context-learning-and-induction-heads/index.html#author-contributions).
2. How you would describe the project in a technical job interview.
3. A summary of the main things you learned from the process of doing the project.
4. Superlatives: most fun part? most proud of part? frustrating? surprising? interesting? challenging? rewarding? most useful part of the course for your project? 
5. Wishes: what would you do differently next time? advice for someone else doing a similar project? material you wish you had learned in the course?

At the end of your report, include a brief summary of how the project demonstrates mastery of various components.

### Supporting Material

Submit code needed to replicate the visual and quantitative results in your report.

- Share any github repos with `kcarnold` or make them public.
- Include the notebooks you used.
  - If you used Colab, download the `ipynb` file.
  - "Restart and Run All" before submitting, if possible.
  - The technical report may include all of the needed code; if so, nothing more is required.
- Include clear instructions for how to acquire any data you used. (Don't upload the dataset itself, unless it happens to be very small.)

{{% /details %}}

## Picking a Project

Several types of projects are permissible, with different criteria for success.

{{% details summary="Application" %}}

You could **apply** an ML technique (from class or otherwise) to some real-world problem. For example, you might train an image classifier on a new set of images, or a text classification model on a new domain.

- For these projects, we will allow simple methods (e.g., using code right out of class materials) but expect high-quality motivation, execution, and analysis.
- Participating in a Kaggle competition could be one good version of this project (or a Replication project).
- Since you should be able to get a baseline approach working quickly, here are some ways you can deepen this kind of project:
  -   Analyze the model's **errors**, both quantitatively and qualitatively.
  -   **Compare several approaches.** You can consider differences in model architecture, specific task, hyperparameter choices, inclusion/exclusion criteria, etc. Remember to think about the choice of **metrics** and the **uncertainty** involved in any estimate of them.
  -   Generate **explanations** of the model's decisions, using the model interpretation methods described in the book or otherwise.
  -   Discuss how you were able to **tune** the performance of the model.

{{% /details %}}

{{% details summary="Replication" %}}

- Pick a single quantitative result from a research paper, blog post, etc. and try to replicate it. (*"They got a number. Can we get the same number?" (or better?)*)
- Write some part of the code yourselves (data input, modeling, optimizer, experiment harness, etc.)
- Then **extend** in some way.

One way you could extend a replication project is to add constraints: limited compute (e.g., lab computers, your laptop, Raspberry Pi), limited data (a small subset of the original dataset), limited model size (fits in xx MB), etc.

One example I'd really like to see: **Train the best language model you can on our lab computers** (or your laptop).

### Expectations for Replication Projects

- For these projects, we will not expect as much discussion of motivation, assuming that the original artifact took care of that.
- Depending on your results, you should either:
  - Demonstrate *surmounting significant technical challenge* in attaining the result,
  - Provide a thoughtful *analysis* of the decisions you and the original authors made, or
  - Improve on the quantitative result in some measurable and well-motivated way.

### Choosing a Replication Project

If you're choosing a replication project, ask yourself:

1. Is there some specific write-up, with quantitative results clearly reported, that I can use to anchor the project?
2. Can I easily access the same data that the original authors used? (Does it fit on computing hardware I can easily access?)
3. Do I understand the basic approach? Maybe there's fancy stuff too, but you should be able to think of how you'd implement a simple version of it.

### Expository Notebooks ("Notebookify")

One strategy to take when starting with an existing code is to "Notebookify" it. Most notebooks you'll find are *demo* notebooks, designed to show off the best results but hide a lot of details behind opaque code chunks or external libraries. In contrast, an *expository* notebook **walks the reader through what's going on**.

The code part of such a project is relatively straightforward: find a demo notebook, step through it, pull in the contents of the "do-all-the-stuff" functions (test that it still works), split things up into individual cells (test that it still works), and show intermediate results and shapes. But you'll also write up descriptions of what's happening.

You will almost certainly want to refer to a paper by the original authors. It'll usually explain the names of variables and methods, and it'll show what parameters and data are likely to work well.

If the original has big loops, flatten them. For example, show one example of how the data is prepared, run one minibatch of the model training, show how the evaluation scores are computed for one datapoint.

Simplify the code as needed. e.g., if there are `if`s to do different things depending on configuration, remove the code that isn't actually run in your case.

Most importantly, explain what is going on. Start with an intro about the overall goal of the approach you're demoing, and the basic outline of what the process looks like. Then dive in. End with a conclusion summarizing the main points that you highlighted about what's going on. Perhaps end with some questions and future directions: what decisions did the original authors make that aren't clear to you? What ideas might you have for doing something differently?

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

{{% /details %}}

{{% details summary="Exploration Project" %}}

- Try out some variation on a common ML technique
- e.g., lots of variations possible on the Transformers architecture ("what if...")
  - if we included a key with a value that's always zero?
  - if each layer could query the prior layer?
  - if different layers had different numbers of heads?
- Try out different activation functions (stairsteps?)

If you're interested in this sort of project, ask me and I can explain those ideas or provide some others.

For example, I have a description of [research projects](research/) that needs updating.

{{% /details %}}


## General Advice

- **Repeat trials** with different random seeds. Consider the variability of results.
- **Notice decisions** you make during data prep and modeling.
  - What data did you omit?
  - How did you set up the modeling problem?
  - What’s missing?
- **Analyze errors**
  - What systematic mistakes did the model make?
  - What effect did decisions have on those mistakes?

Technically: **keep it simple**. A thoughtful analysis of a technically simple thing is much better than a hasty analysis of a technically fancy thing.

See the Resources page here, especially [Tools](/resources/#tools).


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