#!/bin/bash
jupyter nbconvert --ExecutePreprocessor.store_widget_state=False --to notebook --execute "$1"
