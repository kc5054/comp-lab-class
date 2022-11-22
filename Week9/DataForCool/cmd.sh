#!/bin/bash
#SBATCH --job-name="CoolDown"
#SBATCH --nodes=1
#SBATCH --tasks-per-node=4
#SBATCH --cpus-per-task=1
#SBATCH --mem=8GB
#SBATCH --time=40:00:00 

source /scratch/work/courses/CHEM-GA-2671-2022fa/software/lammps-gcc-30Oct2022/setup_lammps.bash

for inf in 1.5 1.0 0.9 0.8 0.7 0.65 0.6 0.55 0.5 0.475;
do
echo Running ${inf}
mpirun lmp -var configfile ../Inputs/n360/kalj_n360_T$inf.lmp -var id 1 -in ../Inputs/anneal_3d_binary.lmp
done
