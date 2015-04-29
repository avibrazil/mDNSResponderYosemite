# OS X 10.9 mDNSResponder packaged to 10.10

10.10 discoveryd and DNS resolution is broken, according to [Ars Technica](http://arstechnica.com/apple/2015/01/12/why-dns-in-os-x-10-10-is-broken-and-what-you-can-do-to-fix-it/)

That same article provides a solution which is going back to 10.9's mDNSResponder. It shows how to do it manually.

This Makefile will create a binary installable PKG for you with a nice post-install script that disables discoveryd and enables mDNSResponder.

Binary package ready to install is [here](https://avi.alkalay.net/software/mDNSResponder/)