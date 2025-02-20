# DGX A100-Snippets - Bash

## Contents
* [NVIDIA SMI test](#nvidia-smi-test)
* ...

## NVIDIA SMI test

The `nvidia-smi` tool shows GPUs information on the standard output.

### Interactive execution - SRUN command

An example of running the `nvidia-smi` command on the default SLURM partition, with 3 GPUs, is:

```bash
$ srun --gres=gpu:3 nvidia-smi
```

### Batch execution - SBATCH script

Usage of the SLURM script `nvidia-smi.slurm`:

```bash
$ sbatch nvidia-smi.slurm
```

The standard output and standard error of the job are redirected to files named `job.<JOB_ID>.out` and `job.<JOB_ID>.err`. 
For details, please refer to the SLURM directives and related comments in the script `nvidia-smi.slurm`.

