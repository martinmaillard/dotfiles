
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

git-churn() {
    git log --all -M -C --name-only --format='format:' "$@" \
        | sort \
        | grep -v '^$' \
        | uniq -c \
        | sort -n \
        | awk 'BEGIN {print "count\tfile"} {print $1 "\t" $2}'
}

repo_url() {
    cat "deps/$1/mix.exs" | grep "github.com" | grep $1 | sed -nE 's/^.*"(https?:\/\/w?w?w?\.?github.com\/.+\/.+)".*$/\1/p' | uniq
}

repo() {
    repo_url $1 | xargs python -mwebbrowser -t
}
