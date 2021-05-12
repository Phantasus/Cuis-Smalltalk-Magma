# Project journal

This file is intended to record the history of this project. So that
when it get's abandoned people can take it up again from where it was
left off.

The rule of the structure is that newest is at top, oldest
entry is at the bottom. And people mention the author of the entry
by his shortcut. Also people add their shortcuts to the list of
authors at the end of the file.

# 12. May 2021 (jpb)

In the morning I fixed the missing classes from Squeak for the Network
errors. Some calls to `String empty` and `Array empty`, which were
replaced by the literals `''` and `#()`. Also `ifNotNilDo:` was
changed to `ifNotNil:`. Some classes which derived from the wrong
parent class, due to it's missing constant at loading time, which
changed them to `ProtoObject` were derived from the correct one.

A sidenote: When you try to change the layout of a `ProtoObject`
subclass and it has instance variables to something which now
derives from say `Object`, the debugger will get invoked, because
the existing instances with variable values will be accessed
for copying over the variable values into the new class with `instVarAt:`,
but `ProtoObject` does not have `instVarAt:` which causes an error.
For fixing that, you just copy the variable list in the browser, 
then delete the list, accept the class in the browser, and then add
the list back and accept it again. So the previous values are lost
and no copying over action is trigger and no error is caused.


# 11. May 2021 (jpb)

The `WriteBarrier` is not an optional package, as the transactions
are depending on it. As it's a direct subclass, ugh! Great.

I added further methods to the `MaRegistry` (previously known as
the `MaServerRegistry`), which adds now methods for uuid interaction
and time difference calculation, which were missing from Cuis.

Removed after an image crash and the resulting rage of re-declaring
in-existent Squeak classes all of them (as some weird extensions
were added to them). Also I commented out the `addToStartUpList:`
calls, as they resulted in the image to block on the next startup,
which is NOT WHAT I WANT (grml!!).


# 10. May 2021 (jpb)

As I asked Chris Muller (cmm) why the test takes longer I got the
answer, that it's supposed to take longer and that he may rewrite
it at some time. I disabled it, with an if statement and an assert,
as the Cuis TestCase lacks a `skip` method, that could be an extension.
Which I did with all the `MaHashIndexTester` tests, as the rest takes
about 1 to 5 minutes. They all passed, but for a unit testsuite that is
a little bit too long, in theory they should be part of an integration
or system testsuite.


# 9. May 2021 (jpb)

Today I got the `Ma-Collections` tests running and the `MaHashIndexTester`
test, this last testcase takes hours, to more precise that seems to be
the `#testFullDepthKeyInsertionThenPullOu` test, as it writes out in the filesystem
an index file in different keys and record formats and then inserts
values into and verifies them, this seems to take time. I'm unsure
about the behaviour, as I haven't yet read and fully understood
the test.

The code of the `Ma-Collections` tests failed previously, because
they expected that basic collections like `Dictionary` behaved
in a Squeak way, but we are in Cuis, here things are different.

I added from the swiki (Squeak wiki) different documentation
pages, so that should the wiki go down, there is still a minimal
documentation of the rough behaviour of magma.


# 8. May 2021 (jpb)

In the morning I extracted the `Ma-Collections` package and 
smashed again the different categories mostly into one collections
package, as I found the distinction in private, number, dictionaries
or canonicalization collections not helpful. Maybe a distinction of
abstract, ordered, weak, unordered, etc. like Cuis does it is more
helpful. Atleast now the hierarchy is better visible in the class
pane of the system browser.

Added the ma collections package as a dependency for the server-client-core,
could be in theory moved to the server. I'm unsure about the connection.

Now the deleted classes which were present in the `Magma-Server` package
need to be added again, as they depended on classes in the collections
package. Which seems to hold the datastructures which are actually serialized
to "disk" by the server.

So I got finally my hands on the first actual tests, the magma collections
tests (155 total), meant that only 21 errors (134 passed), which is quiet
good when I consider it, that I'm still in the dark about the overall
structure and the exact interactions of these classes.


# 7. May 2021 (jpb)

Today I extracted the client and server into packages. I harshly
ripped out the monticello functionality, as this is not needed
in Cuis. And also any further Squeak dependency, which
were created in a loaded cuis `SqueakCompability` package and
then discarded.

Magma modifies everything about a Smalltalk system and the so
called "well-factored code" means in reality code which was stuck
too often into packages, I don't understand the codebase when
it's all over the place. So I mostly merged the classes into 
in my opinion easier AND LESS categories.

The Server also depended on things in the client package, which
it shouldn't. Also the server had depedencies on the magma
collections package, which was not included. I think focusing
on the packages:

1. `Ma-Client-Server-Core`
2. `Magma-Client`
3. `Magma-Server`
4. `Ma-Serializer-Core`
5. `SOLHashTables`
6. `Ma-Core`

is already more than enough. Maybe now getting tests running,
as far as I have seen now, there are not many tests for the existing
packages. The only tests I wrote were for the `SOLHashTables`.


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
