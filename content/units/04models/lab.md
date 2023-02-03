---
title: "Lab 4: Gradients"
draft: false
---

The notebooks include all of the details.

- {{% fundamentals name="Compute Gradients with PyTorch" nbname="u04n1-compute-grad-PyTorch.ipynb" %}}
- {{% fundamentals name="Linear Regression the PyTorch Way" nbname="u04n2-linreg-manual.ipynb" %}}

These are mostly self-contained, but you may find it helpful to refer to {{< fastbook num="4" nbname="04_mnist_basics.ipynb" >}}.


<!-- 
## Feedback

- Next time, please copy and paste the Analysis questions into the textbox here.
- Next time, include headings to separate the responses for each notebook.
- Next time, please keep the original names of the notebooks.

Hopefully quick revisions:

- diagnose-classifier: Be careful about the difference between percentage and fraction. An accuracy of .99 is 99% accurate or 1% error rate.
- diagnose-classifier: Predicted True = predicted "cat", so the 6 is actually cases where the classifier predicted *cat* but it was wrong.
- diagnose-classifier: loss can be high even for correctly classified images if the classifier *wasn't confident* in its predictions. (Better to be confidently correct than un-confidently correct, and better that than confidently wrong.)
- diagnose-classifier: loss is directly derived from probability: loss is `-log(prob)` when the clf was right, `-log(1-prob)` when the clf was wrong
- compute-grad analysis is overcomplicated. Use only basic math operations like `+` or `*`; don't use any autograd functionality (like `.backward()`).
- compute-grad analysis: `x1_grad` is incorrect (try it for several different values, or think symbolically about the derivative of the function)
- compute-grad analysis: compute-grad: The function is f(x1, x2) = 2x1 + x2^2 + 5. x1_grad = df/dx1 = 2 (note that it doesn't depend on x2. Now try the same for x2_grad.
- image-ops: mean image didn't work. Use `axis=0` or `axis=1` etc.
- image-ops: blacking out part of the image didn't work. See [the revised instructions](https://cs.calvin.edu/courses/cs/344/22sp/fundamentals/u2n2-image-ops.html), search for the phrase "assign to slices".
- image-ops: only-red-channel didn't work. Use assignment like the previous problem.
- trace-mnist: the *activations* are the *results* of the layers, not the layers themselves.
- trace-mnist: you need to pass the *output* of one layer as the *input* to the next one.
- trace-mnist: the activation shapes are incorrect (Maybe you're thinking the *weight* shapes). Check `act1_shape` against `act1.shape`.
- trace-mnist: weight shapes should, like activation shapes, be lists of numbers (in this case, two numbers), e.g., `linear_1_weight_shape = [linear_3.middle_features, linear_17.special_features]` but the right numbers instead. Then, check that `linear_1_weight_shape` matches `linear_1.weight.shape`.

Optional revisions:

- diagnose-classifier: the probability number is actually the probability that the classifier assigned to the decision that it made. (I think it should be the probability that it assigns to the *correct* answer, but they're not going to change that now.)
- image ops: grayscale should have used the average of all 3 channels (mean on axis 1)
- black-out could have used negative indexing (e.g., `-50:`)


[22SP]
trace-mnist is still somewhat confused. A lot of people made a similar confusion, so I added some hints and assertions to the notebook. Download the notebook again (or look at the preview) and it should be much clearer.
-->