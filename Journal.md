# Project journal

This file is intended to record the history of this project. So that
when it get's abandoned people can take it up again from where it was
left off.

The rule of the structure is that newest is at top, oldest
entry is at the bottom. And people mention the author of the entry
by his shortcut. Also people add their shortcuts to the list of
authors at the end of the file.

# 16. May 2021 (jpb)

Finally I fixed the `testNestedHashedCollections` test of the
object serializer tests. Which now makes these all pass.

The reason was my removal/change of the `maDirtyAdd:` method,
which is an ugly hack to the internals of a Set/Dictionary.

With it new associations (for a Dictionary) are appended
without any checks. Doing that leaves the Dictionary in an
error state temporarily until the keys are corrected by
doing a `rehash` on the dictionary.

I refactored the object materialization into a new class,
which is an interactor, it uses a serializer to deserialize
objects. It was added, because I could not understand the
way the materialization process works.

The materialization process works roughly the following way:

1. A list of "object buffers" are read, which are records
   in the on-disk-file which contain object information like
   object id and how many references are held, etc.
2. These object buffers are read into an ordered collection of unfinished
   materializations, in the source code they are called `skeletons`.
   They are stored in there as associations, the keys are the
   materialized objects and the value is the original object buffer.
3. When all objects were read into the list of `skeletons`, then
   the references to other objects are traversed and looked up and fixed.
   If the object is a `Set` or a `Dictionary`, then they are added to
   a list of items to be rehashed at the end of traversal, which
   fixes any key errors in Dictionaries, so that objects can be used
   as keys.
4. Then the post materialization hooks are run on each object, which
   want's them.
   

# 14. May 2021 (jpb)


These tests need to finish in cuis, so that the basic magma
functionality could maybe run:

- `MaObjectSerializerTestCase`
- `MaClientServerTestCase`

In the morning I threw out calls to the globals (try to 
minimize calls to globals folks!) `ActiveHand` and replaced
it with the call `self activeHand` in Cuis. Also the
`associationClass` calls which would return for a `Dictionary`
in Squeak the storage class for the `Association` records within
it, does not exist in Cuis.


# 13. May 2021 (jpb)

I don't see light at the end of the tunnel. Magma is so well
integrated into Squeak, that any porting effort to Cuis is not
really a porting effort as in that it will behave 1:1 as someone
would a database system expect to be working. But essentially
you need to throw out all reports, ui extensions, class
extensions and other changes to the system just to get it working.

After that you can't probably expect 1:1 compatibility. Or that
people can take their previous code and it will work in Cuis.

Squeak for example has environments, magma is aware of that, Cuis
doesn't provide environments. The handling of that, when I found
I threw it out. There seems to be not a distinction between the
system and the database, which is good from an "seamless" viewpoint,
but a bad one in designing in separating these things.

Maybe the changed system, running in Cuis and other Smalltalks (if
that is ever possible, who am I kidding?), should be called "Lava"
or something similiar as Magma is molten stone in the crust, before the 
fact that it was erupted and Lava is after the fact it erupted into
the outside world.

To summarize current issues:

1. Process startup (commit log, cache flushing, error handling, etc)
   was disabled, because it caused problems in Cuis. Too much
   processes after creating a new repository
2. Extension of base classes and squeak specific classes,
   which add hooks everywhere. These need to be re-engineered and
   removed. Until there is a coherent concept of environments, projects,
   monticello specifics that stuff can't be included in sensfully
   in Cuis
3. Notifications, NetworkErrors, etc. need to be re-implemented the
   base for that was layed by me by subclassing them. But the rest
   is still missing and will cause errors here and there.
4. What will be done with magma specifics (or what is Maui?)


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

A really tricky modification seems to be `initializeSystemChangeNotifications`
which registers some event handling on the `SystemChangeNotifier`,
I think I correctly changed it as the original interface is highly
Squeak specific.

Another sidenote: Magma seems to start a lot of processes, no wonder
that it has some "memory hog" hooks here and there. I realized that
after the image became kind of slow and that suddenly things popped
up, which are unexpected. They all seem to be running at a priority
of 49. Which means that when you encounter a lot of rouge processes
through magma wasting resources, do yourself a favor and type
that into a Workspace and do it:

```smalltalk
Process allInstancesDo: [:p| p priority = 49 ifTrue: [ p terminate ]]
```

Now it seems that a mutex is blocking when finally closing
the newly created repository. In `MagmaRepositoryController>>primClose`,
maybe the mutex is still occupied by something, or why does it block?
Maybe the image state is dirty and I need to start with a fresh one?

I added a kind of annotated `Mutex` for debugging mutexes in magma,
it's called a `MaGuard` borrowing the name usage of magma for saying
that any mutex is a "guard". Actually that is a kind of helpful name,
so I stuck with it. `MaGuard`s can be globally enabled or disabled (unguarded)
they can enable halting on each mutex `critical:` call, maybe in the 
future logging of each access could be enabled too.

I found out, that the `ControllersGuard` was still using a mutex, after
everything else was using a `MaGuard` I changed it to one and the
code for closing continued in `primClose` of the `MagmaRepositoryController`.

After that I saw that now for some reason the existing Magma code "thought"
that a power outage occured somewhere and it should start recovering the
database. 

Here an image of that notification:
![Screenshot of a Magma recovery notification](/JournalAssets/recovery_mode_20210512.png)

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
