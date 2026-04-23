
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

#https://huggingface.co/bullerwins/Wan2.2-I2V-A14B-GGUF/resolve/main/wan2.2_i2v_high_noise_14B_Q3_K_S.gguf
#https://huggingface.co/bullerwins/Wan2.2-I2V-A14B-GGUF/resolve/main/wan2.2_i2v_low_noise_14B_Q3_K_S.gguf

wget -nc https://huggingface.co/bullerwins/Wan2.2-I2V-A14B-GGUF/resolve/main/wan2.2_i2v_high_noise_14B_Q4_K_M.gguf
wget -nc https://huggingface.co/bullerwins/Wan2.2-I2V-A14B-GGUF/resolve/main/wan2.2_i2v_low_noise_14B_Q4_K_M.gguf

wget -nc https://huggingface.co/FX-FeiHou/wan2.2-Remix/resolve/main/NSFW/Wan2.2_Remix_NSFW_i2v_14b_high_lighting_fp8_e4m3fn_v3.0.safetensors
wget -nc https://huggingface.co/FX-FeiHou/wan2.2-Remix/resolve/main/NSFW/Wan2.2_Remix_NSFW_i2v_14b_low_lighting_fp8_e4m3fn_v3.0.safetensors

# wget -nc https://huggingface.co/befox/WAN2.2-14B-Rapid-AllInOne-GGUF/resolve/main/v10/wan2.2-i2v-rapid-aio-v10-nsfw-Q6_K.gguf
# wget -nc https://huggingface.co/befox/WAN2.2-14B-Rapid-AllInOne-GGUF/resolve/main/Mega-v12/wan2.2-rapid-mega-aio-nsfw-v12.1-Q6_K.gguf
# wget -nc https://huggingface.co/QuantStack/Phantom_Wan_14B_FusionX-GGUF/resolve/main/Phantom_Wan_14B_FusionX-Q6_K.gguf
# wget -nc https://huggingface.co/QuantStack/Wan2.2-Animate-14B-GGUF/resolve/main/Wan2.2-Animate-14B-Q4_K_M.gguf 


# https://civitai.red/models/2472759/wan22-remix-i2v-gguf-v30
# https://civitai.red/api/download/models/2780280?type=Model&format=GGUF&size=full&fp=fp16
# https://civitai.red/api/download/models/2780181?type=Model&format=GGUF&size=full&fp=fp16

wget -nc -O "/workspace/ComfyUI/models/vae/wan_2.1_vae.safetensors"            https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/vae/wan_2.1_vae.safetensors
wget -nc -O "/workspace/ComfyUI/models/clip/umt5-xxl-encoder-Q3_K_M.gguf"      https://huggingface.co/city96/umt5-xxl-encoder-gguf/resolve/main/umt5-xxl-encoder-Q3_K_M.gguf
wget -nc -O "/workspace/ComfyUI/models/clip_vision/clip_vision_h.safetensors"  https://huggingface.co/SimonCaine/comfyui-models/resolve/main/clip_vision/clip_vision_h.safetensors

wget -nc -O "/workspace/ComfyUI/models/facerestore_models/codeformer.pth"      https://github.com/sczhou/CodeFormer/releases/download/v0.1.0/codeformer.pth
wget -nc -O "/workspace/ComfyUI/models/insightface/inswapper_128.onnx"         https://huggingface.co/datasets/Gourieff/ReActor/resolve/main/models/inswapper_128.onnx
wget -nc -O "/workspace/ComfyUI/models/reswapper/reswapper_128.onnx"           https://huggingface.co/datasets/Gourieff/ReActor/resolve/main/models/reswapper_128.onnx
wget -nc -O "/workspace/ComfyUI/models/facerestore_models/codeformer.pth"      https://github.com/sczhou/CodeFormer/releases/download/v0.1.0/codeformer.pth

wget -nc -O "/workspace/ComfyUI/models/checkpoints/real-world_ccsr-fp16.safetensors" https://huggingface.co/Kijai/ccsr-safetensors/resolve/main/real-world_ccsr-fp16.safetensors

cd "/workspace/ComfyUI/models/loras"
wget -nc https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Lightx2v/lightx2v_I2V_14B_480p_cfg_step_distill_rank256_bf16.safetensors
# 8ec4741a1894af2f5eb7b89d99bf7e134e3240245ba2f96149dc13ba1f9c16fe
wget -nc https://huggingface.co/lightx2v/Wan2.2-Distill-Loras/resolve/main/wan2.2_i2v_A14b_low_noise_lora_rank64_lightx2v_4step_1022.safetensors
# ff7c9fd04f31f2d2c88cc3d7becf4ec96f358f59ef4b41dc9af9e95aa3adbb28


cd /workspace/ComfyUI/models/facedetection
#wget -nc https://github.com/xinntao/facexlib/releases/download/v0.1.0/detection_Resnet50_Final.pth
wget -nc https://huggingface.co/nlightcho/gfpgan_v14/resolve/main/detection_Resnet50_Final.pth?download=true

wget -nc -O "/workspace/ComfyUI/custom_nodes/ComfyUi-ImageGalleryLoader/custom_source_folders.json" "https://raw.githubusercontent.com/ucn2081/Adoro/refs/heads/main/custom_source_folders.json"

sed -i "s/0.969/9999999.969/" /workspace/ComfyUI/custom_nodes/ComfyUI-ReActor/scripts/reactor_sfw.py

cd "/workspace/ComfyUI/models/loras/Wan_2.2"
wget -nc -O "Wan2.2 - T2V - Dildo - HIGH 14B.safetensors"             "https://civitai.red/api/download/models/2838161?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O "Wan2.2 - T2V - Dildo - LOW 14B.safetensors"              "https://civitai.red/api/download/models/2838168?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O Futa-Masturbation-Cumshot-High.safetensors                "https://civitai.red/api/download/models/2365856?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O Futa-Masturbation-Cumshot-Low.safetensors                 "https://civitai.red/api/download/models/2368269?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O Futa-Masturbation-Cumshot.safetensors                     "https://civitai.red/api/download/models/2368269?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O outsauce_wan22_i2v_high_noise.safetensors                 "https://civitai.red/api/download/models/2350472?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O outsauce_wan22_i2v_low_noise.safetensors                  "https://civitai.red/api/download/models/2350490?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O P009-The-Walk-Wan2.2-i2v_Normal-H.safetensors             "https://civitai.red/api/download/models/2254373?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O P009-The-Walk-Wan2.2-i2v_Normal-L.safetensors             "https://civitai.red/api/download/models/2254403?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O readyforbj_WAN22_000001250_high_noise.safetensors         "https://civitai.red/api/download/models/2481215?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O readyforbj_WAN22_000001250_low_noise.safetensors          "https://civitai.red/api/download/models/2481203?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O SeductiveTurnsHigh-000048.safetensors                     "https://civitai.red/api/download/models/2212521?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O SeductiveTurnsLow-000048.safetensors                      "https://civitai.red/api/download/models/2212510?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O WAN2.2-T2V-Full-Futanari-Cropped-v3.0.0-resumed-2_HighNoise.safetensors "https://civitai.red/api/download/models/2613370?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O WAN2.2-T2V-Full-Futanari-Cropped-v3.0.0-resumed-2_LowhNoise.safetensors "https://civitai.red/api/download/models/2613378?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O WAN2.2zoomout_futa_high_noise.safetensors                 "https://civitai.red/api/download/models/2373507?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O WAN2.2zoomout_futa_low_noise.safetensors                  "https://civitai.red/api/download/models/2373532?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O wan22-zoom-reveal-295epoc-low-k3nk.safetensors            "https://civitai.red/api/download/models/2300900?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O wan22-zoom-reveal-400epoc-high-k3nk.safetensors           "https://civitai.red/api/download/models/2300902?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O wan22_i2v_taker_pov_bj_high_noise.safetensors             "https://civitai.red/api/download/models/2591003?token=9ffbafa226d031653b7ea196c6334fe0"
wget -nc -O wan22_i2v_taker_pov_bj_low_noise.safetensors              "https://civitai.red/api/download/models/2590993?token=9ffbafa226d031653b7ea196c6334fe0"
