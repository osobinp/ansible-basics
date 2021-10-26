#!/bin/bash

ENV_NAME=virtualenv

virtualenv $ENV_NAME

if [ $? -eq 0 ]; then
    source $PWD/$ENV_NAME/bin/activate
    python3 -m pip install --upgrade pip
    pip3 install -r $PWD/requirements.txt
    grep -qxF "source $PWD/$ENV_NAME/bin/activate" $HOME/.bashrc || echo "source $PWD/$ENV_NAME/bin/activate" >> $HOME/.bashrc
    
else
    echo "Install python3-pip && pip3 install virtualenv"
fi
