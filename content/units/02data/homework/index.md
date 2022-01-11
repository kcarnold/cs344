---
title: Homework 2
author: Ken Arnold
date: '2022-01-21'
draft: true
---

Suppose that you have been contracted by a restaurant marketing firm to evaluate the potential of using AI to help them categorize photos of their clients' restaurants.

Build and evaluate a classifier to determine if a photo is taken of the inside vs outside of a restaurant. Don't scrape photos; use the Yelp Academic Dataset.

Submit a Jupyter Notebook reporting your findings on Moodle. Your report should be able to answer questions like:

-   How accurately can you label inside / outside?
-   How many images will the marketing firm need to label?
-   How confident are you in these conclusions? Why?
-   What decisions did you make in the process? Why? What implications did those decisions have?

## Notes

You may use [this repo](https://classroom.github.com/g/uMf9CjZ_) if desired.

Since the Yelp photos dataset is unwieldy, I made some more convenient subsets of it for you. (You may want to experiment on yet-smaller subsets of it for your own purposes.)

The dataset agreement does not legally permit me to redistribute it, so I'll need to have you confirm that you have downloaded the dataset. So: send me a message with the md5sum or sha1sum of the yelp_photos.tgz that you have, and I'll send you how to get my subsets.

Mac or Linux: `md5sum yelp_photos.tgz`

on Windows [apparently](https://superuser.com/questions/245775/is-there-a-built-in-checksum-utility-on-windows-7/898377#898377) you run: `certutil -hashfile yelp_photos.tgz MD5`

If you are uncomfortable agreeing to the Yelp dataset agreement, please contact the instructor for an alternative dataset.
