<h1>Diffie-Hellman Key Exchange</h1>

The script <b>Diffi-Hellman</b> implements the Diffie-Hellman key exchange method. The Diffie-Hellman key exchange method allows two parties that have no prior knowledge of each other to jointly establish a shared secret key over an insecure communications channel.<br>

This key can then be used to encrypt subsequent communications using a symmetric key cipher, as it is clearly ejemplified in both <b>Alice</b> and <b>Bob</b> scripts.

<h3>Mathematics behind the Algorithm</h3>

The security of the Diffie-Hellman key exchange protocol relies on the difficulty of solving the discrete logarithm problem.



Given:

n=29,g=2, Alice chooses a secret a=5,Bob chooses a secret b=11

Alice computes her public value:

A=2<sup>5</sup> (mod 29) = 3

Bob computes his public value:

B=2<sup>11</sup> (mod 29) = 18

They publicly exchange these public values.

Alice computes:

S=B<sup>a</sup> (mod 29) = g<sup>ba</sup> (mod 29) = 15

Bob computes:

S=A<sup>b</sup> (mod2 9) = g<sup>ab</sup> (mod 29) = 15

Notice that Alice and Bob kept their private component a secret, but were able to arrive at the same shared key S.




