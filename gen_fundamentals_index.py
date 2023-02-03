import nbformat
import re
from pathlib import Path

def get_title(filename):
    nb = nbformat.read(filename, as_version=nbformat.NO_CONVERT)
    cells = [cell for cell in nb['cells'] if cell.source.lstrip().startswith('#')]
    return cells[0].source.split('\n')[0].lstrip('#').strip().replace('`', '')

nb_name_re = re.compile('^u(\d+)n(\d+)-(.+).ipynb')

nbs = []
p = Path('static/fundamentals')
for filename in sorted(p.glob("*.ipynb")):
    if '_soln' in filename.name:
        continue
    m = nb_name_re.match(filename.name)
    if not m:
        continue
    unit = int(m.group(1))
    nb = int(m.group(2))
    nbs.append((unit, nb, filename.name, get_title(filename)))

nbs.sort()

print('''---
title: "Fundamentals Index"
---

## Goal

These notebooks will demonstrate proficiency in basic machine learning concepts and skills.

To complete a Fundamentals notebook, follow instructions and fill in blanks. Most blanks will be labeled `# your code here`, an ellipsis (`...`), or `*your answer here*` (for narrative answers written in Markdown). You should remove placeholder comments.

Successful solutions will:

- Include code that successfully accomplishes the task.
  - It should generate the results when run fresh ("Restart and Run All")
  - It should have no extraneous code.
  - Format code clearly (consistent spacing, one idea per line, no overly long lines, etc.)
- Document each major step succinctly but clearly.
  - Use Markdown cells (with appropriate formatting and links) to describe the overall steps taken.
    - See the Setup section of various notebooks for an example of code explanations.
    - Note that you are not required to understand the code in the "Setup" section.
  - Use clear variable names, keyword arguments, and code comments to make the code easy to follow.
- Include responses to each of the analysis questions.
  - Add a Markdown cell for each question.
  - Add code cells as necessary to run computations that some questions may need.
  - Any activities marked "Extension" are optional but encouraged.

We aim that each notebook will:

- Demonstrate a single concept
- Take less than 15 minutes to complete, if that concept is understood (if it's taking longer than 15 minutes, please let the instructor know so it can be simplified in the future)
- Take less than 5 minutes to run to completion
- Be a useful reference for how to perform that operation in the future

We also strive for the sequence to make sense.

## The Notebooks

**Note**: Notebooks beyond the current unit may not be updated for the current year.

''')

for unit in sorted(set(nb[0] for nb in nbs)):
    print(f"- Unit {unit}")
    for nb in nbs:
        if nb[0] != unit:
            continue
        print('  - {{% fundamentals name="' + nb[3] + '" nbname="' + nb[2] + '" %}}')
