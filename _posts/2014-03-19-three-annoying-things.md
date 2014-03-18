---
layout: post
title: Three things which annoy me.
---

We recently had an issue at work which tickled three of my pet peeves.

### Faking message queues with cron ###

I've seen this a couple of times now. Running a cron every so often to see if
something needs doing based on something changing i.e files existing or an entry
in a db table. When what you really should be doing is firing things onto message
queue for workers to deal with. In this case we had low priority things blocking
things which should have been dealt with more urgently. If message queues were
used the two types of jobs could have had different queues and or workers. Also
scaling becomes easier by running more workers.

### NFS ###

If someone suggests that you use NFS to shares files between webservers just say no.
NFS does have several uses this isn't one of them.

### Not using a Logical Volume Manager ###

Being able to extend the size of your disks easily is a good thing if you are
running out of space on a critical filesystem. A logical volume manager helps
with this. Oh and a filesystem which can do online resizing. :).
