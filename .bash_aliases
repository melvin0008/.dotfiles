#functions
listdev(){
    cd ~/development/$1;
    ls;
    cd ~/
}
devsearch(){
    cd ~/development/$1;
    ls -ax | grep $2
    cd ~/
}
mkdirandcd(){
    mkdir $1;
    cd $1;
}
newdev(){
    cd ~/development/$1;
    mkdir $2;
    cd $2;
    git init;
}

newdevp()
{
    newdev python $1;
    virtualenv venv;
    venv
}

devvenv()
{
    devpy $1;
    venv;
}

#cd 
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias mkc=mkdirandcd

#dev
alias dev='cd ~/development/;ls'
alias devapp='cd ~/development/apps/;ls'
alias devng='cd ~/development/angularjs/;ls'
alias devphp='cd ~/development/php/;ls'
alias devpy='cd ~/development/python/;ls'
alias devjul='cd ~/development/julia/;ls'
alias devmix='cd ~/development/mix/;ls'
alias devruby='cd ~/development/ruby/;ls'
alias devsml='cd ~/development/sml/;ls'
alias devjava='cd ~/development/java/;ls'
alias devweb='cd ~/development/web/;ls'
alias devnode='cd ~/development/node/;ls'
alias devl=listdev
alias devs=devsearch
alias devn=newdev
alias devnp=newdevnp
alias devp=devvenv

# Shortcuts
alias download='cd ~/Downloads/'
alias doc='cd ~/Documents/'
alias ~='cd ~/'
alias h='history'
alias j='jobs'

#nec
alias update='sudo apt-get update'
alias install='sudo apt-get install'
alias upgrade='sudo apt-get upgrade'
alias ?='ls -ax | grep $1'

#git
alias gi='git init'
alias gs='git status'
alias ga='git add --all'
alias gc='git commit -a'
alias gpm='git push origin master'
alias gpd='git push origin develop'
alias gph='git push heroku master'
alias pm='git pull origin master'
alias pd='git pull origin develop'
alias gr='git remote -v'
alias gra="git remote add"
alias grr="git remote -rm"

#python
alias virt='virtualenv venv'
alias venv='source venv/bin/activate'
alias pi='pip install'
alias pf='pip freeze'
alias pfr='pip freeze >requirements.txt'
alias d='deactivate'


#laravel
alias larac='composer dump-autoload'
alias larad='php artisan dump-autoload'
alias cu='composer update'


#npm
alias ni='npm install'
alias ngi='npm install -g'
alias nl='npm list'
alias nenv='source nenv/bin/activate'
alias nirt='nodeenv --node=0.10.31 nenv'
alias nd='DEBUG=myapp ./bin/www'
