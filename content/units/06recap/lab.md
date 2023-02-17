---
title: "Lab 6"
---

- {{% fundamentals name="Trace Simple Image Classifier" nbname="u06n1-trace-mnist.ipynb" %}}
- {{% fundamentals name="Linear Regression using the Fast.ai Learner" nbname="u06n2-linreg-learner.ipynb" %}}
- {{% fundamentals name="Nonlinear Regression" nbname="u06n3-nn-regression.ipynb" %}}

<!--


- trace-mnist: the *activations* are the *results* of the layers, not the layers themselves.
- trace-mnist: you need to pass the *output* of one layer as the *input* to the next one.
- trace-mnist: the activation shapes are incorrect (Maybe you're thinking the *weight* shapes). Check `act1_shape` against `act1.shape`.
- trace-mnist: weight shapes should, like activation shapes, be lists of numbers (in this case, two numbers), e.g., `linear_1_weight_shape = [linear_3.middle_features, linear_17.special_features]` but the right numbers instead. Then, check that `linear_1_weight_shape` matches `linear_1.weight.shape`.

-->