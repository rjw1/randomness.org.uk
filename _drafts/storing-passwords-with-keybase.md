---
layout: post
title: storing passwords with keybase
---

I store my passwords in [pass](https://www.passwordstore.org/). I do this becuase you should use a password manager to give you unique passwords for every site. I use `pass` because I can read its code and understand it. Its not that many lines of `bash`. If gpg is broken my password store is the least of the wolrlds worries.
I move between machines. To sync passwords i was using remote git repo on a vm I control. This vm was locked down to certain IPs so i would forget to pull all the time. this has lead to merge commits. the other day [keybase] announced [encrypted git repos]. this was the soloution to my git repo hosting needs. WHile I could have had password store in an open github repo it does leak info about what accounts I have. I was thingking about gitlab private repos but the paranoid in me felt that encrupted ones would be even better.
It was simple to move my remote to useing keybase once i had signed up, installed the apps and created the new repo.
I now just need to remeber to git pull more often.
I dont really care about passwords on my phone.

