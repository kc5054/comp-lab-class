#!/bin/bash
#SBATCH --job-name="Cool down"
#SBATCH --nodes=1
#SBATCH --tasks-per-node=4
#SBATCH --cpus-per-task=1
#SBATCH --mem=8GB
#SBATCH --time=40:00:00 

source /scratch/work/courses/CHEM-GA-2671-2022fa/software/lammps-gcc-30Oct2022/setup_lammps.bash

for inf in kalj_n360*
do
echo Running ${inf}
mpirun -np 4 lmp -var configfile ${inf} -var id 1 -in ../../Inputs/anneal_3d_binary.lmp
done
