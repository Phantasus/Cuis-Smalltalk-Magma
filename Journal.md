# Project journal

This file is intended to record the history of this project. So that
when it get's abandoned people can take it up again from where it was
left off.

The rule of the structure is that newest is at top, oldest
entry is at the bottom. And people mention the author of the entry
by his shortcut. Also people add their shortcuts to the list of
authors at the end of the file.

# 6. May 2021 (jpb)

In the morning I got mail from Chris Muller, who welcomed the porting
effort, as far as I understood his mail. And provided some guidance
on how things should taken in order to finish the port:

>  Subject: Re: Porting Magma to Cuis
>  To: Philip Bernhart
>  Date: Wed, 05 May 2021 15:24:46 -0500
>
>  Hi Philip,
>
>  I think you will find that by isolating and porting each package
>  individually, the size of the software will not seem so big.
>
>  MaInstaller new packagesFor: #magmaServer
>
>   #('OSProcess'  -- only used by magma test suite, already available for
>  Cuis?
>  'PlotMorph'  -- not critical for the port, you could skip this whole package
>  'Ma-Core'    -- this package needs ported
>  'Ma-Squeak-Core'   -- you could skip this whole package
>  'BrpExtensions'      -- just the extensions, you can ignore the "Medley"
>  classes.
>  'Ma-Search'           -- you could skip this whole package
>  'Ma-Collections'     -- you can ignore all the classes in the
>  '*-Dictionary*' categories
>  'Ma-Ascii-Report'   -- only used for fancy printing of commit-conflict
>  errors...  could possibly skip if you wanted..
>  'Ma-Statistics'        -- you need this one, just 4 domain classes,
>  5-minute port
>  'Ma-Serializer-Core'  -- this is the first "biggie"
>  'Ma-Serializer-Squeak-Core'  -- Squeak-specific methods for the above
>  'RFB'                             -- you could skip this whole package
>  'Ma-Client-Server-Core'   -- rock-solid generic networking.  Used by other
>  apps besides Magma.  Not too big, but critical.
>  'WriteBarrier'                -- ignore until later
>  'SOLHashTables'         -- required, but just a plain domain.  should be
>  easy.
>  'Magma-Client'           -- the second "biggie"
>  'Magma-Squeak-Client'  -- small
>  'Magma-Server'           -- the third "biggie")
>
>  So, the 4 critical packages from the above list are:
>
>       'Ma-Serializer-Core'
>       'Ma-Client-Server-Core'
>       'Magma-Client'
>       'Magma-Server'
>
>  Serializer should go smoothly.
>  Client-Server might have some hiccups if there are different nuances to
>  networking between Squeak and Cuis.
>
>  With the above two, Magma-Client and Server should just port and "work",
>  but actually Server does make use of Squeak's StandardFileStream (only in
>  #binary mode, thankfully) so there may be some nuances there.
>
>  I hope you'll go for it!  I use Magma to do my taxes, as well as several
>  other apps.  It's a fantastic, reliable package.  Definitely feel free to
>  email me if you have any questions.
>
>   - Chris

This is encouraging, but to get it to a useable state, I'll first need
to start and port the basic packages, which seem to be these packages:

>       'Ma-Serializer-Core'
>       'Ma-Client-Server-Core'
>       'Magma-Client'
>       'Magma-Server'

I documented the mail, because should I find no further motivation
because of the gazillions of reasons for losing it, I or anyone
else who comes to this forgotten project should be able to pick it
up again.


# 5. May 2021 (jpb)

I tried to file out all the related classes for magma, but I found
out that I find it hard, without knowing enough Squeak to automate
the extension modifications which were done by Magma on the different
classes in the system.

For my taste Magma is way too much modularized, too many packages
don't help in understanding, which will be one of the first things
I'll fix.

As I currently failed to include all the extension classes I filed
the ones out by hand, which is a tedious process. Only for the
`SOLHashtables` and `WriteBarrier` packages I filedout the extensions,
as these are rather smallish.

Anyway I commit the current state, so that it does not get lost.

# Authors

- Josef Philip Bernhart (jpb)
