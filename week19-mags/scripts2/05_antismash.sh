#!/bin/bash
#SBATCH --job-name=antiSMASH
#SBATCH --output=/maps/projects/course_1/scratch/group_5/logs/antiSMASH_%j.out
#SBATCH --error=/maps/projects/course_1/scratch/group_5/logs/antiSMASH_%j.err
#SBATCH --nodelist=mjolnircomp16fl
#SBATCH --reservation=NBIB25004U
#SBATCH --account=teaching
#SBATCH --cpus-per-task=8
#SBATCH --mem=8G
#SBATCH --time=00:30:00

module purge
module load antismash/8.0.1

##########################
###### first genome ######
##########################
sample1="Lactobacillus_crispatus"

INPUT1="/maps/projects/course_1/scratch/group5/group-project-group-5/week19-mags/09_annotation_bakta_ref/${sample1}/${sample1}.gbff"
OUTDIR1="/maps/projects/course_1/scratch/group5/group-project-group-5/week19-mags/11_annotation_BGC_ref/${sample1}"

mkdir -p "${OUTDIR1}"

echo "Starting antiSMASH annotation for ${sample1}"

antismash --genefinding-tool none --cpus 8 --cb-knownclusters --cb-subclusters --asf --rre --tfbs --output-dir "${OUTDIR1}" "${INPUT1}"

echo =========================================================================
echo "antiSMASH annotation completed for ${sample1}. Output in ${OUTDIR1}"
echo =========================================================================

##########################
###### second genome #####
##########################

sample2="Bifidobacterium_infantis"
INPUT2="/maps/projects/course_1/scratch/group5/group-project-group-5/week19-mags/09_annotation_bakta_ref/${sample2}/${sample2}.gbff"
OUTDIR2="/maps/projects/course_1/scratch/group5/group-project-group-5/week19-mags/11_annotation_BGC_ref/${sample2}"
mkdir -p "${OUTDIR2}"
echo "Starting antiSMASH annotation for ${sample2}"

antismash --genefinding-tool none --cpus 8 --cb-knownclusters --cb-subclusters --asf --rre --tfbs --output-dir "${OUTDIR2}" "${INPUT2}"

echo =========================================================================
echo "antiSMASH annotation completed for ${sample2}. Output in ${OUTDIR2}"
echo =========================================================================


##########################
###### third genome ######
##########################

sample3="Bacteroides_thetaiotaomicron"
INPUT3="/maps/projects/course_1/scratch/group5/group-project-group-5/week19-mags/09_annotation_bakta_ref/${sample3}/${sample3}.gbff"
OUTDIR3="/maps/projects/course_1/scratch/group5/group-project-group-5/week19-mags/11_annotation_BGC_ref/${sample3}"
mkdir -p "${OUTDIR3}"
echo "Starting antiSMASH annotation for ${sample3}"

antismash --genefinding-tool none --cpus 8 --cb-knownclusters --cb-subclusters --asf --rre --tfbs --output-dir "${OUTDIR3}" "${INPUT3}"

echo =========================================================================
echo "antiSMASH annotation completed for ${sample3}. Output in ${OUTDIR3}"
echo =========================================================================

# Pick a local destination on your laptop
LOCAL_DIR=~/antismash_results
mkdir -p "$LOCAL_DIR"
 
# Copy everything (3 reference genomes — in class)
rsync -avh --progress \
    rvw283@mjolnirgate01fl.unicph.domain:/maps/projects/course_1/scratch/group5/group-project-group-5/week19-mags/11_annotation_BGC_ref/ \
    "$LOCAL_DIR/"
