#!/bin/sh
is_number() {
    re='^[0-9]+$'
    if ! [[ $1 =~ $re ]]; then
        return 1
    else
        return 0
    fi
}

if [ -z "$1" ]; then
    read -p "Enter digital counter: " COUNTER
    timer=$COUNTER
else
    timer=$1
fi

if ! is_number "$timer"; then
    echo "Error: Must be a number"
    exit 1
fi

while [ $timer -gt 0 ]; do
    echo  $timer 
    sleep 0.5
    ((timer--))
done

echo "Done!"