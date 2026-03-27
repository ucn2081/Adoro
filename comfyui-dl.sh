
rm ${DM}/clip/umt5_xxl_fp8_e4m3fn_scaled.safetensors

COMFYUI_DIR=${WORKSPACE}/ComfyUI
# ${COMFYUI_DIR}/models/loras

DM="${COMFYUI_DIR}/models"
# cd "$path" 

sed -i "s/0.969/9999999.969/" /workspace/ComfyUI/custom_nodes/ComfyUI-ReActor/scripts/reactor_sfw.py


wget  -O /workspace/ComfyUI/custom_nodes/ComfyUi-ImageGalleryLoader/custom_source_folders.json  https://raw.githubusercontent.com/ucn2081/Adoro/refs/heads/main/custom_source_folders.json

wget -nc -O "${DM}/diffusion_models/wan2.2-i2v-rapid-aio-v10-nsfw-Q6_K.gguf" "https://huggingface.co/befox/WAN2.2-14B-Rapid-AllInOne-GGUF/resolve/main/v10/wan2.2-i2v-rapid-aio-v10-nsfw-Q6_K.gguf"

wget -nc -O "${DM}/checkpoints/real-world_ccsr-fp16.safetensors" "https://huggingface.co/Kijai/ccsr-safetensors/resolve/main/real-world_ccsr-fp16.safetensors"

