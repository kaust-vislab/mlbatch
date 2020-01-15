dlbatch() {
    sbatch --nodes=1 \
           --tasks-per-node=1 \
           --cpus-per-task=6 \
           --mem=64G \
           --gres=gpu:v100:1 \
           --constraint=[cpu_intel_platinum_8260|cpu_intel_gold_6142] \
           "$@"
}


dlbatch.2gpu() {
    sbatch --nodes=1 \
           --tasks-per-node=2 \
       	   --cpus-per-task=6 \
           --mem=128G \
       	   --gres=gpu:v100:2 \
           --constraint=[cpu_intel_platinum_8260|cpu_intel_gold_6142] \
       	   "$@"
}


dlbatch.4gpu() {
    sbatch --nodes=1 \
           --tasks-per-node=4 \
           --cpus-per-task=6 \
           --mem=256G \
           --gres=gpu:v100:4 \
           --constraint=[cpu_intel_platinum_8260|cpu_intel_gold_6142] \
           "$@"
}


dlbatch.8gpu() {
    sbatch --nodes=1 \
           --tasks-per-node=8 \
           --cpus-per-task=6 \
           --mem=512G \
           --gres=gpu:v100:8 \
           --constraint=cpu_intel_platinum_8260 \
           "$@"
}


