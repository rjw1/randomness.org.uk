---
layout: post
title: my use of ssh keys
---

- I use multiple keys for reasons
  - splitting of responsibility
  - I dont need work access at the weekend
  - different passphrases
  - passphrases in pass
  - only add to ssh0agent when needed and only for 10 hours. means my laptop
    could be stolen and they have to act quick to compromise stuff. (Maybe that
    10 hours should be lower)
    - IdentityFile
    - AddKeystoagent
    - Identies only

