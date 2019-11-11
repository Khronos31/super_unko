#!/usr/bin/env bats
source functions.sh

readonly TARGET_COMMAND="../bin/unko.pyramid"

@test 'unko.pyramidは引数なしのときは5段' {
  run "$TARGET_COMMAND"
  [ "$status" -eq 0 ]
  [ "${lines[1]}"  = "               💩               " ]
  [ "${lines[2]}"  = "              💩💩              " ]
  [ "${lines[3]}"  = "             💩  💩             " ]
  [ "${lines[4]}"  = "            💩💩💩💩            " ]
  [ "${lines[5]}"  = "           💩      💩           " ]
  [ "${lines[6]}"  = "          💩💩    💩💩          " ]
  [ "${lines[7]}"  = "         💩  💩  💩  💩         " ]
  [ "${lines[8]}"  = "        💩💩💩💩💩💩💩💩        " ]
  [ "${lines[9]}"  = "       💩              💩       " ]
  [ "${lines[10]}" = "      💩💩            💩💩      " ]
  [ "${lines[11]}" = "     💩  💩          💩  💩     " ]
  [ "${lines[12]}" = "    💩💩💩💩        💩💩💩💩    " ]
  [ "${lines[13]}" = "   💩      💩      💩      💩   " ]
  [ "${lines[14]}" = "  💩💩    💩💩    💩💩    💩💩  " ]
  [ "${lines[15]}" = " 💩  💩  💩  💩  💩  💩  💩  💩 " ]
  [ "${lines[16]}" = "💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩" ]
  coverage "$TARGET_COMMAND"
}

@test 'unko.pyramidの引数1' {
  run "$TARGET_COMMAND"
  [ "$status" -eq 0 ]
  [ "${lines[1]}" = "💩" ]
}
