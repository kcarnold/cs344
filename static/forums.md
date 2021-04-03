---
title: "Forum posts"
---

## Week 9: NLP

Last week we saw how *embeddings* are a super-useful tool for letting your AI refer to individual things in the real world, like people, movies, and words. This week we'll look more at words, especially focusing on how we can analyze and predict *sequences* of words. We'll focus mostly on *what* we're asking our models to do (predict the next word, classify a sequence); next week we'll look at *how* models do that (RNNs, LSTMs, and Transformers).

-   **Reading**: By Wednesday, please have chapter 10 read in detail and chapter 12 skimmed. **Come to class with your questions about the reading**.

-   **Monday**: Your prof's PhD research work was about predictive text and what it does to people. I'll give a slightly shorter version of my defense talk.

-   **Wednesday**: Q&A about chapter 10.

-   **Friday**: Discussion about recommender systems! Reflection 8 due. (We skipped Reflection 7.)

For a lighter take on word embeddings and language modeling, try [this improv game](http://robotmindmeld.com/).

TODO:

*fundamentals notebook posted*

## Week 8: Collaborative Filtering

Our first few weeks focused on data, then we spent a few weeks on how models work in general; now it's time for applications! We'll start with recommendation systems, which have had a big impact on many of our lives. Since that's a kind of tabular data, we'll also discuss some of the classic approaches to machine learning on tabular data (decision trees, random forests, and other methods). This is the "bread and butter" of how many organizations use machine learning.

Next week we'll start with natural language processing---my personal favorite use of machine learning. We could spend a whole class on that, but I'll try to keep it to 2 weeks so we have time for some other topics: GANs, explainability and other human+model interaction concerns, and reinforcement learning (learning to act).

-   **Reading**: back to fastai for two more weeks. This week is [Lesson 7](https://course.fast.ai/videos/?lesson=7), which gets us through chapter 9.

    -   Instead of a reading quiz, I'll post some Fundamentals notebooks to help you practice some of the skills I think are most important from these chapters.

-   **Monday**: Lecture on recommender systems (collaborative filtering). (No lab, to take a break.)

-   **Wed**: Lecture on tabular data

-   **Fri**: Lab on Tabular Data and embeddings.

**Project proposals** have generally been looking good, though many could benefit from being more specific about what data and approach to try. Start with some existing example and build on it or adapt it. I hope to finish giving feedback on these today.

**Expectations**: I dropped a few things last week (e.g., Thursday quiz, more Fundamentals) for all of our sanity. Things to do this week:

-   Finish the reading

-   Finish Lab 4

-   A few Fundamentals notebooks (hopefully posted by Monday)

-   Quiz Thursday

-   Reflection due... how about Thursday or Friday? What do you think?

## Week 7

This week, we're reviewing and consolidating what we've learned about modeling and learning by gradient descent, and (if all goes well) applying it to a new task (recommending stuff to people).

-   **Reading**: as mentioned in class, we're taking a week off from the Fast.ai grind. Instead:

    -   If you didn't get to chapter 8 last week, get to it sometime this week.

    -   Have a leisurely look back at Chapter 7 (which we'd skipped); instead of trying to replicate it, just focus on the core insights:

        -   wisely subset your data

        -   learn how to decode complicated-sounding papers into simple ideas

        -   messiness in your data might actually be helpful (especially Mixup, Label Smoothing, and Test-Time Augmentation)

    -   There's a cumulative reading quiz on Moodle to remind you of a few key ideas. Some of it will be helpful to review before class on Monday.

-   Our discussion of Facial Recognition Data is on [Moodle](https://moodle.calvin.edu/mod/forum/view.php?id=1216990); please be prepared to share some highlights when we discuss this in class on Wednesday.

    -   I enjoyed watching Coded Bias on Thursday night! If you missed that and still want to watch, there's signs that it may be available for streaming on demand on PBS even after the Monday 10pm screening.

    -   IndieLens posted a [Discussion Guide](http://bit.ly/ILPOP-CODEDBIAS-Discussion-Guide) for the film. Please feel free to bring up any points or questions from there in our discussion, even if you didn't watch the film. The film has a pretty liberal slant, so I'd be particularly interested in conservative perspectives.

-   I made a [video walkthrough for Lab 3](https://www.youtube.com/playlist?list=PLYvyo-La3zBN8qoyCf3l0RRaopUa0KXPG). It was fun, good idea whoever that was who suggested it on Piazza.

-   By now you should have most of the Fundamentals notebooks submitted in Moodle. I'm gradually posting [solutions](https://github.com/kcarnold/cs344/tree/main/portfolio/fundamentals); I'll let you know when they're done. Also stay tuned for a few new notebooks this week.

**What's up this week?**

-   **Mon**: Probably a lab on Logistic Regression 3 ways, to level up and consolidate concepts of modeling and gradient descent, get briefly introduced to scikit-learn (more in chapter 9), and train our first neural net

-   **Wed**: Continue the discussion of Facial Recognition Data that we started on Moodle ([Facial Recognition (Structured Discussion 2)](/activities/discussion-2-facial-recognition)).

    -   Due: Project Proposal Drafts; Reflection 6

-   **Fri**: Collaborative Filtering (chapter 8)

See you on Monday!

## Week 6 mid-week

A few mid-week things:

First, I'm sorry for my harsh and insensitive comment during class today about those who didn't yet do the Lab 2 post-lab. Since students are asking for more clarity about expectations, clearly there is something lacking about my communication in that regard. But rather than seeking to understand the situation, I just expressed frustration about it. Please forgive me. And if this expectation wasn't clear to you, I would welcome any suggestions if you have them.

Reflection 5 is due today as usual. I've clarified the assignment for what is (not) expected about Lab 3. Also, although there are a few potential ways you can engage Context this week (including the project ideas forum, the current discussion forum, and replying in previous forums), it hasn't been as lively as usual. So you may choose to just leave Context blank this week; there's built-in allowance in our grading system for that. (Don't **forget your Reflection 4 updates** if you were meaning to come back and fill in some things.)

Next week's Context will be on facial recognition---in part because there's two screenings of Coded Bias happening. **The first one is tomorrow evening**---see the [discussion assignment](https://cs.calvin.edu/courses/cs/344/ka37/activities/discussion-2-facial-recognition/) for details.

Finally, I've posted submission assignments on Moodle for all the Fundamentals notebooks. Hopefully it should only take a few minutes to copy and paste the relevant URLs from github. I've set all of them to be "due" at the end of this week, which I think is a reasonable expectation but it's ok if you're still catching up on these. (And please let me know if they're taking much longer than 15 minutes each once you've understood the concept.)

## Week 6: Make it Train!

We've studied what data goes into a computer vision model, what output comes out and how that depends on the data, and the basic mechanics of how these kinds of models learn. Now we're going to hook it all together and learn how to get computer vision models to do what we want. After this, we'll look at different types of models (finally something other than a ResNet! and btw, what's a ResNet?), starting with collaborative filtering and then getting into natural language processing.

Please watch the Lesson 6 video and read the corresponding parts of the book (chapter 5 and 6 for now, chapter 8 by end of this week / beginning of next week). The video is long, but has some natural stopping points at chapter boundaries, so take breaks! (We're skipping Chapter 7, but it is a short read if you're interested.)

No reading quiz this week; instead, I've added some Fundamentals notebooks. Skip `004-data-manip-jsonlines` if you're pressed for time; `005-image-ops` is exactly what we did in class two weeks ago, and `006-compute-grad` is both PyTorch practice and what might be a fresh take on the linear regression that you learned in stats or high school. A few more are coming (I got in a fistfight with git). If you notice anything surprising about your repo, message me; I may have messed something up with git.

Remember the **Lab 2 post-lab**! You'll need this for Wednesday.

**Homework 2** is out! It's a chance to practice your tensor and gradient descent skills. You already know enough to make a first pass at it, and what you learn this week will help you make it better. Have a look and post your questions!

This week:

-   We did the first part of Lab 3 together on Friday, on **Monday** you'll have it to yourselves. You may also choose to use that time to work on Fundamentals notebooks (collaboration is welcome there too).

-   On **Wednesday** we'll debrief what we learned in Labs 2 and 3. I may ask you to write about something and/or explain something to a neighbor, so prepare what you'll need for that.

-   On **Friday** we'll do another application spotlight, finish anything we didn't get to on Wednesday, and do more lab work if time permits.

Reflection 5 assignment is coming, but it'll be mainly asking about your Lab 2 and 3 and Fundamentals notebooks.

For Context this week, some of you may choose to go back to the Week 4 forum (which was relatively quiet). Others may choose to start exchanging project ideas; I posted a Discussion forum for that.

## Week 5: How Models Learn; Getting Structured

This week we continue peeling the Machine Learning onion to ask: how can models respond to feedback from data in order to improve themselves? So we'll continue practicing with loss functions, backpropagation, and gradient descent. These are the core computational building blocks that have powered most of the advances in AI in the past decade, so your effort to get comfortable with these will pay off.

It seems that some people are finding it difficult to put in the self-directed effort that this class requires. Perhaps it's hard because other classes and responsibilities have firmer expectations and due dates. So a few changes are coming to make this class more structured:

-   We'll try making the reflections more objective and quantitative, starting with this week's [reflection](https://cs.calvin.edu/courses/cs/344/ka37/activities/reflection-4/) (see link). Since this is short notice and it'll probably take longer than usual, here's what we'll do: please submit an initial version of your reflection by Wednesday the 10th as usual with *something* filled out in each category, but leave placeholders as needed and revise as desired through the following Wednesday.

-   This week there's a reading assignment as usual, but there's no reading quiz. Instead, I'm asking you to actually submit all of your active reading notebooks so far in your Portfolio repos; see the `README` in the `readings` folder there. **Please Piazza or text me questions that come up when reading.**

These new elements may expose some ways that you let some things slide in this class. There is grace for you, and I have good reason to hope that you can catch up. If you're concerned about something, remember that it's literally my job to be here for you, so just **send me a quick Teams message** and we can chat.

In class this week (all HL102): **Monday** we'll finish Lab 2 together, **Wednesday** we'll go over some things from the reading (including the team-competition analogy that I previewed last week), and **Friday** we'll do more new lab work, probably working through the portfolio exercises I'll post this week.

## Week 4 Thursday

As discussed in class yesterday, the **portfolio repos are now live. Claim yours [here](https://classroom.github.com/a/t9EfXnfw)** (link is also on the class calendar). To start, go in "fundamentals", read the README, and get started soon; first few that are already up there should be pretty easy. I'll push new notebooks every few days.

Also, a reminder since we'd skipped a few weeks: this week's [**check-in quiz**](https://https//moodle.calvin.edu/mod/quiz/view.php?id=1208066) **has been posted**.

Finally, to reduce the variance in reflection grades, the next reflection will have a more objective rubric. Since it will require referring to the portfolio and quiz (as well as the hw1 revision), I'm **delaying the due date for the reflection** until next Wednesday (i.e., we're skipping a week for reflections).

(Sorry for the midweek updates this week; I aim for these to be once a week.)

## Week 4

Happy Saturday everyone! As I mentioned in class, I'm sorry I'm so behind in giving you feedback, and I'm sorry for not posting a check-in quiz in the usual time this week (I'll post one by Monday, which you can attempt whenever works for you).

**Where we are**: We started off treating everything as a black box (that block of code that fit the pet classifier) and we've been gradually peeling off layers of the onion:

-   First we explored *data*: how do we get data, in a useful form? How does the data affect what the model learns?

-   Now we're exploring the model's *outputs*: how do we measure what makes a good output, and how do we get the model to update itself to make its output better?

-   After this we'll peel off the covers on the model itself.

As we get into more technical depth, some people may find the material harder. Others may actually find this easier for various reasons, though. So help each other! -- ask questions, post hints, etc.

**This week**:

-   **Prep**:

    -   All of the Lesson 3 video and part of Chapter 4; see the Calendar and Reading Quiz for details.

    -   Also, start reading the [Facial Recognition discussion](https://cs.calvin.edu/courses/cs/344/ka37/activities/discussion-2-facial-recognition/) readings.

    -   Sometime this week, try to revise your Homework 1 in light of our discussions, both about decisions/data/experimentation/variation and about `DataLoader`s.

-   **Monday**: We'll be back in classroom, reviewing some of the reading together. Have your active reading notebooks handy and come with your questions.

-   **Wednesday**:

    -   We'll overflow from Monday as needed, then discuss some highlights from the facial recognition discussion.

    -   Another reflection due. Keep it brief, but do try to discuss your HW1 revision.

-   **Friday**: Lab (in the classroom space) on fitting models with gradient descent. If you're able to finish Chapter 4 reading by then, it'll be helpful; otherwise get it over the weekend.

## Week 3

Happy Saturday everyone! I'm enjoying reading your reflections and feedback about the class. I'm hearing from many people that they'd like some more discussion about technical concepts than they're getting from the reading and videos. In light of that, I'm making a few tweaks: this week we'll do a **lecture on Monday** instead of a lab.

In case you missed it, the reading assignment for this weekend is to **finish Chapter 3**. There's a [reading quiz](https://moodle.calvin.edu/mod/quiz/view.php?id=1203438) on Moodle as usual. Depending on your comfort, you may choose to answer the questions there in **this week's [discussion forum](https://moodle.calvin.edu/mod/forum/view.php?id=1203582)** instead.

Speaking of which, [last week's discussion forum](https://moodle.calvin.edu/mod/forum/view.php?id=1200372) was a lot of fun---I may have spent too much time responding to your posts! But only a few people posted any replies. So this week I'll encourage you to **reply to other students**.

Also, thanks to someone asking, I realized I'd forgotten to link to my **office hours** calendar. I added that on the syllabus. You can always message me directly. I'll probably ask you to post about our discussion on Piazza too, because they're usually good questions that others would benefit from hearing too.

This week's deadlines (all informal except the reflections, as usual, but the reflections should mention all of them):

-   **Monday**:

    -   Reading Quiz 3

    -   Homework 1 (we'll discuss some in class tomorrow)

-   **Wednesday**:

    -   Reflection 3.

    -   Reply in Week 2 Discussion Forum

-   **Thursday**: Quiz 4 (I'll try to post this early so you can reference it in the Reflection, but no promises.)

-   **Friday**:

    -   Post in Week 3 discussion.

    -   I recommend getting started on Chapter 4 because it's more technical than the first few

-   **next Monday**: Reading Quiz 4 (on chapter 4).
