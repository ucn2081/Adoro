#!/bin/bash

source /venv/main/bin/activate
COMFYUI_DIR=${WORKSPACE}/ComfyUI

# Packages are installed after nodes so we can fix them...

pip install --no-cache-dir diffusers pytorch_lightning insightface segment_anything lpips

cd /workspace
wget https://raw.githubusercontent.com/ucn2081/Adoro/refs/heads/main/comfyui.sh
wget https://raw.githubusercontent.com/ucn2081/Adoro/refs/heads/main/comfyui-dl.sh
wget https://raw.githubusercontent.com/ucn2081/Adoro/refs/heads/main/comfyui-dl-2.sh

dos2unix comfyui.sh
dos2unix comfyui-dl.sh
dos2unix comfyui-dl-2.sh

APT_PACKAGES=(
    #"package-1"
    #"package-2"
)

PIP_PACKAGES=(
    #"package-1"
    #"package-2"
)

NODES=(
	"https://github.com/BigStationW/ComfyUi-ImageGalleryLoader"
	"https://github.com/city96/ComfyUI-GGUF"
	"https://github.com/Fannovel16/ComfyUI-Frame-Interpolation"
	"https://github.com/kijai/ComfyUI-KJNodes"
	"https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite"
	"https://github.com/MixLabPro/comfyui-mixlab-nodes"
	"https://github.com/rgthree/rgthree-comfy"
	"https://github.com/WASasquatch/was-node-suite-comfyui"
    "https://github.com/cubiq/ComfyUI_essentials"
    "https://github.com/ltdrdata/ComfyUI-Manager"
	"https://github.com/kijai/ComfyUI-WanVideoWrapper"
	"https://github.com/crystian/ComfyUI-Crystools"
	"https://github.com/yolain/ComfyUI-Easy-Use"
	"https://github.com/lokitsar/ComfyUI-Workflow-Gallery"
	"https://github.com/kijai/ComfyUI-CCSR"
	"https://github.com/jags111/efficiency-nodes-comfyui"
	"https://github.com/pythongosssss/ComfyUI-Custom-Scripts"
	"https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes"
	"https://github.com/mav-rik/facerestore_cf"
	"https://github.com/Gourieff/ComfyUI-ReActor"
	"https://github.com/chrisgoringe/cg-use-everywhere"
	"https://github.com/ltdrdata/ComfyUI-Impact-Pack"
	"https://github.com/HECer/ComfyUI-FilePathCreator"
	"https://github.com/wallen0322/ComfyUI-Wan22FMLF"
	"https://github.com/badjeff/comfyui_lora_tag_loader"
	"https://github.com/Nourepide/ComfyUI-Allor"
	"https://github.com/kijai/ComfyUI-Florence2"
	"https://github.com/EvilBT/ComfyUI_SLK_joy_caption_two"
	"https://github.com/jamesWalker55/comfyui-various"
	"https://github.com/kijai/ComfyUI-segment-anything-2"
	"https://github.com/Fannovel16/comfyui_controlnet_aux"
	"https://github.com/chflame163/ComfyUI_LayerStyle"
	"https://github.com/pollockjj/ComfyUI-MultiGPU"
	"https://github.com/Smirnov75/ComfyUI-mxToolkit"
	"https://github.com/Flow-two/ComfyUI-WanStartEndFramesNative"
)

WORKFLOWS=(

)

CHECKPOINT_MODELS=(
)

DIFFUSION_MODELS=(
	# "https://huggingface.co/befox/WAN2.2-14B-Rapid-AllInOne-GGUF/resolve/main/v10/wan2.2-i2v-rapid-aio-v10-nsfw-Q6_K.gguf"
	# "https://huggingface.co/befox/WAN2.2-14B-Rapid-AllInOne-GGUF/resolve/main/Mega-v12/wan2.2-rapid-mega-aio-nsfw-v12.1-Q6_K.gguf"
	# "https://huggingface.co/QuantStack/Phantom_Wan_14B_FusionX-GGUF/resolve/main/Phantom_Wan_14B_FusionX-Q6_K.gguf"
)

UNET_MODELS=(
)

LORA_MODELS=(
)

CLIP_MODELS=(
	"https://huggingface.co/city96/umt5-xxl-encoder-gguf/resolve/main/umt5-xxl-encoder-Q8_0.gguf"
)

CLIP_VISION_MODELS=(
	"https://huggingface.co/SimonCaine/comfyui-models/resolve/main/clip_vision/clip_vision_h.safetensors"
)

VAE_MODELS=(
	"https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/vae/wan_2.1_vae.safetensors"
)

ESRGAN_MODELS=(
)

CONTROLNET_MODELS=(
)

### DO NOT EDIT BELOW HERE UNLESS YOU KNOW WHAT YOU ARE DOING ###

function provisioning_start() {
    provisioning_print_header
    provisioning_get_apt_packages
    provisioning_get_nodes
    provisioning_get_pip_packages
    provisioning_get_files \
        "${COMFYUI_DIR}/models/checkpoints" \
        "${CHECKPOINT_MODELS[@]}"
    provisioning_get_files \
        "${COMFYUI_DIR}/models/diffusion_models" \
        "${DIFFUSION_MODELS[@]}"
    provisioning_get_files \
        "${COMFYUI_DIR}/models/unet" \
        "${UNET_MODELS[@]}"
    provisioning_get_files \
        "${COMFYUI_DIR}/models/lora" \
        "${LORA_MODELS[@]}"
    provisioning_get_files \
        "${COMFYUI_DIR}/models/controlnet" \
        "${CONTROLNET_MODELS[@]}"
    provisioning_get_files \
        "${COMFYUI_DIR}/models/clip" \
        "${CLIP_MODELS[@]}"
    provisioning_get_files \
        "${COMFYUI_DIR}/models/clip_vision" \
        "${CLIP_VISION_MODELS[@]}"
    provisioning_get_files \
        "${COMFYUI_DIR}/models/vae" \
        "${VAE_MODELS[@]}"
    provisioning_get_files \
        "${COMFYUI_DIR}/models/esrgan" \
        "${ESRGAN_MODELS[@]}"
    provisioning_print_end
}

function provisioning_get_apt_packages() {
    if [[ -n $APT_PACKAGES ]]; then
            sudo $APT_INSTALL ${APT_PACKAGES[@]}
    fi
}

function provisioning_get_pip_packages() {
    if [[ -n $PIP_PACKAGES ]]; then
            pip install --no-cache-dir ${PIP_PACKAGES[@]}
    fi
}

function provisioning_get_nodes() {
    for repo in "${NODES[@]}"; do
        dir="${repo##*/}"
        path="${COMFYUI_DIR}/custom_nodes/${dir}"
        requirements="${path}/requirements.txt"
        if [[ -d $path ]]; then
            if [[ ${AUTO_UPDATE,,} != "false" ]]; then
                printf "Updating node: %s...\n" "${repo}"
                ( cd "$path" && git pull )
                if [[ -e $requirements ]]; then
                   pip install --no-cache-dir -r "$requirements"
                fi
            fi
        else
            printf "Downloading node: %s...\n" "${repo}"
            git clone "${repo}" "${path}" --recursive
            if [[ -e $requirements ]]; then
                pip install --no-cache-dir -r "${requirements}"
            fi
        fi
    done
}

function provisioning_get_files() {
    if [[ -z $2 ]]; then return 1; fi
    
    dir="$1"
    mkdir -p "$dir"
    shift
    arr=("$@")
    printf "Downloading %s model(s) to %s...\n" "${#arr[@]}" "$dir"
    for url in "${arr[@]}"; do
        printf "Downloading: %s\n" "${url}"
        provisioning_download "${url}" "${dir}"
        printf "\n"
    done
}

function provisioning_print_header() {
    printf "\n##############################################\n#                                            #\n#          Provisioning container            #\n#                                            #\n#         This will take some time           #\n#                                            #\n# Your container will be ready on completion #\n#                                            #\n##############################################\n\n"
}

function provisioning_print_end() {
    printf "\nProvisioning complete:  Application will start now\n\n"
}

function provisioning_has_valid_hf_token() {
    [[ -n "$HF_TOKEN" ]] || return 1
    url="https://huggingface.co/api/whoami-v2"

    response=$(curl -o /dev/null -s -w "%{http_code}" -X GET "$url" \
        -H "Authorization: Bearer $HF_TOKEN" \
        -H "Content-Type: application/json")

    # Check if the token is valid
    if [ "$response" -eq 200 ]; then
        return 0
    else
        return 1
    fi
}

function provisioning_has_valid_civitai_token() {
    [[ -n "$CIVITAI_TOKEN" ]] || return 1
    url="https://civitai.com/api/v1/models?hidden=1&limit=1"

    response=$(curl -o /dev/null -s -w "%{http_code}" -X GET "$url" \
        -H "Authorization: Bearer $CIVITAI_TOKEN" \
        -H "Content-Type: application/json")

    # Check if the token is valid
    if [ "$response" -eq 200 ]; then
        return 0
    else
        return 1
    fi
}

# Download from $1 URL to $2 file path
function provisioning_download() {
    if [[ -n $HF_TOKEN && $1 =~ ^https://([a-zA-Z0-9_-]+\.)?huggingface\.co(/|$|\?) ]]; then
        auth_token="$HF_TOKEN"
    elif 
        [[ -n $CIVITAI_TOKEN && $1 =~ ^https://([a-zA-Z0-9_-]+\.)?civitai\.com(/|$|\?) ]]; then
        auth_token="$CIVITAI_TOKEN"
    fi
    if [[ -n $auth_token ]];then
        wget --header="Authorization: Bearer $auth_token" -qnc --content-disposition --show-progress -e dotbytes="${3:-4M}" -P "$2" "$1"
    else
        wget -qnc --content-disposition --show-progress -e dotbytes="${3:-4M}" -P "$2" "$1"
    fi
}

# Allow user to disable provisioning if they started with a script they didn't want
if [[ ! -f /.noprovisioning ]]; then
    provisioning_start
fi
