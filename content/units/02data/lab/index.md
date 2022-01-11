---
title: 'Lab 2: Basic image classifier'
author: "Ken Arnold"
date: 2022-01-17
summary: 'Try out some variations on a classification model.'
draft: true
---

## Getting Started

Get the template TODO

## Instructions

(the text below duplicates the instructions in the template.)

We're going to start with the cat-vs-dog classifier that we built in chapter 1 and try changing a few things.

Before we get started, discuss with your partner how you think each one of these changes would change the performance of the classifier. Write your answers below.

> Train the model on less data

*your answer here*

> Use an architecture with fewer layers

*your answer here*

> Have it predict the breed of pet instead of just cat/dog.

*your answer here*

Now let's start. You might see a task like this:

> Train a classifier to distinguish between images of cats and dogs.
> 
> * Use the [Oxford-IIIT Pet Dataset](http://www.robots.ox.ac.uk/~vgg/data/pets/).
> * Fine-tune a 34-layer ResNet model for 1 epoch
> * Report the error rate on a held-out validation set of 20% of the data.

The first code block from chapter 1 accomplishes this task. Retype or copy-paste it here, but add some comments if you haven't already:


```python
from fastai.vision.all import *
path = untar_data(URLs.PETS)/'images'

# Your code here. Include a comment indicating what each line does.
```

**Question**: Use `learn.fine_tune?` to bring up the documentation. Based on that:

1. What does the "1" parameter to `fine_tune` do?
2. What do you think the two different progress bars probably represent?

**Question**: Give an example filename for one of the images in the dataset. Does the dataset label it as a cat or a dog? How can you tell?


```python
# your code here
```

**Question**: How many images were in the training set? Validation set? (How can you easily tell?)


```python
# your code here
```

*Your response here. You may need to write a tiny bit of code.*

**Question**: About how many of those images were classified correctly?

*Your response here.*



**Question**: What is the output of the model?

1. whether the image contains one cat (`True`) or many cats (`False`)
2. whether the image contains a cat (`True`) or a dog (`False`)
3. what breed of cat or dog is in the image (`British_Shorthair`, `chihuahua`, etc.)
4. the name of the animal in the image (`Fido`, `Whiskers`, etc.)

**Exercise**: Use an 18-layer ResNet instead (`resnet18`). How does the error rate compare?


```python
# yor code here
```

Consider the We just changed the *architecture*, but not anything else. We could also change:

* The *data*: give it different images (or more or fewer of the same images)
* The *task*: have it try to predict something different
* The *hyperparameters*: train it a different way, e.g., let it train longer (more epochs) or adjust itself faster (higher learning rate)

Let's change the data.

**Exercise**: Hold out 90% (instead of 20%) of the data for validation. (How many images will the training set have now?) How does the accuracy compare?

(*Think*: Should you use the resnet18 or the resnet34 model here? What are the pros and cons?)


```python
# your code here
```

**Question**: How might we change the *task*? That is, what different things could we have the model output?

Think about that for a moment.

.

.

.

The model's outputs are (generally) determined by what sort of *labels* we have for our data. Let's have a look at what the files are named. We could open up our data directory, or we could look in Python.


```python
[o.name for o in get_image_files(path)][:10] # show only the first 10
```




    ['scottish_terrier_29.jpg',
     'pug_36.jpg',
     'basset_hound_189.jpg',
     'boxer_168.jpg',
     'pomeranian_86.jpg',
     'pomeranian_9.jpg',
     'boxer_15.jpg',
     'Abyssinian_123.jpg',
     'Siamese_171.jpg',
     'samoyed_20.jpg']




```python
# Aside: fastai added a nice trick that makes this easy:
get_image_files(path).attrgot('name')
```




    (#7390) ['scottish_terrier_29.jpg','pug_36.jpg','basset_hound_189.jpg','boxer_168.jpg','pomeranian_86.jpg','pomeranian_9.jpg','boxer_15.jpg','Abyssinian_123.jpg','Siamese_171.jpg','samoyed_20.jpg'...]



So it looks like we should be able to get the *breed* pretty easily. All we need to do is strip off everything after the last underscore. (Is this exercise familiar?)

These names are passed to the `name_func`. So all we need to do is strip off the number and file extension at the end to get the breed.

**Exercise**: Write a function called `get_breed` that takes a string and strips off everything after the last underscore.


```python
# your code here
```

Now let's test that function.


```python
# When a Python expression gets complicated, I like to spread it onto multiple lines.
# Often an expression is already inside some parentheses so you can just press Enter,
# but for "top-level" expressions we need this trick of surrounding the whole thing in parens.
# Aside from the attrot and map, this is just standard Python here, no special magic.
(
    get_image_files(path)
    .attrgot('name')
    .map(get_breed)
)
```

Let's check how many of each breed we have.


```python
Counter(
    get_image_files(path)
    .attrgot('name')
    .map(get_breed)
)
```




    Counter({'Ragdoll': 200,
             'newfoundland': 200,
             'pomeranian': 200,
             'Bengal': 200,
             'Russian_Blue': 200,
             'samoyed': 200,
             'British_Shorthair': 200,
             'german_shorthaired': 200,
             'english_cocker_spaniel': 200,
             'Egyptian_Mau': 200,
             'keeshond': 200,
             'Maine_Coon': 200,
             'staffordshire_bull_terrier': 191,
             'american_pit_bull_terrier': 200,
             'Siamese': 200,
             'Persian': 200,
             'Sphynx': 200,
             'Abyssinian': 200,
             'basset_hound': 200,
             'beagle': 200,
             'great_pyrenees': 200,
             'american_bulldog': 200,
             'havanese': 200,
             'chihuahua': 200,
             'Bombay': 200,
             'leonberger': 200,
             'saint_bernard': 200,
             'japanese_chin': 200,
             'wheaten_terrier': 200,
             'miniature_pinscher': 200,
             'pug': 200,
             'boxer': 200,
             'yorkshire_terrier': 200,
             'english_setter': 200,
             'Birman': 200,
             'shiba_inu': 200,
             'scottish_terrier': 199})



Now, let's change the model to output the breed instead of whether or not the thing is a cat.

**Predict**: Will the accuracy number go up or down? Why?

**Exercise**: Go back to the initial setup (ResNet-34 model and full dataset), but instead of predicting cat vs dog, now predict breed.


```python
# your code here
```

**Reflect**: What accuracy do you get with this classifier? Is it better or worse? How can you tell?



# Open-ended!

If you got through that quickly, now try one or two more experiments of your own choice. For example, you might try changing a hyperparameter (epochs, learning rate, ...), try a different dataset size, try different random seeds, ...

# Summarize

1. Write a short summary of the results of all of the experiments you performed in this lab.
2. Reflect on how confident you are that each of those comparisons didn't just happen by chance. Also reflect on which of the results would be likely to generalize to other tasks.

# Wrap-up

* Make sure you Save this notebook.
* From the Kernel menu, select "Restart and Run All". This will take a few minutes, but will ensure that all of your code still runs. Double-check that your results still make sense.
* Commit and push. Check that your notebook is visible on GitHub.



**Before you leave the lab**, be kind and reboot the machines.
