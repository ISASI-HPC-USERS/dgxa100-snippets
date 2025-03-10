# DGX A100-Snippets - Python - Matlab 

Snippet based on [Run MATLAB Functions on Multiple GPUs - Mathworkds](https://it.mathworks.com/help/parallel-computing/run-matlab-functions-on-multiple-gpus.html)

## Run the SLURM job

```bash
(.venv)$ sbatch run.slurm
```

To check the job status, you can use the command [`squeue`](https://slurm.schedmd.com/squeue.html). 
Upon job completion, the standard output and the standard error will be saved in the current directory (`job.<JOB_ID>.out`, `job.<JOB_ID>.err`).
To transfer files, you may use the [`scp`](https://man7.org/linux/man-pages/man1/scp.1.html) command or an [SFTP](https://en.wikipedia.org/wiki/SSH_File_Transfer_Protocol) client.

