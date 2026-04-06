
rm /workspace/ComfyUI/models/clip/umt5_xxl_fp8_e4m3fn_scaled.safetensors

COMFYUI_DIR=${WORKSPACE}/ComfyUI
# ${COMFYUI_DIR}/models/loras

DM="${COMFYUI_DIR}/models"
# cd "$path" 

mkdir "/workspace/ComfyUI/models/loras"
mkdir "/workspace/ComfyUI/models/loras/Wan"
mkdir "/workspace/ComfyUI/models/loras/Wan 2.2"
mkdir "/workspace/ComfyUI/models/insightface"
mkdir "/workspace/ComfyUI/models/reswapper"


cd /workspace/ComfyUI/models/diffusion_models

wget -nc -O "/workspace/ComfyUI/models/diffusion_models/wan2.2-i2v-rapid-aio-v10-nsfw-Q4_K.gguf"     https://huggingface.co/befox/WAN2.2-14B-Rapid-AllInOne-GGUF/resolve/main/v10/wan2.2-i2v-rapid-aio-v10-nsfw-Q4_K.gguf
wget -nc -O "/workspace/ComfyUI/models/diffusion_models/Phantom_Wan_14B_FusionX-Q4_K.gguf"           https://huggingface.co/QuantStack/Phantom_Wan_14B_FusionX-GGUF/resolve/main/Phantom_Wan_14B_FusionX-Q4_K.gguf
wget -nc -O "/workspace/ComfyUI/models/diffusion_models/Wan2.2-Animate-14B-Q4_K_M.gguf"              https://huggingface.co/QuantStack/Wan2.2-Animate-14B-GGUF/resolve/main/Wan2.2-Animate-14B-Q4_K_M.gguf

wget -nc -O "/workspace/ComfyUI/models/clip/umt5-xxl-encoder-Q8_0.gguf"        "https://huggingface.co/city96/umt5-xxl-encoder-gguf/resolve/main/umt5-xxl-encoder-Q8_0.gguf"
wget -nc -O "/workspace/ComfyUI/models/clip_vision/clip_vision_h.safetensors"  "https://huggingface.co/SimonCaine/comfyui-models/resolve/main/clip_vision/clip_vision_h.safetensors"
wget -nc -O "/workspace/ComfyUI/models/vae/wan_2.1_vae.safetensors"            "https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/vae/wan_2.1_vae.safetensors"

wget -nc -O "/workspace/ComfyUI/models/checkpoints/real-world_ccsr-fp16.safetensors" "https://huggingface.co/Kijai/ccsr-safetensors/resolve/main/real-world_ccsr-fp16.safetensors"



wget -nc -O "/workspace/ComfyUI/models/insightface/inswapper_128.onnx"    "https://huggingface.co/datasets/Gourieff/ReActor/resolve/main/models/inswapper_128.onnx"
wget -nc -O "/workspace/ComfyUI/models/reswapper/reswapper_128.onnx"      "https://huggingface.co/datasets/Gourieff/ReActor/resolve/main/models/reswapper_128.onnx"
wget -nc -O "/workspace/ComfyUI/models/reswapper/reswapper_256.onnx"      "https://huggingface.co/datasets/Gourieff/ReActor/resolve/main/models/reswapper_256.onnx"
wget -nc -O "/workspace/ComfyUI/models/facerestore_models/codeformer.pth" "https://github.com/sczhou/CodeFormer/releases/download/v0.1.0/codeformer.pth"

wget -nc -O "/workspace/ComfyUI/models/loras/Wan/lightx2v_T2V_14B_cfg_step_distill_v2_lora_rank32_bf16.safetensors" "https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Lightx2v/lightx2v_T2V_14B_cfg_step_distill_v2_lora_rank32_bf16.safetensors"
wget -nc -O "/workspace/ComfyUI/models/loras/Wan/Bouncy SqueezyV1.safetensors"   "https://civitai.com/api/download/models/2345430?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "/workspace/ComfyUI/models/loras/Wan/fingering_i2v_e248.safetensors" "https://civitai.com/api/download/models/1694292?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "/workspace/ComfyUI/models/loras/Wan/better pussy than ... Wan480p v1.0.safetensors" "https://civitai.com/api/download/models/2056986?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "/workspace/ComfyUI/models/loras/Wan/cunnilingus.safetensors" "https://civitai.com/api/download/models/2266465?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "/workspace/ComfyUI/models/loras/Wan/wan2.1-i2v-480p-penis-arousal-v1.0.safetensors" "https://civitai.com/api/download/models/2086925?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "/workspace/ComfyUI/models/loras/Wan/wan-i2v-trans-self-facial-v1.safetensors" "https://civitai.com/api/download/models/1572081?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "/workspace/ComfyUI/models/loras/Wan/wan_i2v_pov_blowjob_v1.2.safetensors" "https://civitai.com/api/download/models/2021249?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "/workspace/ComfyUI/models/loras/Wan/Breast Expansion Wan I2V.safetensors"  "https://civitai.com/api/download/models/1728992?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "/workspace/ComfyUI/models/loras/Wan/masturbation_cumshot_v1.1_e310.safetensors" "https://civitai.com/api/download/models/1807318?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "/workspace/ComfyUI/models/loras/Wan/Zoom-out.safetensors" "https://civitai.com/api/download/models/1814970?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "/workspace/ComfyUI/models/loras/Wan/wan-m4crom4sti4-i2v-106epo-k3nk.safetensors" "https://civitai.com/api/download/models/2022744?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "/workspace/ComfyUI/models/loras/Wan/LCM_LoRA_Weights_SDXL.safetensors"   "https://civitai.com/api/download/models/424720?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "/workspace/ComfyUI/models/loras/Wan/ak1ko-000013ILL.safetensors" "https://civitai.com/api/download/models/2576669?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "/workspace/ComfyUI/models/loras/Wan/GrungeWideShortsBaggyBootsILL.safetensors" "https://civitai.com/api/download/models/2256445?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "/workspace/ComfyUI/models/loras/Wan/ak1ko-000013ILL.safetensors" "https://civitai.com/api/download/models/2576669?token=9ffbafa226d031653b7ea196c6334fe0"รง
wget -nc -O "/workspace/ComfyUI/models/loras/Wan/outsauce_wan22_i2v_high_noise.safetensors"   "https://civitai.com/api/download/models/2350472?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "/workspace/ComfyUI/models/loras/Wan/outsauce_wan22_i2v_low_noise.safetensors"   "https://civitai.com/api/download/models/2350490?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "/workspace/ComfyUI/models/loras/Wan/wan22_i2v_taker_pov_bj_high_noise.safetensors" "https://civitai.com/api/download/models/2591003?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "/workspace/ComfyUI/models/loras/Wan/wan22_i2v_taker_pov_bj_low_noise.safetensors" "https://civitai.com/api/download/models/2590993?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "/workspace/ComfyUI/models/loras/Wan/wan-i2v-futa-trans-cowgirl-v1.safetensors"   "https://civitai.com/api/download/models/1553795?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "/workspace/ComfyUI/models/loras/Wan/KZ.safetensors" "https://civitai.com/api/download/models/2157825?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "/workspace/ComfyUI/models/loras/Wan/wan21_t2v_futaki.safetensors" "https://civitai.com/api/download/models/2369222?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "/workspace/ComfyUI/models/loras/Wan 2.2/readyforbj_WAN22_000001250_high_noise.safetensors" "https://civitai.com/api/download/models/2481215?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "/workspace/ComfyUI/models/loras/Wan 2.2/readyforbj_WAN22_000001250_low_noise.safetensors"  "https://civitai.com/api/download/models/2481203?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "/workspace/ComfyUI/models/loras/Wan 2.2/SeductiveTurnsHigh-000048.safetensors" "https://civitai.com/api/download/models/2212521?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "/workspace/ComfyUI/models/loras/Wan 2.2/SeductiveTurnsLow-000048.safetensors"  "https://civitai.com/api/download/models/2212510?token=9ffbafa226d031653b7ea196c6334fe0"


wget -nc -O "/workspace/ComfyUI/models/loras/Wan 2.2/Wan_2_2_I2V_A14B_HIGH_lightx2v_4step_lora_v1030_rank_64_bf16.safetensors" "https://civitai.com/api/download/models/2361379?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "/workspace/ComfyUI/models/loras/Wan 2.2/Wan_2_2_I2V_A14B_HIGH_lightx2v_4step_lora_v1030_rank_64_bf16.safetensors" "https://civitai.com/api/download/models/2361379?token=9ffbafa226d031653b7ea196c6334fe0"


wget -nc -O "${COMFYUI_DIR}/custom_nodes/ComfyUi-ImageGalleryLoader/custom_source_folders.json" "https://raw.githubusercontent.com/ucn2081/Adoro/refs/heads/main/custom_source_folders.json"


wget -nc -O "/workspace/ComfyUI/models/diffusion_models/wan2.2-rapid-mega-aio-nsfw-v12.1-Q6_K.gguf"  https://huggingface.co/befox/WAN2.2-14B-Rapid-AllInOne-GGUF/resolve/main/Mega-v12/wan2.2-rapid-mega-aio-nsfw-v12.1-Q4_K.gguf


wget -nc -O "/workspace/ComfyUI/models/loras/Wan 2.2/P009-The-Walk-Wan2.2-i2v_Normal-H.safetensors" "https://civitai.com/api/download/models/2254373?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "/workspace/ComfyUI/models/loras/Wan 2.2/P009-The-Walk-Wan2.2-i2v_Normal-L.safetensors" "https://civitai.com/api/download/models/2254403?token=9ffbafa226d031653b7ea196c6334fe0"

cd /workspace/ComfyUI/models/diffusion_models
wget -nc https://huggingface.co/bullerwins/Wan2.2-I2V-A14B-GGUF/resolve/main/wan2.2_i2v_high_noise_14B_Q4_K_M.gguf
wget -nc https://huggingface.co/bullerwins/Wan2.2-I2V-A14B-GGUF/resolve/main/wan2.2_i2v_low_noise_14B_Q4_K_M.gguf

cd /workspace/ComfyUI/models/loras
wget -nc https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Lightx2v/lightx2v_I2V_14B_480p_cfg_step_distill_rank256_bf16.safetensors
wget -nc https://huggingface.co/lightx2v/Wan2.2-Distill-Loras/resolve/main/wan2.2_i2v_A14b_low_noise_lora_rank64_lightx2v_4step_1022.safetensors

sed -i "s/0.969/9999999.969/" /workspace/ComfyUI/custom_nodes/ComfyUI-ReActor/scripts/reactor_sfw.py


# wget -nc -O "/workspace/ComfyUI/models/checkpoints/illustrij_v21.safetensors"  "https://civitai.com/api/download/models/2728617?token=9ffbafa226d031653b7ea196c6334fe0"




