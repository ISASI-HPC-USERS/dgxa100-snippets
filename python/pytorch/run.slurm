#!/bin/bash
#SBATCH --nodes=1                       # nodes for the job execution
#SBATCH --ntasks-per-node=1             # tasks per node
#SBATCH --mem-per-cpu=100G              # memory per CPU
#SBATCH --gres=gpu:4                    # Requests 4 GPUs for the jobì
#SBATCH --partition=short               # partition name for the job execution
#SBATCH --job-name=inkstone-test     	# job name
#SBATCH --error=job.%J.err              # error output file for the job
#SBATCH --output=job.%J.out             # standard output file for the job

python main.py $1 $2
