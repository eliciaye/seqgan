#!/bin/bash
#SBATCH -p rise # partition (queue)
#SBATCH -D /home/eecs/eliciaye/seqgan
##SBATCH --exclude=freddie,havoc,r4,r16,steropes,atlas,blaze,flaminio
#SBATCH --nodelist=steropes
#SBATCH -n 1 # number of tasks (i.e. processes)
#SBATCH --cpus-per-task=1 # number of cores per task
#SBATCH --gres=gpu:1
#SBATCH -t 0-16:00 # time requested (D-HH:MM)
#SBATCH -o seq_gan_%A.out
pwd
hostname
date
echo starting job...
source ~/.bashrc
conda activate seqgan

cd /home/eecs/eliciaye/seqgan

python sequence_gan.py

echo "All done."
