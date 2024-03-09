export CUDA_VISIBLE_DEVICES=6,7
# source /ssd/home/gustavo/recsys2020penha/env/bin/activate

REPO_DIR=~/Desktop/ConvRecProbingBERT
NUMBER_PROBE_QUERIES=100000

for SENTENCE_TYPE in 'no-item' 'type-I' 'type-II'
do
    for TASK in 'ml25m' 'gr' 'music'
    do
        python run_mlm_probe.py \
        --task $TASK \
        --input_folder $REPO_DIR/data/recommendation \
        --output_folder $REPO_DIR/data/output_data/probes/deberta \
        --number_queries $NUMBER_PROBE_QUERIES \
        --batch_size 32 \
        --sentence_type ${SENTENCE_TYPE} \
        --bert_model 'deberta-v2-xlarge'
    done
done
