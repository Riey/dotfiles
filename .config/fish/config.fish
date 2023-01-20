if status is-interactive
    # Commands to run in interactive sessions can go here
end

export EDITOR=nvim

export GTK_IM_MODULE=kime
export GTK2_IM_MODULE=xim
export QT_IM_MODULE=kime
export XMODIFIER=@im=kime

export PICO_SDK_PATH=/opt/pico-sdk
export GDK_BACKEND=wayland
export MOZ_ENABLE_WAYLAND=1
export PATH="$PATH:$HOME/.cargo/bin"

