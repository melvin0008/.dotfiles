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
alias dev='cd ~/development/'
alias devng='cd ~/development/angularjs/'
alias devphp='cd ~/development/php/'
alias devpy='cd ~/development/python/'
alias devjul='cd ~/development/julia/'
alias devmix='cd ~/development/mix/'
alias devruby='cd ~/development/ruby/'
alias devsml='cd ~/development/sml'
alias devjava='cd ~/development/java'
alias devweb='cd ~/development/web'
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
alias ?='ls -ax | grep $1'
#git
alias gi='git init'
alias gs='git status'
alias ga='git add --all'
alias gc='git commit -a'
alias gpm='git push origin master'
alias gpd='git push origin develop'
alias pm='git pull origin master'
alias pd='git pull origin develop'
alias gr='git remote -v'
alias gra="git remote add"
alias grr="git remote -rm"

#python
alias venv='source venv/bin/activate'
alias pi='sudo pip install'
alias pf='pip freeze'
alias pfr='pip freeze >requirements.txt'
alias d='deactivate'


#laravel
alias larac='composer dump-autoload'
alias larad='php artisan dump-autoload'
alias cu='composer update'
