#!/bin/bash


###############################################
# Author: Nicolas Carusso                     #
# Author's email: ncarusso at gmail dot com   #
# Date: 17/03/2014                            #
# Version 1 Date: 17/03/2014                  #
###############################################


<<COMMENT1
		This script implements the Diffie-Hellman key exchange method. The Diffie-Hellman key exchange method allows two parties that have
		no prior knowledge of each other to jointly establish a shared secret key over an insecure communications channel.
		This key can then be used to encrypt subsequent communications using a symmetric key cipher
COMMENT1

echo -n "Please enter the prime number and the base agreeded by Alice and Bob (separated by a space): "
read p g

#p=prime number  and    g=base

echo -n "Alice, please enter your secret number: "
read secretA

echo -n "Bob, please enter your secret number: "
read secretB


<<COMMENT2

	Exponentiation in bash

	x=2
	y=3
	echo $(( x ** y ))

COMMENT2

###############################################
# Generation of Secrets
###############################################

# Alice generates A (g^a mod p) and sends it to Bob

A=$((((g ** secretA))%p))

echo  "Alice computes A: " $A 
 
# Bob generates B (g^b mod p) and sends it to Alice

B=$((((g ** secretB))%p))

echo "Bob computes B: " $B

###############################################
# Exchange
###############################################


# Alice computes (g^b mod p)^a mod p  
# However, we know that (g^b mod p) is B, therefore it is possible to simplify the expression,
# (B^a mod p)

AliceSecretKey=$((((B ** secretA))%p))
echo  "Alice get the following shared key: " $AliceSecretKey

# Bob computes (g^a mod p)^b mod p
# However, we know that (g^a mod p) is A, therefore it is possible to simplify the expression,
# (A^b mod p)

BobSecretKey=$((((A ** secretB))%p))
echo "Bob get the following shared key: " $BobSecretKey



if [ $AliceSecretKey -eq $BobSecretKey ] 
then
    echo "It Works! They both get the same key!"
else
    echo "Something happened...Perhaps you didn't choose a prime number (p)"
fi 


