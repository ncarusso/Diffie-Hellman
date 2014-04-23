#!/bin/bash


###############################################
# Author: Nicolas Carusso                     #
# Author's email: ncarusso at gmail dot com   #
# Date: 25/03/2014                            #
# Version 1 Date: 25/03/2014                  #
###############################################


<<COMMENT1
		This script encrypts/decreypts messages using the key previously agreeded by Alice and Bob by using the Diffie-Hellman  
		key exchange method
COMMENT1

echo -n "Bob, Please enter the key that you have agreeded with Alice: "
read key


function encrypt () {

echo -n "Please write the message that you want to encrypt: "
read m

echo $m | openssl enc -aes-256-cbc -a -k $key

}

function decrypt () {

echo -n "Please write the message that you want to decrypt: "
read m

echo $m | openssl enc -d -aes-256-cbc -a -k $key

}


#################################
#  Encrypt/Decrypt
#################################


        echo "Choose an option: "
        echo "1. Encrypt"
        echo "2. Decrypt"
        echo "3. Exit"
        echo -n "option: "

        read option
        case $option in
            1) encrypt;;
            2) decrypt;;
            3) exit;;
            *) echo "Incorrect Option";;
        esac




