#!/bin/sh


#SBATCH --job-name="task"
#SBATCH --qos=medium
#SBATCH --account=vewa
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=5
#SBATCH --partition=computehm


export OMP_NUM_THREADS=5

sh test.sh
./parallel.exe 20 9863 