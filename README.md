What is faekroq?
================

You know how, when, your brother is in town, and you're not at
home, and he just wants to crash on your couch, and you're like,
"dude, whatever, same deal as before," and then your brother
goes into the flowerbed right next to your front door, and 
flips over a perfectly harmless looking rock, and slides open
the base and a housekey drops out?

This ruby gem does that.  Except "your brother" is actually
some ruby program (maybe a test!), and "your house" is some
password-requiring resource (like maybe a firewall/proxy) and
"your spare key" is a password you don't really want to leave
just lying around.

Just like that perfectly hidden spare key to your front door
nestled down in the mulch, faekroq relies on _security by
obscurity_ (or obfuscation).  Caveat Emptor.  There is no
such thing as 100% bullet proof security, but I can confidently
say that faekroq protects your password slightly better than
a vest woven from pure tissue paper (1 ply).  So again, use
this carefully and at your own risk.  No warranties express
or implied.

Tested (and Known To Be Working) On...
======================================

  * 1.9.2
  * 1.8.7
  * 1.8.6
  * rbx
  * jruby 1.6.1, 1.6.3

An Haphazard Backlog
====================

Faekroq is not ready to use yet.  First we need:

  * read/write encrypted password from a default file
  * read/write key to a default file
  * read/write encrypted password from the current (project) directory
  * what if we want more than one encrypted password?  What then?
  * your choice of either weathered granite or sunset sandstone
