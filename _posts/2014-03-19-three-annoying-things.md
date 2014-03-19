---
layout: post
title: Three things which annoy me.
---

### Faking message queues with cron ###

I've seen this a couple of times now. Running a cron every so often to see if
something needs doing based on something changing i.e files existing or an entry
in a database table. When what you really should be doing is firing things onto message
queues for workers to deal with.

### NFS ###

If someone suggests that you use NFS to share files between web servers just say no.
NFS does have several uses this is not one of them. Look at using an object store
or some sort of clustered file system or even just rsyncing files to all the webservers.
Single points of failure are not your friend.


### Not using a Logical Volume Manager ###

Being able to extend the size of your disks easily is a good thing if you are
running out of space on a critical file system. A logical volume manager helps
with this. You will also probably need a file system which can do online resizing
as well.
