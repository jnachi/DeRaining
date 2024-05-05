for i in $(seq 1 1 1)
do
    echo "dealing with ${i}:";
    python3 ./validation.py \
    --load_name "./models/v4_rain1400.pth" \
    --save_name "./results/results_tmp" \
    --baseroot "./datasets/test" ;
done