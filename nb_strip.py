import sys
import nbformat
import re

in_filename = sys.argv[1]
out_fname = sys.argv[2]

nb = nbformat.read(in_filename, as_version=nbformat.NO_CONVERT)
if hasattr(nbformat.validator, 'normalize'):
    # Old nbformat didn't have this.
    changes, nb = nbformat.validator.normalize(nb)
    if changes:
        print("Fixed", changes, "validation issues")

# Reset the kernel spec because sometimes my local environment has a different ipykernel name.
nb['metadata']['kernelspec'] = {'display_name': 'Python 3', 'language': 'python', 'name': 'python3'}
if 'vscode' in nb['metadata']:
    del nb['metadata']['vscode']
# https://github.com/jupyter/nbconvert/issues/1731
if 'widgets' in nb['metadata']:
    del nb['metadata']['widgets']

out_switch_re = re.compile('\s*#([+-])out')

outputs = True

cells = []
for cell in nb['cells']:
    if cell['cell_type'] != 'code':
        cells.append(cell)
        continue
    if cell.source.startswith("# remove"):
        continue
    cells.append(cell)
nb['cells'] = cells


def strip_source(source):
    global outputs
    result = []
    lines = source.split('\n')
    skip_next = False
    skip_until = None
    for i, line in enumerate(lines):
        # Turn on or off output.
        if m := out_switch_re.search(line):
            plus_minus = m.group(1)
            assert plus_minus in '+-'
            outputs = plus_minus == '+'
            line = out_switch_re.sub('', line)
        if skip_next:
            skip_next = False
            continue
        if skip_until is not None:
            if skip_until in line:
                # all done
                skip_until = None
            continue
        if i == len(lines) - 1:
            # last time unconditional
            result.append(line)
            continue
        is_commented = line.strip().startswith("# ")
        if is_commented:
            uncommented = re.sub(r'^(\s*)(# )(.+)$', r'\1\3', line)

            heredoc_match = re.match(r'(.+)\s+<<(.+)', uncommented)
            if heredoc_match is not None:
                result.append(heredoc_match.group(1))
                end_str = heredoc_match.group(2).strip()
                skip_until = end_str
                continue

            if '...' in line:
                # probable blank-filler
                match_re = '^' + re.escape(uncommented).replace(r'\.\.\.', '(.+)') + "$"
                if re.match(match_re, lines[i+1]):
                    skip_next = True
                    result.append(uncommented)
                    continue
                else:
                    print("ERROR: failed match", uncommented)
                    sys.exit(1)

        if 'your code here' in line:
            result.append(line)
            skip_until = '-'*1000 # FIXME: weird sentinel
            continue

        result.append(line)
    return '\n'.join(result)

narrative_re = re.compile(r'\*your( narrative)? (answer|response)( here)?\*')

assert narrative_re.match('*your narrative response here*')
assert narrative_re.match('*your narrative answer here*')
assert narrative_re.match('*your answer here*')
assert narrative_re.match('*your response here*')

def strip_md(source):
    result = []
    lines = source.split('\n')
    for i, line in enumerate(lines):
        result.append(line)
        if narrative_re.search(line):
            break
    return '\n'.join(result)

for cell in cells:
    if cell['cell_type'] == 'code':
        cell.source = strip_source(cell.source)
        if not outputs:
            cell.outputs.clear()
            cell.execution_count = None
    elif cell['cell_type'] == 'markdown':
        cell.source = strip_md(cell.source)

nbformat.write(nb, out_fname)
