unalias g

# Path. Change these to match your system.
SRC="$HOME/src"
SCRIPTS="$SRC/scripts"

# The ruby runner
C="$SCRIPTS/run.rb"

# Utils
alias v="vagrant"
alias c="codium"
alias sub="open -a 'Sublime Text'"
alias console="bundle exec irb -r ./config/boot.rb"
alias dstore="find . -name '.DS_Store' -type f -delete"
alias loc="find lib -name '*.*' | xargs wc -l"
alias stuff="cat $SRC/stuff/text/stuff.txt"
alias rl="source $HOME/.zshrc"
alias update_assets='fund_site && cp -Rv ../fund/site/app/assets/ .'
alias img="$C img"
alias count="ls -l . | egrep -c '^-'"
alias sim="wapi && ruby scripts/simulator.rb"
alias nm="nodemon"
alias mnode="node --max-old-space-size=8192"
alias mnodemon="nodemon --max-old-space-size=8192"
alias y="yarn"
alias ys="yarn start"
alias yt="yarn test"
alias ya="yarn add"
alias yr="yarn remove"
alias ka="killall"
alias kn="killall node"
alias mongodb="~/.mongodb/mongodb/bin/mongod --port 27017 --dbpath ~/.mongodb/data/db > /dev/null 2> ~/.mongodb/err.log &"

function li {
  git clone https://github.com/eldoy/libinit.git $1 && rm -rf $1/.git && cd $1 && git init
}

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
alias gu="$C gu"
alias gur="$C gur"
alias gs="$C gs"
alias gf="$C gf"
alias gb="$C gb"
alias gt="$C gt"
alias ghr="git reset --hard"
alias ghs="git reset --soft"

# NPM
alias nlf="npm run lintfix"
alias nr="npm run"
alias ni="npm install"
alias nu="npm uninstall"
alias nid="npm install -D"
alias np="npm publish"
alias nt="npm run test"
alias ns="npm run serve"
alias nd="npm run dev"
alias nm="npm run migrate"
alias nst="npm run serve:test"
alias nv="npm version"
alias ng="npm i --location=global"
alias nrd="npm run dev"
alias nrm="npm run migrate"
alias nrs="npm run serve"
alias nru="npm run update"
alias deploy="npm run deploy"
alias nc="ncu -u"
alias wnc="while true; do ncu -u; done"
alias nci="ncu -u && npm i"
function nstat() {
  for name in $@
  do
    curl https://api.npmjs.org/downloads/point/last-week/$name
    printf "\n\n"
  done
}

alias gread="gaa && gc 'Readme' && gp"
alias gcomment="gaa && gc 'Comments' && gp"
alias gchange="gaa && gc 'Changelog' && gp"
alias ggem="gaa && gc 'Gem' && git push"
alias grefactor="gaa && gc 'Refactor' && gp"
alias master="git checkout master"
alias staging="git checkout staging"
alias merg="git merge development"
alias dev="git checkout development"
alias dv="git checkout dev"
alias last="git checkout last"
alias cl="NODE_ENV=production $SRC/microservices/cli/dist/cli"
alias patch="npm version patch && git push"
alias minor="npm version minor && git push"
alias major="npm version major && git push"

# Crt
alias crt_info="openssl x509 -text -noout -in"
alias csr_info="openssl req -noout -text -in"
alias cert="openssl x509 -noout -subject -in client.crt"
alias inspect="openssl req -in client.key -noout -text"
alias test_crt="openssl s_client -connect yoursite.com:443 -CAfile /usr/local/share/ca-bundle.crt -status"

# Zsh
alias zc="source ~/.zshrc"
alias zsl="vim ~/.zshrc.local && source ~/.zshrc"
alias zs="vim ~/.zshrc && source ~/.zshrc"

# Docker
alias d="docker"
alias ds="docker swarm"
alias drm="docker rm \$(docker ps -a -q)"
alias drmi="docker rmi \$(docker images -q)"
alias drmia="docker rmi \$(docker images -q -a)"
alias dc="docker-compose"
