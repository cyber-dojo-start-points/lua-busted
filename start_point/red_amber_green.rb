
# busted ends every run with one summary line counting the whole suite:
#
#   2 successes / 1 failure / 1 error / 0 pending : 0.001754 seconds
#
# The counts are what the colour comes from. The exit status is 1 for a
# failing test and 1 for a suite that would not load, so it cannot tell
# those apart, and the prose beside a failure is reworded between versions.
#
# busted counts an assertion failure as a failure, which is red, and puts
# everything else in errors: a raised error, a call to a name that does not
# exist, a file that will not parse, and a run that found no test files at
# all. That matches the house convention, so errors are amber.
#
# Every count word is singular at one and plural otherwise, on all four,
# hence the optional s. When cyber-dojo.sh stops at the parse step no
# summary line is printed at all, and the final else makes that amber.

lambda { |stdout,stderr,status|
  output = stdout + stderr
  summary = /^(\d+) success(es)? \/ (\d+) failures? \/ (\d+) errors? \/ (\d+) pending/
  if m = summary.match(output)
    successes = m[1].to_i
    failures  = m[3].to_i
    errors    = m[4].to_i
    return :amber if errors != 0
    return :red   if failures != 0
    # Nothing passed and nothing failed, so nothing was proved either way.
    return :amber if successes == 0
    return :green
  end
  return :amber
}
