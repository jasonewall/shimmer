if [[ ! -o interactive ]]; then
    return
fi

compctl -K _shimmer shimmer

_shimmer() {
  local word words completions
  read -cA words
  word="${words[2]}"

  if [ "${#words}" -eq 2 ]; then
    completions="$(shimmer commands)"
  else
    completions="$(shimmer completions "${word}")"
  fi

  reply=("${(ps:\n:)completions}")
}
