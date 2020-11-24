echo "On Robust-COCO"
python  eval.py   --model   ./log/cexe-sup-kl-w0-transf/model-best.pth   --infos_path  ./log/cexe-sup-kl-w0-transf/infos_cexe-sup-kl-w0-transf-best.pkl  --beam_size  2  --id  cexe-sup-kl-w0-transf  --dataset  robust-coco 
python  eval.py   --model   ./log/cexe-sup-kl-w0.2-transf/model-best.pth   --infos_path  ./log/cexe-sup-kl-w0.2-transf/infos_cexe-sup-kl-w0.2-transf-best.pkl  --beam_size  2  --id  cexe-sup-kl-w0.2-transf  --dataset  robust-coco 
echo "On COCO"
python  eval.py   --model   ./log/cexe-sup-kl-w0-transf-coco/model-best.pth   --infos_path  ./log/cexe-sup-kl-w0-transf-coco/infos_cexe-sup-kl-w0-transf-coco-best.pkl   --beam_size  2  --id  cexe-sup-kl-w0-transf-coco  --dataset  coco 
python  eval.py   --model   ./log/cexe-sup-kl-w0.4-transf-coco/model-best.pth   --infos_path  ./log/cexe-sup-kl-w0.4-transf-coco/infos_cexe-sup-kl-w0.4-transf-coco-best.pkl   --beam_size  2  --id  cexe-sup-kl-w0.4-transf-coco  --dataset  coco 


