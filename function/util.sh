#!/usr/bin/env bash

strindex() { 
	x="${1%%$2*}"
	[[ "$x" = "$1" ]] && echo -1 || echo "${#x}"
}

capitalize_remove_punctuation()
{
  local words IFS=$' \t\n-\'.,;!:*?' #Handle hyphenated names and punctuation
  read -ra words <<< "${@,,}"
  IFS=''
  echo "${words[*]^}"
}
