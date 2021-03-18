# Goal

These notebooks will demonstrate proficiency in basic machine learning concepts and skills. Successful solutions will:

* Include code that successfully accomplishes the task.
    * It should generate the results when run fresh ("Restart and Run All")
    * It should have no extraneous code.
    * Format code clearly (consistent spacing, one idea per line, no overly long lines, etc.)
* Document each major step succinctly but clearly.
    * Use Markdown cells (with appropriate formatting and links) to describe the overall steps taken.
    * Use clear variable names, keyword arguments, and code comments to make the code easy to follow.
* Include responses to each of the analysis questions.
    * Add a Markdown cell for each question.
    * Add code cells as necessary to run computations that some questions may need.
    * "Extension" activities are optional but encouraged.
* Commit messages should document your process
    * Notebooks should not include names, but *commit messages should acknowledge collaborators*. 
    * In the last commit message, please include "this took me about ___ minutes".

We aim that each notebook will:

* Demonstrate a single concept
* Take less than 15 minutes to complete, if that concept is understood (if it's taking longer than 15 minutes, please let the instructor know so it can be simplified in the future)
* Take less than 5 minutes to run to completion
* Be a useful reference for how to perform that operation in the future

We also strive for the sequence to make sense, but make no promises.

# Index

* `000-train-basic-classifier`: Fine-tune a ResNet classifier on the Oxford pets dataset. (**corresponds to our Lab 1**)
* `001-adjust-hyperparameters-1`: Change some basic hyperparameters of notebook 000. (**corresponds to our Lab 1 extensions**)
* `002-diagnose-basic-classifier`: Plot a confusion matrix, find images that were misclassified. (**corresponds to our Lab 1 extensions**)
* `003-pets-dataloader`: Create data loaders for the Pets dataset using the mid-level `DataBlocks` API. (**corresponds an in-class activity**)
* `004-data-manip-jsonlines`: Use list and dict comprehensions to work with data stored as newline-delimited JSON. (**corresponds to our [week 3 conceptual review](https://cs.calvin.edu/courses/cs/344/ka37/slides/w3d1/w3d1-concepts.html#1)**)
* `005-image-ops`: Perform broadcast and reduction operations on a tensor representing a batch of color images. (**corresponds to an in-class activity**)
* `006-compute-gradient`: Compute the gradient of a function.
* `007-softmax`: Practice using the `softmax` function.
* `008-softmax-2`: More practice using the `softmax` function, and connect it with the `sigmoid` function.

Notebooks will be added throughout the semester.


# Errata

Updating notebooks after distribution is hard because merge conflicts are highly likely. Instead, errata are listed here:

* `000`
    * Skip the "How many dogs were there in the dataset? How many cats?" question.
    * Add `from fastbook import *` (or `from ipywidgets import widgets`) to be able to use `widgets.FileUpload()`.
