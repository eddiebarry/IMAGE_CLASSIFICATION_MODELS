#pip install --upgrade "tensorflow==1.7.*"

IMAGE_SIZE=224
ARCHITECTURE="mobilenet_1.0_${IMAGE_SIZE}"

python -m scripts.retrain \
  --bottleneck_dir=tf_files/bottlenecks \
  --how_many_training_steps=500 \
  --model_dir=tf_files/models/ \
  --summaries_dir=tf_files/training_summaries/"${ARCHITECTURE}" \
  --output_graph=retrained_graph.pb \
  --output_labels=retrained_labels.txt \
  --architecture="${ARCHITECTURE}" \
  --image_dir=tf_files/data \
  --random_brightness=20 \
  --random_scale=20 \
  --random_crop=20 \
  --flip_left_right \
  

 