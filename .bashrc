#
# ~/.bashrc
#

[[ $- != *i* ]] && return

eval "$(starship init bash)"

alias ls='eza -al --color=auto'
alias catimg='chafa'
alias river='dbus-run-session river'
# iGPU enabled (AMD VAAPI, hevc)
record() { gpu-screen-recorder -w screen -f 100 -k hevc -c mkv -q high -a "default_output" -a "default_input" -o ~/Videos/record_$(date +%Y%m%d_%H%M%S).mkv; }
# iGPU disabled (NVIDIA NVENC, av1)
# record() { gpu-screen-recorder -w screen -f 240 -k av1 -c mkv -q high -encoder gpu -o ~/Videos/record_$(date +%Y%m%d_%H%M%S).mkv; }
yt_mp3() { yt-dlp -x --audio-format mp3 --audio-quality 0 "$1"; }

(~/.config/awww/last_scheme.sh &) 2>/dev/null
export PATH="$HOME/.local/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/Shouk/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/Shouk/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/Shouk/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/Shouk/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


alias jupyter='bash $HOME/miniconda3/launch_jupyter.sh'
