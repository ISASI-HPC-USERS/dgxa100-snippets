# DGX A100-Snippets - Matlab

## Run the SLURM job

```bash
(.venv)$ sbatch run.slurm
```

To check the job status, you can use the command [`squeue`](https://slurm.schedmd.com/squeue.html). 
Upon job completion, the standard output and the standard error will be saved in the current directory (`job.<JOB_ID>.out`, `job.<JOB_ID>.err`).
