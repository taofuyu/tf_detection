#!/bin/bash
LOG=log/train-`date +%Y-%m-%d-%H-%M-%S`.log
CAFFE=~/caffe/build/tools/caffe

$CAFFE train --solver=/home/tao/caffe/examples/tf_detect/model/yolov2_tiny_solver.prototxt --gpu=0 2>&1 | tee $LOG

