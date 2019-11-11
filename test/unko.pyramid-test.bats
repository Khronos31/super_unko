#!/usr/bin/env bats
source functions.sh

readonly TARGET_COMMAND="../bin/unko.pyramid"

@test 'unko.pyramidは引数なしのときは5段' {
  run "$TARGET_COMMAND"
  [ "$status" -eq 0 ]
  [ "${lines[0]}"  = "               💩               " ]
  [ "${lines[1]}"  = "              💩💩              " ]
  [ "${lines[2]}"  = "             💩  💩             " ]
  [ "${lines[3]}"  = "            💩💩💩💩            " ]
  [ "${lines[4]}"  = "           💩      💩           " ]
  [ "${lines[5]}"  = "          💩💩    💩💩          " ]
  [ "${lines[6]}"  = "         💩  💩  💩  💩         " ]
  [ "${lines[7]}"  = "        💩💩💩💩💩💩💩💩        " ]
  [ "${lines[8]}"  = "       💩              💩       " ]
  [ "${lines[9]}"  = "      💩💩            💩💩      " ]
  [ "${lines[10]}" = "     💩  💩          💩  💩     " ]
  [ "${lines[11]}" = "    💩💩💩💩        💩💩💩💩    " ]
  [ "${lines[12]}" = "   💩      💩      💩      💩   " ]
  [ "${lines[13]}" = "  💩💩    💩💩    💩💩    💩💩  " ]
  [ "${lines[14]}" = " 💩  💩  💩  💩  💩  💩  💩  💩 " ]
  [ "${lines[15]}" = "💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩" ]
  coverage "$TARGET_COMMAND"
}

@test 'unko.pyramidの美しさはブラウザのコードレビューでも確認できる' {
  run bash -c "$TARGET_COMMAND 4|tr 💩 🎄|sed '1s/🎄/👑/';yes 💩|head -2|xargs printf '% 11s\n'"
  [ "${lines[0]}"  = "       👑       " ]
  [ "${lines[1]}"  = "      🎄🎄      " ]
  [ "${lines[2]}"  = "     🎄  🎄     " ]
  [ "${lines[3]}"  = "    🎄🎄🎄🎄    " ]
  [ "${lines[4]}"  = "   🎄      🎄   " ]
  [ "${lines[5]}"  = "  🎄🎄    🎄🎄  " ]
  [ "${lines[6]}"  = " 🎄  🎄  🎄  🎄 " ]
  [ "${lines[7]}"  = "🎄🎄🎄🎄🎄🎄🎄🎄" ]
  [ "${lines[8]}"  = "       💩" ]
  [ "${lines[9]}"  = "       💩" ]

}

@test 'unko.pyramidの引数1' {
  run "$TARGET_COMMAND" 1
  [ "$status" -eq 0 ]
  [ "${lines[0]}" = "💩" ]
}
