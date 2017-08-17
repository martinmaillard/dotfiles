
# Activate nearest python virtualenv
activate_virtualenv() {
    if [ -f venv/bin/activate ]; then source venv/bin/activate;
    elif [ -f ../venv/bin/activate ]; then source ../venv/bin/activate;
    elif [ -f ../../venv/bin/activate ]; then source ../../venv/bin/activate;
    elif [ -f ../../../venv/bin/activate ]; then source ../../../venv/bin/activate;
    else echo "No nearby virtualenv spotted.";
    fi
}
