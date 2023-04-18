#!/bin/bash

echo -n "Enter the video name (Make sure to be in the correct directory): "
read vid_loc

echo -n "Enter an output name: "
read output_name

ffmpeg -i $vid_loc \
	-b:a 10k -ar 44100 \
	-s 176x144 \
	-filter:v fps=7.82 -c:a \
	copy $output_name.mp4