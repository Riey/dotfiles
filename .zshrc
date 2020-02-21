source $HOME/zsh/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle cargo
antigen bundle rust
antigen bundle git
antigen bundle gitfast
antigen bundle github
antigen bundle sudo
antigen bundle command-not-found
antigen bundle tmux
antigen bundle tmuxinator
antigen bundle cp
antigen bundle docker
antigen bundle fd
#antigen bundle fzf
antigen bundle ripgrep

#antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zdharma/fast-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions

#antigen theme ys

antigen apply

export EDITOR=/usr/bin/vim

export ANDROID_SDK=/opt/android-sdk
export ANDROID_SDK_ROOT=$ANDROID_SDK
export ANDROID_HOME=$ANDROID_SDK
export ANDROID_NDK=/opt/android-ndk
export NDK_HOME=$ANDROID_NDK
export CC_aarch64_linux_android=$NDK_HOME/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android29-clang
export AR_aarch64_linux_android=$NDK_HOME/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android-ar
export JAVA_HOME=/usr/lib/jvm/default
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"
export XDG_DATA_DIRS="$XDG_DATA_DIRS:$HOME/.local/share/flatpak/exports/share/applications"
export XDG_DATA_DIRS="$XDG_DATA_DIRS:/var/lib/flatpak/exports/share/applications"
export GPG_TTY=$(tty)
export LESSCHARSET=utf-8

alias ls="exa"
alias l="exa -lhmg --git"
alias la="exa -lhmga --git"
eval "$(starship init zsh)"

