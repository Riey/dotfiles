# Keep this line on the top for prevent just `not a tty`
export GPG_TTY=$(tty)

#
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source $HOME/zsh/antigen/antigen.zsh

antigen use oh-my-zsh
 
antigen bundle cargo
antigen bundle rust
antigen bundle git
antigen bundle gitfast
antigen bundle github
# antigen bundle sudo
antigen bundle doas
antigen bundle command-not-found
antigen bundle tmux
antigen bundle tmuxinator
antigen bundle cp
antigen bundle docker
antigen bundle fd
#antigen bundle fzf
antigen bundle ripgrep

#antigen bundle zsh-users/zsh-syntax-highlighting

antigen bundle mafredri/zsh-async
antigen bundle zdharma/fast-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions

antigen theme romkatv/powerlevel10k

antigen apply

# eval "$(starship init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
