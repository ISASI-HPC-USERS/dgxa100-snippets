# DGX A100-Snippets - Python - inkstone

Snippet based on the [inkstone](https://github.com/alexysong/inkstone) example [`1d_dielectric_array_fields.py`](https://github.com/alexysong/inkstone/blob/main/examples/1d_dielectric_array_fields.py).

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
(.venv)$ pip install inkstone matplotlib
```

Step 4: run the SLURM job

```bash
(.venv)$ sbatch run.slurm
```

To check the job status, you can use the command `$ squeue`. 
Upon job completion, the `output.png` file containing the plot will be created in the current directory.
To transfer the plot file, you may use the [`scp`](http://man.he.net/?topic=scp&section=all) command or an [SFTP](https://en.wikipedia.org/wiki/SSH_File_Transfer_Protocol) client.
