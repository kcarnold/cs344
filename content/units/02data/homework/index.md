---
title: "Homework 1: Train and evaluate a classifier on your own images"
draft: false
---

<!-- next year:

- Give students a clear outline of the code, and the structure of the responses (maybe even templates).
-->

## Goal

In this assignment, you will train and evaluate your own image classifier.

Completing this homework will give you practice

- Working with image datasets
- Training image classifiers
- Evaluating image classifiers
- Explaining your decisions and their possible consequences.

A famous image classification example is handwritten digits (called MNIST). For fun, we'll remix that idea and classify handwritten *letters*.
To keep it manageable, we'll just work with the first 3 letters (`a` through `c`).

Try to make the best model you can, under the following constraints:

1. No more than 100 training images.
2. No more than 5 minutes compute time (on a Kaggle, Colab, or lab machine GPU) to train a model.
3. Only use models that are already built into `fastai`.

## Instructions

**Do this assignment individually.** You may help each other, but *use Ed* so all benefit.

1. Collect your own set of images of handwritten letters, one letter per image. (Do this yourself, don't get it from the Internet.)
    - I've hacked together [this little webapp](https://codepen.io/kcarnold/full/poZpdqX) to let you sketch and share/save. It's clunky; improvements welcome!
    - You can also take pictures of sketches on paper, whiteboards, etc.
    - You can share images, but no single image should be used by more than 3 people.
    - You should have at least 10 images per letter.
    - To get started, you can use [this dataset](https://students.cs.calvin.edu/~ka37/example_letter_images.zip) I hacked together very quickly. But it's bad in various ways, so please collect your own.
2. Organize your dataset into a folder structure like `images/c/c01.png`.
    - Make an `images/README.txt` describing how you collected the images (e.g., whether you used a mouse/finger/pen or took pictures of paper/whiteboard/chalkboard/documents you found in the Meeter Center/...)
3. Train a classifier to indicate which letter is contained in the image.
4. Evaluate the accuracy of the classifier on the validation set.
    - How accurate is the classifier overall?
    - Which letter is it most successful at classifying? Give an example of a correctly classified image (show a specific image file and its classification).
    - What mistakes does it make most frequently? Give an example of a mistake (show a specific image file and its classification).
    - For the previous 3 questions, any ideas about *why*?
    - Suppose someone else gave you one of their images. How likely do you think your classifier would be to get it right? *report your answer in terms of a percentage, either overall or by letter*.
    - What choices did you have to make in the process of collecting data, processing it, and analyzing the results?
      - What are one or two choices that you could have made differently?
      - What do you expect would be different if you made that different choice?
5. Share the results (including code and answers to the above questions) in a Jupyter Notebook in your portfolio repo.
    - Submit a link to the notebook on Moodle.
    - **Don't** include your dataset. Instead, link to a ZIP (or `tgz`) file of your dataset. Then your notebook can start with `dataset_path = untar_data("https://your-url.../images.zip")`.
    - The easiest way to get a ZIP file with direct download is to put it your `public_html` folder on the lab computers. Then you can access it at `https://students.cs.calvin.edu/~username/filename.zip` (make sure you include the tilde.)

### Notes

- Include all the code needed to get *one* good accuracy number.
- *Don't* try to show the results of every model you trained, but *do* make a single cell to change numbers for any aspects you varied (e.g., the seed, how many images you used)
- *Don't* include extraneous code
- Use *Markdown* cells, not code comments, to report results.

### Tips

- `set_seed()` for reproducible results. Also, sort your image files, as we did in lab 1.
- Chapter 2 has some helpful low-level code for constructing an `ImageDataLoader`. Alternatively, use `ImageDataLoaders.from_path_func(..., label_func=parent_label, bs=2)`.)
- You can use the same techniques you used in Lab 2 to evaluate the classifier. See chapter 2 for examples of how to make a confusion matrix and plot top losses.
- You probably need to set the batch size to be smaller than the default (which is 64 images). Do this by passing `bs=2` as a keyword parameter to your `ImageDataLoader`.
- Visualize things:
  - What does one batch of your `DataLoader` look like?
  - What do the predictions of your classifier look like?
  - What does the confusion matrix look like?
  - *refer to Chapter 2 for the code for these*.
- Note that `from_name_func` fails silently with `parent_label`. (It should throw an exception. I submitted [this bug](https://github.com/fastai/fastai/issues/3559) to propose that it does.) Use `from_path_func` instead if you want to use that approach.

{{% details summary="ChatGPT's Solution" %}}

Caution: this is not too helpful. You might note that the imports are incorrect, the dataset loading is not quite correct, and you should probably `fine_tune` instead of `fit_one_cycle`. But the general outline is basically correct.

*What code do I need to train and evaluate a classifier on my own image dataset using fastai?*

Here is an example of code to train and evaluate a classifier on your own image dataset using fastai:

```python
from fastai import *
from fastai.vision import *

# set path to your image dataset
path = Path('path/to/your/image/dataset')

# create a databunch for your dataset
data = ImageDataBunch.from_folder(path, train='train', valid='val', size=224, bs=64)

# create a CNN model using resnet34 architecture
learn = cnn_learner(data, models.resnet34, metrics=accuracy)

# train the model using the fit_one_cycle method
learn.fit_one_cycle(4)

# evaluate the model using the validation set
interp = ClassificationInterpretation.from_learner(learn)
interp.plot_confusion_matrix()
```

Note: This is a basic example and you may need to adjust the code depending on your specific dataset and requirements. Also, make sure to have your dataset in the format of train and val folders containing images and their respective labels in the name of the folder.

**Another attempt**:

*How do I train and evaluate a classifier on my own image dataset using fastai?*

To train and evaluate a classifier on your own image dataset using fastai, you can follow these steps:

1.  Prepare your image dataset by organizing the images into train, validation, and test sets.
2.  Use the fastai library\'s `ImageDataBunch` class to create a DataBunch object from your dataset.
3.  Use the `create_cnn` or `create_unet` function to create a convolutional neural network (CNN) model.
4.  Train the model by calling the `fit_one_cycle` method on your DataBunch object and passing in the model.
5.  Evaluate the model\'s performance on the test set by calling the `learn.validate` method on your DataBunch object and passing in the model.
6.  You can also use the `learn.show_results` method to inspect the results visually.

Please note that fastai is a high-level wrapper around PyTorch, that makes it easy to train models using the latest deep learning techniques. To use it, you\'ll need to have PyTorch and fastai installed, you could use the command `!pip install fastai` to install fastai library.


{{% /details %}}