# Feedback Notes

I don't see anything in the repo.

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

The first adjustment to the slope ("weights") moves farther from the ideal value because the initial intercept is way too high. Given that intercept, the optimal slope is perhaps closer to 2, so the first update is, in a sense, *locally* correct.

### 007 (softmax)

Since you didn't try x+100 with the exp() approach, I'll just tell you what happens: it overflows, so you get NaN.

torch.softmax has a numerical trick: it adds a constant to all the numbers so that the largest number is 0. This avoids the NaN's, and since adding constants doesn't change the ideal result (as you noticed), it Just Works.

### 008 (softmax-2)

### 009 (linreg Learner)

Good.

You probably used too low of a learning rate; you should be able to get this to converge in 10 epochs.

It looks like you never saw a fully converged model here.

Should compare to the ideal values.

You can look at the code that generates the data to see what the ideal values should be.

You should explain your reasoning for why you think those are the ideal values.

Notice that the bias is closer to -0.75 than -1 (which is what you'd get from looking at the equation for generating the data), which is because rand_like is uniform between 0 and 1 (i.e., its mean is 0.5) and we scale it by 0.5 so its mean is now 0.25. I meant to have it be randn_like(), which would have had mean 0.
