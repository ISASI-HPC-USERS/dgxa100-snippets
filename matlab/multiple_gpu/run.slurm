#!/bin/bash
#SBATCH --nodes=1                       # nodes for the job execution
#SBATCH --ntasks-per-node=1             # tasks per node
#SBATCH --mem-per-cpu=32G               # memory per CPU
#SBATCH --gres=gpu:2                    # Requests GPUs for the job
#SBATCH --partition=short               # partition name for the job execution
#SBATCH --job-name=matlab_gpu_test     	# job name
#SBATCH --error=job.%J.err              # error output file for the job
#SBATCH --output=job.%J.out             # standard output file for the job

matlab -batch 'run("main.m")'

