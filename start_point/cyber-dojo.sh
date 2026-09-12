set -e

# --------------------------------------------------------------
# Every .lua file is parsed, at any depth, whether or not anything requires it
# yet. A file you are partway through writing then reports its syntax error,
# naming the file and the line, rather than being passed over in silence
# because nothing happens to require it. Parsing does not run any of it.
#
# The + ending the -exec matters. It hands every file to one luac, whose
# status says whether they all parsed. The \; form runs one luac per file and
# reports success whatever they said, which is how a file that will not parse
# becomes invisible.
echo Parse
find . -name '*.lua' -exec luac -p {} +

# --------------------------------------------------------------
# busted finds your tests itself, at any depth below here. It recognizes a
# file as a test file by its name ending in _spec.lua, so tests you put in a
# file named anything else will not run. They are still parsed above, so a
# mistake in one is reported rather than ignored.
#
# All your tests run in ONE lua process, so busted gathers them into a single
# suite and prints one summary line counting every test in every file.
echo
busted .
