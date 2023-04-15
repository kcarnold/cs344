---
title: "Announcements 23SP"
---

## Final Week

Congratulations on making it to the end of the semester!

### *Timeline* of the rest of the semester

- Monday, Wednesday, Thursday in lab. Schedule: 15-20 minute review, 30 min project work time
- Thursday: Midterm 2 released, due no later than final project presentations
- Thursday: last day to submit assignments and revisions
- Wednesday 4/26 9am: Final project presentations (in lab)

### Notes

- There's one [Final Homework](https://cs.calvin.edu/courses/cs/344/23sp/units/13misc/homework/) and one final [Discussion](https://cs.calvin.edu/courses/cs/344/23sp/units/13misc/discussion/). **Choose one or the other**.
- I've prepared a [Study Guide](https://calvincollege-my.sharepoint.com/:w:/g/personal/ka37_calvin_edu/EY6kpVqeGvRBoRrVUYxlzcoBNmUGn3l29Q-71E4xqwkUSw) for Midterm 2. 
- Each project team should meet with me at least once by next Friday (Reading Recess).
- Please complete your **Course Evaluations** using the link you received in your Calvin email. This course is being re-architected into 2 8-week courses next year; your feedback on what worked and what didn't will help us make sure that we don't inadvertently lose anything that was valuable to you.
- I keep forgetting to mention this in class: several common mistakes in Homework 3 were:
  - Not writing it like a report (what are you doing, why, what did you find, explain choices)
  - Leaving code that was just pedagogical from the labs, rather than writing the relevant code yourself
  - Forgetting to use the validation set!
  - Making some choices without explaining them, e.g., whether to have a bias term, or what changes to make in the tuned model
  - I've written an example of a [Homework 3 report](https://cs.calvin.edu/courses/cs/344/23sp/units/05learning/hw3_example.html) with just the structure that I'd suggest for a report like this.


### Final Project Presentations

- Each team will have 10 minutes to present their project, plus 3 minutes for questions.
- Presentations will be in lab on Wednesday 4/26 at 9am.
- Presentations should (I tab-completed this list from Copilot):
  - Describe the problem you're trying to solve
  - Describe the data and/or model you used
  - Describe the results you got (including a demo, if applicable)
  - Describe what you learned
  - Describe what you would do next


## Week 11

Sorry I didn't get a logistics email out last week. Between traveling, advising, and our midterm, I've been swamped. I recognize you all may have been swamped too, so if you need leniency on any due dates, please let me know.

This week:

- The take-home midterm should be returned to my office by Tuesday morning.
- No prep reading this week. If you have bandwidth, review previously posted material about the Transformer architecture.
- We'll be in *lab* on Monday, *classroom* on Wednesday, and *lab* on Friday

I'm sorry for the continued delay in getting project proposal feedback back to you, and the gradebook is still not accurate. I hope to catch up this week!

Since we're a bit lighter this week, take the opportunity to catch up on anything you've missed -- or revise a prior assignment for a better grade. Let me know if you choose to do that.

See you in lab on Monday!


## Week 9

Welcome to week 9! This week start to take off the covers of NLP models, just like we took off the covers of image models in the first half of the class. In particular, we'll get our first taste of the Transformer model, the most important model in machine learning today. For full disclosure, we won't get to a lot of new content this week because I'm traveling for part of the week, but it'll be a good chance to catch up and review.

This week:

- **Prep 9**. The assignment itself includes a "study guide" of some questions to help you focus your thinking. The Moodle check-in quiz is just one open-ended reflection, but please turn that in so I can give you credit for the reading. There are two options for the reading; the textbook is a new option and I'm curious what you think of it.
- **Lab 8** is due on Friday as usual. If you didn't get to do a peer feedback on Homework 3 during lab, you'll need to find someone to do that with this week.
- **Discussion for Week 8** -- this was going to be homework, but I've changed it into a discussion post because it should be more interesting that way. Due at the normal *homework* time, though (Friday end of day).

Reminders:

- [Mid-Semester Survey](https://forms.office.com/Pages/ResponsePage.aspx?id=uUljdRAGAUuReypKwQ35Rw0bDGF2ImlDp6FjI7QrXehUQzQ0RTM5MktKTVpCMDBYSjIwREFVS0k0SC4u) has gotten 10 responses so far. Everybody loves the labs so far, but other topics are more mixed, so it will be helpful to get your perspectives!
- **Project Proposals** were due yesterday, but many people haven't gotten them in yet. Please do so. Since so many initial proposals aren't in yet, I'm pushing back the deadline for revised proposals.
- Initial ChatGPT responses to exam questions were due yesterday also.
- The [*course outline*](https://cs.calvin.edu/courses/cs/344/23sp/outline/) has been updated with some material from this past week.

I'll be out of town on Friday. I might be able to hold a remote session, though, so don't cancel your plans quite yet.


## Week 8

Welcome back from Spring Break! We're starting the second half of the class(*), switching from the basics of deep learning to one of its most transformational applications: language models. Yup, this is where we learn about ChatGPT and its cousins. We'll start with a high-level view of how language modeling works, then dig into the strange yet strangely simple Transformer family of neural architectures. We'll also discuss image generation, human-AI interaction, transparency, and a few other topics in future weeks.

### Logistics

- **Make an OpenAI account** [here](platform.openai.com/). For Monday's class, it'll be helpful if a good fraction of the class has an account. It requires a phone number verification and maybe a credit card, but they provide a generous trial balance.
- Please fill out the [Mid-Semester Survey](https://forms.office.com/Pages/ResponsePage.aspx?id=uUljdRAGAUuReypKwQ35Rw0bDGF2ImlDp6FjI7QrXehUQzQ0RTM5MktKTVpCMDBYSjIwREFVS0k0SC4u) sometime this week.
- The next step in our alternative exam model is for you to quiz ChatGPT. I've put some preliminary instructions on the [Exam Instructions page](https://cs.calvin.edu/courses/cs/344/23sp/exams/). To debug this, let's have everyone try doing *one question* by the end of the week.
- Homework 3 was due last week, but turning in the Monday after Spring Break counts as only one day late.
  - Many students are plotting the loss for both the training and validation, which is a really good idea.
  - We will be doing *peer review* with the notebooks, so please try to finish soon!
- Project proposals are due this week. To keep it simple for everyone, especially since we haven't gotten to see much of NLP, all I'm asking you to do is choose which *initiative* to join (or, alternatively, propose your own independent project).
- Same schedule as usual (in lab on Friday).

### Notes

- I've found that some people aren't aware that I've been writing an [*outline of the course*](https://cs.calvin.edu/courses/cs/344/23sp/outline/) on the website. It's not complete; suggestions for additions welcome either by asking me or by just directly [editing it on GitHub](https://github.com/kcarnold/cs344/blob/main/content/outline.md).
- I've posted the embedding worksheet we annotated in class (where we worked out the backpropagation logic) on Moodle.
- I've caught up some on the prep quizzes on Moodle.
  - I grade Moodle quizzes by spot-check, so if the autograder made a mistake, please lmk.
  - Another consequence of spot-check grading is that I don't get to actually responding to the Q&As until it's past that part of the class. And responses get lost in Moodle anyway. So if there's something you actually want to discuss, please raise it in class or on Ed. There were lots of interesting issues raised in Chapter 3, for example--bring those up on Ed!

See you Monday!

(*) It's actually more than halfway through the semester, thanks to days off for Advising and Easter.

## Week 7 mid-week

- We had an excellent class meeting today.
  - If you didn't come, I highly recommend you work through the Embeddings Worksheet on your own: [docx](https://cs.calvin.edu/courses/cs/344/23sp/units/07embedding/embedding_worksheet.docx), [PDF](https://cs.calvin.edu/courses/cs/344/23sp/units/07embedding/embedding_worksheet.pdf)
  - Many students were still computing gradients like diligent calculus students, not like neural net coders. We'll review this on Friday.
  - As a warm-up, try writing the code that would compute the gradient as a function of `m1`, no PyTorch.
- Midterm collective exam questions
  - Second question should be done Friday.
  - There are lots of questions about loss function selection already. Review what's already there before you suggest your own.
  - Also first review. Either open a PR suggesting a specific fix, or open an Issue or Discussion with a link to what you're commenting on.
    - To link to a specific line in a file, go to that file, click the `<>` in the bar above the file contents, click the line number, then select "Reference in new issue" from the `...` menu.
    - Use `@` to reference the original author, so they can revise based on your feedback.
  - Many of the learning objectives don't actually match the questions. In some cases that's because I didn't accurately describe the relevant objective on the course website! Suggestions for improvement there count as a Review.
- Homework 3 due Friday also
  - Assignment document suggests a strategy.
  - Students today reported that starting with u05n3 was helpful.
- Lab 6 should be done by Friday also. Remember that the main point is the check-in quizzes on Moodle.
- Projects: share ideas and inspirations in the [Discussion Forum](https://moodle.calvin.edu/mod/forum/view.php?id=1575228). Goal: find partners.

See you Friday!

## Week 7

Welcome to unit 7, the week before Spring Break!

In this unit we introduce one of the most powerful concepts in machine learning: the *embedding*. It's the idea that instead of being explicitly given a representation for something, we *learn* it from data *based on the properties it should have*. We've actually already seen embeddings of various kinds (the inputs to the last layer of an image classifier for one), but we'll look at two examples where the embedding aspect is even clearer: movies and words.

News:

1. As usual, during/after the Lab I made some clarifications and improvements to the instructions. One that I'm particularly happy about this year is that I've added code to the NN Regression notebook that shows what *features* the model learned. Have a look at the [preview](https://cs.calvin.edu/courses/cs/344/23sp/fundamentals/u06n3-nn-regression.html) of that notebook.
2. I simplified Homework 3 a bit, to make "doing it the wrong way" an *optional* extension. I've also clarified the strategy suggestions.
3. After Spring Break we'll start on Transformers, which means we'll be using a new textbook. Unfortunately this one doesn't have a free online version. If cost is an issue, talk with me.
4. I recorded a video walking through backpropagation last year that you might find helpful. I had it buried in a private Teams folder, but I just put it up as a [playlist on YouTube](https://www.youtube.com/playlist?list=PLYvyo-La3zBMsd_9WAF7MrfjwmkxuXrTb).
5. In lieu of a normal Discussion this week, we get to start thinking about **project ideas**! I've put up a Forum on Moodle for this week if you'd like to pitch an idea and are looking for partners. We'll talk more about projects in class this week; here's the [overall description](https://cs.calvin.edu/courses/cs/344/23sp/project/).

Logistics:

1. Prep 7 is due on Monday as usual.
2. Also due Monday is for you to contribute the first of your Exam Questions; see the [Instructions](https://cs.calvin.edu/courses/cs/344/23sp/exams/).
2. Homework 3 is due on Friday.
3. No discussion this week either.
4. Lab 6 is due on Friday as usual.
5. If you've gotten behind in completing assignments, don't wait until Spring Break to start catching up. Remember our late policy: you can get full Outcome credit for late assignments, but you lose a Process point for each business day late. So getting behind will sting, but catching up is always worth it.
6. Back to normal schedule: Monday and Wednesday in classroom, Friday in lab.

See you Monday in class!


## Week 6: Recap and Regularization

Happy Saturday, Neural Network coders!

The next unit discusses state-of-the-art models (still focusing on computer vision). We’ll introduce or revisit tools that allow our models to achieve high performance, such as data augmentation and regularization. But we'll actually spend most of our time together getting more practice with how neural networks work from the ground up as we implement our own simple neural net image classifier from scratch (definitely something to mention in an interview!).

Logistics:

- Prep 6 for Monday (note that the quiz is always open through the end of the semester, unlimited attempts, but you must complete it by Monday to get Process credit.)
- We'll meet in the classroom on Monday to review some things, but we'll be in lab on Wednesday and Friday. There's lots of hands-on work to do! This should give you time to finish up Lab 5, which is due on Friday, and also start on Lab 6, which will be due next week as usual.
- In lieu of a Discussion this week, I'd like you to start thinking about your *exam questions*. I've drafted the logistics for this unconventional assessment method; have a look at the [website](https://cs.calvin.edu/courses/cs/344/23sp/exams/). I'll post a few example questions there soon.
- Homework 3 is due the Friday after this (right before Spring Break). It's a big one, so start early!

I've started working on making sure that the [Moodle Calendar](https://moodle.calvin.edu/calendar/view.php?view=month&course=58526) is up to date. I'll try to keep it that way, but if you notice something missing, please let me know.

## Week 5: Learning

Last week we studied the very basics of learning by gradient descent. We implemented one of the simplest possible models--linear regression--and saw how to fit it using gradient descent. This week we'll see how to fit more complex models: we'll change the loss function so that it can perform classification instead of regression, and we'll add a nonlinearity to the model so that it can fit more complex functions. We're well on our way to understanding how to build a neural network!

Logistics:

- Prep 5 should be done by Monday class as usual. (I figured out why some people were confused about the dates on Moodle; I've added separate assignments with the date marked explicitly to make that more clear.) We switched back to the fastai videos, but if you liked the Zero to Hero videos, the next one of those should be fine too.
- Homework 2 is due on Friday. (Homework 3 is already posted on the website, if you want to get a head start.)
- Discussion 2 revisions are due on Wednesday; see instructions on Moodle.
- Discussion 3 continues our theme of practicing how you'd answer questions that you might actually get as an AI expert. See instructions on Moodle.
- The two notebooks for Lab 4 are due on Friday.
- Since this week has Homework, Lab, and Discussion due, we'll skip the Study Quiz and Python Review Quiz this week.

Notes:

If last week's material was unclear for you, I recommend going over the Wednesday activity again; I've made some additions to it to help clarify some of the concepts. I also made some improvements to the Fundamentals notebooks to help explain things better, so if you're still having trouble with those, you might want to download the new versions. (The old version is just fine too.)

I'm working on clarifying the Moodle calendar and grading. You probably got a notification about grades for Labs 1 and 2. If you didn't realize that labs have the Moodle check-in quizzes, I'll allow grace for completing those through this week. The course grades in Moodle are meaningless right now, but I'll be updating them soon.

See you on Monday! As usual, we'll be in the classroom, reviewing last week's material and starting on this week's. Come with questions about the reading or video-watching!

## Week 4: Models

This week we're pulling off the covers to see how these machine learning models actually work. Hang on for the ride, and keep your favorite thing-explainer (ChatGPT, YouTube, etc.) close at hand.

- Prep 4 should be done by Monday class as usual. (I just discovered the date on Moodle was a week off, so the Calendar didn't show it.)
- Now that we've had a few weeks together, let's pick regular due dates that work well for everyone. Specifically, we need weekly dates for Homework, Lab, Discussions, and any weekly Quizzes. We also need to pick a few class meeting days for midterm exams. Please reply to this post on Ed: what would work well for you? What wouldn't?
- I had actually prepared a Fundamentals for this week, but didn't assign it because people asked for more time on Homework 1. But it's probably still good practice, and will help with Homework 2. Find it on the [All Fundamentals](https://cs.calvin.edu/courses/cs/344/23sp/all_fundamentals/) page.
- Homework 2 will be posted this week, due next week (on the day we decide that homework should be due). Here's the [draft](https://cs.calvin.edu/courses/cs/344/23sp/units/03ethics/homework/).
- There's another Study Quiz and Python Practice Quiz up on Moodle. These are for you. e.g., I added a question about random seeds after our discussion about that yesterday.

I forgot something about loss curves on Friday, when mentioning that training loss was higher than validation loss. Training loss gets computed *during training*, and *Dropout* is active during training. We'll talk more about that in a couple of weeks, but for now, the intuition is that the training process *intentionally handicaps the model* to avoid overfitting.

See you Monday! Remember to come with questions about the reading or video-watching.

## Week 2: Data

I'm excited to have you all in class. The semester start was a bit bumpy for various reasons, but I'm hoping we can settle into a rhythm soon.

### Wrapping up Week 1

Make sure you've done all of the following (check them off in Moodle when you have):

- **welcome survey**
- **Python warm-up quiz**
- **Preparation 1** (reading and quiz)
- **Discussion 1** (actually not due till this coming Wednesday)
- And make sure you've logged onto **Ed** (just click the link on Moodle).

I've set suggested due dates for everything in Moodle; we can continue to discuss the best policy here together. One issue is that since Moodle quizzes lock when they're closed, I'm using the "Expect Completion By" dates for those activities. Those should show up in your Moodle Calendar, but might not show up on the activity itself. I'm looking into this.

### Preparing for Week 2

In week 2 we will start considering what *data* you need to train models. You'll collect some image data yourself and train and evaluate a model. We'll also start looking at some of the ethics of collecting data for AI; we will return to this discussion throughout the semester.

- **Preparation 2** should be done by Monday class. Well, on a typical week it would be. This week is a bit special, see below (and Moodle wasn't configured correctly anyway), so I won't penalize late completions of the Prep reading/quiz this week.
- On **Monday** we'll **meet in the classroom** to review Week 1 (including Lab 1) and start to discuss Week 2.
  - You'll have until we start Lab 2 (i.e., Friday class) to actually finish Lab 1.
- On **Wednesday** we'll have a **guest lecture** from a faculty candidate. Your feedback on his teaching will be helpful in the hiring decision, so please come.
- On **Friday** we'll do Lab 2 on how to tweak and evaluate models, and starting to get into the details of what the data look like.

I'll post the following shortly; they won't be due till the following week:

- the first Review quiz
- another Python study quiz
- the first homework (training your own model)

Locations will be the same as Week 1: Monday and Wednesday are in the classroom (NH 253), Friday in the Gold lab.

I’m here for you. We’re all here for each other. May our Lord give us all strength to persevere, joy in the journey, and love for each other along the way.
