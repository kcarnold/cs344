#!/bin/bash

#source ~/.profile

if grep -q -F "/home/cs/344" ~/.profile; then
    echo "CS 344 already set up."
else
    # Make sure to leave a blank line in case there isn't.
    echo >> ~/.profile
    echo "[ -f /home/cs/344/cs344-rc ] && source /home/cs/344/cs344-rc" >> ~/.profile
    echo "Done. You may need to log out and back in."
fi


# # Set up conda environment
# if grep -q -F "conda initialize" ~/.bashrc; then
#     echo "Anaconda is set up."
# else
#     echo "setting up Anaconda"
#     /opt/anaconda/bin/conda init
# fi
    
# # Set TORCH_HOME so that PyTorch Hub picks up the shared model cache.
# if grep -q -F "TORCH_HOME" ~/.profile; then
#     echo "TORCH_HOME looks ok."
# else
#     echo "setting up TORCH_HOME"
#     echo >> ~/.profile
#     echo 'export TORCH_HOME=/scratch/cs344/torch' >> ~/.profile
# fi

# # Set HF_HOME so that Hugging Face libraries use the shared cache.
# if grep -q -F "HF_HOME" ~/.profile; then
#     echo "HF_HOME looks ok."
# else
#     echo "setting up HF_HOME"
#     echo >> ~/.profile
#     echo 'export HF_HOME=/scratch/cs344/huggingface' >> ~/.profile
# fi


# # Use the scratch area.
# if grep -qsF "/scratch" ~/.fastai/config.ini
# then
#     echo "Scratch configured in ~/.fastai/config.ini."
# else
#     echo "setting up ~/.fastai/config.ini"
#     mkdir -p ~/.fastai
#     cat > ~/.fastai/config.ini <<EOF
# [DEFAULT]
# data = /scratch/cs344/data
# archive = /scratch/cs344/archive
# model = /scratch/cs344/models
# storage = /tmp
# EOF
# fi

# echo "Done."
