# This file should be sourced by the shell on startup.

# >>> conda initialize >>>
# Based on the output of `conda init`
__conda_setup="$('/opt/anaconda/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export TORCH_HOME=/scratch/cs344/torch
export HF_HOME=/scratch/cs344/huggingface

mkdir -p ~/.fastai
cat > ~/.fastai/config.ini <<EOF
[DEFAULT]
data = /scratch/cs344/data
archive = /scratch/cs344/archive
model = /scratch/cs344/models
storage = /tmp
EOF
