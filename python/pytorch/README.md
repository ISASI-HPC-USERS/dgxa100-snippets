# DGX A100-Snippets - Python - PyTorch

Snippet based on the [PyTorch](https://pytorch.org/) example [multigpu.py`](https://github.com/pytorch/examples/blob/main/distributed/ddp-tutorial-series/multigpu.py).

## 

Step 1: create a Python virtual environment

```bash
$ python3.10 -m venv .venv
```

Step 2: activate the virtual environment

```bash
$ source .venv/bin/activate
```

Step 3: install dependencies

```bash
(.venv)$ pip install numpy torch
```

Step 4: run the SLURM job

```bash
(.venv)$ sbatch run.slurm <total_epochs> <save_every>
```

To check the job status, you can use the command [`squeue`](https://slurm.schedmd.com/squeue.html). 
Upon job completion, the standard output and the standard error will be saved in the current directory (`job.<JOB_ID>.out`, `job.<JOB_ID>.err`).
To transfer files, you may use the [`scp`](https://man7.org/linux/man-pages/man1/scp.1.html) command or an [SFTP](https://en.wikipedia.org/wiki/SSH_File_Transfer_Protocol) client.
