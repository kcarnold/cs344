---
title: 'Lab 1: Warmup'
---

## Objectives

- Use a Jupyter notebook to run Python code
- Start to uncover how the fast.ai image classifier training pipeline works

## Step 1: Create your portfolio repo

Go to [this GitHub Classroom link](https://classroom.github.com/a/n7uoibsq) and follow the instructions.

> We're only using GitHub Classroom to get you set up with a repo quickly. You don't need to save the classroom link, just your repo.

### Step 2: Setup your Environment

You have a choice between several different ways to run your code

1. Use the lab computers. Pro: all the software is installed; you can use nice tools like VS Code. Con: you need to be physically in the lab. (Guacamole remote access is limited and doesn't have good GPUs.)
2. Use a cloud provider, like Kaggle or Google Colab. Pro: can run things anywhere, with decent GPUs. Con: availability may be limited if servers are busy; Git integration is not as refined.
3. Set things up on your laptop. Some things might be quite slow if you don't have a GPU configured. But you'll be able to use your own filesystem, and you'll have everything with you when you come to class.

#### Setup on Lab Computers

1. Boot the computer to Linux and log in.
2. Open a Terminal (main menu in top-left, start typing "term" and it should show up)
3. Practice using tab-complete: type `/home/cs/344/set` and press the Tab key. You should get `/home/cs/344/setup-cs344.sh`. Run that script.
4. Log off and log back in.

#### Setup on Kaggle or Colab

See <https://course.fast.ai/Lessons/lesson1.html#how-to-complete-lesson-1>.

You'll need to "Link to GitHub" (on the File menu). When you do so, make sure that you allow the Colab or Kaggle app to access the `Calvin-CS344` organization:

![](data:image/png;base64,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)

(If you don't see this option, check for an email from GitHub inviting you to join the organization.)

If you don't get a prompt for this as part of the linking process, go to <https://github.com/settings/applications> and Grant the access there.

If you get an `ImportError`, add a code chunk at the top of your notebook containing:

```python
try:
    import fastai
except ImportError:
    !pip install -Uqq fastai
```

## Step 2: Jupyter Notebooks

In this section, we'll practice working with Jupyter notebooks. You may find these references helpful:

- [fast.ai Jupyter Notebook 101](https://nbviewer.org/github/fastai/course22/blob/master/01-jupyter-notebook-101.ipynb)
- The Help menu in Jupyter

On a **lab computer**, clone your Portfolio repo. The easiest way is to start VS Code, launch the command palette (Ctrl-Shift-P), and type Clone.

{{% task %}}
Get the following notebook. On a lab computer, download the link (not the preview). For Kaggle, right-click and select Copy Link, then create a new Kaggle notebook and select Import from the File menu, then paste the link in the "Link" tab. For Colab, click the Colab link.

{{% fundamentals name="Jupyter Notebook Warmup" nbname="u01n0-notebook-warmup.ipynb" %}}
{{% /task %}}

You can run your notebook code within VS Code, or if you prefer a simpler interface, you can use Jupyter. You can start the Jupyter Notebook server either by finding it on the main menu
(start typing "jup" and it should come right up) or running `jupyter notebook`
in a Terminal window.

Run the Environment Check cells by selecting the first one and pressing Shift-Enter once for each cell. Stop when you get to "Jupyter Notebooks". A number will appear next to each of the code cells when they have run successfully.

{{% task %}}
Add a code cell that computes 1+1. Check the output.
{{% /task %}}

**Note carefully** the difference between **Command mode** and **Edit mode**. (see Help->Keyboard shortcuts).

{{% task %}}
Add a Markdown cell that looks like this (you may need to refer to Help->Markdown)

> Here is some Markdown formatting:
> 
> - This is **bold**.
> - This *is* italic.
> - This is a [link to Calvin's website](https://calvin.edu).

"Run" the cell to ensure that it gets formatted correctly. Check that the website link opens correctly.
{{% /task %}}

I highly encourage you to get comfortable with keyboard shortcuts for the following operations:

- Switch between edit and command mode.
- Insert a cell above or below
- Change a cell to code / Markdown
- Run the current cell (with or without selecting the cell below)

{{% task %}}
Suppose a cell has multiple expressions in it, like this:

```python
x = 1.0
x * 2
print("Something")
x = x * 2
x * 2
```

Which one gets displayed? Can you figure out the general rule for what output gets displayed from a notebook cell?
{{% /task %}}

When you're done:

{{% task %}}
1. Commit your work to your Portfolio repo as `/lab/u01n0-notebook-warmup.ipynb`. (On the lab machines, Save, Commit, and Push. On Kaggle or Colab, use Save to GitHub.)
2. Complete the short check-in quiz on Moodle.
{{% /task %}}

## Image Classifier

In the next section, you'll work with the image classifier code from Chapter 1 of the textbook.

Although the original was famously short, it was inhospitably jam-packed. So I've taken the liberty to space things out a bit and split it into multiple cells.

In this section (and most future Labs), the tasks to do are inside the notebook itself. You'll find cells labeled **Task** and blank code chunks usually labeled `# your code here`. Follow the instructions top-to-bottom, then Save-Commit-Push when you're done.

{{% task %}}
1. Get this Fundamentals notebook: {{% fundamentals name="Train a simple image classifier" nbname="u01n1-train-clf.ipynb" %}}
2. Work through the instructions. Ask questions, help others, etc.
3. Commit the result to your Portfolio repo as `/lab/u01n1-train-clf.ipynb`.
4. Complete the short check-in quiz on Moodle.
{{% /task %}}

> Note: If you experience an "out of memory error":
> 
> 1. Check that you don't have another notebook already running (if you're not sure, log off and log back in).
> 2. "Restart and Run All" on the Kernel menu.

You may find the following to be helpful references:

- https://github.com/fastai/course22/blob/master/00-is-it-a-bird-creating-a-model-from-your-own-data.ipynb
- https://github.com/fastai/course22/blob/master/02-saving-a-basic-fastai-model.ipynb
