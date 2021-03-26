---
title: 'Lab 4: Nonlinear Regression'
author: Ken Arnold
date: '2021-03-26'
slug: lab-4-nonlinear-regression
categories: []
tags: []
subtitle: ''
summary: ''
authors: []
lastmod: '2021-03-26'
featured: no
dates:
  start: '2021-03-26'
image:
  caption: ''
  focal_point: ''
  preview_only: no
projects: []
---



The following template is provided in your Portfolio repositories under [`narrative/lab04-nn-regression.ipynb`](https://github.com/kcarnold/cs344/tree/main/portfolio/narrative/lab04-nn-regression.ipynb)

# Lab 4: Nonlinear Regression

Task: Use `nn.Sequential` to add layers to a model; use a nonlinearity between layers to increase the model's capacity.

## Setup

```python
from fastai.vision.all import *
```

This function will make a `DataLoaders` object out of an arary dataset.

```python
def make_dataloaders(x, y_true, splitter, batch_size):
    data = L(zip(x, y_true))
    train_indices, valid_indices = splitter(data)
    return DataLoaders(
        DataLoader(data[train_indices], batch_size=batch_size, shuffle=True),
        DataLoader(data[valid_indices], batch_size=batch_size)
    )   
```

Here are utility functions to plot the first axis of a dataset and a model's predictions.

```python
def plot_data(x, y): plt.scatter(x[:, 0], y[:, 0], s=.5, color='#bbbbbb')
def plot_model(x, model):
    x = x.sort(dim=0).values
    y_pred = model(x).detach()
    plt.plot(x[:, 0], y_pred[:, 0], 'r')
```

The following `Callback` can be added to your `Learner` to plot the data and model after each epoch:

```
learner = Learner(
    ...
    cbs=[ShowPredictions(), ShowGraphCallback()],
    ...
```

```python
# Inspired by https://gist.github.com/oguiza/c7559da6de0e036f01d7dee15e2f15e4
class ShowPredictions(Callback):
    def __init__(self): self.graph_fig = None # keep a reference to a figure object to update
    def before_fit(self):
        self.run = not hasattr(self.learn, 'lr_finder') and not hasattr(self, 'gather_preds')
    def after_fit(self): plt.close(self.graph_fig)
    def after_epoch(self):
        if self.graph_fig is None:
            self.graph_fig, self.graph_ax = plt.subplots(1)
            self.graph_out = display(self.graph_ax.figure, display_id=True)
        plt.sca(self.graph_ax)
        self.graph_ax.clear()
        # Plot code. Replace this if needed:
        plot_data(x, y_true)
        plot_model(x, model)
        # Update the graph.
        self.graph_out.update(self.graph_ax.figure)

```

## Task

Most applications of neural net models work in very high dimensions (e.g., each individual pixel in an image!) so it's hard to visualize what the model is actually learning. Here, we'll revisit the simple linear model that we looked at in Fundamentals `006` and `009`, which learned to predict a single continuous outcome variable `y` from a single continuous input feature `x`. So we can visualize the network's behavior just like any other univariate function: by plotting y vs x.

But this time the data isn't just a straight line; it's a fancy function of `x`.

```python
num_points = 5000

set_seed(40)
x = torch.rand(num_points, 1)
noise = torch.rand_like(x) * 1.
y_true = .5 * (x*6).sin() + x + (x - .75) * noise
# standardize y, just to make it well behaved.
y_true -= y_true.mean()
y_true /= y_true.std()

plot_data(x, y_true)
```

    
![png](lab04-nn-regression_files/lab04-nn-regression_11_0.png)
    


In `006` and `009`, we dealt with models that could only ever make straight lines. They couldn't even make a curve like `3 * x**2 + 2*x + 1`, yet alone that one!

But you may remember from your math or stats studies that a curve like that is actually linear if you transform your data, e.g., using `z = [x, x**2]` as the input; then the model is `3 * z[1] + 2 * z[0] + 1`, which is linear in `z`.

So if we transform our data before giving it to the linear model, we can actually get interesting functions from a linear model. But how do we transform the data?

The classic approach is to specify what transformation to make. e.g., in *polynomial regression* we put in a bunch of powers of `x` (`x**2`, `x**3`, ..., `x**10`, ...), but that gets numerically unstable with high powers. There are other "basis functions" that are better behaved, like *splines*.

But neural nets take a different approach: they *learn* the transformation based on what is needed to accomplish its objective.

**Instructions**:

1. **Fit a line to this data** (minimizing the MSE). Evaluate the MSE. By eye, how well does it fit?
2. **Add a layer**: Use `nn.Sequential` to put two `nn.Linear` layers back to back. Use 500 dimensions as the hidden dimension (the `out_features` of the first and the `in_features` of the second). Evaluate the MSE. How well does it fit?
3. **Add a nonlinearity**: Add a `nn.ReLU` between the two linear layers. Evaluate the MSE. How well does it fit?

Details and tips are given inline below.

## Solution

**Make a `DataLoaders` for this data**. This step has been done for you. 

We increased the dataset size and the batch size to make the learning better-behaved. Once you get this to work, you might see if you can deal with a smaller batch size or less data overall.

```python
splitter = RandomSplitter(valid_pct=0.2, seed=42)
batch_size = 100
dataloaders = make_dataloaders(x, y_true, splitter, batch_size=batch_size)
```

### Step 1: Fit a Line

**Fit a line to this data (minimizing the MSE).**

* Use a `nn.Linear` module as your `model`
* Use `Learner` with `opt_func=SGD`, as you did in `009`.
* Pass `cbs=[ShowPredictions(), ShowGraphCallback()]` to the `Learner` to show the training progress.

Tune the learning rate and number of epochs until you reliably get an MSE below 0.76.

```python
# To determine the ideal MSE of a linear model, one approach is:
# from sklearn.linear_model import LinearRegression
# from sklearn.metrics import mean_squared_error
# mean_squared_error(
#     to_np(y_true),
#     LinearRegression().fit(x, y_true).predict(to_np(x))
# )
```

    0.7543805

```python
# your code here
```


<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: left;">
      <th>epoch</th>
      <th>train_loss</th>
      <th>valid_loss</th>
      <th>mae</th>
      <th>time</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>0</td>
      <td>0.950252</td>
      <td>0.885827</td>
      <td>0.719921</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>1</td>
      <td>0.859075</td>
      <td>0.808779</td>
      <td>0.712994</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>2</td>
      <td>0.807587</td>
      <td>0.781937</td>
      <td>0.713865</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>3</td>
      <td>0.783546</td>
      <td>0.768974</td>
      <td>0.715225</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>4</td>
      <td>0.768208</td>
      <td>0.763778</td>
      <td>0.716662</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>5</td>
      <td>0.760159</td>
      <td>0.762300</td>
      <td>0.718045</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>6</td>
      <td>0.753892</td>
      <td>0.761404</td>
      <td>0.719000</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>7</td>
      <td>0.758386</td>
      <td>0.763348</td>
      <td>0.720821</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>8</td>
      <td>0.751313</td>
      <td>0.760574</td>
      <td>0.719598</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>9</td>
      <td>0.748924</td>
      <td>0.760591</td>
      <td>0.719648</td>
      <td>00:00</td>
    </tr>
  </tbody>
</table>

    
![png](lab04-nn-regression_files/lab04-nn-regression_19_1.png)
    

    
![png](lab04-nn-regression_files/lab04-nn-regression_19_2.png)
    


Evaluate the MSE. By eye, how well does it fit?

*Your narrative response here*

### Step 2: Add a Layer

**Use `nn.Sequential` to put two `nn.Linear` layers back to back.**

Use 500 dimensions as the hidden dimension (the `out_features` of the first and the `in_features` of the second).

You may notice that the training is much less stable, and is rather sensitive to initializations (run the same thing multiple times and see that it will sometimes converge much better than other times). To improve training, try the following:

* Instead of `learner.fit`, use `learner.fit_one_cycle`. This starts the learning rate low, gradually ramps it up, then ramps it back down. It also enables *momentum*, which tends to make gradient descent both faster and more stable. **Can `fit_one_cycle` handle a larger learning rate (`lr_max=XXX`) than `fit` (`lr=XXX`)?**
* Instead of `opt_func=SGD`, omit the `opt_func` parameter so it uses the default "Adam" optimizer. Adam adapts the effective learning rate for every parameter based on how big its gradients have been recently. As Sebastian Ruder [puts it](https://ruder.io/optimizing-gradient-descent/index.html#adam): "Whereas momentum can be seen as a ball running down a slope, Adam behaves like a heavy ball with friction, which thus prefers flat minima in the error surface." **Does changing to Adam have much effect here?**

```python
model = nn.Sequential(
    ...
    ...
)
...
```


<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: left;">
      <th>epoch</th>
      <th>train_loss</th>
      <th>valid_loss</th>
      <th>mae</th>
      <th>time</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>0</td>
      <td>0.920632</td>
      <td>0.789066</td>
      <td>0.750009</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>1</td>
      <td>0.825186</td>
      <td>0.832955</td>
      <td>0.750558</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>2</td>
      <td>0.965909</td>
      <td>1.005041</td>
      <td>0.817890</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>3</td>
      <td>0.863089</td>
      <td>0.779145</td>
      <td>0.721426</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>4</td>
      <td>0.829559</td>
      <td>0.824151</td>
      <td>0.726931</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>5</td>
      <td>0.809385</td>
      <td>0.768478</td>
      <td>0.728267</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>6</td>
      <td>0.801617</td>
      <td>0.829258</td>
      <td>0.718980</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>7</td>
      <td>0.783818</td>
      <td>0.797611</td>
      <td>0.752593</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>8</td>
      <td>0.784719</td>
      <td>0.797029</td>
      <td>0.719279</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>9</td>
      <td>0.795053</td>
      <td>0.774839</td>
      <td>0.742119</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>10</td>
      <td>0.783517</td>
      <td>0.781589</td>
      <td>0.717142</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>11</td>
      <td>0.771781</td>
      <td>0.792023</td>
      <td>0.723107</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>12</td>
      <td>0.767133</td>
      <td>0.764769</td>
      <td>0.728470</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>13</td>
      <td>0.768351</td>
      <td>0.760104</td>
      <td>0.720836</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>14</td>
      <td>0.765217</td>
      <td>0.760157</td>
      <td>0.723078</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>15</td>
      <td>0.763762</td>
      <td>0.764044</td>
      <td>0.716706</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>16</td>
      <td>0.762276</td>
      <td>0.760031</td>
      <td>0.720895</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>17</td>
      <td>0.757698</td>
      <td>0.761009</td>
      <td>0.719210</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>18</td>
      <td>0.756880</td>
      <td>0.762340</td>
      <td>0.718883</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>19</td>
      <td>0.754772</td>
      <td>0.761380</td>
      <td>0.719282</td>
      <td>00:00</td>
    </tr>
  </tbody>
</table>

    
![png](lab04-nn-regression_files/lab04-nn-regression_23_1.png)
    

    
![png](lab04-nn-regression_files/lab04-nn-regression_23_2.png)
    


Evaluate the MSE. By eye, how well does it fit?

*Your narrative response here*

### Step 3: **Add a nonlinearity**

Add a `nn.ReLU` between the two linear layers.

* Definitely use `fit_one_cycle` here!
* You will probably need more epochs to fit this model.
* Try several different `set_seed`s here to ensure that your results aren't a fluke.

```python
set_seed(...)
...

```


<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: left;">
      <th>epoch</th>
      <th>train_loss</th>
      <th>valid_loss</th>
      <th>mae</th>
      <th>time</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>0</td>
      <td>0.693079</td>
      <td>0.550056</td>
      <td>0.593399</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>1</td>
      <td>0.435455</td>
      <td>0.226713</td>
      <td>0.368506</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>2</td>
      <td>0.318465</td>
      <td>0.289056</td>
      <td>0.387823</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>3</td>
      <td>0.279852</td>
      <td>0.261593</td>
      <td>0.415863</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>4</td>
      <td>0.232801</td>
      <td>0.195240</td>
      <td>0.315986</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>5</td>
      <td>0.211104</td>
      <td>0.184315</td>
      <td>0.320228</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>6</td>
      <td>0.208310</td>
      <td>0.211015</td>
      <td>0.375118</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>7</td>
      <td>0.199087</td>
      <td>0.211851</td>
      <td>0.360161</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>8</td>
      <td>0.207838</td>
      <td>0.207093</td>
      <td>0.346923</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>9</td>
      <td>0.201181</td>
      <td>0.173332</td>
      <td>0.298741</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>10</td>
      <td>0.202531</td>
      <td>0.222609</td>
      <td>0.324228</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>11</td>
      <td>0.198644</td>
      <td>0.256327</td>
      <td>0.406994</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>12</td>
      <td>0.202352</td>
      <td>0.198207</td>
      <td>0.331616</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>13</td>
      <td>0.194324</td>
      <td>0.255945</td>
      <td>0.427632</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>14</td>
      <td>0.196672</td>
      <td>0.173948</td>
      <td>0.308988</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>15</td>
      <td>0.189098</td>
      <td>0.215841</td>
      <td>0.320294</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>16</td>
      <td>0.185658</td>
      <td>0.173194</td>
      <td>0.298018</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>17</td>
      <td>0.180072</td>
      <td>0.177394</td>
      <td>0.303801</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>18</td>
      <td>0.178259</td>
      <td>0.181867</td>
      <td>0.302603</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>19</td>
      <td>0.175262</td>
      <td>0.174144</td>
      <td>0.299257</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>20</td>
      <td>0.173036</td>
      <td>0.180167</td>
      <td>0.323992</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>21</td>
      <td>0.171939</td>
      <td>0.169455</td>
      <td>0.295680</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>22</td>
      <td>0.170063</td>
      <td>0.169196</td>
      <td>0.297448</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>23</td>
      <td>0.169878</td>
      <td>0.169218</td>
      <td>0.297110</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>24</td>
      <td>0.167490</td>
      <td>0.168323</td>
      <td>0.293499</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>25</td>
      <td>0.166276</td>
      <td>0.169995</td>
      <td>0.296735</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>26</td>
      <td>0.164923</td>
      <td>0.168415</td>
      <td>0.293780</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>27</td>
      <td>0.164030</td>
      <td>0.168199</td>
      <td>0.293551</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>28</td>
      <td>0.163613</td>
      <td>0.168040</td>
      <td>0.293115</td>
      <td>00:00</td>
    </tr>
    <tr>
      <td>29</td>
      <td>0.163334</td>
      <td>0.167990</td>
      <td>0.293041</td>
      <td>00:00</td>
    </tr>
  </tbody>
</table>

    
![png](lab04-nn-regression_files/lab04-nn-regression_27_1.png)
    

    
![png](lab04-nn-regression_files/lab04-nn-regression_27_2.png)
    


Evaluate the MSE. How well does it fit?

*your narrative response here*

## Analysis

Despite having a hidden layer like the final model, the second model never gave us anything more than a straight line. Why not?

*your narrative response here*

Watch the model plot in Step 3 as the model fits (use at least 30 epochs to be able to watch this clearly). What do you notice about the plot during three regimes of training:

1. Within the first epoch (right at the start of training)
2. Mid-training
3. In the last epoch or two

*your narrative response here*

## Extension (optional)

What effect does the size of the hidden layer have on the quality of the fit?

What effect does the choice of nonlinearity ("activation function") have? Try a few others: `Tanh`, `Sigmoid`, `LeakyReLU`,  `PReLU`, ... Early research in neural nets used smooth functions like `Tanh` and `Sigmoid` almost exclusively; do you think the `ReLU` was a good idea?

