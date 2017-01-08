unalias g
C="~/src/scripts/run.rb"

# Git
alias g="$C g"
alias gs="$C gs"
alias ga="$C ga"
alias gaa="$C gaa"
alias gc="$C gc"
alias gl="$C gl"
alias gd="$C gd"
alias gp="$C gp"
alias gpp="$C gpp"
alias gpr="$C gpr"
alias gs="$C gs"
alias gf="$C gf"
alias gb='$C gb'

alias gread="gaa && gc 'Readme' && gp"
alias gcomment="gaa && gc 'Comments' && gp"
alias gchange="gaa && gc 'Changelog' && gp"
alias ggem="gaa && gc 'Gem' && git push"
alias grefactor="gaa && gc 'Refactor' && gp"
alias master="git checkout master"
alias staging="git checkout staging"
alias merg="git merge development"
alias dev="git checkout development"


# Crt
alias crt_info="openssl x509 -text -noout -in"
alias csr_info="openssl req -noout -text -in"
alias cert="openssl x509 -noout -subject -in client.crt"
alias inspect="openssl req -in client.key -noout -text"


# Zsh
alias zsl="vim ~/.zshrc.local && source ~/.zshrc"
alias zs="vim ~/.zshrc && source ~/.zshrc"


# Locations
alias shared="cd ~/src/fund/shared"
alias sub="open -a 'Sublime Text'"
alias fund="cd ~/src/fund"
alias nn="cd ~/src/nyttnorge"
alias alkalisk="cd ~/src/alkalisk"
alias modz="cd ~/src/modz"
alias site="cd ~/src/fund/site"
alias futest="cd ~/src/futest"
alias fuprint="cd ~/src/fuprint"
alias modelize="cd ~/src/modelize"
alias admin="cd ~/src/fund/admin"
alias flat="cd ~/src/flatspace"
alias fugroup="cd ~/src/fugroup"
alias music="cd ~/src/music"
alias api="cd ~/src/fund/api"
alias team="cd ~/src/fund/team"
alias routefu="cd ~/src/routefu"
alias wave="cd ~/src/waveorb"
alias gosee="cd ~/src/gosee"
alias nw="cd ~/src/network"
alias mm="cd ~/src/minimongo"
alias ttt="cd ~/src/ttt"
alias core="cd ~/src/mongocore"
alias asset="cd ~/src/asset"
alias convert="cd ~/src/convert"
alias src="cd ~/src"
alias sites="cd ~/src/sites"
alias play_sites="cd ~/src/play_sites"
alias hq="cd ~/src/hq"
alias deploy="cd ~/src/deploy"


# Servers
alias rraa="asset && bundle exec rerun --dir lib,config --pattern '**/*.{rb,ru,yml}' -- puma --port=4000 -R config.ru"
alias rra="fund && admin && bundle exec rerun --dir app/controllers,app/routes,lib,config --pattern '**/*.{rb,ru,yml}' -- puma --port=3001 -R config.ru"
alias rrsst="fund && site && bundle exec rerun --dir app/controllers,app/routes,lib,config --pattern '**/*.{rb,ru,yml}' -- RACK_ENV='test' puma --port=3000 -R config.ru"
alias rrs="fund && site && bundle exec rerun --dir app/controllers,app/routes,lib,config --pattern '**/*.{rb,ru,yml}' -- puma --port=3000 -R config.ru"
alias rrs3="bundle exec rerun --dir app/controllers,app/routes,lib,config --pattern '**/*.{rb,ru,yml}' -- puma --port=3000 -R config.ru"
alias rrg="gosee && bundle exec rerun --dir .,lib,config --pattern '**/*.{rb,ru,yml}' -- puma --port=1234 -R config.ru"
alias rrn="nw && bundle exec rerun --dir .,config --pattern '**/*.{rb,ru,yml}' -- puma --port=4567 -R config.ru"
alias rrw="wave && bundle exec rerun --dir .,config --pattern '**/*.{rb,ru,yml}' -- puma --port=2345 -R config.ru"
alias rrr="routefu && bundle exec rerun --dir .,lib,config --pattern '**/*.{rb,ru,yml}' -- puma --port=1234 -R config.ru"


# Tests
alias rre="asset && bundle exec rerun --dir .,config --pattern '**/*.{rb,ru,yml}' -- ruby test/run.rb"
alias rrat="fund && admin && bundle exec rerun --dir app/controllers,app/routes,lib,test,config --pattern '**/*.{rb,ru,yml}' -- ruby test/run.rb"
alias rrz="modelize && bundle exec rerun --dir .,lib,test,config --pattern '**/*.{rb,ru,yml}' -- ruby test/run.rb"
alias rrst="fund && site && bundle exec rerun --dir app/controllers,app/routes,lib,test,config --pattern '**/*.{rb,ru,yml}' -- RACK_ENV=test ruby test/run.rb"
alias rrm="mm && bundle exec rerun --dir .,config --pattern '**/*.{rb,ru,yml}' -- ruby test/run.rb"
alias rrwt="wave && bundle exec rerun --dir .,config --pattern '**/*.{rb,ru,yml}' -- ruby test/run.rb"
alias rrc="core && bundle exec rerun --dir .,lib,config --pattern '**/*.{rb,ru,yml}' -- ruby test/run.rb"
alias rrt="futest && bundle exec rerun --dir .,lib,config --pattern '**/*.{rb,ru,yml}' -- ruby test/run.rb"
alias rrq="convert && bundle exec rerun --dir .,lib,config --pattern '**/*.{rb,ru,yml}' -- ruby test/run.rb"


# Deploy
alias deploy_gosee="ssh play 'cd test && git pull && touch tmp/restart.txt'"
alias deploy_wave="ssh play 'cd waveorb && git pull && touch tmp/restart.txt'"
alias deploy_nw="ssh play 'cd network && git pull && touch tmp/restart.txt'"
alias deploy_development="deploy && cap development deploy && fund"
alias deploy_staging="deploy && cap staging deploy && fund"
alias deploy_production="deploy && cap production deploy && fund"


# Remote
alias reload_all="deploy && bundle exec cap load server:reload"
alias update_all="deploy && bundle exec cap load server:update"


# Docker
alias docker_rm="docker rm \$(docker ps -a -q)"
alias docker_rmi="docker rmi \$(docker images -q)"
alias docker_rmia="docker rmi \$(docker images -q -a)"


# Utils
alias console="irb -r ./config/boot.rb"
alias dstore="find . -name '.DS_Store' -type f -delete"
alias loc="find lib -name '*.*' | xargs wc -l"
alias stuff="cat ~/src/stuff/text/stuff.txt"
