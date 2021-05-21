# Feedback Notes

I don't see anything in the repo.

Use Markdown (text) cells rather than code comments for narrative answers.

## Fundamentals

### 000 (basic classifier)

Note that the confusion matrix only uses the validation set, not the whole dataset.

### 001 (hyperparameters)

The instructions intended to ask for two separate experiments: one changing the validation split, the other changing the target (cat/dog vs breed).

The two experiments had more differences than you intended: it wasn't just the label that was different, but the image size and augmentation were also different.

Use text cells: use Markdown headers to structure the different parts of the report, and other cells to talk about what each part of the code is doing and what its results were.

The report should include results from each experiment in a form that's easy to read (not just looking at the "error_rate" from a progress table).

You should repeat each experiment a few times and report how consistent the results are. Ideally, use a statistical test to quantify how different the results are for the different hyperparameters.

Another way of discussing your confidence in your results is to discuss how consistent the results are for several replications of the same experiment. If there's a bigger difference in error rate for different experiments than for different runs of the same experiment (i.e., different seeds), that gives you confidence that the difference is actually due to the hyperparameters instead of random variation.

The breed experiment seems to be missing.

Note the difference between the train/validation seed (passed to the Splitter) and the overall seed (passed to set_seed). You only changed one of these quantities. That was sufficient to get variability in this case, but you should be aware of that when running further experiments.

### 002 (diagnose)

Good.

To find any mislabeled images, you could have extended the top-loss plot until the losses were small. Any mislabeled images would probably show up there.

### 003 (dataloader)

### 006 (compute grad)

Missing consideration of what the ideal value of "weights" is (see y_true = 4 * x + ..., so the ideal value is 4).

That wasn't quite the ideal value of "weights" (see y_true = 4 * x + ..., so the ideal value is 4).

Just knowing that the loss decreased doesn't actually tell you what the ideal value is (see y_true = 4 * x + ..., so the ideal value is 4).

Oops, you actually did gradient ascent, so understandably the loss went up. If you're doing gradient descent, then something that's initially surprising happens:

The first gradient descent adjustment to the slope ("weights") reduces it, which actually moves farther from the ideal value. Although this might be surprising, it's because the initial intercept is way too high. Given that intercept, the optimal slope is perhaps closer to 2, so the first update is, in a sense, *locally* correct.

It looks like you found parameter values with a better loss, but the notebook doesn't include code to compute the gradient, so perhaps this was just done by eye. That's not a bad exercise, but not the one that was intended here.

### 007 (softmax)

Since you didn't try x+100 with the exp() approach, I'll just tell you what happens: it overflows, so you get NaN.

torch.softmax has a numerical trick: it adds a constant to all the numbers so that the largest number is 0. This avoids the NaN's, and since adding constants doesn't change the ideal result (as you noticed), it Just Works.

Be careful with mutating assignments (like x = x * 10) in notebook cells, since it can make it easy to lose track of what the current value actually is ("Have I run the cell yet? Did I unintentionally run it multiple times?"). I think this may have happened to you and confused you. The clearest resolution is to "Restart and Run All".

The explanation of the Analysis section is unclear. I'd say: adding or subtracting a constant from everything doesn't change the softmax, but multiplying or dividing does.

If you're familiar with Elo rankings for sports teams or chess, that can give an intuition: a match between 100 and 150 has the same win probability as a match between 150 and 200 (shifting by a constant doesn't change things), but a match between 200 and 300 would be much more likely in favor of the higher score (multiplying by a constant does change things).

### 008 (softmax-2)

### 009 (linreg Learner)

Good.

You probably used too low of a learning rate; you should be able to get this to converge in 10 epochs.

It looks like you never saw a fully converged model here.

Should compare to the ideal values.

You can look at the code that generates the data to see what the ideal values should be.

You should explain your reasoning for why you think those are the ideal values.

Notice that the bias is closer to -0.75 than -1 (which is what you'd get from looking at the equation for generating the data), which is because rand_like is uniform between 0 and 1 (i.e., its mean is 0.5) and we scale it by 0.5 so its mean is now 0.25. I meant to have it be randn_like(), which would have had mean 0.
