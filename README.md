<h1>Diffie-Hellman Key Exchange</h1>

The script <b>Diffi-Hellman</b> implements the Diffie-Hellman key exchange method. The Diffie-Hellman key exchange method allows two parties that have no prior knowledge of each other to jointly establish a shared secret key over an insecure communications channel.<br>

This key can then be used to encrypt subsequent communications using a symmetric key cipher, as it is clearly ejemplified in both <b>Alice</b> and </Bob> scripts.

<h3>Mathematics behind the Algorithm</h3>

The security of the Diffie-Hellman key exchange protocol relies on the difficulty of solving the discrete logarithm problem.



Given:

n=29,g=2, Alice chooses a secret a=5,Bob chooses a secret b=11

Alice computes her public value:

A=25(mod29)=3

Bob computes his public value:

B=211(mod29)=18

They publicly exchange these public values.

Alice computes:

S=Ba(mod29)=gba(mod29)=15

Bob computes:

S=Ab(mod29)=gab(mod29)=15

Notice that Alice and Bob kept their private component a secret, but were able to arrive at the same shared key S.




