'''
Utilities to manage portfolio repos.
'''

import pandas as pd
from pathlib import Path
import re
import subprocess
import click
import tqdm

student_name_re = re.compile(r'^(.+) \((.+)\)$')


# Load common configuration
def get_config():
    root = Path('~/non-dropbox-docs/student_data/cs344/23sp').expanduser().resolve()
    repos = root / 'repos'
    main_repo = repos / 'main'
    repos.mkdir(parents=True, exist_ok=True)
    main_repo.mkdir(parents=True, exist_ok=True)
    ghclass_data = pd.read_csv(root / 'portfolio-repo-grades-23sp.csv')
    ghclass_data['remote_name'] = [get_remote_name(x) for x in ghclass_data['roster_identifier']]
    return dict(
        root=root,
        repos=repos,
        main_repo=main_repo,
        ghclass_data=ghclass_data,
    )

@click.group()
@click.pass_context
def cli(ctx):
    config = get_config()
    ctx.obj = config



def get_remote_name(student_name_field):
    if pd.isna(student_name_field):
        return None
    student_name, student_id = student_name_re.match(student_name_field).groups()
    return f'{student_id}_{student_name.replace(" ", "_")}'


# Initial setup

def clone_template_repo():
    config = get_config()
    ghclass_data = config['ghclass_data']
    main_repo = config['main_repo']
    template_repo = ghclass_data['starter_code_url'][0]
    template_repo = '/'.join(template_repo.rsplit('/', 2)[-2:])
    # Clone this repo into the root directory
    subprocess.run(['git', 'clone', f'git@github.com:{template_repo}', main_repo])

@cli.command()
@click.pass_obj
def setup_repos(config):
    ghclass_data = config['ghclass_data']
    main_repo = config['main_repo']
    repos = config['repos']

    clone_template_repo()
    # Add all of the student repos as remotes.
    for i in range(len(ghclass_data)):
        student_name = ghclass_data['roster_identifier'].iloc[i]
        if pd.isna(student_name):
            continue
        remote_name = ghclass_data['remote_name'].iloc[i]
        student_repo = ghclass_data['student_repository_url'].iloc[i].replace('https://github.com/', 'git@github.com:')
        print(remote_name)
        subprocess.run(['git', 'remote', 'add', remote_name, student_repo], cwd=main_repo)

    fetch_all()

    # Add a worktree for each remote.
    for i in range(len(ghclass_data)):
        remote_name = ghclass_data['remote_name'].iloc[i]
        if pd.isna(remote_name): continue
        print(remote_name)
        subprocess.run(['git', 'worktree', 'add', '--track', '-B', f'{remote_name}-main', repos / remote_name, f'{remote_name}/main'], cwd=main_repo)

@cli.command()
@click.pass_obj
def fetch_all(config):
    ghclass_data = config['ghclass_data']
    main_repo = config['main_repo']
    
    for i in tqdm.trange(len(ghclass_data)):
        remote_name = ghclass_data['remote_name'].iloc[i]
        if pd.isna(remote_name):
            continue
        print(remote_name)
        subprocess.run(['git', 'fetch', remote_name], cwd=main_repo)

    # Run gc
    subprocess.run(['git', 'gc'], cwd=main_repo)


if __name__ == "__main__":
    cli()
