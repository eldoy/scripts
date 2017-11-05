unalias g

# Path. Change these to match your system.
SRC="$HOME/src"
SCRIPTS="$SRC/scripts"

# The ruby runner
C="$SCRIPTS/run.rb"


# Utils
alias sub="open -a 'Sublime Text'"
alias console="bundle exec irb -r ./config/boot.rb"
alias dstore="find . -name '.DS_Store' -type f -delete"
alias loc="find lib -name '*.*' | xargs wc -l"
alias stuff="cat $SRC/stuff/text/stuff.txt"
alias reload="source $HOME/.zshrc && rvm reload"
alias kp="lsof -i"
alias update_assets='fund_site && cp -Rv ../fund/site/app/assets/ .'
alias img="$C img"
alias count="ls -l . | egrep -c '^-'"
alias sim="wapi && ruby scripts/simulator.rb"

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

alias gread="gaa && gc 'Readme' && gp"
alias gcomment="gaa && gc 'Comments' && gp"
alias gchange="gaa && gc 'Changelog' && gp"
alias ggem="gaa && gc 'Gem' && git push"
alias grefactor="gaa && gc 'Refactor' && gp"
alias master="git checkout master"
alias staging="git checkout staging"
alias merg="git merge development"
alias dev="git checkout development"
alias last="git checkout last"


# Crt
alias crt_info="openssl x509 -text -noout -in"
alias csr_info="openssl req -noout -text -in"
alias cert="openssl x509 -noout -subject -in client.crt"
alias inspect="openssl req -in client.key -noout -text"
alias test_crt="openssl s_client -connect yoursite.com:443 -CAfile /usr/local/share/ca-bundle.crt -status"


# Zsh
alias zsl="vim ~/.zshrc.local && source ~/.zshrc"
alias zs="vim ~/.zshrc && source ~/.zshrc"


# Locations
alias scripts="cd $SRC/scripts"
alias shared="cd $SRC/fund/shared"
alias fund="cd $SRC/fund"
alias fund_site="cd $SRC/fund_site"
alias nn="cd $SRC/nn"
alias alkalisk="cd $SRC/alkalisk"
alias modz="cd $SRC/modz"
alias site="cd $SRC/fund/site"
alias futest="cd $SRC/futest"
alias fuprint="cd $SRC/fuprint"
alias modelize="cd $SRC/modelize"
alias admin="cd $SRC/fund/admin"
alias flat="cd $SRC/flatspace"
alias fugroup="cd $SRC/fugroup"
alias music="cd $SRC/music"
alias pushfile="cd $SRC/pushfile"
alias team="cd $SRC/fund/team"
alias routefu="cd $SRC/routefu"
alias wave="cd $SRC/waveorb"
alias electro="$SRC/electro"
alias gosee="cd $SRC/gosee"
alias nw="cd $SRC/network"
alias mm="cd $SRC/minimongo"
alias ttt="cd $SRC/ttt"
alias tab="cd $SRC/tab"
alias chem="cd $SRC/chem"
alias core="cd $SRC/mongocore"
alias coreweb="cd $SRC/mongocore-web"
alias asset="cd $SRC/asset"
alias conv="cd $SRC/convert"
alias src="cd $SRC"
alias sites="cd $SRC/sites"
alias play_sites="cd $SRC/play_sites"
alias orb_sites="cd $SRC/orb_sites"
alias hq="cd $SRC/hq"
alias deploy="cd $SRC/deploy"
alias sus="cd $SRC/susana"
alias easy="cd $SRC/easymongo"
alias hashd="cd $SRC/hashd"
alias wapi="cd $SRC/waveorb/api"
alias wclient="cd $SRC/waveorb/client"
alias o4="cd $SRC/o4"
alias oclient="cd $SRC/o4/client"
alias oapi="cd $SRC/o4/api"
alias mem="cd $SRC/memlearn"
alias mclient="cd $SRC/memlearn/client"
alias mapi="cd $SRC/memlearn/api"
alias svue="cd $SRC/susana-vue"
alias sapi="cd $SRC/susana-vue/api"
alias sclient="cd $SRC/susana-vue/client"

# Default dir
DD='.,lib,config'

# Default pattern
DP="'**/*.{rb,ru,yml}'"

# App dir
AD="$DD,app/controllers,app/routes"

# Servers
alias asset_server="asset && $C server 4000 $DD $DP"
alias admin_server="admin && $C server 3001 $AD $DP"
alias admin_server_production="admin && $C server 3001 $AD $DP production"
alias site_server="site && $C server 3000 $AD $DP"
alias site_test_server="site && $C server 3010 $AD $DP test"
alias site3_server="site3 && $C server 3000 $AD $DP"
alias gosee_server="gosee && $C server 1234 $DD $DP"
alias nw_server="nw && $C server 4567 $DD $DP"
alias wave_server="wave && bundle exec puma -p 2345"
alias routefu_server="routefu && $C server 1234 $DD $DP"
alias nn_server="nn && $C server 5000 $DD $DP"
alias electro_server="electro && $C server 5001 $DD $DP"
alias tab_server="tab && $C server 5002 $DD $DP"
alias chem_server="chem && $C server 5002 $DD $DP"
alias sus_server="sus && $C server 2345 $DD $DP"
alias wapi_server="wapi && $C server 2345 $DD $DP"
alias oapi_server="oapi && $C server 2345 $DD $DP"
alias mapi_server="mapi && $C server 2345 $DD $DP"
alias sapi_server="sapi && $C server 2345 $DD $DP"

# Tests
alias asset_test="asset && $C testrun .,config $DP"
alias admin_test="admin && $C testrun $AD $DP test"
alias site_test="site && $C testrun $AD $DP test"
alias modelize_test="modelize $C testrun $DD $DP"
alias mm_test="mm && $C testrun $DD $DP"
alias wave_test="wave && $C testrun $DD $DP"
alias core_test="core && $C testrun $DD $DP"
alias futest_test="futest && $C testrun $DD $DP"
alias convert_test="convert && $C testrun $DD $DP"
alias pushfile_test="pushfile && $C testrun $DD $DP"
alias electro_test="electro && $C testrun $DD $DP"
alias easy_test="easy && $C testrun $DD $DP"
alias sus_test="sus && $C testrun $DD $DP"
alias hashd_test="hashd && $C testrun $DD $DP"
alias gosee_test="gosee && $C testrun $DD $DP"
alias mapi_test="mapi && $C testrun $DD $DP"
alias sapi_test="sapi && $C testrun $DD $DP"

# Restart
RS='git pull && touch tmp/restart.txt'

# Deploy
alias deploy_gosee="ssh play 'cd test && $RS'"
alias deploy_wave="ssh orb 'cd waveorb/api && $RS'"
alias deploy_mem="ssh orb 'cd memlearn/api && $RS'"
alias deploy_o4="ssh play 'cd o4/api && $RS'"
alias deploy_nw="ssh play 'cd network && $RS'"
alias deploy_development="deploy && bundle exec cap development deploy && fund"
alias deploy_staging="deploy && bundle exec cap staging deploy && fund"
alias deploy_production="deploy && bundle exec cap production deploy && fund"
alias deploy_last="deploy && bundle exec cap last deploy && fund"
alias deploy_tab="ssh play 'cd tabibito && git pull && touch tmp/restart.txt'"


# Remote
alias reload_all="deploy && bundle exec cap load server:reload"
alias update_all="deploy && bundle exec cap load server:update"


# Docker
alias docker_rm="docker rm \$(docker ps -a -q)"
alias docker_rmi="docker rmi \$(docker images -q)"
alias docker_rmia="docker rmi \$(docker images -q -a)"
