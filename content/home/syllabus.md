---
widget: blank
headless: true
design:
  # Choose how many columns the section has. Valid values: 1 or 2.
  columns: '1'

title: "Syllabus"
weight: 10
---

This is a hands-on course on AI systems using machine learning, with a particular emphasis on deep neural networks.

-   **Instructor**: Kenneth C. Arnold, Calvin University, North Hall NH298

-   **Meeting Time**: MWF 11:30-12:20

    -   Wednesday in HL 102
    -   Monday and Friday in CS labs SB 372 *Maroon* and overflow to 354 *Gold*

-   **Office/Teams Hours**: See my [Google Calendar](https://kenarnold.org/calendar.html) (typically Mon and Thurs afternoons)

## Objective

By the end of this course, you will demonstrate growth in your ability to:

-   *Design, implement,* and *analyze* some state-of-the-art types of data-fueled intelligent systems
-   *Design* and *analyze* how these intelligent systems relate with people, individually and collectively, through a Reformed Christian lens.
-   Communicate the above with peers and members of the general public
-   Contribute to a team that learns: identify what you need to learn, reflect on your own learning, and help others learn

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

-   We will be using Piazza for class discussion. Many students have found that Piazza works well for getting you help fast and efficiently from classmates and myself. Rather than emailing questions to the teaching staff, I encourage you to post your questions on Piazza. Find our class signup link at: <https://piazza.com/calvin/spring2021/cs344>

-   The lab machines are configured with the software needed on the Linux install. The Maroon lab has GPUs with sufficient specs for most of what we need, so we will be using them (booted into Linux); Gold lab users can use Guacamole to connect to a Maroon machine.

-   We will be using various tools for collaboration, including GitHub and Google Colab.

## Policies

**Grading**: Your final grade will be computed as the weighted average of your grade in each of 3 categories, representing each of the primary learning outcomes of the course:

-   **Technology** (50%): You demonstrated the newly learned ability to design, implement, analyze, debug, or understand something significant.
-   **Comm** (Communication or Community, depending on the week) (25%): You contributed to other students' learning. e.g., *asked or answered questions in class / on Piazza / informally, gave constructive peer feedback, contributed to a class forum*
-   **Context** (25%): You engaged with broader perspectives on AI. e.g., its history, its current or future impacts on individuals, organizations, societies, the environment, etc., or questions about how AI and Christian faith relate, etc.

Each week (including exam week) you will turn in a reflection on your work and learning for the past week. In it, you will suggest a numeric grade for each of the 3 categories. (I reserve the right to deviate from your suggested grade.) Your grade for each category will be the average of each of the 14 grades in that category.

There will be weeks for which the structured content of the course does not give you a chance to sufficiently demonstrate learning in a given area. In such cases, you should proactively seek a learning opportunity in that category. I will provide some general resources; please ask for specific advice as needed. You may also simply take a 0 in that category that week; one or more of the lowest grades in each category will be dropped.

**Late work**: Late submissions will only be accepted if prior arrangements have been made or you document an extenuating circumstance. Likewise, an incomplete grade (I) will only be given in unusual circumstances, and only if those circumstances have been confirmed by the Student Life office.

**Attendance** is not mandatory, but highly encouraged, both for your own learning and as one of the main ways to contribute to other students' learning. Come to class to ask the questions that you think everyone else already knows the answer to but in fact they nod in agreement. Come to class to help your fellow students figure out that thing that just clicked for you yesterday. Or come because you want to discuss AI!

I expect in-person attendance where possible, remote attendance when necessary, and asynchronous attendance when really necessary (e.g., you're in Asia and it's the middle of the night). I also expect you to be *cognitively* present: if you're not actually going to participate, don't come.

**Disabilities**: Calvin University is committed to providing access to all students. If you are as student with a documented disability, please notify a disability coordinator in the Center for Student Success (located in Spoelhof University Center 360). If you have an accommodation memo, please come talk to me in the first two weeks of class.

**Academic Integrity**: Your work in this class should demonstrate *gratitude* and *respect* to those whose work enables yours. It should demonstrate the *integrity* necessary to produce work that your future employer can legally use. And it should demonstrate an active embrace of the often-necessary struggle of figuring things out yourself. So I expect you to credit the people who help you, be they classmates or StackOverflow strangers, and heed the license terms under which they offer their code.

**Etiquette**: We expect you to treat students and instructors for this with respect by adopting courteous communication practices throughout the course, either on the videos, which may be recorded, or the online forums. No personal attacks, trolling, bad language will be tolerated.

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
