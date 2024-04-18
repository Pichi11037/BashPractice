#!/bin/bash

echo -e 'if statement:'
if [ ${1,,} = andres ]; then
    echo 'Hi boss, welcome'
elif [ ${1,,} = help ]; then
    echo 'just type your pasword...'
else
    echo 'i dont know you leave me alone'
fi
echo -e '\n'

echo 'case statement'
case ${1,,} in 
    andres | admin)
        echo  Oh hey $1, Welcome
        ;;
    help)
        echo  Just enter your username!
        ;;
    *)
        echo I dont know you get out!
esac