# .zshrc 
# Obviously appended to ideally a fresh one (kali linux)

# Path – put your bins first
export PATH="$HOME/.local/bin:$HOME/go/bin:$HOME/.cargo/bin:$PATH"

# Theme – powerlevel10k is still king in 2026 for speed + info
ZSH_THEME="powerlevel10k/powerlevel10k"
# Run once: p10k configure  (very wizard-like, choose lean + git + node/py/go if you use them)

# Must-have plugins (add to plugins=(...) line)
plugins=(
  git               # tons of aliases: gst, gco, gp, gl
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
  docker            # if you use containers
  # Optional but gold: git-flow, kubectl, terraform, asdf if using version manager
)

# Autosuggest color (less aggressive)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#999999,bg=default,underline'

# Helpful aliases for dev/GitHub flow
alias dot='cd ~/.dotfiles && git status'   # if you dotfiles repo
alias nr='npm run'
alias yr='yarn'
alias pr='pnpm'
alias gpr='gh pr create --web'             # open PR in browser
alias gci='gh ci run watch'                # watch latest GitHub Actions
alias cursor.='cursor .'                   # open Cursor in current dir
alias repo='gh repo view --web'            # open current repo on GitHub

# Git super convenient
alias main='git checkout main || git checkout master'
alias up='git pull --rebase --autostash'
alias amend='git commit --amend --no-edit'

# Quick mkdir + cd
mkcd() { mkdir -p "$1" && cd "$1"; }

# Cursor + GitHub CLI integration idea
# Add function to clone + open in Cursor
gclone() {
  gh repo clone "$1" && cd "${1##*/}" && cursor .
}
