---
title: "Week 3 Feedback"
date: 2022-01-27
type: Feedback
---

## General

- **Your notebooks should generally make sense when read top to bottom**. So:
  - Use Markdown cells to narrate what you're doing, and for narrative answers (like the rule for Jupyter cell output).
  - Intersperse Markdown cells with corresponding code, so you don't have to scroll up and down to match things up.
  - Write narrative answers in complete sentences, so you don't have to look at the questions to understand the answers.
    - I suggest one response per cell; start each response with a `**bold**` micro-heading, e.g., `**accuracy**: My classifier achieved accuracies between 75% and 100%.`
  - *Read it* before you submit it.
- We'll get to the low-level details that matter soon, so:
  - Don't worry that you don't know all the low-level details of how classifiers work, e.g., what all the numbers do. We're gradually peeling back layers over the next few weeks.
  - Don't worry about not knowing the low-level details of how to make fastai `DataLoaders`. That's not a learning objective of this class.
    - If you understand what the data loaders give you (batches of numbers paired with labels), you're set.
    - I've had to look up things in the tutorials and docs; see, e.g., this week's [feedback](../feedback/).

## Reflection

- Good questions about clarifying learning objectives. I've made some revisions accordingly.
- Needs to point to *evidence* of achievement; not just watching a lecture. (I replaced those with grades for homeworks this time.)
- Preparation assignments probably aren't strong enough evidence in general. Some exceptions were made this round.

## Grading

- The mapping of E/M/R/N to numbers is currently the Moodle default, but I may change that. In particular, "Meets expectations" grades currently show up as 75%. Even if I don't change the mapping, remember that Effort grades will average against Mastery grades (exact balance will be decided at end of semester).
- I set up Discussion 3 grades incorrectly; extra Effort points for everybody!
- The Moodle gradebook is better now, but still doesn't have all the details set up. If you're keeping up with things, don't worry about bad-looking course grades yet.

## Homework 1

- If you got feedback that doesn't make sense, it's probably because of the Moodle group issue. I think we've resolved that now.
- Be clear what the notebook output rule is: the value of the last expression in the cell. (Assignments aren't expressions.) It also shows the result of any `print()`, `display()`, or plotting.
- `show_batch` shows the *labels*, not the model's *predictions*. (for that you can `show_predictions`.)
- `dot_ops` should do elementwise operations; don't skip all the way to `w @ x` yet.
- Instead of `print()`ing outputs, leverage the notebook cell output rule: just put the variable name on the last line of the cell. e.g.:
    ```python
    resid = y_true - y_pred
    resid
    ```

## Homework 2

- The numerical value of the seed is unimportant and should not be reported in narrative. It just "throws the dice" again.
- *Sideways images*: fastai doesn't honor EXIF orientation flags. I submitted a [bug report](https://github.com/fastai/fastai/issues/3565).

Questions to reflect on:

- Burst photos: what effect would that have?
- Accuracy numbers: why might we see the exact same accuracy number from several trials?
- Include stats about your dataset, e.g., how many photos total?
- When you're using a smaller dataset, you're probably also using a smaller *validation* set. What does that do to your accuracy numbers?

### Choices

#### Data collection

- Which buildings?
- Inside or outside?
- Lighting and other environmental conditions
- Framing and photography
- Burst mode or not?
- How many images?

#### Modeling

- Resizing
- Augmentation
- Validation set size
- Model architecture
- Batch size
- Number of epochs to train
- How many trials to perform

#### Reporting

- How to translate accuracy numbers into an expected range


### Using a consistent validation set

Note: ideally you'd keep the *same* validation set and vary only the *training* set size. While you weren't expected to do that for this assignment, you could use an [`IndexSplitter`](https://docs.fast.ai/data.transforms.html#IndexSplitter) to put specific indices in the validation set.

Alternatively, we could first split off a *test* set, then pass all of the remaining data to the usual pipeline and adjust the validation percentage to adjust the training set size. Then, to evaluate the performance, we'd use `test_dl` to make a new `DataLoader` for the test set. See <https://docs.fast.ai/tutorial.pets.html#Adding-a-test-dataloader-for-inference> and [this forum post](https://forums.fast.ai/t/a-brief-guide-to-test-sets-in-v2-you-can-do-labelled-now-too/57054) for details. It would look something like:

```python
# Get the image files
image_files = get_image_files(path)

# Split off a test set
remaining_indices, test_indices = RandomSplitter(seed=42)(image_files)
test_files = image_files[test_indices]
remaining_files = image_files[remaining_indices]

# train as normal...

# Construct dataloader
test_dl = dataloaders.test_dl(test_files, with_labels=True)
ClassificationInterpretation.from_learner(learn, dl=test_dl)
```
