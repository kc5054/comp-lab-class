#!/bin/bash -e

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=10
#SBATCH --gres=gpu
#SBATCH --time=12:00:00
#SBATCH --mem=90GB
#SBATCH --job-name=alphaFold

/home/kc5054/CHEM2671/comp-lab-class/Week7/run/run-alphafold.py \
  --fasta_paths=$(pwd)/rcsb_pdb_2W9T.fasta \
  --max_template_date=2020-05-14 \
  --output_dir=$(pwd)
