---
title: "Resources"
---

## [Glossary](../glossary/)

See link.

## fastai hotfixes

**Warning**: fastai drops incomplete batches in the training set, and `bs=1` would fail because of batch normalization. So use `bs = 2` for small data. (And more epochs.)

`plot_top_losses` is broken. Here's a monkey-patch; add this as a new code cell just after your fastai imports:

```python
def _plot_top_losses(self, k, largest=True, **kwargs):
    losses,idx = self.top_losses(k, largest)
    if not isinstance(self.inputs, tuple): self.inputs = (self.inputs,)
    if isinstance(self.inputs[0], Tensor): inps = tuple(o[idx] for o in self.inputs)
    else: inps = self.dl.create_batch(self.dl.before_batch([tuple(o[i] for o in self.inputs) for i in idx]))
    b = inps + tuple(o[idx] for o in (self.targs if is_listy(self.targs) else (self.targs,)))
    x,y,its = self.dl._pre_show_batch(b, max_n=k)
    b_out = inps + tuple(o[idx] for o in (self.decoded if is_listy(self.decoded) else (self.decoded,)))
    x1,y1,outs = self.dl._pre_show_batch(b_out, max_n=k)
    if its is not None:
        plot_top_losses(x, y, its, outs.itemgot(slice(len(inps), None)), self.preds[idx], losses,  **kwargs)
ClassificationInterpretation.plot_top_losses = _plot_top_losses
```


## Running Code

### Google Colab

In addition to the lab computers, you can run all the book's notebooks, and most of our labs and homeworks, on [Google Colab](https://colab.research.google.com/).
Links to open notebooks in Colab are given next to each reading link.

To install fastai, insert a cell at the top that contains:

```python
!pip install -Uq fastbook
from fastbook import *
```

(In the past it was also necessary to install `torchtext==0.8.1`. I suspect this is no longer required but I have not tested that.)

Tips and Notes:

- Under the *Runtime* menu, select **Change runtime type** and select **GPU**. Otherwise many things will run very slowly.
- If you open a notebook from GitHub, **any changes are not saved**! Make sure you select "*Copy to Drive*" on the toolbar if you want to save changes.
- [intro](https://colab.research.google.com/notebooks/intro.ipynb), [overview](https://colab.research.google.com/notebooks/basic_features_overview.ipynb)
- Press Ctrl-Shift-P to open the Command Palette. Lots of useful stuff there; try the "scratch code cell".
- Click the down arrow next to the RAM/Disk meter in the toolbar (where it used to say "Connect") and select "show executed code history".

### Jupyter Notebook

-   [Appendix](https://nbviewer.jupyter.org/github/fastai/fastbook/blob/master/app_jupyter.ipynb) from our book
-   some [tips and tricks](https://github.com/NirantK/best-of-jupyter)

## Materials

-   Our book: [Deep Learning for Coders](https://www.amazon.com/Deep-Learning-Coders-fastai-PyTorch/dp/1492045527/)
    -   [Source notebooks](https://github.com/fastai/fastbook), [Arnold's cleaned notebooks](https://github.com/kcarnold/fastbook/tree/master/clean). Suggestion: use [nbviewer](https://nbviewer.jupyter.org/) (or Colab) when reading the notebooks, rather than GitHub.
    -   fast.ai course [lesson videos](https://course.fast.ai/videos/)
-   Review the end-of-chapter questions at [aiquizzes](https://aiquizzes.com/)
-   Fast.ai community resources:
    -   the [Fast.ai forums](forums.fast.ai/) and [Discord](https://discord.com/invite/xnpeRdg)
    -   <https://www.cognitivefactory.fr/fastaidocs/>
    -   <https://walkwithfastai.com/>
-   Connect with a broader AI community at <https://twimlai.com/community/>
-   [MIT 6.S191 Introduction to Deep Learning](http://introtodeeplearning.com/)
-   Videos
    -   Fundamentals 009 (Linear Regression with `Learner`) [walkthrough](https://www.youtube.com/playlist?list=PLYvyo-La3zBOvTxiOhy4y6l65TxcUtCuS)
    -   [Lab 3 walkthrough](https://www.youtube.com/playlist?list=PLYvyo-La3zBN8qoyCf3l0RRaopUa0KXPG)
-   Helpful references
    -   git
        -   [GitHub's Git Handbook](https://guides.github.com/introduction/git-handbook/)
-   Training Tips
    -   <https://huggingface.co/blog/simple-considerations>
    -   <http://josh-tobin.com/assets/pdf/troubleshooting-deep-neural-networks-01-19.pdf>
    -   [A Recipe for Training Neural Networks](http://karpathy.github.io/2019/04/25/recipe/)
    -   <https://blog.floydhub.com/training-neural-nets-a-hackers-perspective/>
-   Tools
    -   [RunwayML](runwayml.com) (very high-level interface)
    -   Streamlit
    -   [WandB](https://wandb.ai/) (experiment tracking)

## Keeping up with AI

### Tech

-   [TWIML](https://twimlai.com/) -- podcast, blog
-   [Papers With Code](https://paperswithcode.com/) (sign up for the newsletter)
-   [Two Minute Papers](https://www.youtube.com/channel/UCbfYPyITQ-7l4upoX8nvctg) YouTube channel
-   [Morning Paper](https://blog.acolyer.org/) blog
-   [Arxiv-Sanity](http://www.arxiv-sanity.com/) (but still insane)
-   [distill.pub](https://distill.pub/)
-   [Harvard Data Science Review](https://hdsr.mitpress.mit.edu/)

### Ethics / Society

-   Fast.AI [Data Ethics course](https://ethics.fast.ai/)
-   [Montreal AI](https://montrealethics.ai/introduction-to-ethical-ai-principles/)
-   AI Now Institute
-   Data and Society
-   [The Oxford Handbook of Ethics of AI](https://global.oup.com/academic/product/the-oxford-handbook-of-ethics-of-ai-9780190067397?cc=ca&lang=en&#)
-   [AlgorithmWatch](https://algorithmwatch.org/en/)
-   [Harvard BKC](https://twitter.com/BKCHarvard)
-   ACM Conference on Fairness, Accountability, and Transparency ([FAccT](https://facctconference.org/))

### Videos / Podcasts / ... that others have liked

-   [3Blue1Brown Neural Network Videos](https://www.youtube.com/playlist?list=PLZHQObOWTQDNU6R1_67000Dx_ZCJB-3pi)
-   "Advice on getting started in deep learning" by Andrew Ng
