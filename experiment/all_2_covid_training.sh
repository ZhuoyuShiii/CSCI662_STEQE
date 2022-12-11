

# export TRAIN_FILE=../data/for_t5/train/merged_temporal.txt
# export TEST_FILE=../data/for_t5/test/covid_temporal.txt

# python train_t5.py \
#     --output_dir=temporal_all_covid_20 \
#     --model_type=t5 \
#     --tokenizer_name=t5-base \
#     --model_name_or_path=t5-base \
#     --do_train \
#     --do_eval \
#     --num_train_epochs=20 \
#     --train_data_file=$TRAIN_FILE \
#     --eval_data_file=$TEST_FILE \
#     --line_by_line \
#     --per_gpu_train_batch_size=1 \
#     --per_device_train_batch_size=1 \
#     --gradient_accumulation_steps=1 \
#     --per_device_eval_batch_size=1 \
#     --per_gpu_eval_batch_size=1 \
#     --save_steps=10000 \
#     --seed=10 \
#     --logging_steps=1000 \
#     --overwrite_output_dir


export TRAIN_FILE=../data/for_t5/train/merged_spatial.txt
export TEST_FILE=../data/for_t5/test/covid_spatial.txt

python train_t5.py \
    --output_dir=spatial_all_covid_20 \
    --model_type=t5 \
    --tokenizer_name=t5-base \
    --model_name_or_path=t5-base \
    --do_train \
    --do_eval \
    --num_train_epochs=20 \
    --train_data_file=$TRAIN_FILE \
    --eval_data_file=$TEST_FILE \
    --line_by_line \
    --per_gpu_train_batch_size=1 \
    --per_device_train_batch_size=1 \
    --gradient_accumulation_steps=1 \
    --per_device_eval_batch_size=1 \
    --per_gpu_eval_batch_size=1 \
    --save_steps=10000 \
    --seed=10 \
    --logging_steps=1000 \
    --overwrite_output_dir
