---
title: "Final Lab (optional): Stable Diffusion"
---

Open this notebook. Lab machines will work best!

- {{% fundamentals name="Stable Diffusion Deep Dive" nbname="u13n2-stable-diffusion.ipynb" %}}

Try the following:

- Change the random seed in the main loop to several different values. What happens to the images?
- Change the prompt. Try more or less descriptive prompts.
- Try starting the image2image model with latents that have a different amount of noise (change `start_step`; refer to `num_inferenece_steps` for its max value).
- - Under "messing with embeddings", try changing the two prompts to different texts. Or change the mix factor. What happens?
