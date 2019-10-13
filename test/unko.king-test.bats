#!/usr/bin/env bats

readonly TARGET_COMMAND="$(pwd)/../bin/unko.king"

@test "-h でヘルプを出力する" {
  run "$TARGET_COMMAND" -h
  [ "$status" -eq 0 ]
  [[ "${lines[0]}" =~ ^unko.king.* ]]
}

@test "--help でヘルプを出力する" {
  run "$TARGET_COMMAND" --help
  [ "$status" -eq 0 ]
  [[ "${lines[0]}" =~ ^unko.king.* ]]
}

@test "-v でバージョンを出力する" {
  run "$TARGET_COMMAND" -v
  [ "$status" -eq 0 ]
  [[ "${lines[0]}" =~ ^v ]]
}

@test "--version でバージョンを出力する" {
  run "$TARGET_COMMAND" --version
  [ "$status" -eq 0 ]
  [[ "${lines[0]}" =~ ^v ]]
}

@test "引数未指定の時はデフォルト5になる" {
  run "$TARGET_COMMAND"
  [ "$status" -eq 0 ]
  [ "${lines[0]}" = "　　　　　　👑" ]
  [ "${lines[1]}" = "　　　　（💩💩💩）" ]
  [ "${lines[2]}" = "　　　（💩👁💩👁💩）" ]
  [ "${lines[3]}" = "　　（💩💩💩👃💩💩💩）" ]
  [ "${lines[4]}" = "　（💩💩💩💩👄💩💩💩💩）" ]
}

@test "引数 5" {
  run "$TARGET_COMMAND" 5
  [ "$status" -eq 0 ]
  [ "${lines[0]}" = "　　　　　　👑" ]
  [ "${lines[1]}" = "　　　　（💩💩💩）" ]
  [ "${lines[2]}" = "　　　（💩👁💩👁💩）" ]
  [ "${lines[3]}" = "　　（💩💩💩👃💩💩💩）" ]
  [ "${lines[4]}" = "　（💩💩💩💩👄💩💩💩💩）" ]
}

@test "引数 5 未満はNG" {
  for i in -1 0 1 2 3 4; do
    run "$TARGET_COMMAND" $i
    [ "$status" -ne 0 ]
  done
}

@test "引数 6" {
  run "$TARGET_COMMAND" 6
  [ "$status" -eq 0 ]
  [ "${lines[0]}" = "　　　　　　　👑" ]
  [ "${lines[1]}" = "　　　　　（💩💩💩）" ]
  [ "${lines[2]}" = "　　　　（💩👁💩👁💩）" ]
  [ "${lines[3]}" = "　　　（💩💩💩👃💩💩💩）" ]
  [ "${lines[4]}" = "　　（💩💩💩💩👄💩💩💩💩）" ]
  [ "${lines[5]}" = "　（💩💩💩💩💩💩💩💩💩💩💩）" ]
}
