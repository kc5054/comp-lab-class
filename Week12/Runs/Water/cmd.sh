#!/bin/bash
#SBATCH --job-name="AIMD"
#SBATCH --nodes=1
#SBATCH --tasks-per-node=12
#SBATCH --cpus-per-task=1
#SBATCH --mem=20GB
#SBATCH --time=6:00:00
#SBATCH --reservation=gmh4


module load cp2k/openmpi/intel/20201212
mpirun -np 12 cp2k.popt -i water.inp -o OUTPUT_FILE_NAME.log
