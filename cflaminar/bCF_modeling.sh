#!/bin/bash
#SBATCH --job-name=CF_modeling
#SBATCH --time=48:00:00
#SBATCH --partition=regular
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8        # matches n_jobs in CFM_UMCG.py
#SBATCH --mem=60GB
#SBATCH --output=/scratch/hb-EGRET-AAA/projects/UMCG/logs/CF_modeling_%j.out
 
source /home2/p315561/venvs/preproc/bin/activate
source ~/.bash_profile
 
export SUBJECTS_DIR=/scratch/hb-EGRET-AAA/projects/UMCG/derivatives/freesurfer
 
# To run in parallel across subjects:
#   cd /scratch/hb-EGRET-AAA/projects/UMCG
#   for_each sub-* : sbatch --output .../logs/CF_modeling_IN.out /path/to/run_CFM.sh IN
# Then uncomment:
# input="${1#sub-}"
# subject_id="sub-$input"
 
# ── Step 1: Bayesian CF modeling — all tasks, both hemispheres ─────────────────
# CFM_UMCG.py expects: project  hemisphere  task  subject  session
# Session is hardcoded to 02 for UMCG inside the script, but still required as argument.
 
for task in RET RET2 RS1 RS2; do
  for hemi in lh rh; do
    python /home2/p315561/programs/cflaminar/CFM_UMCG.py UMCG "$hemi" "$task" "$subject_id" 02
  done
done
 
# Step 2: Merge all subject PKL results into one CSV
python /home2/p315561/programs/cflaminar/data_load.py
 
# Step 3: Statistical analysis (LMM + Bayes Factors)
Run this on R terminal ('/home2/p315561/programs/cflaminar/subjectlevel_BF.Rmd')"
 