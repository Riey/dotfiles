source $HOME/zsh/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle sudo
antigen bundle command-not-found

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions

# antigen theme ys

antigen apply

export EDITOR=vim

export ANDROID_SDK=/opt/android-sdk
export ANDROID_NDK=/opt/android-ndk
export JAVA_HOME=/usr/lib/jvm/default
export PATH="$PATH:$HOME/.dotnet/tools"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.gem/ruby/2.6.0/bin"
export GPG_TTY=$(tty)

eval "$(starship init zsh)"

