#functions
cdintodev(){
    cd ~/development/$1
}
listdev(){
    cd ~/development/;
    ls;
    cd ~/
}
devsearch(){
    cd ~/development/;
    ls | grep $1
    cd ~/
}
mkdirandcd(){
    mkdir $1;
    cd $1;
}
newdev(){
    cd ~/development;
    mkc $1;
    git init;
}

newdevp()
{
    newdev $1;
    virtualenv venv;
    venv
}

devvenv()
{
    dev $1;
    venv
}

#cd 
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias mkc=mkdirandcd

#dev
alias dev=cdintodev
alias devl=listdev
alias devs=devsearch
alias devn=newdev
alias devnp=newdevnp
alias devp=devvenv

# Folders
alias download='cd ~/Downloads/'
alias doc='cd ~/Documents/'
alias home='cd ~/'

#nec
alias update='sudo apt-get update'
alias install='sudo apt-get install'

#git
alias gs='git status'
alias ga='git add --all'
alias gc='git commit -a'
alias gpm='git push origin master'
alias gpd='git push origin develop'
alias pm='git pull origin master'
alias pd='git pull origin develop'
alias gr='git remote -v'

#python
alias venv='source venv/bin/activate'
alias pip='sudo pip install'
alias d='deactivate'


#laravel
alias larac='composer dump-autoload'
alias larad='php artisan dump-autoload'
alias cu='composer update'
