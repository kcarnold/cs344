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

You'll need to "Link to GitHub" (on the File menu)

## Jupyter Notebooks

In this section, we'll practice working with Jupyter notebooks. You may find these references helpful:

- [fast.ai Jupyter Notebook 101](https://nbviewer.org/github/fastai/course22/blob/master/01-jupyter-notebook-101.ipynb)
- The Help menu in Jupyter

On a **lab computer**, clone your Portfolio repo. The easiest way is to start VS Code, launch the command palette (Ctrl-Shift-P), and type Clone.

Get the following notebook. On a lab computer, right click the link (not the preview). For Kaggle, you'll Copy Link and then Import the notebook from that pasted link. There's a direct link to Colab.

{{% fundamentals name="Jupyter Notebook Warmup" nbname="u01n0-notebook-warmup.ipynb" %}}

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

**Save your work to your Portfolio**. On the lab machines, Save, Commit, and Push. On Kaggle or Colab, Save to GitHub.

## Image Classifier

In the next section, you'll work with the image classifier code from Chapter 1 of the textbook.

Although the original was famously short, it was inhospitably jam-packed. So I've taken the liberty to space things out a bit and split it into multiple cells.

In this section (and most future Labs), the tasks to do are inside the notebook itself. You'll find cells labeled **Task** and blank code chunks usually labeled `# your code here`. Follow the instructions top-to-bottom, then Save-Commit-Push when you're done.

{{% task %}}
Get this Fundamentals notebook:

> {{% fundamentals name="Train a simple image classifier" nbname="u01n1-train-clf.ipynb" %}}
{{% /task %}}

> Note: If you experience an "out of memory error":
> 
> 1. Check that you don't have another notebook already running (if you're not sure, log off and log back in).
> 2. "Restart and Run All" on the Kernel menu.


{{% task %}}
1. What is `path`? (Make a cell that displays its value.) Find the corresponding files on your computer. Describe how they are organized.
2. Run `images = get_image_files_sorted(path)`, then `first_img = images[0]`. Describe what `images` is a list of. And find the file corresponding to the first image. Is it a cat or a dog?
3. Run `is_cat(first_img.name)`. Describe what `is_cat` is and how it works.
4. Run `dls.train.show_batch()`. Describe what the text over each image indicates.
{{% /task %}}


> References:
> 
> - https://github.com/fastai/course22/blob/master/00-is-it-a-bird-creating-a-model-from-your-own-data.ipynb
> - https://github.com/fastai/course22/blob/master/02-saving-a-basic-fastai-model.ipynb

