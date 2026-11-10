#!/bin/bash
#SBATCH --job-name=trim_galore    ## Name of the job.
#SBATCH -p standard
#SBATCH -A GRYLEE_LAB
#SBATCH --cpus-per-task=1  ## number of cores the job need
#SBATCH --array=1-18

#variable
SourceDir="/dfs7/grylee/yig21/barbosa_RNAseq/UWM_Barbosa_temperature_raw"
OutDir="/dfs7/grylee/yig21/barbosa_RNAseq/trim_read"
file="/dfs7/grylee/yig21/barbosa_RNAseq/UWM_Barbosa_temperature_raw/prefix.txt"

#load modules
module load trimgalore/0.6.7 

#run command
prefix=`head -n $SLURM_ARRAY_TASK_ID $file | tail -n 1`
echo "running trim_galore" $prefix
trim_galore --fastqc -q 30 --no_report_file -j 2 -o $OutDir $SourceDir/${prefix}_L001_R1_001.fastq.gz $SourceDir/${prefix}_L001_R2_001.fastq.gz
