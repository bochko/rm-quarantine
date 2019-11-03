#!/bin/bash

# Created by Boyan Atanasov, 2019-11-03

# Removes the quarantine attribute in OSX
# Catalina from runnable applications.
QUARANTINE_ATTR="com.apple.quarantine"

echo -e "Enter path to application:"
read APPLICATION
echo -e "Attribute discovery started..."
# See all attributes on app
ATTRIBUTES=$(sudo xattr "$APPLICATION")
echo -e $ATTRIBUTES
# check if attributes contain a quarantine
# attribute
if [[ $ATTRIBUTES == *$QUARANTINE_ATTR* ]]; then
    echo -e "Quarantine attribute found."
    # remove the attribute
    sudo xattr -r -d $QUARANTINE_ATTR "$APPLICATION"
    echo -e "Quarantine attribute removed."
else
    echo -e "Could not find quarantine attribute; exiting..."
fi
    

