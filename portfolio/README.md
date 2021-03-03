# Goal

These notebooks will demonstrate proficiency in basic machine learning concepts and skills. They will develop throughout the semester.

We aim that each notebook will:

* Demonstrate a single concept
* Take less than 15 minutes to complete, if that concept is understood
* Take less than 5 minutes to run to completion
* Be a useful reference for how to perform that operation in the future.

We also strive for the sequence to make sense, but make no promises.

# Index

* `000-train-basic-classifier`: fine-tune a ResNet classifier on the Oxford pets dataset.
* `001-adjust-hyperparameters-1`: change some basic hyperparameters of notebook 000
* `002-diagnose-basic-classifier`: plot a confusion matrix, find images that were misclassified
* `003-pets-dataloader`: create data loaders for the Pets dataset using the mid-level `DataBlocks` API
* `004-jsonlines`: pull data from newline-delimited JSON (and use list and dict comprehensions to work with it)
* `005-image-ops`: perform broadcast and reduction operations on a tensor representing a batch of color images


Show one batch from each of the training and validation sets 

How many dogs were misclassified as cats? Vice versa? (Plot the confusion matrix.) 

By default ClassificationInterpretation.from_learner uses the validation set, and that's generally what you want.  

Why do you think the classification interpretation isn't instantaneous? What's it doing? 

Find some images that were misclassified. Were there any mislabeled images in the training set? 