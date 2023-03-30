---
title: "CS 344 Projects: Backup Plan"
---

I don't yet see a specific project proposal from you. To make things simple, I'm offering a menu of three project options.

1. **Application**: Compete in https://babylm.github.io/ (train a language model on only data that a human child plausibly has access to).
    - Suggestion: initialize your model wisely. I have some ideas; once you have a baseline, come chat with me.
2. **Interpretability**: Follow the steps at [Concrete Steps to Get Started in Transformer Mechanistic Interpretability - AI Alignment Forum](https://www.alignmentforum.org/s/yivyHaCAmMJ3CqSyj/p/9ezkEb9oGvEi6WoB3) and report on an experiment you run.
3. **Architectural Variation**: Try one variation on the Transformer architecture and report on your results. Pre-approved variations:
    - Any of the variations described in [x-transformers](https://github.com/lucidrains/x-transformers/) (these are already implemented in that library; you can just run the experiments). If you do this, think of one additional small tweak you could make to the architecture and try it out.
    - During training, have the model attempt to predict N tokens ahead, rather than just the next token. (One way to do this would be to mask out the last N tokens of the input. You could adapt the "Forgetful Causal Mask" [implementation in x-transformers](https://github.com/lucidrains/x-transformers/#forgetful-causal-mask).)
    - Train the model to predict the text backwards.
      - Easy way: Reverse the input text, then train the model to predict the reversed text.
      - More interesting way: for each input example, sample spans of tokens, and replace each span with `<rev> ... <rev>`, where `<rev>` is a new special token.
      - Either way: report on the perplexity of your model on your test set, and compare with the perplexity of a standard model.

Let me know which project you pick. I will make a Discord channel for each Initiative for you to share pointers.
