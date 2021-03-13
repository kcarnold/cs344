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

Notebooks should not include names, but *commit messages should acknowledge collaborators*. "Extension" activities are optional but encouraged.

We aim that each notebook will:

* Demonstrate a single concept
* Take less than 15 minutes to complete, if that concept is understood
* Take less than 5 minutes to run to completion
* Be a useful reference for how to perform that operation in the future

We also strive for the sequence to make sense, but make no promises.

# Index

* `000-train-basic-classifier`: fine-tune a ResNet classifier on the Oxford pets dataset.
* `001-adjust-hyperparameters-1`: change some basic hyperparameters of notebook 000
* `002-diagnose-basic-classifier`: plot a confusion matrix, find images that were misclassified
* `003-pets-dataloader`: create data loaders for the Pets dataset using the mid-level `DataBlocks` API
* `004-data-manip-jsonlines`: use list and dict comprehensions to work with data stored as newline-delimited JSON
* `005-image-ops`: perform broadcast and reduction operations on a tensor representing a batch of color images
* `006-compute-gradient`: compute the gradient of a function

Notebooks will be added throughout the semester.
