#!/usr/bin/env bash

#SBATCH -J blastn
#SBATCH -p DPB
#SBATCH -c 24
#SBATCH --mem=8000

module purge; module load Python/3.6.0
srun python ortholog.py $1 $2 $3 $4 2>&1
