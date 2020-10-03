---
layout: post
title: Sharing secrets with GPG
---

GPG like most tools has many uses and options which can make it hard to use
because people get lost in the documentation. Most people only need to share
secrets. To do this you only need to know how to create a key, import a key,
encrypt a secret and decrypt a secret.

## Creating a key

## Importing a key

## Encrypting a secret

- create a secret

  ```bash
  pwgen 32 1
  fuo6Wi1oozaeph8Eegoejohdeiv9thoo
  ```

- encrypt the secret

  ```bash
  echo "fuo6Wi1oozaeph8Eegoejohdeiv9thoo" | gpg --encrypt --recipient bob@randomness.org.uk --out secret.gpg --armour
  ```

-  share the encrypted secret as a file or paste it to them via soemthing like
slack

  ```bash
  $  cat secret.gpg
  -----BEGIN PGP MESSAGE-----
  
  hQIMAwE4Sj4O9RJQAQ//WEv2IJR728B+fkwdTzdqXcX2W2bQWlRIo3M2R+cCuJms
  +JbItdCo0vu0RhzY9yFSibuA+3mRXCujpcUe/TzWtVSFPdCXmAJjaeKy7CNhrHvB
  lRaekFfxSH7X4Y6cc3t0ndXxSB28Oo8Fj/f/Hiskjm2MB+5CMwAFltmZ1KabtlJ4
  FUU09gl1hUsiqAeRApcHSkeEc3OocvECh5uC87rorg/o6rA0lEstkHCoilrx/dGK
  N6mCGgiStINvvoQCJa+i7oFDkFuH3xFTGFpr6z928RdML2L1X1Cs39Jr7k3oAvEo
  6hdd8SAEki1A9Zg09mXDJMHRoefpUk8uFdJg4JVZ6tncd1GYbNgPhV0lNq7tjYaM
  3Y+PZeTwAxXhqHwrKzQCEDJ7mTAVdHp0YTiX1hivITShHjRRB86C+hzJHWN5nCHd
  YAuPW1p9FJ4rhZDxDgyrL85Tg2wDIqM83F40TfLO/7cgpPKufb8f1kFfC3ijPcG5
  Le0rXwS2IFxXeUd0zCMxT9QlmIovUfW7ZGnSQcCbIhTqiL1DltW6Uu0AZ+V4y0r3
  TVVmb1LEeLTT4wJbNQG1S0gg4l/xaoQcpBYdouLuYQKrCWhHCIrRXvVKFerleo1q
  DHHSsALgj/CdaqoMa0iQpuVkC5lVG0DiPIwclQq8Pv1lM1HqmHKR2ti2CavvAgPS
  XAHpLSXYQ1occCj9dfsc0aOlDKHpnUBaVPPVno5opiezpYA+2qJ3Sq1h5GvWj2Xc
  /+4XFWDtCOwG3nWJ4Mztu5z/pkvMJhMgN1Bqbv9TaquYcj1v75LGp0n/9v/9
  =mHpN
  -----END PGP MESSAGE-----
  ```

## Decrypting a secret

```bash
cat secret.gpg | gpg --decrypt
gpg: encrypted with 4096-bit RSA key, ID 01384A3E0EF51250, created 2015-12-23
      "bob walker <bob@randomness.org.uk>"
fuo6Wi1oozaeph8Eegoejohdeiv9thoo
```
