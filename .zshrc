# ============================================================
# ~/.zshrc — macOS + iTerm2 + Oh My Zsh + Powerlevel10k
# ============================================================


# ============================================================
# 1. FASTFETCH
#    Mostrar UNA sola vez al abrir una nueva terminal.
#
#    NO vuelve a aparecer con:
#      clear
#      source ~/.zshrc
#      zsh
# ============================================================

if [[ -o interactive && ${SHLVL:-1} -eq 1 && -z "${FASTFETCH_SHOWN_THIS_SHELL:-}" ]]; then
    typeset -g FASTFETCH_SHOWN_THIS_SHELL=1

    if command -v fastfetch >/dev/null 2>&1; then
        fastfetch
    fi
fi


# ============================================================
# 2. POWERLEVEL10K INSTANT PROMPT
#
# IMPORTANTE:
# Todo lo que produzca texto al iniciar la terminal debe estar
# ARRIBA de este bloque.
# ============================================================

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# ============================================================
# 3. PATH
# ============================================================

export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:/opt/homebrew/bin:$PATH"


# ============================================================
# 4. OH MY ZSH
# ============================================================

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"


# ============================================================
# 5. OH MY ZSH CONFIG
# ============================================================

# Actualizaciones de Oh My Zsh
zstyle ':omz:update' mode reminder

# Actualizar aproximadamente cada 13 días
zstyle ':omz:update' frequency 13


# ============================================================
# 6. PLUGINS
# ============================================================

plugins=(
    git
)


# ============================================================
# 7. CARGAR OH MY ZSH
# ============================================================

source "$ZSH/oh-my-zsh.sh"


# ============================================================
# 8. CONFIGURACIÓN DE HISTORIAL
# ============================================================

HISTFILE="$HOME/.zsh_history"

HISTSIZE=10000
SAVEHIST=10000

setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_VERIFY
setopt SHARE_HISTORY
setopt APPEND_HISTORY


# ============================================================
# 9. AUTOCOMPLETADO
# ============================================================

autoload -Uz compinit
compinit


# ============================================================
# 10. ALIASES
# ============================================================

alias ll='ls -lah'
alias la='ls -A'
alias l='ls -lah'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# ============================================================
# 11. CLEAR
#
# Se mantiene "clear" normal.
#
# clear = limpia pantalla + borra scrollback completamente
# cls   = hace exactamente lo mismo
# 
#
# En iTerm2:
# Command + K = Clear Buffer completo.
# ============================================================

clear() {
    command clear
    printf '\033]1337;ClearScrollback\a'
}

alias cls='clear'

# ============================================================
# 12. HOMEBREW
# ============================================================

if [[ -x /opt/homebrew/bin/brew ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi


# ============================================================
# 13. POWERLEVEL10K CONFIG
# ============================================================

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
