---
title: "Syllabus"
---

This is a hands-on course on AI systems using machine learning, with a particular emphasis on deep neural networks.

- **Instructor**: Kenneth C. Arnold, Calvin University, North Hall NH298
- **Meeting Time**: MWF 11:30-12:20, SB 354 (Gold Lab)
- **Office/Teams Hours**: Generally Monday and Thursday afternoons; see my [Google Calendar](https://kenarnold.org/calendar.html) for details and exceptions. Or message me directly; time permitting, I'd love to chat.

## Objective

By the end of this course, you will demonstrate growth in your ability to:

- Design a machine learning system to address a given challenge.
  - Select an appropriate ML approach to solve a problem.
  - Map characteristics of the problem onto elements of the approach.
  - Identify necessary characteristics of the data required for an ML system.
- Implement machine learning systems using both high-level and low-level programming interfaces.
  - Write code to implement the forward pass of linear regression, logistic regression, and neural net extensions thereof. (compute predictions and loss)
  - Design and implement data preprocessing processes to encode data into a format appropriate for machine learning modeling.
- Critically analyze the use and misuse of AI and ML techniques in situations affecting people.
- Describe the history and trajectory of artificial intelligence.

## Prerequisites

Familiarity with computer science concepts at the level of CS 212 will be generally expected. Beyond that, students should come to this course with some (perhaps rusty) ability to:

- Read and write Python code (or be willing to invest significant energy the first few weeks picking it up)
- Think systematically, generate and test hypotheses to explain observations, and communicate that thinking precisely.
- Manage time, individually and in small groups
- Collaborate to solve problems

## Materials

- Moodle contains links to all of the resources used in this course. It will also be where you engage in [discussion forums](/discussions/) and submit assignments.

- We will be following the fast.ai [Practical Deep Learning for Coders](https://course.fast.ai/) course for the first third or so of this course. They provide the following materials that will be useful to us:

  - The **book** (*Deep Learning for Coders with Fastai and PyTorch*) is available in the Calvin bookstore and also [freely available online](https://github.com/fastai/fastbook) (links provided in the corresponding reading assignments)
  - Links will also be provided to the author's [video lectures](https://course.fast.ai/videos/?lesson=1) corresponding to each section, where applicable.
  - You may find it helpful to browse their [forum](https://forums.fast.ai/c/part1-v4/46), or even post questions there.

- We will be using Piazza for Q&A. Many students have found that Piazza works well for getting you help fast and efficiently from classmates and myself. Rather than emailing questions to the teaching staff, I encourage you to post your questions on Piazza. Access Piazza by clicking on the link in Moodle.

- The lab machines are configured with the software needed in Linux. We'll generally use the Gold lab because its GPUs are slightly better, but Maroon should usually work too. For times when you need or want additional computing resources, you may use [Borg](https://borg.calvin.edu/), [Google Colab](https://colab.research.google.com/), [Paperspace](https://gradient.paperspace.com/), or other services. **The Guacamole remote access machines have older GPUs**, so see notes in the Lab 1 and 2 instructions for tips on making things run there (or just use Google Colab).

## Policies

### How will the course be graded?

The final course grade will be composed of 2 elements:

- **Effort**: did you do it, on time?
- **Mastery**: did you get it?

### How are Effort grades computed?

Effort points are awarded for satisfactory effort by the due date and are intended to keep you from getting behind in the course. The following types of activities count as effort points:

- **Labs**, **Homework**, and **Reflections** (see below) will be considered satisfactory if an attempt has been made to answer all questions by the due date. Each activity will be allocated 5 effort points. On-time submissions receive all 5 points; late turn-ins are penalized by 1 point each business day (i.e., excluding weekends).
- **Discussion Forums** (see [details](/discussions/)) will be awarded 2 effort points if an original post with intellectual substance is made by the due date. Many discussion assignments will also include one or two replies to other students, which will count for 1 effort point each. Late posts may receive half credit.
- All **Quizzes** (both preparation and review) count as 5 effort points. The actual score will be used: unlimited attempts will be allowed, so perfect scores are expected. Moodle makes it tedious to manage late quizzes, so each quiz will officially close a week late and no late quizzes will be accepted.

### Can I turn in things late?

Everyone will receive 5 free effort points, i.e., you get five grace days. Please reserve these for cases of personal hardship. Exemptions per assignment will be granted in very limited circumstances.

When you're turning in something late, you will mention this in the Reflection for the week.

### What are Mastery grades?

The *mastery* component of grading (inspired by a system used at [Grinnell College](https://osera.cs.grinnell.edu/csc151/syllabus/)) will be composed of one or two grades for each unit, corresponding to key assignments in that unit (typically a Homework).

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

Grades on the semester project and on perspectival reports will add additional mastery grades.

### How are Mastery grades computed?

The mapping of Mastery grades to numbers and their weighting with Effort grades will be determined at the end of the semester so that if you achieve all M grades with minimal late submissions you should expect at least a B+. I will make a reasonable attempt to keep the gradebook in Moodle configured to approximate this grade, but do not be discouraged by temporary low numerical grades in Moodle.

### How do I revise assignments?

Revisions are expected and highly encouraged. You may submit **up to one revision per week**. To submit a revision:

- Submit a complete, standalone solution on Moodle. (Clean up anything from your past errors.)
- **Email the instructor** with the following:
  - What assignment you're revising
  - A concise and specific explanation of the original error(s) and how you addressed them.

### This sounds unusual. Will we actually be doing this??

This grading policy is experimental and depends on student buy-in and participation. I reserve the right to change the grading policy at any point.

### Can we work in pairs?

Lab, homework, and project activities should generally be done in pairs, though solo work is also fine. Teams of 3 can be okay too.

Some weeks there will be review assignments available, which will provide you the opportunity to demonstrate individual mastery. These assignments *must* be done individually, without consulting other students or aids.

### Are Incomplete grades offered?

An incomplete grade (I) will only be given in unusual circumstances, and only if those circumstances have been confirmed by the Student Life office.

### Do I have to come to class?

Attendance is not mandatory, but highly encouraged, both for your own learning and as one of the main ways to contribute to other students' learning. Come to class:

- to ask the questions that you think everyone else already knows the answer to (but in fact they nod in agreement because they were wondering that too).
- to help your fellow students figure out that thing that just clicked for you yesterday.
- or just because you want to discuss AI!

### I have some special needs; will you accommodate them?

**Disabilities**: Calvin University is committed to providing access to all students. If you are as student with a documented disability, please notify a disability coordinator in the Center for Student Success (located in Spoelhof University Center 360). If you have an accommodation memo, please come talk to me in the first two weeks of class. **If something comes up mid-semester, like an injury, please reach out to the disability coordinator and me.**

### How do I demonstrate academic integrity in this class?

The primary purpose of exercises in this class is to help you *learn* the material. The primary purpose of assessments are to help you *retain* the material. Academic integrity entails using course materials for the purposes that they were designed, not bypassing those purposes in an attempt to obtain answers without effort or demonstrate performance without learning.

Moreover, your work in this class should demonstrate *gratitude* and *respect* to those whose work enables yours. It should demonstrate the *integrity* necessary to produce work that your future employer can legally use. And it should demonstrate an active embrace of the often-necessary struggle of figuring things out yourself. So I expect you to *credit the people who help you*, be they classmates or StackOverflow strangers, and *heed the license terms* under which they offer their code.

Solutions to exercises are easy to find. You are expected *not* to refer to them until after you have submitted your work. If you do refer to them, you are *required* to clearly indicate that you have done so within the assignment.

If you realize that your actions have violated academic integrity principles, please let the instructor know as soon as possible.

**Etiquette**: We expect you to treat students and instructors for this with respect by adopting courteous communication practices throughout the course. No personal attacks, trolling, bad language will be tolerated.

## Diversity and Inclusion

I came to Calvin because I wanted to explore what our Christian calling to “act justly” means in the context of AI, data, and the technologies that we use with it. Engaging that question wholeheartedly requires that each of us, me included, engage respectfully with perspectives very different from our own. For example, we must question those who abuse data for selfish gain, but we also must question the perspectives of those who challenge those abuses on purely secular grounds.

I intend for this class to be an environment where we equally respect people of every ethnicity, gender, socioeconomic background, political learning, religious background, etc. I will try to create that community by having us read diverse voices, engage with issues of importance to people unlike ourselves, and structure discussions that require students to engage respectfully with perspectives different from their own. I invite your help.

We will not always do this well. If you or someone else in this class is hurt by something I say or do in class, I would like to work to remedy it. I will welcome this feedback in whatever way is comfortable for you: in public, in private, via another person (such as our TA or my department chair, Keith VanderLinden), or via a report to [Safer Spaces](https://calvin.edu/offices-services/safer-spaces/) or the [provost's office](http://www.calvin.edu/go/comments-on-faculty/).

## Typical Weekly Expectations

- **Weekend**: read (actively!) a textbook chapter, watch a video lecture
- **Monday**: prep quiz should be completed.
- **Tuesday**: lab due (if there is a lab)
- **Wednesday**: discussion forum due by class time, come to class with insights to share
- **Thursday**: weekly homework due; reflection due (every other week)

### Reflections

A *Reflection* is a summary of your learning the past two weeks. They are typically *due Thursday end of day* and typically include:

- A response to each of the learning objectives for each of the two weeks.
- Feedback to the instructor about how things are going

Details are given in the specific assignments.
