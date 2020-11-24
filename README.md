##transformer-cil branch

## Requirements
- Python 3.8
- Pytorch 1.6

## Prepare data
1. Please use **git clone --recurse-submodules** to clone this repository and remember to follow initialization steps in coco-caption/README.md. Remenber to download the "captions_robust_val_test.json" from [link](https://pan.baidu.com/s/1zt9LhEqrWM-dJkQ5mrG5VQ)(password:6666) and place it under coco-caption/annotations/
2. Download the preprocessd dataset from this [link](https://pan.baidu.com/s/1rGX-18JJGq9WmDCZ_saidw) 
(password:6666) and extract it to data/.
3. Please follow this [instruction](https://github.com/ruotianluo/self-critical.pytorch/blob/master/data/README.md#convert-from-peteanderson80s-original-file) to prepare the bottom-up features and place them under data/mscoco/.
4. Download the pretrained models from this [link](https://pan.baidu.com/s/1L_S0vJugCFeg1Zj9v_GgiQ)(password:6666) and extract them to log/.

## Evaluation
To reproduce the results reported in the Table 1 for transformer model, just run

```
bash eval_transformer.sh
```

## Training
For example, training the transformer model with cexe_weight=0.4 on COCO dataset
```
python train.py --id  cexe-sup-kl-w0.4-transf-coco  --caption_model transformer --noamopt --noamopt_warmup 20000  --batch_size 10 --beam_size 1 --learning_rate 5e-4 --num_layers 6 --input_encoding_size 512 --rnn_size 2048 --learning_rate_decay_start 0 --scheduled_sampling_start 0 --checkpoint_path  log/cexe-sup-kl-w0.4-transf-coco  --save_checkpoint_every 3000 --language_eval 1 --val_images_use 5000 --max_epochs 15  --cexe_weight  0.4  --dataset  coco
```

## Acknowledgements
This repository is built upon [Transformer_Captioning](https://github.com/ruotianluo/Transformer_Captioning).
