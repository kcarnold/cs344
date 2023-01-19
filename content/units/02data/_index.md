---
title: "Unit 2: Data"
weight: 2
---

Students who complete this unit will demonstrate that they can:

- Describe the structure of the data provided as input to an image classifier in terms of batches and labels
- Contrast a training set and validation set; explain appropriate uses of both
- Adapt Python code to load data to be used by an image classifier.
- Implement basic numerical computing operations using PyTorch
- Implement numerical computing operations on multidimensional arrays using PyTorch

## Preparation

- Read {{< fastbook num="2" nbname="02_production.ipynb" >}}
    - *note: ignore the implementation details of `class DataLoaders`*; you only need to know that it has a  `.train` and a `.valid`, each of which are `DataLoader`s that turn filenames into batches of `(image, label)` pairs.
    - If you want to replicate the code, use duckduckgo (as the Unit 1 video does) instead of trying to get a Bing API key.
- Start reading {{< fastbook num="3" nbname="03_ethics.ipynb" >}}
    - *note*: you can spread out this reading between this week and next week.
- Watch {{< fastvideo num="2" >}}
- Complete the preparation quiz in Moodle.

Note: to get the Jupyter Notebook extensions that Jeremy discusses on the lab machines, run the following at a Terminal:

```sh
pip install jupyter_contrib_nbextensions
jupyter contrib nbextension install --user
```

<!-- Note for next year: 

- We need a diagram of an image tensor!
- Chapter 13, "A color picture is a rank-3 tensor" -- shows the decomposition of an image into its 3 color channels.

-->

### Optional Supplemental Material

Read the paper that introduced a well-known dataset: [ImageNet](https://ieeexplore.ieee.org/document/5206848), Microsoft [COCO](https://arxiv.org/abs/1405.0312v3), [MNIST](https://ieeexplore.ieee.org/document/726791), etc.

## Class

{{% details summary="Monday class" %}}

- [From Every Nation](https://calvin.edu/directory/publications/from-every-nation-fen) (Calvin College, 2004)
  - Scripture: [Revelation 7:9-10](https://www.biblegateway.com/passage/?search=Revelation+7%3A9-10&version=NIV&interface=print)
  - <details><summary>Vision (p.9)</summary>
    We envision a kingdom community in which cultural diversity is seen as normal; a Christian "family" that transcends ethnic, cultural, racial, and class boundaries: a communion of saints in which "each member should consider it his duty to use his gifts readily and cheerfully for the service and enrichment of the other members" (Lord's Day 21 of the Heidelberg Catechism); a community in which Reformed Christians from all of these groups see Calvin as their college. It is the biblical vision of Pentecost rather than the vision of Babel.</details>
  - Luxury of Remaining Neutral
  - Reminder: January Series talk today (["To Stick with Love: King’s Vision for Today’s Movement"](https://calvin.edu/calendar/event.html?id=bda267a6-fe09-4417-883d-5a9ad6426c8a))
- Examples of current racial justice concerns in AI
  - Facial Recognition, e.g., [Gender Shades](http://gendershades.org/overview.html)
  - Criminal Risk Assessment, e.g., [COMPAS](https://www.propublica.org/article/machine-bias-risk-assessments-in-criminal-sentencing)
- Class logistics
  - Guest lecture Wednesday
  - How does a college class look different in an AI world, changing rapidly, saturated with info? My emphasis: activities in community
  - How to find all the things: Units page on the class website
    - Make sure you've got the right year! (Google gets 2022 😢)
- Review [Lab 1](/units/01introduction/lab/)
  - How Fundamentals notebooks work
    - expanding on the best parts of last year
    - self-contained
      - Tasks (marked with "**Task**")
      - blank code cells (labeled `# your code here`)
    - emphasize process over product
    - check-in quizzes on Moodle (for prose)
  - getting set up on Kaggle
  - Jupyter Notebooks
    - notebook = prose + code + output
    - interfaces for notebooks: Jupyter (classic and Lab), VS Code, Kaggle, Google Colab (view-only: github, nbviewer)
    - cell types
      - Markdown ([GitHub Docs](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github), [spec](https://github.github.com/gfm/))
      - Code
        - Each code block feeds input to a hidden Python repl ("Shell" in Thonny)
          - Possible to run code out of order
          - Changing something doesn't make dependent code re-run!
        - Outputs: anything explicitly `display()`ed or `print()`ed or `plot()`ted---and the result of the *last expression*
  - Model training
    - Outline of notebooks
      1. Load the data
          1. Download the dataset.
          2. Get a list of filenames.
          3. Get a list of ground-truth labels.
          4. Set up the dataloaders (which handles train-test split, batching, and resizing)
      2. Train a model
          1. Get a foundation model (resnet18 in our case)
          2. Fine-tune it.
      3. Get the model's predictions on an image.
  - Evaluating a model
    - *Accuracy*: correct or incorrect?
    - *Loss*:
      - partial credit
      - when it's right, should be confident
      - when it's wrong, *shouldn't* be confident

{{% /details %}}

{{% details summary="Wednesday class" %}}

Guest lecture by Colin Davison. 

- The basic process he walked through is the same in essence as the image classification we started working on last week and are continuing with over the next few weeks.
- Here are some questions that you should ask yourself to check your understanding of the lecture (nothing formal to turn in yet, but these might show up on a future quiz, so think and discuss...):
  1. What about his task made it supervised learning?
  1. Why did he need to split the data? (What happened when he didn’t split it?)
  1. What did he need to do to the text to make it usable by his classifier? (bonus: in what sense was the input a “bag of words”)
  1. Can you give an example of a bigram? A unigram?
  1. How did he put a number on how well the classifier did? (bonus: what additional numbers did he show at the seminar? What insight did they provide?)
 
{{% /details %}}

<!-- 
Discussion Forum:

- who has data on you? how much? what do you feel about that?

Midterm project milestone: summarize existing results, generate questions -->
