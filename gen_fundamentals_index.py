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
''')

for unit in sorted(set(nb[0] for nb in nbs)):
    print(f"- Unit {unit}")
    for nb in nbs:
        if nb[0] != unit:
            continue
        print('  - {{% fundamentals name="' + nb[3] + '" nbname="' + nb[2] + '" %}}')
