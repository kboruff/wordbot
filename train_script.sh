#!/bin/bash

th train.lua \
	-gpuid -1 \
	-data_dir dockerdata  \
	-train_frac 0.96 \
	-val_frac 0.04 \
	-max_epochs 50 \
	-word_level 1 \
	-threshold 2 \
	-print_every 10 \
	-glove 1 \
	-rnn_size 256 \
	-num_layers 2 \
	-dropout 0.4 \
	-eval_val_every 500 \
	-checkpoint_dir cv_word_caps_256_2 \

th train.lua \
	-gpuid -1 \
	-data_dir dockerdata  \
	-max_epochs 30 \
	-print_every 10 \
	-rnn_size 128 \
	-num_layers 2 \
	-dropout 0.4 \
	-eval_val_every 1000 \
	-checkpoint_dir cv_char_caps_256_2 \
