#!/bin/bash
#SBATCH --job-name=TEtools    ## Name of the job.
#SBATCH -p standard
#SBATCH -A GRYLEE_LAB
#SBATCH --cpus-per-task=1  ## number of cores the job need

#variable
SourceDir="/dfs7/grylee/yig21/barbosa_RNAseq/trim_read"
TEtools="/pub/yig21/1211_A4diet2/TEexp/TEtools-master"
OutDir="/dfs7/grylee/yig21/barbosa_RNAseq/alignment"
Ref="/pub/yig21/dm6_reference/D_mel_transposon_sequence_set.fa"
rosette="/pub/yig21/dm6_reference/dm6_rosette.txt"

#load module
module load python/3.10.2
module load bowtie2/2.4.5

#TEcount for 18C
python3 $TEtools/TEcount.py -rosette $rosette -column 2 -TE_fasta $Ref -count $OutDir/18C_TE.count.txt -bowtie2 -insert 100 \
-RNA  $SourceDir/1-18C_S1_L001_R1_001_trimmed.fq.gz \
$SourceDir/2-18C_S2_L001_R1_001_trimmed.fq.gz \
$SourceDir/3-18C_S3_L001_R1_001_trimmed.fq.gz \
$SourceDir/4-18C_S4_L001_R1_001_trimmed.fq.gz \
$SourceDir/5-18C_S5_L001_R1_001_trimmed.fq.gz \
$SourceDir/6-18C_S6_L001_R1_001_trimmed.fq.gz \
-RNApair $SourceDir/1-18C_S1_L001_R2_001_trimmed.fq.gz \
$SourceDir/2-18C_S2_L001_R2_001_trimmed.fq.gz \
$SourceDir/3-18C_S3_L001_R2_001_trimmed.fq.gz \
$SourceDir/4-18C_S4_L001_R2_001_trimmed.fq.gz \
$SourceDir/5-18C_S5_L001_R2_001_trimmed.fq.gz \
$SourceDir/6-18C_S6_L001_R2_001_trimmed.fq.gz 

#TEcount for 25C
python3 $TEtools/TEcount.py -rosette $rosette -column 2 -TE_fasta $Ref -count $OutDir/25C_TE.count.txt -bowtie2 -insert 100 \
-RNA  $SourceDir/7-25C_S7_L001_R1_001_trimmed.fq.gz \
$SourceDir/8-25C_S8_L001_R1_001_trimmed.fq.gz \
$SourceDir/9-25C_S9_L001_R1_001_trimmed.fq.gz \
$SourceDir/10-25C_S10_L001_R1_001_trimmed.fq.gz \
$SourceDir/11-25C_S11_L001_R1_001_trimmed.fq.gz \
$SourceDir/12-25C_S12_L001_R1_001_trimmed.fq.gz \
-RNApair $SourceDir/7-25C_S7_L001_R2_001_trimmed.fq.gz \
$SourceDir/8-25C_S8_L001_R2_001_trimmed.fq.gz \
$SourceDir/9-25C_S9_L001_R2_001_trimmed.fq.gz \
$SourceDir/10-25C_S10_L001_R2_001_trimmed.fq.gz \
$SourceDir/11-25C_S11_L001_R2_001_trimmed.fq.gz \
$SourceDir/12-25C_S12_L001_R2_001_trimmed.fq.gz 

#TEcount for 29C
python3 $TEtools/TEcount.py -rosette $rosette -column 2 -TE_fasta $Ref -count $OutDir/29C_TE.count.txt -bowtie2 -insert 100 \
-RNA  $SourceDir/13-29C_S13_L001_R1_001_trimmed.fq.gz \
$SourceDir/14-29C_S14_L001_R1_001_trimmed.fq.gz \
$SourceDir/15-29C_S15_L001_R1_001_trimmed.fq.gz \
$SourceDir/16-29C_S16_L001_R1_001_trimmed.fq.gz \
$SourceDir/17-29C_S17_L001_R1_001_trimmed.fq.gz \
$SourceDir/18-29C_S18_L001_R1_001_trimmed.fq.gz \
-RNApair $SourceDir/13-29C_S13_L001_R2_001_trimmed.fq.gz \
$SourceDir/14-29C_S14_L001_R2_001_trimmed.fq.gz \
$SourceDir/15-29C_S15_L001_R2_001_trimmed.fq.gz \
$SourceDir/16-29C_S16_L001_R2_001_trimmed.fq.gz \
$SourceDir/17-29C_S17_L001_R2_001_trimmed.fq.gz \
$SourceDir/18-29C_S18_L001_R2_001_trimmed.fq.gz 
