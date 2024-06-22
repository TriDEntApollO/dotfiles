command_not_found_handler() {
  local pkgs cmd="$1"
  local purple='\u001b[1;35m' cyan='\u001b[1;36m' green='\u001b[1;32m' red='\u001b[1;31m' yellow='\u001b[1;33m' blue='\u001b[1;34m' reset='\u001b[0m' 
  local bullet="$cyan-$reset"

  pkgs=(${(z)"$(pkgfile -b -v -- "$cmd" 2>/dev/null)"})
  parts=(${(@s: :)pkgs})
  len=${#parts[@]}

  if [[ -n "$pkgs" ]]; then
    extra=(${(@s:/:)parts[1]})
    printf "The program $yellow'$cmd'$reset may be found in the following$blue packages$reset:\n"
    printf "  $bullet $purple%s$reset/%s $green%s$reset\n" "$extra[1]" "$extra[2]" "$parts[2]"
    for pkg in {3..$len}; do
      printf "  $bullet $parts[$pkg]\n"
    done
    printf "\n$cyan%s$reset: sudo pacman -S $cmd\n" "Try"
  else
    printf "$cyan%s$reset:$yellow command not found$reset '$red%s$reset'\n" "zsh" "$cmd"
  fi 1>&2

  return 127
}
