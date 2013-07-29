
# Activate nearest python virtualenv
activate_virtualenv() {
    if [ -f venv/Scripts/activate ]; then source venv/Scripts/activate;
    elif [ -f ../venv/Scripts/activate ]; then source ../venv/Scripts/activate;
    elif [ -f ../../venv/Scripts/activate ]; then source ../../venv/Scripts/activate;
    elif [ -f ../../../venv/Scripts/activate ]; then source ../../../venv/Scripts/activate;
    else echo "No nearby virtualenv spotted.";
    fi
}
