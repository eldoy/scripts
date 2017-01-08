# Do unalias g if it's not working.

# Git
def g(*args)
  cmd('git', args)
end

# Git add
def ga(*args)
  cmd('git add', args)
end

# Git add all
def gaa(*args)
  cmd('git add --all', args)
end

# Git commit
def gc(*args)
  cmd('git commit -m', args)
end

# Git log
def gl(*args)
  cmd('git log', args)
end

# Git diff
def gd(*args)
  cmd('git diff', args)
end

# Git push
def gp(*args)
  cmd('git push', args)
end

# Git pull
def gpp(*args)
  cmd('git pull', args)
end

# Git pull
def gpr(*args)
  cmd('git pull --rebase', args)
end

# Git status
def gs(*args)
  cmd('git status', args)
end

# Git forward
def gf
  cmd("git checkout `git rev-list --topo-order HEAD..\"$*\" | tail -1`")
end

# Git back
def gb
  cmd('git checkout HEAD~', args)
end

