MosPack v0.92
-------------

MosPack is a tiled image compressor for Infinity Engine games (like
Baldur's Gate, Icewind Dale, and Planescape Torment).

MosPack is based on TisPack by Per Olofsson.

The engine's native format for tiled images is the uncompressed, 8-bit
MOS format.
MosPack converts MOS files into compressed MOZ files, compressing them
down to about 7-35% depending on the content. The MOZ unpacker is then
shipped together with the MOZ files, and the MOS files are unpacked
during installation.

This utility is aimed at mod authors who wish to add new images in
their mods, without having stupidly large downloads.


Contents
--------

readme.txt		This file.
manual.html		The manual.
mozformat.html		A description of the MOZ file format.
win32/mospack.exe	MOS -> MOZ packer for Windows.
win32/mosunpack.exe	MOZ -> MOS unpacker for Windows.
linux/mospack		MOS -> MOZ packer for Linux.
linux/mosunpack		MOZ -> MOS unpacker for Linux.
source/*		Source code.


Contact
-------

If you have any questions / comments please contact me at the forgotten
wars forums:

forums.forgottenwars.net

License
-------

/*
  MosPack
  version 0.92, 2005-03-26
  by Yacomo

  Notice from original tispack:

  based on
  TisPack, a tileset compression utility
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
