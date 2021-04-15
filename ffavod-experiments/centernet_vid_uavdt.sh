#!/usr/bin/env bash

source /store/dev/anaconda3/etc/profile.d/conda.sh
conda activate centernet
cd src

# python main.py ctdetVid --val_intervals 1 --exp_id fromSpotNetNoBias --dataset uav --arch hourglassVid --batch_size 1 --master_batch 4 --lr 2e-6 --load_model /store/datasets/UA-DetracResults/exp/ctdet/UAV-seg1_pawcs_2conv_attention_BCE/model_best.pth
# python main.py ctdetVid --val_intervals 1 --exp_id fromSpotNetNoBias --dataset uav --arch hourglassVid --batch_size 1 --master_batch 4 --lr 2e-6 --resume
# test
python test.py ctdetVid --test --exp_id fromSpotNetNoBias --dataset uav --arch hourglassVid --keep_res --load_model /store/dev/SpotNet2/exp/uav/ctdetVid/fromSpotNetNoBias/FusionFromDetrac.pth
