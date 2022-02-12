---
title: Q&A Week 6
author: Ken Arnold
date: '2021-03-18'
slug: q-a-week-6
categories: []
tags: []
subtitle: ''
summary: ''
authors: []
lastmod: '2021-03-18T11:37:39-04:00'
featured: no
image:
  caption: ''
  focal_point: ''
  preview_only: no
projects: []
---



> What does `torch.where` actually do?

It's just a more efficiently implemented version of this list comprehension:

```python
import torch
switcher = torch.tensor([True, False, False])
x1 = torch.tensor([1., 2., 3.])
x2 = torch.tensor([4., 5., 6.])

torch.where(switcher, x1, x2)

[
  x1[i] if switcher[i] else x2[i]
  for i in range(len(switcher))
]
```

