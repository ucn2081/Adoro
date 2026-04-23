
rm ${DM}/clip/umt5_xxl_fp8_e4m3fn_scaled.safetensors

COMFYUI_DIR=${WORKSPACE}/ComfyUI
# ${COMFYUI_DIR}/models/loras

DM="${COMFYUI_DIR}/models"
# cd "$path" 

cd /workspace/ComfyUI/models/diffusion_models
wget -nc -O wan2.2-i2v-rapid-aio-v10-nsfw-Q6_K.gguf     https://huggingface.co/befox/WAN2.2-14B-Rapid-AllInOne-GGUF/resolve/main/v10/wan2.2-i2v-rapid-aio-v10-nsfw-Q6_K.gguf
wget -nc -O wan2.2-rapid-mega-aio-nsfw-v12.1-Q6_K.gguf  https://huggingface.co/befox/WAN2.2-14B-Rapid-AllInOne-GGUF/resolve/main/Mega-v12/wan2.2-rapid-mega-aio-nsfw-v12.1-Q6_K.gguf
wget -nc -O Phantom_Wan_14B_FusionX-Q6_K.gguf           https://huggingface.co/QuantStack/Phantom_Wan_14B_FusionX-GGUF/resolve/main/Phantom_Wan_14B_FusionX-Q6_K.gguf
wget -nc -O Wan2.2-Animate-14B-Q4_K_M.gguf              https://huggingface.co/QuantStack/Wan2.2-Animate-14B-GGUF/resolve/main/Wan2.2-Animate-14B-Q4_K_M.gguf 

wget -nc -O "${DM}/checkpoints/real-world_ccsr-fp16.safetensors" "https://huggingface.co/Kijai/ccsr-safetensors/resolve/main/real-world_ccsr-fp16.safetensors"

mkdir "${DM}/insightface"
mkdir "${DM}/reswapper"

wget -nc -O "${DM}/insightface/inswapper_128.onnx" "https://huggingface.co/datasets/Gourieff/ReActor/resolve/main/models/inswapper_128.onnx"
wget -nc -O "${DM}/reswapper/reswapper_128.onnx"   "https://huggingface.co/datasets/Gourieff/ReActor/resolve/main/models/reswapper_128.onnx"
wget -nc -O "${DM}/reswapper/reswapper_256.onnx"   "https://huggingface.co/datasets/Gourieff/ReActor/resolve/main/models/reswapper_256.onnx"

wget -nc -O "${DM}/loras/lightx2v_T2V_14B_cfg_step_distill_v2_lora_rank32_bf16.safetensors" "https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Lightx2v/lightx2v_T2V_14B_cfg_step_distill_v2_lora_rank32_bf16.safetensors"
wget -nc -O "${DM}/loras/Bouncy SqueezyV1.safetensors"   "https://civitai.red/api/download/models/2345430?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "${DM}/loras/fingering_i2v_e248.safetensors" "https://civitai.red/api/download/models/1694292?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "${DM}/loras/better pussy than ... Wan480p v1.0.safetensors" "https://civitai.red/api/download/models/2056986?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "${DM}/loras/cunnilingus.safetensors" "https://civitai.red/api/download/models/2266465?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "${DM}/loras/wan2.1-i2v-480p-penis-arousal-v1.0.safetensors" "https://civitai.red/api/download/models/2086925?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "${DM}/loras/wan-i2v-trans-self-facial-v1.safetensors" "https://civitai.red/api/download/models/1572081?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "${DM}/loras/wan_i2v_pov_blowjob_v1.2.safetensors" "https://civitai.red/api/download/models/2021249?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "${DM}/loras/Breast Expansion Wan I2V.safetensors"  "https://civitai.red/api/download/models/1728992?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "${DM}/loras/masturbation_cumshot_v1.1_e310.safetensors" "https://civitai.red/api/download/models/1807318?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "${DM}/loras/Zoom-out.safetensors" "https://civitai.red/api/download/models/1814970?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "${DM}/loras/wan-m4crom4sti4-i2v-106epo-k3nk.safetensors" "https://civitai.red/api/download/models/2022744?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "${DM}/loras/LCM_LoRA_Weights_SDXL.safetensors"   "https://civitai.red/api/download/models/424720?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "${DM}/loras/ak1ko-000013ILL.safetensors" "https://civitai.red/api/download/models/2576669?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "${DM}/loras/GrungeWideShortsBaggyBootsILL.safetensors" "https://civitai.red/api/download/models/2256445?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "${DM}/loras/ak1ko-000013ILL.safetensors" "https://civitai.red/api/download/models/2576669?token=9ffbafa226d031653b7ea196c6334fe0"ç
wget -nc -O "${DM}/loras/outsauce_wan22_i2v_high_noise.safetensors"   "https://civitai.red/api/download/models/2350472?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "${DM}/loras/outsauce_wan22_i2v_low_noise.safetensors"   "https://civitai.red/api/download/models/2350490?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "${DM}/loras/wan22_i2v_taker_pov_bj_high_noise.safetensors" "https://civitai.red/api/download/models/2591003?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "${DM}/loras/wan22_i2v_taker_pov_bj_low_noise.safetensors" "https://civitai.red/api/download/models/2590993?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "${DM}/loras/wan-i2v-futa-trans-cowgirl-v1.safetensors"   "https://civitai.red/api/download/models/1553795?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "${DM}/loras/KZ.safetensors" "https://civitai.red/api/download/models/2157825?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "${DM}/loras/wan21_t2v_futaki.safetensors" "https://civitai.red/api/download/models/2369222?token=9ffbafa226d031653b7ea196c6334fe0"

wget -nc -O "${DM}/custom_nodes/ComfyUi-ImageGalleryLoader/custom_source_folders.json" "https://raw.githubusercontent.com/ucn2081/Adoro/refs/heads/main/custom_source_folders.json"

sed -i "s/0.969/9999999.969/" /workspace/ComfyUI/custom_nodes/ComfyUI-ReActor/scripts/reactor_sfw.py



# wget -nc -O "${DM}/checkpoints/illustrij_v21.safetensors"  "https://civitai.red/api/download/models/2728617?token=9ffbafa226d031653b7ea196c6334fe0"



