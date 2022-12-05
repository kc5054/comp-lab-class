#!/bin/bash
#SBATCH --job-name="Cool down"
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=8GB
#SBATCH --gres=gpu:1
#SBATCH --time=40:00:00 

nvcc --version
