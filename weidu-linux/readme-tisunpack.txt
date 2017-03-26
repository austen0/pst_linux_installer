TisPack v0.91
-------------

TisPack is a tileset compressor for Infinity Engine games (like
Baldur's Gate, Icewind Dale, and Planescape Torment). The engine's
native format for tiled bitmaps is the uncompressed, 8-bit TIS format.
TisPack converts TIS files into compressed TIZ files, compressing them
down to about 7-35% depending on the content. The TIZ unpacker is then
shipped together with the TIZ files, and the TIS files are unpacked
during installation.

This utility is aimed at mod authors who wish to add new areas in
their mods, without having stupidly large downloads.


Contents
--------

readme.txt		This file.
manual.html		The manual.
tizformat.html		A description of the TIZ file format.
tispack.exe		TIS -> TIZ packer.
tisunpack.exe		TIZ -> TIS unpacker.
source/*		Source code.


Contact
-------

I wrote this utility for Jason Compton, jcompton@xnet.com. If you have
any questions regarding usage, modding, or anything else regarding the
games, please contact him -- I don't even own any of these games. If
you have found bugs or wish to submit improvements to the code, you
can contact me, Per Olofsson, at MagerValp@cling.gu.se.


License
-------

/* TisPack, a tileset compression utility
  version 0.91, 2004-05-14

  Copyright (C) 2004 Per Olofsson

  This software is provided 'as-is', without any express or implied
  warranty.  In no event will the author be held liable for any damages
  arising from the use of this software.

  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:

  1. The origin of this software must not be misrepresented; you must not
     claim that you wrote the original software. If you use this software
     in a product, an acknowledgment in the product documentation would be
     appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
     misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.

  Per Olofsson (MagerValp@cling.gu.se)

*/
