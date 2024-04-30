export CUDA_VISIBLE_DEVICES=6,7
# source ~/Desktop/ConvRecProbingBERT/env/bin/activate

REPO_DIR=~/Desktop/ConvRecProbingBERT
# output_folder=$REPO_DIR/data/output_data/probes/deberta/
# input_folder= $REPO_DIR/data/recommendation
bert_model='microsoft/deberta-base'
NUMBER_PROBE_QUERIES=100000

# for SENTENCE_TYPE in 'no-item' 'type-I' 'type-II'
# do
#     for TASK in 'ml25m' 'gr' 'music'
#     do
#         python run_mlm_probe.py \
#         --task $TASK \
#         --input_folder $input_folder \
#         --output_folder $output_folder/type:mlm-probe \
#         --number_queries $NUMBER_PROBE_QUERIES \
#         --batch_size 32 \
#         --sentence_type ${SENTENCE_TYPE} \
#         --bert_model $bert_model
#     done
# done

for SENTENCE_TYPE in 'no-item' 'type-I' 'type-II'
do
    for TASK in 'ml25m' 'gr' 'music'
    do
        for PROBE_TECHNIQUE in 'mean-sim' 'cls-sim' 'nsp'
        do
            for PROBE_TYPE in 'recommendation' 'search'
            do  
                python run_probes.py \
                --task $TASK \
                --probe_type $PROBE_TYPE \
                --input_folder $REPO_DIR/data/$PROBE_TYPE/ \
                --output_folder $REPO_DIR/data/output_data/probes/deberta/type:simple_probe \
                --number_queries $NUMBER_PROBE_QUERIES \
                --number_candidates 5 \
                --batch_size 64 \
                --probe_technique $PROBE_TECHNIQUE \
                --bert_model $bert_model 
            done
        done
    done
done
