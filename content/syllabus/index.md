---
title: "Syllabus"
---

This is a hands-on course on AI systems using machine learning, with a particular emphasis on deep neural networks.

-   **Instructor**: Kenneth C. Arnold, Calvin University, North Hall NH298

-   **Meeting Time**: MWF 11:30-12:20, SB 382 (To be confirmed) and Gold Lab

-   **Office/Teams Hours**: Generally Monday and Thursday afternoons; see my [Google Calendar](https://kenarnold.org/calendar.html) for details and exceptions. Or message me directly; time permitting, I'd love to chat.

## Objective

By the end of this course, you will demonstrate growth in your ability to:

- Design a machine learning system to address a given challenge.
    - Select an appropriate ML approach to solve a problem.
    - Map characteristics of the problem onto elements of the approach.
    - Identify necessary characteristics of the data required for an ML system.
- Implement machine learning systems using both high-level and low-level programming interfaces.
	- Write code to implement the forward pass of linear regression, logistic regression, and neural net extensions thereof. (compute predictions and loss)
	- Design and implement data preprocessing processes to encode data into a format appropriate for machine learning modeling.
- Critically analyze the use and misuse of AI and ML techniques in situations affecting people
- Describe the history and trajectory of artificial intelligence

## Prerequisites

Familiarity with computer science concepts at the level of CS 212 will be generally expected. Beyond that, students should come to this course with some (perhaps rusty) ability to:

-   Read and write Python code (or be willing to invest significant energy the first few weeks picking it up)
-   Think systematically, generate and test hypotheses to explain observations, and communicate that thinking precisely.
-   Manage time, individually and in small groups
-   Collaborate to solve problems

## Materials

-   We will be following the fast.ai [Practical Deep Learning for Coders](https://course.fast.ai/) course for much of this course.

    -   You should buy their book (available in the Calvin bookstore), although it's also available as Jupyter Notebooks
    -   [Videos](https://course.fast.ai/videos/?lesson=1)
    -   their [forum](https://forums.fast.ai/c/part1-v4/46)

-   We will be using Piazza for class discussion. Many students have found that Piazza works well for getting you help fast and efficiently from classmates and myself. Rather than emailing questions to the teaching staff, I encourage you to post your questions on Piazza. Find our class signup link at: <https://piazza.com/calvin/spring2022/cs344>

-   The lab machines are configured with the software needed in Linux. The Gold lab GPUs are slightly better, so we'll generally use them but Maroon should usually work too.For times when you need or want additional computing resources, you may use [Borg](https://borg.calvin.edu/), [Google Colab](https://colab.research.google.com/), [Paperspace](https://gradient.paperspace.com/), or other services.

-   We will be using various tools for collaboration, including GitHub.

## Policies

**Grading**: The final course grade will be composed of 2 elements:

- Effort: did you do it, on time?
- Mastery: did you get it?

Each activity in the course will be allocated 5 effort points. On-time submissions receive all 5 points; each business day late (i.e., excluding weekends) is penalized by 1 point. Everyone will receive 5 free effort points, i.e., you get five grace days. Please reserve these for cases of personal hardship. Exemptions per assignment will be granted in very limited circumstances.

The *mastery* component of grading (inspired by a system used at [Grinnell College](https://osera.cs.grinnell.edu/csc151/syllabus/)) will be composed of two grades for each unit. A mastery grade is awarded for a unit when a student provides evidence to demonstrate mastery of one or more of the learning outcomes for that unit.
You present this evidence to the course staff by referring to a specific assignment in your weekly reflection (described later).

> Alternatively, you may meet with the course staff (during office hours or during a lull in lab time) to earn a mastery grade. However, times to do this will be limited, so be prepared to provide written evidence.

Mastery will be graded on a four-point scale (adapted from the [EMRF rubric](http://miss-serwy.weebly.com/uploads/1/2/1/6/12161802/emrf_rubric_1.pdf) by Stutzman and Race):

- **E**: Excellent
    - Demonstrates complete understanding of the material
    - No errors; could serve as an example solution
- **M**: Meets expectations
    - Demonstrates complete understanding of the material
    - Minor errors
- **R**: Needs Revision
    - Demonstrates limited understanding of the material
    - Many minor errors or one or more major errors
- **N**: Not completed
    - Not completed to a degree where understanding is evident

You may earn up to 2 mastery grades during each week of class (ending Mondays unless otherwise indicated), and up to one mastery grade for each unit in the midterm and final projects. Generally you will attempt one new mastery grade and one revised assignment from a previous week during each week.

This grading policy is experimental and depends on student buy-in and participation. I reserve the right to change the grading policy at any point.


**Incompletes**: An incomplete grade (I) will only be given in unusual circumstances, and only if those circumstances have been confirmed by the Student Life office.

**Attendance** is not mandatory, but highly encouraged, both for your own learning and as one of the main ways to contribute to other students' learning. Come to class to ask the questions that you think everyone else already knows the answer to but in fact they nod in agreement. Come to class to help your fellow students figure out that thing that just clicked for you yesterday. Or come because you want to discuss AI!

I expect in-person attendance where possible, remote attendance when necessary, and asynchronous attendance when really necessary. I also expect you to be *cognitively* present: if you're not actually going to participate, don't come.

**Disabilities**: Calvin University is committed to providing access to all students. If you are as student with a documented disability, please notify a disability coordinator in the Center for Student Success (located in Spoelhof University Center 360). If you have an accommodation memo, please come talk to me in the first two weeks of class.

**Academic Integrity**: Your work in this class should demonstrate *gratitude* and *respect* to those whose work enables yours. It should demonstrate the *integrity* necessary to produce work that your future employer can legally use. And it should demonstrate an active embrace of the often-necessary struggle of figuring things out yourself. So I expect you to credit the people who help you, be they classmates or StackOverflow strangers, and heed the license terms under which they offer their code.

**Etiquette**: We expect you to treat students and instructors for this with respect by adopting courteous communication practices throughout the course. No personal attacks, trolling, bad language will be tolerated.

### Diversity and Inclusion

I came to Calvin because I wanted to explore what our Christian calling to “act justly” means in the context of data and the technologies that we use with it. Engaging that question wholeheartedly requires that each of us, me included, engage respectfully with perspectives very different from our own. For example, we must question those who abuse data for selfish gain, but we also must question the perspectives of those who challenge those abuses on purely secular grounds.

I intend for this class to be an environment where we equally respect people of every ethnicity, gender, socioeconomic background, political learning, religious background, etc. I will try to create that community by having us read diverse voices, engage with issues of importance to people unlike ourselves, and structure discussions that require students to engage respectfully with perspectives different from their own. I invite your help.

We will not always do this well. If you or someone else in this class is hurt by something I say or do in class, I would like to work to remedy it. I will welcome this feedback in whatever way is comfortable for you: in public, in private, via another person (such as our TA or my department chair, Keith VanderLinden), or via a report to [Safer Spaces](https://calvin.edu/offices-services/safer-spaces/) or the [provost's office](http://www.calvin.edu/go/comments-on-faculty/).

## Philosophy

Our teaching philosophy is analogous to how both classical AI (planning) and modern machine learning systems (backpropagation) work: start with the goal, work backwards, and iteratively improve. So rather than starting with mathematical fundamentals, we will start by doing, then learn the fundamentals as we need to.

The course may look quite different from other courses that you have taken. Trust me that this will still work---and even if it doesn't, you will still learn a lot if you put in the effort. That effort will entail:

-   A sustained effort throughout the semester ("cramming" is ineffective for retention)

    -   Weekly learning reflections
    -   Regular completion of at-home and in-class activities

-   A semester project that demonstrates depth in implementing and analyzing an intelligent technology (see **Project** below)

-   Contribution to peers' learning

## Typical Weekly Schedule

-   *Preparation*: a reading and a video lecture, assessed by a short quiz (graded leniently) due Monday at class time

-   *Lab*: reproducing a book chapter and making small, guided extensions

-   *Homework*: applying a technique or concept in a new area

-   *Quiz*: a short check-in of what you've learned

-   *Discussion*: participate in a class-wide discussion forum (some components in person, others on Piazza); summarize your perspective in a portfolio piece. Most discussions will be case studies on specific technologies, focusing on:

    -   How does it work?
    -   What impact does it have?
    -   How can we constructively assess it (generally, but not always, from a reformed Christian viewpoint)?

-   *Reflection*: a summary of your learning the past week (private to you and the course staff) *due Wednesday end of day*

    -   Reflections are structured according to the three primary areas discussed in Grading above
    -   Specific prompts will be provided in Moodle, but will generally include what has gone well for your progress in that area (refer to specific evidence), what difficulties you are still facing, and what you want to keep doing or change.

In the final weeks of the semester, project work will replace many of these elements (see Project below). You will present your project during our final exam time (May 13 at 9am) and submit your final reflection that evening.

### Weekly Structure

A week will frequently look like:

-   Monday: *in lab*. Go through an activity closely based on the textbook
-   Wednesday in classroom: debrief and Q&A about the reading / lab; discussion about an AI application or perspective
-   Friday *in lab*: working on homework
