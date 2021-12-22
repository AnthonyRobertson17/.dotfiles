alias vi=/usr/local/bin/vim
alias vim=/usr/local/bin/vim
alias editalias='$EDITOR ~/.oh-my-zsh/custom/aliases.zsh'
alias editzsh='$EDITOR ~/.zshrc'
alias editvim='$EDITOR ~/.vimrc'
alias refresh='source ~/.zshrc'

alias atg='alias | grep'
alias c='clear'

# Git
alias gs='git status'
alias ga='git add'
alias gl='git log --pretty=oneline'
alias gc='git commit'
alias gd='git diff'
alias glgg='git lg'
alias gch='git checkout'
alias gchb='git checkout -b'

# Docker
alias dps='docker ps'
alias dcps='docker-compose ps'
alias dcd='docker-compose down'
alias dck='docker-compose kill'
alias dcr='docker-compose restart'
alias dcu='docker-compose up'
alias dcud='docker-compose up -d'
alias dc='docker-compose'

alias activate='source venv/bin/activate'

alias stagingdb01tunnel='gcloud compute start-iap-tunnel mysql-c3-n3 3306 --local-host-port=localhost:3308 --zone us-east1-c'
alias stagingdb02tunnel='gcloud compute start-iap-tunnel mysql-c4-n3 3306 --local-host-port=localhost:3307 --zone us-east1-c'
alias proddbtunnel='gcloud compute start-iap-tunnel proxysql-dev-access-us-east1-c-n0 3306 --local-host-port=localhost:3309 --project freshbooks-prod --zone us-east1-c'
alias stagingdbtunnel='gcloud compute start-iap-tunnel proxysql-dev-access-us-east1-c-n0 3306 --local-host-port=localhost:3308 --project freshbooks-staging --zone us-east1-c'

alias up-billing='docker-compose up -d core masterlock_billing_aria_worker cardcaptor commandcenter'
