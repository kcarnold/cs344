---
title: "Announcements 23SP"
---

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
