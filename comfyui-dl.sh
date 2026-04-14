
rm /workspace/ComfyUI/models/clip/umt5_xxl_fp8_e4m3fn_scaled.safetensors

COMFYUI_DIR=${WORKSPACE}/ComfyUI
# ${COMFYUI_DIR}/models/loras

DM="${COMFYUI_DIR}/models"
# cd "$path" 

mkdir "/workspace/ComfyUI/models/loras"
mkdir "/workspace/ComfyUI/models/loras/Wan"
mkdir "/workspace/ComfyUI/models/loras/Wan_2.2"
mkdir "/workspace/ComfyUI/models/loras/Qwen"
mkdir "/workspace/ComfyUI/models/insightface"
mkdir "/workspace/ComfyUI/models/reswapper"


cd /workspace/ComfyUI/models/diffusion_models
wget -nc https://huggingface.co/bullerwins/Wan2.2-I2V-A14B-GGUF/resolve/main/wan2.2_i2v_high_noise_14B_Q4_K_M.gguf
wget -nc https://huggingface.co/bullerwins/Wan2.2-I2V-A14B-GGUF/resolve/main/wan2.2_i2v_low_noise_14B_Q4_K_M.gguf
wget -nc https://huggingface.co/vantagewithai/Qwen-Image-Edit-2511-GGUF/resolve/main/Qwen-Image-Edit-2511-Q4_K_M.gguf

#wget -nc https://huggingface.co/befox/WAN2.2-14B-Rapid-AllInOne-GGUF/resolve/main/v10/wan2.2-i2v-rapid-aio-v10-nsfw-Q4_K.gguf
#wget -nc https://huggingface.co/QuantStack/Phantom_Wan_14B_FusionX-GGUF/resolve/main/Phantom_Wan_14B_FusionX-Q4_K.gguf
#wget -nc https://huggingface.co/QuantStack/Wan2.2-Animate-14B-GGUF/resolve/main/Wan2.2-Animate-14B-Q4_K_M.gguf
#wget -nc https://huggingface.co/befox/WAN2.2-14B-Rapid-AllInOne-GGUF/resolve/main/Mega-v12/wan2.2-rapid-mega-aio-nsfw-v12.1-Q4_K.gguf

# wget -nc -O "/workspace/ComfyUI/models/checkpoints/illustrij_v21.safetensors"  "https://civitai.com/api/download/models/2728617?token=9ffbafa226d031653b7ea196c6334fe0"



wget -nc -O "/workspace/ComfyUI/custom_nodes/ComfyUi-ImageGalleryLoader/custom_source_folders.json" "https://raw.githubusercontent.com/ucn2081/Adoro/refs/heads/main/custom_source_folders.json"

wget -nc -O "/workspace/ComfyUI/models/clip/umt5-xxl-encoder-Q8_0.gguf"        "https://huggingface.co/city96/umt5-xxl-encoder-gguf/resolve/main/umt5-xxl-encoder-Q8_0.gguf"
wget -nc -O "/workspace/ComfyUI/models/clip_vision/clip_vision_h.safetensors"  "https://huggingface.co/SimonCaine/comfyui-models/resolve/main/clip_vision/clip_vision_h.safetensors"
wget -nc -O "/workspace/ComfyUI/models/vae/wan_2.1_vae.safetensors"            "https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/vae/wan_2.1_vae.safetensors"

wget -nc -O "/workspace/ComfyUI/models/checkpoints/real-world_ccsr-fp16.safetensors" "https://huggingface.co/Kijai/ccsr-safetensors/resolve/main/real-world_ccsr-fp16.safetensors"


wget -nc -O "/workspace/ComfyUI/models/insightface/inswapper_128.onnx"    "https://huggingface.co/datasets/Gourieff/ReActor/resolve/main/models/inswapper_128.onnx"
wget -nc -O "/workspace/ComfyUI/models/reswapper/reswapper_128.onnx"      "https://huggingface.co/datasets/Gourieff/ReActor/resolve/main/models/reswapper_128.onnx"
wget -nc -O "/workspace/ComfyUI/models/facerestore_models/codeformer.pth" "https://github.com/sczhou/CodeFormer/releases/download/v0.1.0/codeformer.pth"


cd "/workspace/ComfyUI/models/loras/Wan"
wget -nc -O Zoom-out.safetensors                                     "https://civitai.com/api/download/models/1814970?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O wan_i2v_pov_blowjob_v1.2.safetensors                     "https://civitai.com/api/download/models/2021249?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O wan21_t2v_futaki.safetensors                             "https://civitai.com/api/download/models/2369222?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O wan2.1-i2v-480p-penis-arousal-v1.0.safetensors           "https://civitai.com/api/download/models/2086925?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O wan-m4crom4sti4-i2v-106epo-k3nk.safetensors              "https://civitai.com/api/download/models/2022744?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O wan-i2v-trans-self-facial-v1.safetensors                 "https://civitai.com/api/download/models/1572081?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O wan-i2v-futa-trans-cowgirl-v1.safetensors                "https://civitai.com/api/download/models/1553795?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O masturbation_cumshot_v1.1_e310.safetensors               "https://civitai.com/api/download/models/1807318?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O LCM_LoRA_Weights_SDXL.safetensors                        "https://civitai.com/api/download/models/424720?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O KZ.safetensors                                           "https://civitai.com/api/download/models/2157825?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O GrungeWideShortsBaggyBootsILL.safetensors                "https://civitai.com/api/download/models/2256445?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O fingering_i2v_e248.safetensors                           "https://civitai.com/api/download/models/1694292?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O cunnilingus.safetensors                                  "https://civitai.com/api/download/models/2266465?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O Breast Expansion Wan I2V.safetensors                     "https://civitai.com/api/download/models/1728992?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O Bouncy SqueezyV1.safetensors                             "https://civitai.com/api/download/models/2345430?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O ak1ko-000013ILL.safetensors                              "https://civitai.com/api/download/models/2576669?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O ak1ko-000013ILL.safetensors                              "https://civitai.com/api/download/models/2576669?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O better_pussy.safetensors                                 "https://civitai.com/api/download/models/2056986?token=9ffbafa226d031653b7ea196c6334fe0"

#wget -nc -O https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Lightx2v/lightx2v_T2V_14B_cfg_step_distill_v2_lora_rank32_bf16.safetensors


cd "/workspace/ComfyUI/models/loras/Wan_2.2"
# https://huggingface.co/Kijai/WanVideo_comfy/blob/main/Lightx2v/lightx2v_I2V_14B_480p_cfg_step_distill_rank256_bf16.safetensors
# SHA256: f974aced60f1d833eca0f5d6851346fbb6eacc307c6371555b565f5617fe3859
wget -nc https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Lightx2v/lightx2v_I2V_14B_480p_cfg_step_distill_rank256_bf16.safetensors
# https://huggingface.co/lightx2v/Wan2.2-Distill-Loras/blob/main/wan2.2_i2v_A14b_low_noise_lora_rank64_lightx2v_4step_1022.safetensors
# SHA256: 8833bd4fd7c8eabebf0bc8ee5cfaf47f4f310ce116928a02c1adf8941dd4b0f1
wget -nc https://huggingface.co/lightx2v/Wan2.2-Distill-Loras/resolve/main/wan2.2_i2v_A14b_low_noise_lora_rank64_lightx2v_4step_1022.safetensors
wget -nc -O wan22_i2v_taker_pov_bj_low_noise.safetensors              "https://civitai.com/api/download/models/2590993?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O wan22_i2v_taker_pov_bj_high_noise.safetensors             "https://civitai.com/api/download/models/2591003?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O outsauce_wan22_i2v_low_noise.safetensors                  "https://civitai.com/api/download/models/2350490?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O outsauce_wan22_i2v_high_noise.safetensors                 "https://civitai.com/api/download/models/2350472?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O SeductiveTurnsLow-000048.safetensors                      "https://civitai.com/api/download/models/2212510?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O SeductiveTurnsHigh-000048.safetensors                     "https://civitai.com/api/download/models/2212521?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O readyforbj_WAN22_000001250_low_noise.safetensors          "https://civitai.com/api/download/models/2481203?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O readyforbj_WAN22_000001250_high_noise.safetensors         "https://civitai.com/api/download/models/2481215?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O P009-The-Walk-Wan2.2-i2v_Normal-L.safetensors             "https://civitai.com/api/download/models/2254403?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O P009-The-Walk-Wan2.2-i2v_Normal-H.safetensors             "https://civitai.com/api/download/models/2254373?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O Futa-Masturbation-Cumshot-Low.safetensors                 "https://civitai.com/api/download/models/2368269?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O Futa-Masturbation-Cumshot-High.safetensors                "https://civitai.com/api/download/models/2365856?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O WAN2.2-T2V-Full-Futanari-Cropped-v3.0.0-resumed-2_HighNoise.safetensors "https://civitai.com/api/download/models/2613370?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O WAN2.2-T2V-Full-Futanari-Cropped-v3.0.0-resumed-2_LowhNoise.safetensors "https://civitai.com/api/download/models/2613378?token=9ffbafa226d031653b7ea196c6334fe0"


cd    "/workspace/ComfyUI/models/loras/Qwen"
wget -nc -O qwen_futa_5000steps.safetensors                              "https://civitai.com/api/download/models/2234943?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O Qwen-Image-Edit-2509-Futanarify_V1.0.2_000006500.safetensors "https://civitai.com/api/download/models/2410172?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O qwen_2512_pussy_anus_v2.safetensors                          "https://civitai.com/api/download/models/2576020?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O extract-outfit_v3.safetensors                                "https://civitai.com/api/download/models/2196307?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "Wan2.2 - T2V - Dildo - LOW 14B.safetensors"                 "https://civitai.com/api/download/models/2838168?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "Wan2.2 - T2V - Dildo - HIGH 14B.safetensors"                "https://civitai.com/api/download/models/2838161?token=9ffbafa226d031653b7ea196c6334fe0"






sed -i "s/0.969/9999999.969/" /workspace/ComfyUI/custom_nodes/ComfyUI-ReActor/scripts/reactor_sfw.py

wget -nc -O "${COMFYUI_DIR}/custom_nodes/ComfyUi-ImageGalleryLoader/custom_source_folders.json" "https://raw.githubusercontent.com/ucn2081/Adoro/refs/heads/main/custom_source_folders.json"

# EL MODELO NUNCHAKU NO SOPORTA LORAS NI NSFW
# svdq-int4_r32-qwen-image-edit-2509-lightningv2.0-4steps.safetensors
# https://huggingface.co/nunchaku-ai/nunchaku-qwen-image-edit-2509/resolve/main/svdq-fp4_r128-qwen-image-edit-2509-lightningv2.0-4steps.safetensors
# https://huggingface.co/nunchaku-ai/nunchaku-qwen-image-edit-2509/resolve/main/svdq-int4_r128-qwen-image-edit-2509-lightningv2.0-4steps.safetensors

# EL MODELO Q3_K_M PESA 10GB
# https://huggingface.co/vantagewithai/Qwen-Image-Edit-2511-GGUF/resolve/main/Qwen-Image-Edit-2511-Q3_K_M.gguf
# EL MODELO Q4_K_M PESA 13GB
# https://huggingface.co/vantagewithai/Qwen-Image-Edit-2511-GGUF/resolve/main/Qwen-Image-Edit-2511-Q4_K_M.gguf
# https://huggingface.co/unsloth/Qwen-Image-Edit-2511-GGUF/blob/main/qwen-image-edit-2511-Q4_K_M.gguf


cd "/workspace/ComfyUI/models/clip"
# https://huggingface.co/Comfy-Org/Qwen-Image_ComfyUI/resolve/main/split_files/text_encoders/qwen_2.5_vl_7b_fp8_scaled.safetensors

cd "/workspace/ComfyUI/models/vae"
wget -nc https://huggingface.co/Comfy-Org/Qwen-Image_ComfyUI/resolve/main/split_files/vae/qwen_image_vae.safetensors

mkdir "/workspace/ComfyUI/models/depthanything"
cd    "/workspace/ComfyUI/models/depthanything"
wget -nc https://huggingface.co/Kijai/DepthAnythingV2-safetensors/resolve/main/depth_anything_v2_vitl_fp16.safetensors


# https://huggingface.co/lightx2v/Qwen-Image-Lightning/resolve/main/Qwen-Image-Edit-2509/Qwen-Image-Edit-2509-Lightning-4steps-V1.0-bf16.safetensors
# https://huggingface.co/lightx2v/Qwen-Image-Lightning/resolve/main/Qwen-Image-Edit-Lightning-8steps-V1.0-bf16.safetensors?download=true
# https://huggingface.co/lightx2v/Qwen-Image-Lightning/resolve/main/Qwen-Image-Lightning-4steps-V1.0-bf16.safetensors?download=true
# https://huggingface.co/lightx2v/Qwen-Image-Lightning/resolve/main/Qwen-Image-fp8-e4m3fn-Lightning-4steps-V1.0-bf16.safetensors?download=true

cd    "/workspace/ComfyUI/models/controlnet"
#wget -nc -O Qwen-Image-InstantX-ControlNet-Union.safetensors  https://huggingface.co/InstantX/Qwen-Image-ControlNet-Union/resolve/main/diffusion_pytorch_model.safetensors
#wget -nc https://huggingface.co/Comfy-Org/Qwen-Image-DiffSynth-ControlNets/blob/main/split_files/model_patches/qwen_image_depth_diffsynth_controlnet.safetensors
# https://huggingface.co/Comfy-Org/Qwen-Image-DiffSynth-ControlNets/resolve/main/split_files/model_patches/qwen_image_canny_diffsynth_controlnet.safetensors?download=true
# https://huggingface.co/Comfy-Org/Qwen-Image-DiffSynth-ControlNets/resolve/main/split_files/model_patches/qwen_image_inpaint_diffsynth_controlnet.safetensors?download=true
# https://civitai.com/models/1889247?modelVersionId=2139800



# wget -nc -O "/workspace/ComfyUI/models/checkpoints/illustrij_v21.safetensors"  "https://civitai.com/api/download/models/2728617?token=9ffbafa226d031653b7ea196c6334fe0"



