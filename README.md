# TE expression analysis
This repository contains scripts and files for the transcriptomic analysis in this manuscript "Distinct transcriptional responses to mild cold versus warm temperatures in adult *Drosophila melanogaster* ovaries", for processing RNA-seq reads from *D. melanogaster* reared at 18°C, 25°C (control), and 29°C, and quantifying TE and gene expression.
Scripts are organized into directories according to their functions. Each directory contains a `README` file with more details for each script. 

## TE_expression
This directory contains scripts for TE family expression analysis:
1. `trim_galore.sh`:script for adapter trimming.
2. `TEtools.sh`: script for alignment to TE consensus sequence and quantifying TE family-level expression using the `TEtools` `TEcount` module.
3. `TE_differential_analysis.Rmd`: Script for performing differential expression analysis with `DESeq2`, normalization, and visualization.
4. `dm6_rosette.txt`: the rosette file requires for `TEcount`, name is the fasta name for the TE consensus sequence, followed by family, superfamily, order, and the fly base gene ID. 


