for  ((i=2;i<=6;i++))
do
	CUDA_VISIBLE_DEVICES=0 python3 main_reweight.py --batch_size 128 --nepochs 20 --num_classes 20 --nworkers 4 --seed $i --warmup_epoch 20 --dataset 'voc2012'  --root ./data/voc/ --out ./results/multi-label-reweight_p0.2_voc2012_ours_resnet50/ --noise_rate_p 0.2 --noise_rate_n 0.0    --estimator 'ours' --sample_epoch 10 
	CUDA_VISIBLE_DEVICES=0 python3 main_reweight.py --batch_size 128 --nepochs 20 --num_classes 20 --nworkers 4 --seed $i --warmup_epoch 20 --dataset 'voc2012'  --root ./data/voc/ --out ./results/multi-label-reweight_p0.6_voc2012_ours_resnet50/ --noise_rate_p 0.6 --noise_rate_n 0.0    --estimator 'ours' --sample_epoch 10 
	CUDA_VISIBLE_DEVICES=0 python3 main_reweight.py --batch_size 128 --nepochs 20 --num_classes 20 --nworkers 4 --seed $i --warmup_epoch 20 --dataset 'voc2012'  --root ./data/voc/ --out ./results/multi-label-reweight_n0.2_voc2012_ours_resnet50/ --noise_rate_p 0 --noise_rate_n 0.2     --estimator 'ours' --sample_epoch 10 
	CUDA_VISIBLE_DEVICES=0 python3 main_reweight.py --batch_size 128 --nepochs 20 --num_classes 20 --nworkers 4 --seed $i --warmup_epoch 20 --dataset 'voc2012'  --root ./data/voc/ --out ./results/multi-label-reweight_n0.6_voc2012_ours_resnet50/ --noise_rate_p 0 --noise_rate_n 0.6    --estimator 'ours' --sample_epoch 10 
	CUDA_VISIBLE_DEVICES=0 python3 main_reweight.py --batch_size 128 --nepochs 20 --num_classes 20 --nworkers 4 --seed $i --warmup_epoch 20 --dataset 'voc2012'  --root ./data/voc/ --out ./results/multi-label-reweight_p0.1n0.1_voc2012_ours_resnet50/ --noise_rate_p 0.1 --noise_rate_n 0.1    --estimator 'ours' --sample_epoch 10 
	CUDA_VISIBLE_DEVICES=0 python3 main_reweight.py --batch_size 128 --nepochs 20 --num_classes 20 --nworkers 4 --seed $i --warmup_epoch 20 --dataset 'voc2012'  --root ./data/voc/ --out ./results/multi-label-reweight_p0.2n0.2_voc2012_ours_resnet50/ --noise_rate_p 0.2 --noise_rate_n 0.2     --estimator 'ours' --sample_epoch 10 
	CUDA_VISIBLE_DEVICES=0 python3 main_reweight.py --batch_size 128 --nepochs 20 --num_classes 20 --nworkers 4 --seed $i --warmup_epoch 20 --dataset 'voc2012'  --root ./data/voc/ --out ./results/multi-label-reweight_p0.2n0.0172_voc2012_ours_resnet50/ --noise_rate_p 0.2 --noise_rate_n 0.0172    --estimator 'ours' --sample_epoch 10 
	CUDA_VISIBLE_DEVICES=0 python3 main_reweight.py --batch_size 128 --nepochs 20 --num_classes 20 --nworkers 4 --seed $i --warmup_epoch 20 --dataset 'voc2012'  --root ./data/voc/ --out ./results/multi-label-reweight_p0.4n0.0343_voc2012_ours_resnet50/ --noise_rate_p 0.4 --noise_rate_n 0.0343  --estimator 'ours' --sample_epoch 10 
done 