source $HOME/zsh/antigen/antigen.zsh

export FZF_BASE=/usr/bin/fzf
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

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
antigen bundle fzf
antigen bundle ripgrep

#antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zdharma/fast-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions

# antigen theme ys

antigen apply

export EDITOR=vim

export ANDROID_SDK=/opt/android-sdk
export ANDROID_SDK_ROOT=$ANDROID_SDK
export ANDROID_HOME=$ANDROID_SDK
export ANDROID_NDK=/opt/android-ndk
export NDK_HOME=$ANDROID_NDK
export CC_aarch64_linux_android=$NDK_HOME/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android28-clang
export AR_aarch64_linux_android=$NDK_HOME/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android-ar
export JAVA_HOME=/usr/lib/jvm/default
export PATH="$PATH:$HOME/.dotnet/tools"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/.gem/ruby/2.6.0/bin"
export GPG_TTY=$(tty)

alias ls="exa"
alias l="exa -lhm --git"
alias la="exa -lhma --git"
eval "$(starship init zsh)"

