#!/bin/sh


#SBATCH --job-name="task"
#SBATCH --qos=short
#SBATCH --account=vewa
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=5
#SBATCH --partition=compute


export OMP_NUM_THREADS=5

gfortran parallel.f90 -o parallel.exe -fopenmp