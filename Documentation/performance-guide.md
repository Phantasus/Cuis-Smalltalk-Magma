# Eliminate all wasteful processing

The key to good performance with Magma is to not do wasteful
processing. Smalltalk favors dynamic agility over speed, which
provides both the ability and need to avoid unnecessary processing.

# Optimize Caching

When an application is running Magma code it is not running its own
code. Magma code is run when objects which are not in memory (e.g., a
Proxy) are accessed by the application. The `MagmaSession` does not
strongly reference the persistent domain.

It is left up to the application to decide which objects should be
retained in memory and which should be allowed "fall out" back to being
a Proxy. The worst-performing thing an application can do is frequently
access the same objects but not cache them.

This has a two-pronged negative-impact on performance: First, the application is spending
time running Magma code to constantly rematerialize the same objects –
very wasteful. Furthermore, by not keeping a strong reference, the
garbage-collector is working overtime. It's a double-negative,
important not to let it happen.

Designing an optimized cache is a balancing act. It is very important
for the application to strongly reference the objects that will be
frequently accessed, but also important to not cache too many
objects. All of the special large-collections offer paged access to
their elements, and so these large-collection objects themselves are
useful to have available in the cache – they provide access to a lot
of other objects with a brief, random access.

Large domain models that don't involve one of Magma's special
collections will very likely need to manually stubOut: branches of the
model that are no longer needed. Where and how-often this is done
needs to be well-considered: If the objects are going to be needed
again soon.

As an example, when a user logs into a web-application, he will be
working with his portion of the domain model, so the objects he
initiall-accesses (from Magma) should be cached until they are no
longer needed. The application would wait to stubOut: the users cached
objects until shortly after the user has logged out.


# Do not frequently access an uncached root

Some applications have a high-frequency dependent processing that
starts with a "top-down" access of the domain. This can be a viable
design with Magma, but it is important to know that the root of a
MagmaSession is not cached except when the session is in a
transaction. Accessing the uncached #root of a session frequently,
while outside a transaction, is wasteful and, therefore, will hurt
performance.

Use `WbArray`'s, `WbOrderedCollections`, `WbSet`'s and `WbDictionary`'s
For the new Closures, the Array class cannot be made uncompact, which
means they cannot use #primitiveChangeClassTo:, which means it cannot
be added to the WriteBarrier, which means they end up in Magma's
readSet, which means commits will be slower. WbArray is just a
subclass of Array which _can_ be compacted. WbOrderedCollection is
just an OrderedCollection that uses an internal WbArray instead of an
internal Array. Likewise for Dictionary and Set.

Therefore, using these WriteBarrier-capable versions will improve
performance.

# Statistics and Profiling
Profiling is the single-most revealing aspect of what ails a
poorly-performing Magma application.

Additionally, Magma itself can report detailed timing information
about where it is spending its time. A separate timing statistic is
captured for every kind of request and virtually everything it does,
both client and server. You may print a report of the performance
statistics of the recent past with by sending #statistics or
#serverStatistics to your MagmaSession.

Using ReadStrategies
Read strategies can be used to optimize how many objects are accessed
within a single call to the server.

Use medium-sized requests
Commits should be put in your program as close to the mutations to the
persistent model as possible. The Magma server handles requests
serially, so large commits that take several seconds could cause
requests to queue in the server (resulting in a pause for those
clients).

At the same time, you don't want commits to be so microscopic that you
end up smothering the network with requests. For example, if building
an OrderedCollection of 100 medium-sized objects, you should do those
in one commit instead of 100 commits. However, if the objects are very
large and completely non-persistent, you may want to do 100 commits.

Keep your cachedObjectCount as low as possible
With a connected Magma session, evaluate:

```smalltalk
 mySession cachedObjectCount
```

This number reprensents how many entries Magma has in its
IdentityDictionaries. Magma tries to avoid the performance issues
related to Squeak's IdentityDictionaries, but it can still slow down
if you allow tens of thousands of objects to be cached in memory.

If you're not sure why your cachedObjectCount is growing, you can use
cachedObjectCountByClass to see which ones are the most proliferate
(they are sorted by most-occurrences at the top).

# Manually trimming the cache

As you traverse parts of the model, you should stubOut: objects you no
longer need. For example, after iterating a collection of large
objects, stubOut: the collection object if you no longer need
them. MagmaSession>>stubOut: chops off large branches of objects so
the memory they consume can be reclaimed by the garbage collector.

But avoid too many calls to stubOut:. For example, after you've
enumerated the collection of large objects, stubOut: the Collection
object itself, not each object in the collection. This is due to
unfortunate irony that stubOut: requires use of one of Squeak's most
inefficienct methods; Dictionary>>#removeKey:.

While fast in other Smalltalks, this method is VERY slow
in Squeak but required for stubOut:.

# Other optimizations

Avoid using Class objects as the key of an Association because that
may cause a significant performance degradation.Use commitAndBegin
for bulk-load programs.  Experiment and optimize your key and
record sizes of your MagmaCollections. Avoid too many duplicate
keys (e.g., don't index the word "the").

Use MagmaPreallocatedDictionary instead of MagmaDictionary
MagmaPreallocatedDictionary pre-allocates most of its slots from the
very first commit, resulting in a large file (i.e., 160MB for a
typical allocation-size) being created after just one
entry. Subsequent entries, however, are placed within the preallocated
file – it won't grow much further.

Use a MagmaHashTable instead of MagmaCollections
MagmaHashTable uses an internal MagmaSolHashTable, which, internally
uses a MagmaArray. MagmaArray is the fastest large-collection possible
with Magma (and what PreallocatedDictionary is based on).


# About MagmaCollection Performance

By contrast, MagmaCollections are somewhat "tacked on" to Magma. They
use a special file-structure on the server side that provides `O(log n)`
(where n is the chosen record-size) access. However, they are the
collection that provides server-side query processing. So if
relational-style querying is absolutely needed, they can be one
option.

`MagmaCollections` have fair read performance, but adding and removing
objects is very slow. In theory, starting with an empty
MagmaCollection, the rate-of-insertion will deteriorate somewhat
before settling on a relatively fixed rate, IF you have a good
key-dispersal.

If you put in a lot of duplicate keys, it will gradually get more
costly to keep adding more of that key because a linear search for the
"end" of that chain of keys is performed to find the point of
insertion. So, for example, when you build a simple keyword index,
consider eliminating prepositions such as "the" and "at".

Removing from `MagmaCollections` is even more expensive than
insertions. Avoid using this operation for performance-intensive
operations.


# Understand how Magma works

Understanding how Magma works, even if just at a high-level, is the
easiest way to build well-performing applications. Study these pages
and the public API's of the packages – their individual
responsibilities become clear and how Magma works.
