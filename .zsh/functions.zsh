
# Activate nearest python virtualenv
activate_virtualenv() {
    if [ -f venv/bin/activate ]; then source venv/bin/activate;
    elif [ -f ../venv/bin/activate ]; then source ../venv/bin/activate;
    elif [ -f ../../venv/bin/activate ]; then source ../../venv/bin/activate;
    elif [ -f ../../../venv/bin/activate ]; then source ../../../venv/bin/activate;
    else echo "No nearby virtualenv spotted.";
    fi
}

dockerclean() {
    docker container rm $(docker container ls --filter 'status=exited' -aq)
    docker rmi $(docker image ls -aq)
}

cleanpr() {
    git push origin :$1
    git branch -d $1
}
