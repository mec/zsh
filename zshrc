# add all the sub files

source ~/.zsh/setopt.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/bindkeys.zsh
source ~/.zsh/utilities.zsh
source ~/.zsh/history.zsh
source ~/.zsh/async.zsh
source ~/.zsh/pure.zsh

# pure prompt on one line
prompt_newline='%666v'
PROMPT=" $PROMPT"