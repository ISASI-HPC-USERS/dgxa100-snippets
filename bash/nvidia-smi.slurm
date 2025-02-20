#!/bin/bash
#SBATCH --nodes=1                       # Requests 1 node for the job execution
#SBATCH --ntasks-per-node=1             # Specifies 1 task per node
#SBATCH --mem-per-cpu=1G                # Allocates 1 GB of memory per CPU
#SBATCH --gres=gpu:3                    # Requests 3 GPUs for the job
#SBATCH --time=00:01:00                 # Sets the maximum execution time of the job to 1 minute
#SBATCH --partition=short               # Specifies the 'short' partition for the job execution
#SBATCH --job-name=nvidia-smi-test      # Assigns the name 'nvidia-smi-test' to the job
#SBATCH --error=job.%J.err              # Specifies the error output file for the job
#SBATCH --output=job.%J.out             # Specifies the standard output file for the job
nvidia-smi
