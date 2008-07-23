= UPnP-MediaServer

* http://seattlerb.org/UPnP-MediaServer
* http://upnp.org
* Bugs: http://rubyforge.org/tracker/?func=add&group_id=1513&atid=5921

== DESCRIPTION:

A UPnP MediaServer.  Currently a work in progress.  Only tested on a
PlayStation 3.

== FEATURES/PROBLEMS:

* Uses incomplete UPnP::Service::ContentDirectory
* Uses stub UPnP::Service::ConnectionManager
* Only tested on PlayStation 3

== SYNOPSIS:

  upnp_media_server --help

  upnp_media_server --name="My Awesome Media" --directory=/my/awesome/media

== REQUIREMENTS:

* A UPnP MediaServer control point
* Media to serve

== INSTALL:

  sudo gem install UPnP-MediaServer

== LICENSE:

Copyright 2008 Eric Hodel.  All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:

1. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.
3. Neither the names of the authors nor the names of their contributors
   may be used to endorse or promote products derived from this software
   without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE AUTHORS ``AS IS'' AND ANY EXPRESS
OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHORS OR CONTRIBUTORS BE
LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

