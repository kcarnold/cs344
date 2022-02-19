---
title: "Forum Posts 22SP"
---

## Week 7: Embeddings

Welcome to unit 7, the week before Spring Break!

In this unit we introduce one of the most powerful concepts in machine learning: the *embedding*. It's the idea that instead of being explicitly given a representation for something, we *learn* it from data *based on the properties it should have*. We've actually already seen embeddings of various kinds (the inputs to the last layer of an image classifier for one), but we'll look at two examples where the embedding aspect is even clearer: movies and words.

Some logistics:

1. I made some late updates to Preparation 7, and posted the quiz late, so it's okay if you don't get to it until Wednesday.
2. Homework 6 is due on Thursday. It's not the mini-project I'd hoped because I thought that would be too much, but it gets you pretty close. (If you're interested in trying that mini-project anyway, I wrote up some [instructions](https://cs.calvin.edu/courses/cs/344/22sp/units/06recap/mini-proj/) for it.)
3. I recorded a video demo of how backprop works; see our [Walkthroughs folder in Teams](https://calvincollege.sharepoint.com/:f:/s/Section_81629/EiZcXdth0VZMhjz4S_69w0oByq-i_tuvqJMm1VgDMjNtJw?e=YHcM0a).
4. Reflection 3 is due on *Friday*. It's the same structure as last week: write your own quick summary of all the learning objectives from the past two weeks.
5. In lieu of a normal Discussion this week, we get to start thinking about **project ideas**! I've put up a Forum on Moodle for this week if you'd like to pitch an idea and are looking for partners. We'll talk more about projects in class this week; here's the [overall description](https://cs.calvin.edu/courses/cs/344/22sp/project/).
6. I've fixed up the gradebook, so now would be a good time to check where you stand. (I haven't gotten to all of the revisions yet.) Things I haven't graded yet should show up as "dropped", but if there's anything that's missing or too-low and not "dropped", please let me know.

See you Monday!

## Week 6: Recap and Regularization

In this unit, after reviewing where we've been, we push towards state-of-the-art models (still focusing on computer vision). We’ll introduce or revisit tools that allow our models to achieve high performance, such as data augmentation and regularization. Finally, we’ll get more practice with how neural networks work from the ground up as we implement our own simple neural net image classifier from scratch (definitely something to mention in an interview!).

Logistics are basically as usual:

- Prep 6 for Monday (note that the quiz is always open for an extra week, but do remember to come back to it!)
- We'll do Fundamentals work during lab time again, so no separate Lab due this week.
- Discussion 5 for Wednesday as usual.
- Homework 5 is 3 more Fundamentals notebooks, due Thursday as usual.
- No reflection this week (they're every other week).

I had gotten behind on answering your questions; here's some [Q&amp;A from week 5](https://cs.calvin.edu/courses/cs/344/22sp/units/05learning/qa/). And I'm still behind in feedback too, my apologies.

## Week 5: Learning

Happy Saturday! We're making good progress getting under the hood of how neural nets work. **Last week** we tackled regression; we introduced *linear layers* as the basic building blocks of neural nets, *gradient descent* as general way to find good values of parameters, and *backpropagation* as a general tool to compute gradients efficiently and without numerical issues. **This week** we extend to *classification*, where we'll learn about some *non-linear* layers, which are where neural nets get their power.

Logistics!

- Prep 5 should be done by Monday's class as usual.
  - To be honest, we won't get to much of that material until Wednesday, though. So feel free to wait till then even to submit the quiz.
- Discussion 4 is due Wednesday; same instructions as last time, just different topic.
- Homework 4 and Reflection 4 are both due next Thursday.
  - We've shifted the due date for Reflections so that the reflection can include everything you've done related to the week's learning objectives.
  - Homework 4 introduces a kind of assignment you may have heard about from last year's students: the Fundamentals notebook. These were a consistent student favorite last year, so I'm bringing them back! Future homework assignments will include a mix of narrative and Fundamentals tasks; this one is just Fundamentals.
- The Syllabus has been updated to reflect simplified logistics and grading; it should be much more clear now.

See you Monday!

PS - Here's an example of a very non-neural [AI to solve Wordle](https://aditya-sengupta.github.io/coding/2022/01/13/wordle.html). Neural nets are great tools for handling *perception* tasks, but not all tasks are perception tasks.

## Week 3: Data, Ethics Intro

Happy Saturday everyone!

We were trying to go too fast, so I delayed starting on Chapter 4 by a week. If you've already started on Chapter 4, that's great; it's a dense chapter, so more time on it will help.
Instead, this week we'll look more into data and also how we evaluate AI systems. See [this week's page](https://cs.calvin.edu/courses/cs/344/22sp/units/03models/) for more details.

At this point, everything from Week 1 should be done, plus Preparation 2 and Lab 2. **Reminder**: Preparation exercises and the quizzes are due the Monday night of the corresponding week. They close on Moodle a week later than that only to avoid having to track late submissions.

This week:

- Prep 3, including the quiz, is due Monday. It's substantially smaller than it used to be (reload the page if chapter 4 stuff still shows up).
- Homework 2 is due Tuesday. You may need to come to lab on your own time to finish it up.
- Discussion posts are due by class time on Wednesday (this had been incorrect on Moodle, sorry). **Come to class prepared to discuss an interesting point that someone else raised.**
- Our first **Reflection** is due on Wednesday.
- I'm considering having a check-in quiz this week; if so, that will be on your own time and probably open on Thursday.
- We'll work on Homework 3 on Friday.

I look forward to seeing everyone on Monday!

## Week 2: Data

Congratulations on making it through the first week of classes in yet another unusual semester. We covered a lot of ground in the first week! Just look at the [objectives](https://cs.calvin.edu/courses/cs/344/22sp/units/01introduction/) to jog your memory.

### Wrapping up Week 1

- Make sure you've done all of the following (check them off in Moodle when you have)
  - **welcome survey**
  - **Python warm-up quiz**
  - **Preparation 1** (reading and quiz)
  - **Discussion 1**
  - And make sure you've logged onto **Piazza** (just click the link on Moodle).
- Homework 1 is to finish Lab 1.
  - We encountered some difficulty with the Image Classifier part because of a bug in a library we're using. See the "Hotfix" instructions in the [lab description](https://cs.calvin.edu/courses/cs/344/22sp/units/01introduction/lab/) for what to do about this.
    - Even if it worked for you, still check for the temp folder.
  - We'll allow some of the time in Monday's lab to wrap up the Image Classifier part of Lab 1.
  - If you want to work on your own time, you can come into the lab; everything should work over Guacamole too, though availability is limited.
  - I've bumped the due date to Tuesday.
- We will not have a Reflection or Project Milestone for this week.

### Preparing for Week 2

In week 2 we will start considering what *data* you need to train models. You'll collect some image data yourself and train and evaluate a model. We'll also start looking at some of the ethics of collecting data for AI; we will return to this discussion throughout the semester.

- On **Monday** we will do Lab 2 (with a bit of time to finish the part of Lab 1 that is highly related), where we'll try out some variations on the image classifier and also look a bit at the data it's using.
  - Please read Chapter 2 and some of Chapter 3 in preparation. See Moodle for a reading quiz.
- On **Wednesday** we'll review what we've been studying in a lecture format.
- On **Friday** we'll wrap up what we didn't get to on Wednesday, planning to leave time to work on Homework 2 (training a classifier on your own images).

I’m here for you. We’re all here for each other. May our Lord give us all strength to persevere, joy in the journey, and love for each other along the way.
