# DGX A100-Snippets - Python - inkstone

Snippet based on the [meent](https://github.com/kc-ml2/meent/) notebook [`02-autograd-and-optimization-pytorch.ipynb`](https://github.com/kc-ml2/meent/blob/main/tutorials/02-autograd-and-optimization-pytorch.ipynb) - PyTorch backend for Tensor computation with strong GPU acceleration.

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
(.venv)$ pip install tqdm torch meent
```

Step 4: run the SLURM job

```bash
(.venv)$ sbatch run.slurm
```

To check the job status, you can use the command [`squeue`](https://slurm.schedmd.com/squeue.html). 
Upon job completion, the standard output and the standard error will be saved in the current directory (`job.<JOB_ID>.out`, `job.<JOB_ID>.err`).
To transfer files, you may use the [`scp`](https://man7.org/linux/man-pages/man1/scp.1.html) command or an [SFTP](https://en.wikipedia.org/wiki/SSH_File_Transfer_Protocol) client.
