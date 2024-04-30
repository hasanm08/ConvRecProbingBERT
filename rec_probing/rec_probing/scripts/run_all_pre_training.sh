export CUDA_VISIBLE_DEVICES=4,5
# source ~/Desktop/ConvRecProbingBERT/env/bin/activate

REPO_DIR=~/Desktop/ConvRecProbingBERT
NUMBER_PROBE_QUERIES=100000

for PROBE_TYPE in 'recommendation-pop'
do
    for TASK in 'ml25m' 'gr' 'music'
    do
        python pre_train_BERT.py \
            --task $TASK \
            --probe_type ${PROBE_TYPE} \
            --input_folder $REPO_DIR/data/recommendation \
            --output_folder $REPO_DIR/data/output_data/probes/deberta/pre_train_bash/ \
            --number_queries $NUMBER_PROBE_QUERIES \
            --number_candidates 1 \
            --batch_size 32 \
            --bert_model "microsoft/deberta-base"
            # --num_epochs 5 \
    done
done

for PROBE_TYPE in  'search-inv'
do
    for TASK in 'ml25m' 'gr' 'music'
    do
        python pre_train_BERT.py \
            --task $TASK \
            --probe_type ${PROBE_TYPE} \
            --input_folder $REPO_DIR/data/search \
            --output_folder $REPO_DIR/data/output_data/probes/deberta/pre_train_bash/ \
            --number_queries $NUMBER_PROBE_QUERIES \
            --number_candidates 1 \
            --batch_size 32 \
            --bert_model "microsoft/deberta-base"
            # --num_epochs 5 \
    done
done


for PROBE_TYPE in 'mlm'
do
    for TASK in 'ml25m' 'gr' 'music'
    do
        python pre_train_BERT.py \
            --task $TASK \
            --probe_type ${PROBE_TYPE} \
            --input_folder $REPO_DIR/data/recommendation \
            --output_folder $REPO_DIR/data/output_data/probes/deberta/pre_train_bash/ \
            --number_queries $NUMBER_PROBE_QUERIES \
            --number_candidates 1 \
            --batch_size 32 \
            --bert_model "microsoft/deberta-base"
            # --num_epochs 5 \
    done
done