#!/bin/bash
QUARANTINE_ATTR="com.apple.quarantine"

echo -e "Enter path to application:"
read APPLICATION
echo -e "Attribute discovery started..."
ATTRIBUTES=$(sudo xattr "$APPLICATION")
echo -e $ATTRIBUTES
# check if attributes contain a quarantine
# attribute
if [[ $ATTRIBUTES == *$QUARANTINE_ATTR* ]]; then
  echo -e "Quarantine attribute found."
  sudo xattr -r -d $QUARANTINE_ATTR "$APPLICATION"
  echo -e "Quarantine attribute removed."
fi

