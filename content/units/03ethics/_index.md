---
title: "Unit 3: Data and Ethics"
weight: 3
---

Students who complete this unit will demonstrate that they can:

- Identify ethical issues pertaining to the collection and use of data in AI systems
- Explain examples of social impacts of AI systems in wide use today
- Explain examples of biases in AI systems.
- Explain the importance of evaluating image classifiers on unseen data.

## Preparation

- Finish reading {{< fastbook num="3" nbname="03_ethics.ipynb" >}}. Complete the prep quiz in Moodle.
    - *Recommended*: watch {{< fastvideo num="9" >}} on this material.
- Next week's chapter is dense, so I highly recommend you get a head start on [Preparation 4](/units/04models/).

```goat
                                                heat  tolerant
                                                   |  |
                                 .---------.       v  v     .------------.
         "heat-tolerant icing"  | feature   |  [0, 1, 1, 0] |            |
raw data ---------------------> | extractor | ------------> | classifier | --> labels
                                |           |               |            |
                                 '---------'                .------------.

  classical ML:                   hard-coded                   learned
                                (domain expertise)

  deep learning:                  learned                      learned
                                (by backprop)
```


{{% details summary="Monday class" %}}

- Trying out [sli.do](https://app.sli.do/event/vut3KDz7n9bYukJffbriQb) (event code `2557005`)
  - Review quiz about last week's guest lecture:
    - What about Colin Davison's task made it "supervised learning"?
      - He gave the classifier examples of input-output pairs.
    - Why did he need to split his data?
      - So that he could evaluate how well the classifier would do on data it hadn't seen.
    - What did he need to do to the text to make it usable by his classifier?
      - He turned each sentence into a vector.
    - Which of the following is a bigram?
      - "bi" is a *character-level* bigram.
      - "a bigram" is a *word-level* bigram
    - We summarized the difference between classical ML and deep learning as whether the feature extractor is programmed by hand or learned. (The classifier is the same.)
- Introduce [Homework 1]({{< ref "/units/02data/homework" >}})
  - Goal: Train and evaluate a classifier on a dataset we collect ourselves
  - Next week: Kaggle competition!
- Introduce [Discussion 2]({{< ref "/units/02data/discussion" >}})
  - Practice and refine our answers to questions we might get asked.
  - For family gatherings, interviews, etc.
- Student questions.

{{% /details %}}

{{% details summary="Wednesday class" %}}

- Scripture: wisdom and imitation
- Ethical Reflection: popularity prediction scenario. Suppose our company wants to build a product that predicts how much engagement an image will get on social media.
  - What could possibly go wrong?
  - How might we raise questions or concerns winsomely?

{{% /details %}}
