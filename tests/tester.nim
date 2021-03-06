# For now we only test that the things still compile.

import os

proc exec(cmd: string) =
  if os.execShellCmd(cmd) != 0:
    quit "command failed " & cmd

proc main =
  exec("nim js tests/diffDomTests.nim")
  exec("nim js examples/todoapp/todoapp.nim")
  exec("nim js examples/scrollapp/scrollapp.nim")
  exec("nim js examples/mediaplayer/playerapp.nim")

main()
