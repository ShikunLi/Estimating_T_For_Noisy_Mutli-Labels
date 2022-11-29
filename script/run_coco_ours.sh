for  ((i=2;i<=4;i++))
do
	CUDA_VISIBLE_DEVICES=0 python3 main_reweight.py --batch_size 128 --nepochs 30 --num_classes 80 --nworkers 4 --seed $i --warmup_epoch 30 --dataset 'coco'  --root ./data/MS-COCO/ --out ./results/multi-label-reweight_p0.2_coco_ours_resnet50/ --noise_rate_p 0.2 --noise_rate_n 0.0    --estimator 'ours' --sample_epoch 15 
	CUDA_VISIBLE_DEVICES=0 python3 main_reweight.py --batch_size 128 --nepochs 30 --num_classes 80 --nworkers 4 --seed $i --warmup_epoch 30 --dataset 'coco'  --root ./data/MS-COCO/ --out ./results/multi-label-reweight_p0.6_coco_ours_resnet50/ --noise_rate_p 0.6 --noise_rate_n 0.0    --estimator 'ours' --sample_epoch 15 
	CUDA_VISIBLE_DEVICES=0 python3 main_reweight.py --batch_size 128 --nepochs 30 --num_classes 80 --nworkers 4 --seed $i --warmup_epoch 30 --dataset 'coco'  --root ./data/MS-COCO/ --out ./results/multi-label-reweight_n0.2_coco_ours_resnet50/ --noise_rate_p 0 --noise_rate_n 0.2     --estimator 'ours' --sample_epoch 15 
	CUDA_VISIBLE_DEVICES=0 python3 main_reweight.py --batch_size 128 --nepochs 30 --num_classes 80 --nworkers 4 --seed $i --warmup_epoch 30 --dataset 'coco'  --root ./data/MS-COCO/ --out ./results/multi-label-reweight_n0.6_coco_ours_resnet50/ --noise_rate_p 0 --noise_rate_n 0.6    --estimator 'ours' --sample_epoch 15 
	CUDA_VISIBLE_DEVICES=0 python3 main_reweight.py --batch_size 128 --nepochs 30 --num_classes 80 --nworkers 4 --seed $i --warmup_epoch 30 --dataset 'coco'  --root ./data/MS-COCO/ --out ./results/multi-label-reweight_p0.1n0.1_coco_ours_resnet50/ --noise_rate_p 0.1 --noise_rate_n 0.1    --estimator 'ours' --sample_epoch 15 
	CUDA_VISIBLE_DEVICES=0 python3 main_reweight.py --batch_size 128 --nepochs 30 --num_classes 80 --nworkers 4 --seed $i --warmup_epoch 30 --dataset 'coco'  --root ./data/MS-COCO/ --out ./results/multi-label-reweight_p0.2n0.2_coco_ours_resnet50/ --noise_rate_p 0.2 --noise_rate_n 0.2     --estimator 'ours' --sample_epoch 15 
	CUDA_VISIBLE_DEVICES=0 python3 main_reweight.py --batch_size 128 --nepochs 30 --num_classes 80 --nworkers 4 --seed $i --warmup_epoch 30 --dataset 'coco'  --root ./data/MS-COCO/ --out ./results/multi-label-reweight_p0.2n0.00752_coco_ours_resnet50/ --noise_rate_p 0.2 --noise_rate_n 0.00752    --estimator 'ours' --sample_epoch 15 
	CUDA_VISIBLE_DEVICES=0 python3 main_reweight.py --batch_size 128 --nepochs 30 --num_classes 80 --nworkers 4 --seed $i --warmup_epoch 30 --dataset 'coco'  --root ./data/MS-COCO/ --out ./results/multi-label-reweight_p0.4n0.01504_coco_ours_resnet50/ --noise_rate_p 0.4 --noise_rate_n 0.01504  --estimator 'ours' --sample_epoch 15 
done 