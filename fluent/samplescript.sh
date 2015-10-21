#!/bin/bash

# Name of Job.
#$ -N pylon-case-fluent
# Export all variables and use current working directory.
#$ -cwd -V

# Request x hours of run time (maximum=48hours).
#$ -l h_rt=01:00:00

# Specify memory requirement per process (maximum=32GB).
#$ -l h_vmem=2G

# Run on y# of processors.
#$ -l np=8

# get fluent licenses.
module load ansys/14.5.7
export ANSYSLMD_LICENSE_FILE=1055@***.leeds.ac.uk

# Email me after execution of job.
#$ -m be
#$ -M issmcal@leeds.ac.uk

# Open Fluent and read input file.
fluent -g -i input 3ddp -pib -sgeup
# --------------------- End of script ----------------------