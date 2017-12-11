function git_prompt_info {
  local ref=$(=git symbolic-ref HEAD 2> /dev/null)
  local gitst="$(=git status 2> /dev/null)"

  if [[ -f .git/MERGE_HEAD ]]; then
    if [[ ${gitst} =~ "unmerged" ]]; then
      gitstatus="%{$fg[red]%}unmerged%{$reset_color%}"
    else
      gitstatus="%{$fg[green]%}merged%{$reset_color%}"
    fi
  elif [[ ${gitst} =~ "Changes to be committed" ]]; then
    gitstatus="%{$fg[black]%}(${ref#refs/heads/})%{$reset_color%}"
  elif [[ ${gitst} =~ "use \"git add" ]]; then
    gitstatus="%{$fg[black]%}(${ref#refs/heads/} *)%{$reset_color%}"
  elif [[ -n `git checkout HEAD 2> /dev/null | grep ahead` ]]; then
    gitstatus="%{$fg[black]%}(${ref#refs/heads/} ⇡)%{$reset_color%}"
  else
    gitstatus="%{$fg[black]%}(${ref#refs/heads/})%{$reset_color%}"
  fi

  if [[ -n $ref ]]; then
    echo "%{$reset_color%}$gitstatus"
  fi
}
#❯
PROMPT='%{$fg[cyan]%}%~%<<%{${reset_color}%} $(git_prompt_info) ${PR_BOLD_MAGENTA}❯ %{${reset_color}%} '
