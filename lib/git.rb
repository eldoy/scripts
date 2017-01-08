# Do unalias g if it's not working.

# Git
def g(args)
  # If message is blank, ask for it
  if (message = args.shift || '').strip == ''
    print "Message: "
    message = STDIN.gets.chomp
  end

  cmd(%{git add --all && git commit -m "#{message}" && git push}, args)
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

# Git push force
def gpf(*args)
  cmd('git push --force', args)
end

# Git pull (update)
def gu(*args)
  cmd('git pull', args)
end

# Git pull (update) rebase
def gur(*args)
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
