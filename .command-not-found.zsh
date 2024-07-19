command_not_found_handler() {
  local pkgs cmd="$1"
  local purple='\u001b[1;35m' cyan='\u001b[1;36m' green='\u001b[1;32m' red='\u001b[1;31m' yellow='\u001b[1;33m' blue='\u001b[1;34m' reset='\u001b[0m' 
  local bullet="$cyan-$reset"

  pkgs=(${(z)"$(pkgfile -b -v -- "$cmd" 2>/dev/null)"})
  parts=(${(@s: :)pkgs})
  len=${#parts[@]}
  packages=()

  if [[ -n "$pkgs" ]]; then
    printf "The program $yellow'$cmd'$reset may be found in the following$blue packages$reset:\n"
    for pkg in {1..$len}; do
      line=(${(@s:/:)parts[pkg]})
      if [[ "$line[1]" == "extra" ]]; then
        ver="$(expr $pkg + 1)"
        version="$parts[$ver]"
        printf "  $bullet $purple%s$reset/%s $green%s$reset\n" "$line[1]" "$line[2]" "$version"
        packages+=("$line[2]")
      elif [[ "$parts[$pkg]" != ";" && "$pkg" != "$ver" ]]; then
        printf "  $bullet $parts[$pkg]\n"
      fi
    done
    printf "\n$cyan%s$reset: sudo pacman -S $blue<package name>$reset\n" "Try"
    printf "\n$yellow%s names$reset: " "Packages'"
    for pkg in $packages; do
      printf "$pkg, "
    done
    printf "\b\b \n"

  else
    printf "$cyan%s$reset:$yellow command not found$reset '$red%s$reset'\n" "zsh" "$cmd"
  fi 1>&2

  return 127
}
