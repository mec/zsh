# add all the sub files
source ~/.zsh/options.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/bindkeys.zsh
source ~/.zsh/utilities.zsh
source ~/.zsh/history.zsh
source ~/.zsh/async.zsh
source ~/.zsh/pure.zsh

# add external files
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# comment to have newline
# prompt_newline='%666v'
PROMPT=" $PROMPT"

# chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
# adding ssh to cache?
ssh-add -q ~/.ssh/id_rsa
ssh-add -q ~/.ssh/github_id_rsa
