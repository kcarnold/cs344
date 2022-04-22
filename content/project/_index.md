---
title: "Project"
toc: true
---

This course will culminate in a semester project. Successful projects will demonstrate that you can:

- **Design, implement, and/or analyze an intelligent system**. So your work should dig below the surface in some way, but how you do it is up to you. Some suggestions are given below.
- **Communicate your work in both technical and non-technical terms.** So you will include a summary that's understandable to the general public (friends and family, for example) as well as a detailed report.

Projects should generally be done in pairs, though allowances may be made on request.

## Grading

Projects will count for 5 Mastery grades. You will include a brief summary at the end of your report of how the project demonstrates mastery of various components.

All projects must demonstrate mastery of the following objectives:

- Technical writing (precise and concise)
- Nontechnical writing (simple and understandable)
- Quantification (putting a number on something)

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

## Milestones

<details>

<summary>Proposal</summary>

First, read the [Project Guidelines](https://cs.calvin.edu/courses/cs/344/22sp/project/) for a description of what sort of projects are expected in this class.

Then, think of two or three potential project ideas. (Note that there are three types of projects; you might perhaps try to think of an idea for each type.)

For each idea, write a paragraph (or informative bullet points) to address:

-   What are you trying to do? (What would a successful project look like?)
-   What overall approach or technology are you thinking about using? (Do you need help picking between several approaches?)
-   What data have you found, if applicable? (Do you need help finding data?)

Mention whom you might work with (the ideal team size is probably 2, but 1 or 3 is ok too). It may be different for different projects. Submit individually, though.

</details>

<details>

<summary>Updated Proposal</summary>

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

</details>

- **Walkthrough meetings**: Meet with the professor (in person or online) before Reading Recess. Show what steps you have taken so far.
- Attend the **final project showcase** in which you can see everyone’s project. Be prepared to demo your system and to explain its key points.

## Final Deliverables

By the **end of the day of final presentations**, submit the following:

-   A technical report on the project
-   A **short explanation of the technology you build on** for a nontechnical audience.
-   Supporting materials, including code, as appropriate

The following sections provide additional detail about each component.

### Technical Report

The report should be at the level of polish and formality of a blog post (more than a class homework assignment, less than an academic paper). Precise technical language should be used in descriptions of methods.

-   Assume an audience that is familiar with AI / machine learning in general but none of the specific software used (e.g., `fastai` or Hugging Face `transformers`).
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

- You may choose to do this on a different technology instead; ask the instructor.

- The explanation should make sense without reference to the rest of your project, though you may use the project as an example.

Aim for a description that would fit on one page or less, including a carefully selected supporting image or two.

### Presentation

The final course meeting (during the designated final exam period) will be devoted to final project presentations. Feedback on others' projects is expected, so attendance is mandatory.

Aim for about 5 minutes of content. All team members should present.

### Supporting Material

Submit code needed to replicate the visual and quantitative results in your report.

- Share any github repos with `kcarnold` or make them public.
- Include the notebooks you used.
  - If you used Colab, download the `ipynb` file.
  - "Restart and Run All" before submitting, if possible.
  - The technical report may include all of the needed code; if so, nothing more is required.
- Include clear instructions for how to acquire any data you used. (Don't upload the dataset itself, unless it happens to be very small.)

## Picking a Project

Your project should be one of the following 3 types. The criteria for success differ by type:

1. **Application** of a specific technique that we studied in class to a different situation. For example, you might train an image classifier on a new set of images, or a text classification model on a new domain.

    - For these projects, we will allow simple methods (e.g., using code right out of class materials) but expect high-quality motivation, execution, and analysis.
    - Participating in a Kaggle competition could be one good version of this project (or a Replication project).
    - [More details on Application projects](application/)

2. **Replication** of a quantitative result that you find in a research paper, blog post, etc.

    - For these projects, we will not expect as much discussion of motivation, assuming that the original artifact took care of that.
    - Depending on your results, you should either:
      - Demonstrate *surmounting significant technical challenge* in attaining the result,
      - Provide a thoughtful *analysis* of the decisions you and the original authors made, or
      - Improve on the quantitative result in some measurable and well-motivated way.
    - [More details on Replication projects](replication/)

3. **Research** along one of the directions listed [on this page](research/).

    - For these projects, any meaningful progress towards answering the research question will be considered a successful project, if reported well.

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