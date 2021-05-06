'From Cuis 5.0 [latest update: #4588] on 6 May 2021 at 6:17:31 pm'!
'Description SOLHashTable

License: MIT
Original Authors: Chris Muller (cmm), Tom Rushworth (tbr)
Author: Josef Philip Bernhart


Copyright (c) The individual, corporate, and institutional contributors who have collectively contributed elements to this software ("The Squeak Community"), 1996-2010 All rights reserved.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.'!
!provides: 'SOLHashTables' 1 3!
SystemOrganization addCategory: 'SOLHashTables'!


!classDefinition: #SOLHashNode category: 'SOLHashTables'!
Association subclass: #SOLHashNode
	instanceVariableNames: 'next'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SOLHashTables'!
!classDefinition: 'SOLHashNode class' category: 'SOLHashTables'!
SOLHashNode class
	instanceVariableNames: ''!

!classDefinition: #SOLHashFrame category: 'SOLHashTables'!
Object subclass: #SOLHashFrame
	instanceVariableNames: 'prev curr next'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SOLHashTables'!
!classDefinition: 'SOLHashFrame class' category: 'SOLHashTables'!
SOLHashFrame class
	instanceVariableNames: ''!

!classDefinition: #SOLHashSegment category: 'SOLHashTables'!
Object subclass: #SOLHashSegment
	instanceVariableNames: 'depth owner pointers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SOLHashTables'!
!classDefinition: 'SOLHashSegment class' category: 'SOLHashTables'!
SOLHashSegment class
	instanceVariableNames: ''!

!classDefinition: #SOLHashTable category: 'SOLHashTables'!
Object subclass: #SOLHashTable
	instanceVariableNames: 'approxLoadFactor numElements keyMask segBits segPtrs segMask buckets keyBits frame'
	classVariableNames: 'Elbbyn'
	poolDictionaries: ''
	category: 'SOLHashTables'!
!classDefinition: 'SOLHashTable class' category: 'SOLHashTables'!
SOLHashTable class
	instanceVariableNames: ''!


!SOLHashNode commentStamp: 'tbr 4/4/2010 14:50' prior: 0!
I represent a list node in a Split-Order list.  Each item in the list has a corresponding key, and the list is kept in key order.  The key values are actually bit-reversed, to make it possible to divide the list into logical buckets, and to divide the list buckets into smaller buckets without having to re-sort the list.  It is this property that allows the SOLHashTable to expand gracefully, without ever having to rehash or rebucket the values.

There are probably many other "list" objects that would serve here, but this class is present to keep the SOLHashTable self-contained, and to make it easy to add all the bells and whistles needed for safe multi-threaded operation at some point in the future when the Squeak VM provides true independent process threads.

Tom Rushworth <tbr@acm.org>

LICENSE
---------

Copyright (c) The individual, corporate, and institutional contributors who have collectively contributed elements to this software ("The Squeak Community"), 1996-2010 All rights reserved.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
!

!SOLHashFrame commentStamp: 'tbr 4/4/2010 17:17' prior: 0!
I contain pointers to a contiguous segment of a linked list, to be used as a work area for traversing the list, and for performing insertion and deletion operations.  I am probably overkill for single-threaded code :), but have been left in place as a remnant of the lock-free multi-threaded list algorithm of Michaels as it is used in the SOL Hash Table of Shalev and Shavit.

In a multi-thread environment, a frame would be thread local storage, and so would probably be allocated outside of the SOLHashTable, and passed in to the various SOLHashTable operations.  That kind of interface would be very different from the more usual Squeak collections interface, so this implementation just allocates one when needed.

Tom Rushworth <tbr@acm.org>

LICENSE
--------

Copyright (c) The individual, corporate, and institutional contributors who have collectively contributed elements to this software ("The Squeak Community"), 1996-2010 All rights reserved.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
!

!SOLHashSegment commentStamp: 'tbr 4/4/2010 14:50' prior: 0!
I represent a "segment" of a hash table containing an array of HashSegmentNumPtrs pointers to SOLHashListNodes or other segments.  The entire hash table is represented as a tree of segments of uniform depth, where the bottommost or "leaf" layer points into the list of nodes, and all higher layers point at lower segments.

depth - an int indicating position in the tree, depth == 0 implies this is a leaf segment and the pointers are to SOLHashListNodes.  This is never changed once set.

owner - the containing SOLHashTable.  Never changed once set.

pointers - an array of (owner segPtrs) pointers, which may be nil, or when depth == 0 may point to SOLHashListNodes, and which otherwise point to the next lower depth SOLHashTableSegments.

Tom Rushworth <tbr@acm.org>

LICENSE
--------

Copyright (c) The individual, corporate, and institutional contributors who have collectively contributed elements to this software ("The Squeak Community"), 1996-2010 All rights reserved.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
!

!SOLHashTable commentStamp: 'tbr 4/4/2010 17:13' prior: 0!
This is released under the Squeak license, see the LICENSE section below.

Background:
--------------

An SOLHashTable is an expandable hash table based on Split-Ordered Lists, as described in the paper
   "Split-Ordered Lists: Lock-Free Extensible Hash Tables"
by
    Ori Shalev and Nir Shavit,
in
   Journal of the ACM, Vol. 53, No. 3, May 2006, pp 379-405.

The algorithm as presented in the paper is a multi-thread-safe lock-free version that uses CAS, and is one of the prettiest algorithms I've seen in a long time. Since Squeak is not at present multi-threaded, the algorithm can be simplified by using a plain store instead of CAS, removing the re-try logic on CAS failure, and removing all of the thread-safe list deletion code. This class and its compaions represents the simplified version.

Note: objects added to this implementation must respond to 'compare: anObject' in the same way Strings do.  See the Collisions section below for more detail.  Feel free to find a better way to deal with key collisions.

The actual keys and values are kept in a linked list of SOLHashNodes, and the list is managed by keeping a tree of SOLHashSegments whose leaves are pointers at dummy nodes in the list.  Each portion of the list between dummy nodes corresponds to a bucket in a traditional hash table.  There is no explicit list head in the SOLHashTable, the bottommost or lowest leaf in the lowest table segment points at the dummy list node that operates as the list head.

Collisions:
-----------

There are two types of things generally called hash collisions, (1) when two different keys are assigned to the same bucket (bucket collision), and (2) when two different objects get the same hash key (key collision).  This algorithm expects bucket collisions and handles them with the split-ordered-list. Key collisions are best handled in different ways for different scenarios.  Some types of collection simply rule them out, others allow them but have different ways of resolving ambiguities.  This implementation does not try to provide the best fitted solution, it just uses an auxilliary object supplied in both the find and delete methods to resolve the ambiguities.  This auxilliary object does NOT need to be the same object as the one stored in the table, it just needs to 'compare:' as equal.

Weaknesses
-------------

This data structure MUST have a good hash function, where all bits of the hash keys have approximately the same likelyhood of changing between different hashed objects.  You don't get to sprinkle magic primality dust over it after the hash and have it work well :).  I tried the 12 bit Squeak native hash on a very small file of 30 or so words, and ended up with 11 of the objects in the same bucket.  Googling for string string hashing turns up all sorts of candidate functions, the second one I tried worked pretty well for my test domain of English text.  If you want to use this algorithm, you will need to try different hash functions out on your data.  Use the showBucketSizeHistgram method to see how well a particular function works for your data.

Miscellaneous bits of stuff used during development:
--------------------------------------------------------------
| tbl |
tbl _ SOLHashTable new loadFactor: 4 segBits: 4.
(SOLHashTable hash32: 'the') printStringRadix: 16 '16rDBC3966D'
(SOLHashTable bitReverse32: 16rDBC3966D) printStringRadix: 16 '16rB669C2DB'
tbl at: (tbl hash: 'the') put: 'the'
tbl find: (tbl hash: 'the') value: 'the'
tbl showNodeList
tbl showBucketSizeHistogram
tbl delete: (tbl hash: 'the') value: 'the'

(SOLHashTable new loadFactor: 4 segBits: 4) explore
self at: (self hash: 'the') put: 'the'
self find: (self hash: 'the') value: 'the' 'the'
self showNodeList
self showBucketSizeHistogram
self delete: (self hash: 'the') value: 'the'

(SOLHashTable loadFromFile: '/Users/tbr/Documents/Books/Originals/Austen/nabby11.txt') explore
(SOLHashTable loadFromFile: '/Users/tbr/IdleWork/SOL_Hash/common.h') explore

Original port to Squeak by: Tom Rushworth <tbr@acm.org>

LICENSE
---------

Copyright (c) The individual, corporate, and institutional contributors who have collectively contributed elements to this software ("The Squeak Community"), 1996-2010 All rights reserved.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
!

!SOLHashNode methodsFor: 'accessing' stamp: 'tbr 4/2/2010 16:21'!
dummy
	"Return true if receiver is a dummy node."

	^0 = ((self key) bitAnd: 1)! !

!SOLHashNode methodsFor: 'accessing' stamp: 'tbr 4/1/2010 08:23'!
next
	^next! !

!SOLHashNode methodsFor: 'accessing' stamp: 'tbr 4/1/2010 08:23'!
next: aNode
	next _ aNode! !

!SOLHashNode methodsFor: 'private' stamp: 'tbr 4/1/2010 13:52'!
initialize: nextNode
	"See the class methods for proper creation and initialization."
	next _ nextNode! !

!SOLHashNode class methodsFor: 'instance creation' stamp: 'tbr 4/1/2010 13:49'!
key: anInteger
	^(super key: anInteger value: nil) initialize: nil! !

!SOLHashNode class methodsFor: 'instance creation' stamp: 'tbr 3/25/2010 14:38'!
key: anInteger value: anObject
	^(super key: anInteger value: anObject) initialize: nil! !

!SOLHashFrame methodsFor: 'private' stamp: 'cmm 4/9/2011 17:15'!
advance
	prev _ curr.
	curr _ next.
	next _ next ifNotNil: [ next next ]! !

!SOLHashFrame methodsFor: 'private' stamp: 'cmm 4/13/2011 18:16'!
detach
	"Delete the node at curr from the list, and return the extracted node."
	| detached |
	prev next: next.
	detached _ curr.
	curr _ next.
	next _ curr ifNotNil: [ curr next ].
	^ detached! !

!SOLHashFrame methodsFor: 'private' stamp: 'tbr 4/3/2010 18:45'!
insert: newNode
	"Insert newNode between prev and curr and return the inserted node"

	"Make a sanity check to see we don't ever insert a double dummy."
	"
	(newNode dummy) ifTrue:
	    [((prev key) = (newNode key)) ifTrue: [self halt].
		((nil ~= curr) and: [(curr key) = (newNode key)]) ifTrue: [self halt]].
	"
	newNode next: curr.
	prev next: newNode.
	^newNode! !

!SOLHashFrame methodsFor: 'private' stamp: 'cmm 4/11/2011 15:30'!
locate: startKey in: aNode
	"search down linked list of SOLHashNodes starting with (aNode next) for a node that matches srchKey and srchVal.
	 Return true if found and set  prev,curr,next to point to the 3 nodes in sequence in the list with curr being the found node.
	 Return false if not found and set prev,curr to point to the 2 nodes in sequence in the list between which the <srchKey,srchVal>
	 would have been if they were present (i.e. the insertion point if the search values are to be inserted).
	
	 This method needs to be fairly efficient, as it is called for *every* operation on the hash table."
	| currKey |
	self set: aNode.
	[nil = curr] whileFalse:
	    ["examine the current node"
		currKey _ curr key.
		(currKey = startKey) 
			ifTrue: [^true]
			ifFalse:
			    [ "unequal keys, quit searching if we're past the insertion point"
				currKey > startKey ifTrue: [^false]].
		"not found yet, move the frame down the list."
		self advance].
	^false! !

!SOLHashFrame methodsFor: 'private' stamp: 'cmm 4/9/2011 15:31'!
set: aSOLHashNode
	prev _ aSOLHashNode.
	curr _ prev next.
	next _ curr ifNotNil: [ curr next ]! !

!SOLHashFrame methodsFor: 'accessing' stamp: 'tbr 4/1/2010 09:14'!
curr
	^curr! !

!SOLHashFrame methodsFor: 'accessing' stamp: 'cmm 4/9/2011 17:11'!
do: aBlock until: untilBlock 
	[ curr isNil or: [ (untilBlock value: curr) ] ] whileFalse:
		[ aBlock value: curr.
		self advance ]! !

!SOLHashFrame methodsFor: 'operations' stamp: 'cmm 4/7/2011 17:00'!
find: srchKey in: aNode 
	(self
		locate: srchKey
		in: aNode) ifTrue: [ ^ curr value ].
	^ nil! !

!SOLHashFrame methodsFor: 'operations' stamp: 'cmm 4/9/2011 17:06'!
insert: anObject at: hashKey in: aNode 
	"Return an old value that compares: equal to anObject if one is present,
	 otherwise return nil to indicate a successful insertion."
	self
		locate: hashKey
		in: aNode ;
		 insert:
			(SOLHashNode
				key: hashKey
				value: anObject).
	^ anObject! !

!SOLHashFrame methodsFor: 'operations' stamp: 'cmm 3/23/2011 15:18'!
insertDummy: srchKey in: aNode
	| newNode |
	((nil ~= aNode) and: [self locate: srchKey in: aNode]) ifTrue: [^curr].
	newNode _ SOLHashNode key: srchKey value: nil.
	(nil ~= aNode) ifTrue: [newNode _ self insert: newNode].
	^newNode! !

!SOLHashSegment methodsFor: 'accessing' stamp: 'cmm 4/11/2011 15:59'!
bucketAt: bucketNum 
	"Return whatever (SOLHashSegment, SOLHashNode, or nil) is in pointers at the index corresponding to bucketNum."
	^ pointers
		at: 1 + (bucketNum bitAnd: owner segMask)
		ifAbsent: [ nil ]! !

!SOLHashSegment methodsFor: 'accessing' stamp: 'cmm 4/8/2014 22:27'!
bucketAt: bucketNum put: anObject
	"Set the pointer array at the index corresponding to bucktNum to anObject and return anObject."
	| index |
	index _ 1+(bucketNum bitAnd: (owner segMask)).
	[ pointers size < index ] whileTrue: [ pointers add: nil ].
	pointers at: index put: anObject.
	^anObject! !

!SOLHashSegment methodsFor: 'accessing' stamp: 'tbr 4/1/2010 10:29'!
depth
	^depth! !

!SOLHashSegment methodsFor: 'initialize-release' stamp: 'cmm 4/8/2014 22:26'!
initializeAtDepth: newDepth owner: anSOLHashTable
	"Set up a segment with an empty array of pointers in a tree of segments.
	 Depth is measured from the leaves of the tree, starting at 0.
	 Pointers in segments at depth 0 point to SOLHashNodes, at other depths the pointers point to segments of depth-1"

	depth _ newDepth.
	owner _ anSOLHashTable.
	pointers _ owner newPointersCollection! !

!SOLHashSegment class methodsFor: 'create' stamp: 'cmm 4/23/2011 18:32'!
depth: anInteger owner: aSOLHashTable 
	^ self new
		initializeAtDepth: anInteger
		owner: aSOLHashTable! !

!SOLHashTable methodsFor: 'accessing' stamp: 'cmm 4/11/2011 16:59'!
add: newVal at: hashKey 
	"Add a newVal for hashKey."
	| hn |
	hn _ self headNodeFor: hashKey.
	frame
		insert: newVal
		at: (self regularKey: hashKey)
		in: hn.
	numElements _ numElements + 1.
	self checkSize.
	^ newVal! !

!SOLHashTable methodsFor: 'accessing' stamp: 'cmm 4/9/2011 17:16'!
allAt: hashKey 
	^ Array streamContents:
		[ : stream | self
			at: hashKey
			do:
				[ : each | stream nextPut: each value ] ]! !

!SOLHashTable methodsFor: 'accessing' stamp: 'cmm 4/9/2011 16:11'!
firstAt: hashKey 
	"Answer the first element at hashKey or nil, if no objects exist at that hashKey."
	self
		at: hashKey
		do: [ : each | ^ each value ].
	^ nil! !

!SOLHashTable methodsFor: 'accessing' stamp: 'cmm 4/10/2011 19:25'!
remove: anObject at: hashKey ifAbsent: aBlock 
	"Remove any object equivalent to anObject  which is presumed to exist at  hashKey.  Answer the removed object if found, nil if not."
	self
		at: hashKey
		do:
			[ : each | each value = anObject ifTrue:
				[ numElements _ numElements - 1.
				^ frame detach value ] ].
	^ aBlock value! !

!SOLHashTable methodsFor: 'accessing' stamp: 'tbr 4/1/2010 13:10'!
size
	^numElements! !

!SOLHashTable methodsFor: 'debugging' stamp: 'tbr 4/2/2010 13:52'!
allNodesDo: aBlock
	"Evaluate aBlock once for each node, both regular and dummy."

	| node |
	node _ self bucketAt: 0.
	[nil = node] whileFalse:
	    [aBlock value: node.
		node _ node next]! !

!SOLHashTable methodsFor: 'debugging' stamp: 'tbr 4/2/2010 14:48'!
dummyNodesDo: aBlock
	"Evaluate aBlock once for each dummy node value."

	self allNodesDo: [ :node | (node dummy) ifTrue: [aBlock value: node]]! !

!SOLHashTable methodsFor: 'debugging' stamp: 'cmm 4/9/2011 13:48'!
keyCollisions
	"Return the number of key collisions in the receiver."
	| num prevKey currKey |
	num _ 0.
	prevKey _ 0.
	currKey _ 0.
	self allNodesDo:
	    [ :node |
			(node dummy) ifFalse:
			    [currKey _ node key.
				(prevKey = currKey) ifTrue:
				    [num _ num + 1]
				ifFalse:
				    [prevKey _ currKey]]].
	^num! !

!SOLHashTable methodsFor: 'debugging' stamp: 'tbr 4/3/2010 18:14'!
pathForDummy: dummyNode
	"Return a string containg a comma separated list of SOLHashSegment indexes leading to the bucket starting at dummyNode.
	 If you try this on a regular node you may hit uninitialized buckets or segments."

	| frwdKey seg depth path sx |
	frwdKey _ self bitReverse: (dummyNode key).
	seg _ buckets.
	(nil = seg) ifTrue:
	    [depth _ 0.
		path _ '']
	ifFalse:
	    [depth _ seg depth.
		sx _ (frwdKey bitShift: ((segBits * depth) negated)) bitAnd: segMask.
		path _ sx printString].
	[0 < depth] whileTrue:
	    [depth _ depth - 1.
		seg _ seg bucketAt: sx.
		sx _ (frwdKey bitShift: ((segBits * depth) negated)) bitAnd: segMask.
		path _ path, ',', (sx printString)].
	^path! !

!SOLHashTable methodsFor: 'debugging' stamp: 'tbr 4/2/2010 14:49'!
regularNodesDo: aBlock
	"Evaluate aBlock once for each regular node value."

	self allNodesDo: [ :node | (node dummy) ifFalse: [aBlock value: node]]! !

!SOLHashTable methodsFor: 'debugging' stamp: 'tbr 4/6/2010 15:47'!
showBucketSizeHistogram
	"Write a bucket size histogram to the transcript."

	| histogram numDummies numNodes numCollisions prevKey currKey |
	histogram _ Dictionary new.
	numDummies _ 0.
	numNodes _ 0.
	numCollisions _ 0.
	prevKey _ 0.
	currKey _ 0.
	"Run through the node list, counting bucket sizes."
	self allNodesDo:
	    [ :node |
	     (node dummy) ifTrue:
		    [(numDummies > 0) ifTrue:
			    ["We're at the end of a bucket, add an observation to the histogram."
				histogram at: numNodes put: ((histogram at: numNodes ifAbsent: [0]) + 1)].
			numNodes _ 0.
			numDummies _ numDummies + 1]
		ifFalse:
		    [numNodes _ numNodes + 1.
			(prevKey = (currKey _ node key)) ifTrue:
			    [numCollisions _ numCollisions + 1]
			ifFalse:
			    [prevKey _ currKey]]].
	(numDummies > 0) ifTrue:
	    ["We're at the end of the last bucket, add an observation to the histogram."
		histogram at: numNodes put: ((histogram at: numNodes ifAbsent: [0]) + 1)].
	"We have the histogram data, now display it."
	Transcript cr; show: '---------- SOLHashTable bucket size histogram, ';
	             show: numDummies printString; show: ' buckets, ';
	             show: numElements printString; show: ' values ';
	             show: numCollisions printString; show: ' collisions'; cr;
	             show: ' size :  count'; cr..
	(histogram keysSortedSafely) do:
	    [ :key |
		Transcript show: (key printPaddedWith: $  to: 5); show: ' :'; show: ((histogram at: key) printPaddedWith: $  to: 8); cr].! !

!SOLHashTable methodsFor: 'debugging' stamp: 'tbr 4/3/2010 18:30'!
showNodeList
	"Write the entire list of nodes to the transcript.
	 It's not a good idea to do this for large tables."

	| seg depth nx |
	seg _ buckets.
	(nil = seg) ifTrue: [depth _ 0] ifFalse: [depth _ 1 + seg depth].
	Transcript cr; show: '---------- SOLHashTable height='; show: depth; show: ' size='; show: self size; cr.
	nx _ 0.
	self allNodesDo:
	    [ :node |
		(node dummy) ifTrue:
		    ["Show the dummy node, no value."
			Transcript show: nx; show: ' hash='; show: ((self hashKey: (node key)) printPaddedWith: $0 to: 8 base: 16);
			             show: ' rvrs='; show: (node key printPaddedWith: $0 to: 8 base: 16); show: ' dummy, [', (self pathForDummy: node), ']';
			             cr]
		ifFalse:
		    ["Show a regular node."
			Transcript show: nx; show: ' hash='; show: ((self hashKey: (node key)) printPaddedWith: $0 to: 8 base: 16);
			             show: ' rvrs='; show: (node key printPaddedWith: $0 to: 8 base: 16); show: ' -> ';
			             show: node value printString;
			             cr].
		nx _ nx + 1]! !

!SOLHashTable methodsFor: 'enumerating' stamp: 'tbr 4/2/2010 14:47'!
associationsDo: aBlock
	"Evaluate aBlock once for each regular node value."

	self regularNodesDo: aBlock! !

!SOLHashTable methodsFor: 'enumerating' stamp: 'cmm 4/9/2011 17:13'!
at: hashKey do: aBlock 
	"For each SOLHashNode with hashKey, value aBlock."
	| regKey |
	regKey _ self regularKey: hashKey.
	self
		from: hashKey
		do: aBlock
		until:
			[ : eachSOLHashNode | eachSOLHashNode key > regKey ]! !

!SOLHashTable methodsFor: 'enumerating' stamp: 'tbr 4/2/2010 14:45'!
do: aBlock
	"Evaluate aBlock for each of the receiver's regular values."

	self valuesDo: aBlock! !

!SOLHashTable methodsFor: 'enumerating' stamp: 'cmm 4/11/2011 13:40'!
from: hashKey do: aBlock until: untilBlock 
	"For each Object from hashKey and higher, value aBlock as long as untilBlock evaluates true for the same object.."
	self find: hashKey.
	frame
		do:
			[ : eachNode | eachNode dummy ifFalse: [ aBlock value: eachNode ] ]
		until:
			[ : eachNode | eachNode dummy not and: [ untilBlock value: eachNode ] ]! !

!SOLHashTable methodsFor: 'enumerating' stamp: 'tbr 4/3/2010 18:29'!
keysAndValuesDo: aBlock
	"Evaluate aBlock once for each of the receiver's <regular key, value> pairs, converting the keys back to the original hash keys."

	self regularNodesDo: [ :node | aBlock value: (self hashKey: node key) value: node value]! !

!SOLHashTable methodsFor: 'enumerating' stamp: 'tbr 4/3/2010 18:30'!
keysDo: aBlock
	"Evaluate aBlock once for each of the receiver's regular keys, converting the keys back to the original hash keys."

	self regularNodesDo: [ :node | aBlock value: (self hashKey: node key)]! !

!SOLHashTable methodsFor: 'enumerating' stamp: 'tbr 4/2/2010 14:44'!
valuesDo: aBlock
	"Evaluate aBlock once for each of the receiver's values."

	self regularNodesDo: [ :node | aBlock value: node value]! !

!SOLHashTable methodsFor: 'private' stamp: 'cmm 4/13/2011 11:35'!
bitReverse: anUnsignedInt 
	^ keyBits = 28
		ifTrue: [ self class bitReverse29: anUnsignedInt ]
		ifFalse:
			[ keyBits = 31
				ifTrue: [ self class bitReverse32: anUnsignedInt ]
				ifFalse: [ anUnsignedInt bitReverse: keyBits + 1 ] ]! !

!SOLHashTable methodsFor: 'private' stamp: 'tbr 4/3/2010 17:05'!
bucketAt: bucketNum
	"Return the dummy SOLHashNode that is the head of bucket bucketNum.
	 Return nil if the containing segment is not yet present or the bucket has not been initialized."

	| seg depth |
	seg _ buckets.
	[nil = seg] whileFalse:
	    [depth _ seg depth.
		(0 = depth) ifTrue:
		    ["We're at the bottom level, this segment contains pointers to nodes.
			 Return the one we are interested in."
			^seg bucketAt: bucketNum].
		"Not at the bottom, this segment points at segments with depth one less."
		seg _ seg bucketAt: (bucketNum bitShift: ((depth * segBits) negated))].
	"We ran out of segments before reaching the bottom."
	^nil! !

!SOLHashTable methodsFor: 'private' stamp: 'cmm 4/23/2011 12:09'!
bucketAt: bucketNum putNode: node
	"Set the dummy SOLHashNode that is the head of bucket bucketNum and return the node.
	 Instantiate any missing segments needed to do so."

	| seg depth parentSeg parentNdx |
	seg _ buckets.
	parentSeg _ nil.
	parentNdx _ 0.
	depth _ 0.
	[true] whileTrue:
	    ["step down through the segments until we reach the bottom."
		(nil = seg) ifTrue:
		    ["Missing segment, fill it in."
			seg _ self hashSegmentClass depth: depth owner: self.
			(nil = parentSeg) ifTrue:
			    [buckets _ seg]
			ifFalse:
			    [seg _ parentSeg bucketAt: parentNdx put: seg]].
		depth _ seg depth.
		(0 = depth) ifTrue:
		    ["We're at the bottom level, this segment contains pointers to nodes.
			 Return the one we are interested in."
			^seg bucketAt: bucketNum put: node].
		"Not at the bottom, this segment points at segments with depth one less."
		parentSeg _ seg.
		parentNdx _ bucketNum bitShift: ((depth * segBits) negated).
		seg _ parentSeg bucketAt: parentNdx.
		depth _ depth - 1].
	"We ran out of segments before reaching the bottom."
	^nil! !

!SOLHashTable methodsFor: 'private' stamp: 'cmm 4/11/2011 13:35'!
checkSize
	"Consider expanding the table, based on numElements, approxLoadFactor and number of buckets (from keyMask)."
	numElements > (keyMask + 1 * approxLoadFactor) ifTrue: [ self widen ]! !

!SOLHashTable methodsFor: 'private' stamp: 'cmm 4/23/2011 12:09'!
deepen
	"Deepen the segment tree by one layer, putting the old tree in bucket 0 of the new segment."
	| oldBuckets newBuckets |
	oldBuckets _ buckets.
	newBuckets _ self hashSegmentClass 
		depth: oldBuckets depth + 1
		owner: self.
	newBuckets
		bucketAt: 0
		put: oldBuckets.
	buckets _ newBuckets! !

!SOLHashTable methodsFor: 'private' stamp: 'cmm 4/14/2011 13:01'!
dummyKey: frwdKey 
	28 = keyBits ifTrue: [ ^ self class dummyKey29: frwdKey ].
	31 = keyBits ifTrue: [ ^ self class dummyKey32: frwdKey ].
	^ self class
		dummyKey: frwdKey
		bits: keyBits+1! !

!SOLHashTable methodsFor: 'private' stamp: 'cmm 4/11/2011 17:00'!
find: hashKey 
	"Return the stored value matching hashKey and srchVal if present, otherwise nil."
	^ frame
		find: (self regularKey: hashKey)
		in: (self headNodeFor: hashKey)! !

!SOLHashTable methodsFor: 'private' stamp: 'cmm 4/9/2011 17:29'!
frame
	^ frame ifNil: [ frame _ SOLHashFrame new ]! !

!SOLHashTable methodsFor: 'private' stamp: 'cmm 4/14/2011 13:07'!
hashKey: rvrsKey 
	28 = keyBits ifTrue: [ ^ self class hashKey29: rvrsKey ].
	31 = keyBits ifTrue: [ ^ self class hashKey32: rvrsKey ].
	^ self class
		hashKey: rvrsKey
		bits: keyBits+1! !

!SOLHashTable methodsFor: 'private' stamp: 'cmm 4/23/2011 12:08'!
hashSegmentClass
	^ SOLHashSegment ! !

!SOLHashTable methodsFor: 'private' stamp: 'cmm 4/14/2011 11:13'!
headNodeFor: hashKey 
	| bucketNumber |
	^ (self bucketAt: (bucketNumber _ hashKey bitAnd: keyMask)) ifNil: [ self initializeBucket: bucketNumber ]! !

!SOLHashTable methodsFor: 'private' stamp: 'tbr 4/3/2010 11:49'!
height
	buckets ifNil: [^0].
	^(buckets depth) + 1! !

!SOLHashTable methodsFor: 'private' stamp: 'tbr 4/6/2010 15:44'!
initializeBucket: bucketNum
	"Each bucket in the table points at a dummy SOLHashNode, so we want to create the dummy and insert it into the appropriate spot.
	 We look for the parent bucket to find the closest place to perform the insertion.
	 The very first bucket is a special case because there is neither parent nor segments yet."

	| parent dummy parentNum |
	parent _ nil.
	parentNum _ 0.
	(0 ~= bucketNum) ifTrue:
	    ["There is a parent node to look for."
		parentNum _ SOLHashTable bitParent: bucketNum.
		(parent _ self bucketAt: parentNum) ifNil:
		    ["Parent bucket has not been initialized yet either,  Do so recursively."
			parent _ self initializeBucket: parentNum]].
	"Create the dummy node."
	dummy _ frame insertDummy: (self dummyKey: bucketNum) in: parent.
	"Transcript cr; show: '+++++ initiaizing bucket ',(bucketNum printString),' key#',(dummy key printStringRadix:16); cr."
	^self bucketAt: bucketNum putNode: dummy
	! !

!SOLHashTable methodsFor: 'private' stamp: 'cmm 4/11/2011 17:30'!
keyBits
	^ keyBits! !

!SOLHashTable methodsFor: 'private' stamp: 'tbr 4/3/2010 11:48'!
keyMask
	^keyMask! !

!SOLHashTable methodsFor: 'private' stamp: 'cmm 4/8/2014 22:25'!
newPointersCollection
	"Subclasses may override as necessary."
	^ OrderedCollection new! !

!SOLHashTable methodsFor: 'private' stamp: 'cmm 4/14/2011 15:17'!
regularKey: frwdKey 
	28 = keyBits ifTrue: [ ^ self class regularKey29: frwdKey ].
	31 = keyBits ifTrue: [ ^ self class regularKey32: frwdKey ].
	^ self class
		regularKey: frwdKey
		bits: keyBits + 1! !

!SOLHashTable methodsFor: 'private' stamp: 'tbr 4/2/2010 12:29'!
segBits
	^segBits! !

!SOLHashTable methodsFor: 'private' stamp: 'tbr 4/2/2010 12:30'!
segMask
	^segMask! !

!SOLHashTable methodsFor: 'private' stamp: 'tbr 4/3/2010 17:11'!
widen
	"Double the number of available buckets.
	 This does not initialize any of the new buckets, that happens lazily, as they are filled."

	| oldBuckets depth maxBuckets numBuckets |
	"Before we can actually double the number of buckets, we need to see if the doubled number will fit into our current segment tree."
	oldBuckets _ buckets.
	depth _ oldBuckets depth.
	maxBuckets _ 1 bitShift: segBits*(depth+1).
	numBuckets _ 2*(keyMask+1).
	(maxBuckets < numBuckets) ifTrue:
	    ["We need a deeper segment tree."
		self deepen].
	"The segment tree is big enough, double the available buckets by adding a bit to the keyMask."
	keyMask _ numBuckets - 1.
	! !

!SOLHashTable methodsFor: 'initialize-release' stamp: 'cmm 4/10/2011 19:27'!
initializeFrame
	frame _ SOLHashFrame new! !

!SOLHashTable methodsFor: 'initialize-release' stamp: 'cmm 4/10/2011 19:27'!
loadFactor: loadFactor segBits: numBits keyBits: keySize
	approxLoadFactor _ loadFactor.
	segBits _ numBits.
	segPtrs _ 1 bitShift: numBits.
	segMask _ segPtrs - 1.
	keyMask _ 1.
	numElements _ 0.
	self initializeFrame.
	keyBits _ keySize.
	"Uses the low-order 31 bits of the 32-bit Murmur2 hash, plus 1 bit for dummy/regular for a total of 32 bits.
	 Thiw works reasonably well, but is slower."
	"keyBits _ 31."
	buckets _ nil.! !

!SOLHashTable class methodsFor: 'bit-manipulation' stamp: 'tbr 4/1/2010 18:08'!
bitParent: anUnsignedInteger
	"Return anUnsignedInteger with the most significant 1-bit changed to 0."
	(0 = anUnsignedInteger) ifTrue: [^0].
	^ anUnsignedInteger bitXor: (1 bitShift: ((anUnsignedInteger highBit) - 1))! !

!SOLHashTable class methodsFor: 'bit-manipulation' stamp: 'cmm 4/11/2011 17:37'!
bitReverse29: anUnsignedInteger
	"Return the low order 29-bit reversed value of anUnsignedInteger.
	 Someone with more Squeak skill than I should improve this.
	 The C version of this uses a table of 256 bit reversed bytes, I'm using 4-bit nybbles here because I don't want to enter the whole table."
	| rvrs n frwd |
	frwd _ anUnsignedInteger.
	rvrs _ 0.
	0 to: 6 do:
	    [:i | n _ frwd bitAnd: 16rF.
		frwd _ frwd bitShift: -4.
		n _ Elbbyn at: (1+n).
		rvrs _ (rvrs bitShift: 4) bitOr: n].
	"28 bits done, now the 29th."
	rvrs _ (rvrs bitShift: 1) bitOr: (frwd bitAnd: 1).
	^rvrs as31BitSmallInt! !

!SOLHashTable class methodsFor: 'bit-manipulation' stamp: 'cmm 4/11/2011 17:37'!
bitReverse32: anUnsignedInteger
	"Return the 32-bit reversed value of anUnsignedInteger.
	 Someone with more Squeak skill than I should improve this.
	 The C version of this uses a table of 256 bit reversed bytes, I'm using 4-bit nybbles here because I don't want to enter the whole table."
	| rvrs n frwd |
	frwd _ anUnsignedInteger.
	rvrs _ 0.
	0 to: 7 do:
	    [:i | n _ frwd bitAnd: 16rF.
		frwd _ frwd bitShift: -4.
		n _ Elbbyn at: (1+n).
		rvrs _ (rvrs bitShift: 4) bitOr: n].
	^rvrs! !

!SOLHashTable class methodsFor: 'private' stamp: 'cmm 4/13/2011 21:46'!
defaultLoadFactor
	^ 6! !

!SOLHashTable class methodsFor: 'private' stamp: 'cmm 4/10/2011 19:46'!
defaultSegBits
	^ 8! !

!SOLHashTable class methodsFor: 'private' stamp: 'cmm 4/9/2011 13:55'!
validKeySizes
	^ #(12 28 31)! !

!SOLHashTable class methodsFor: 'key-construction' stamp: 'tbr 4/4/2010 08:26'!
dummyKey29: frwdKey
	"Construct a dummy list node key from a hash segment key."

	^self bitReverse29: (frwdKey bitAnd: 16rFFFFFFF)! !

!SOLHashTable class methodsFor: 'key-construction' stamp: 'tbr 4/4/2010 08:25'!
dummyKey32: frwdKey
	"Construct a dummy list node key from a hash segment key."

	^self bitReverse32: (frwdKey bitAnd: 16r7FFFFFFFF)! !

!SOLHashTable class methodsFor: 'key-construction' stamp: 'cmm 4/14/2011 13:00'!
dummyKey: frwdKey bits: keyBitsPlusOne 
	"Construct a dummy list node key from a hash segment key."
	^ (frwdKey bitAnd: (1 bitShift: keyBitsPlusOne-1)-1) bitReverse: keyBitsPlusOne! !

!SOLHashTable class methodsFor: 'key-construction' stamp: 'tbr 4/3/2010 18:22'!
hashKey29: rvrsKey
	"Construct a hash key from a list node key (where list node keys are bitReversed).
	 This method strips off the 'regular key' bit, so you can't distinguish regular keys from dummies."

	^((self bitReverse29: rvrsKey) bitAnd: 16rFFFFFFF) as31BitSmallInt! !

!SOLHashTable class methodsFor: 'key-construction' stamp: 'tbr 4/3/2010 18:23'!
hashKey32: rvrsKey
	"Construct a hash key from a list node key (where list node keys are bitReversed).
	 This method strips off the 'regular key' bit, so you can't distinguish regular keys from dummies."

	^(self bitReverse32: rvrsKey) bitAnd: 16r7FFFFFFF! !

!SOLHashTable class methodsFor: 'key-construction' stamp: 'cmm 4/14/2011 13:06'!
hashKey: rvrsKey bits: keyBitsPlusOne
	"Construct a hash key from a list node key (where list node keys are bitReversed).
	 This method strips off the 'regular key' bit, so you can't distinguish regular keys from dummies."
	^(rvrsKey bitReverse: keyBitsPlusOne) bitAnd: (1 bitShift: keyBitsPlusOne-1)-1! !

!SOLHashTable class methodsFor: 'key-construction' stamp: 'tbr 4/4/2010 08:15'!
regularKey29: frwdKey
	"Construct a regular list node key from a hash segment key."

	^self bitReverse29: ((frwdKey bitOr: 16r10000000) as31BitSmallInt)! !

!SOLHashTable class methodsFor: 'key-construction' stamp: 'tbr 4/3/2010 18:15'!
regularKey32: frwdKey
	"Construct a regular list node key from a hash segment key."

	^(self bitReverse32: frwdKey) bitOr: 1! !

!SOLHashTable class methodsFor: 'key-construction' stamp: 'cmm 4/14/2011 15:17'!
regularKey: frwdKey bits: bits 
	"Construct a regular list node key from a hash segment key."
	^ (frwdKey bitReverse: bits) bitOr: 1! !

!SOLHashTable class methodsFor: 'class initialization' stamp: 'cmm 4/14/2011 18:25'!
initialize
	Elbbyn _ #(0 8 4 12 2 10 6 14 1 9 5 13 3 11 7 15)! !

!SOLHashTable class methodsFor: 'create' stamp: 'cmm 4/10/2011 16:50'!
loadFactor: loadFactor segBits: numBits keyBits: keyBits
	"Create a new SOLHashTable.  The loadFactor represents, on average, how many nodes in the split-order list will be allocated for each available bucket in the internal 'pointers' array.  segBits determines the number of slots in each internal 'pointers' array before a new pointers array will be allocated into the hierarchy."
	^ super new
		
		loadFactor: loadFactor
		segBits: numBits
		keyBits: keyBits ;
		 yourself! !

!SOLHashTable class methodsFor: 'create' stamp: 'cmm 4/13/2011 21:46'!
new
	^ self
		loadFactor: self defaultLoadFactor
		segBits: self defaultSegBits
		keyBits: 28! !

!ByteArray methodsFor: '*solhashtables' stamp: 'cmm 4/10/2011 19:18'!
murmurHashNeutral28
	^ (self murmurHashNeutral32 bitAnd: 268435455) as31BitSmallInt! !

!ByteArray methodsFor: '*solhashtables' stamp: 'cmm 4/10/2011 19:18'!
murmurHashNeutral31
	^ self murmurHashNeutral32 bitAnd: 2147483647! !

!ByteArray methodsFor: '*solhashtables' stamp: 'cmm 4/10/2011 18:53'!
murmurHashNeutral32
	| seed len len4 h k i m r |
	seed _ 2863311530.
	m _ 1540483477.
	r _ -24.
	len _ self size.
	len4 _ len bitAnd: 65532.
	h _ seed bitXor: len.
	i _ 0.
	[ i < len4 ] whileTrue:
		[ k _ self byteAt: i + 1.
		k _ (k bitShift: 8) bitOr: (self byteAt: i + 2).
		k _ (k bitShift: 8) bitOr: (self byteAt: i + 3).
		k _ (k bitShift: 8) bitOr: (self byteAt: i + 4).
		k _ k * m bitAnd: 4294967295.
		k _ k bitXor: (k bitShift: r).
		k _ k * m bitAnd: 4294967295.
		h _ (h * m bitAnd: 4294967295) bitXor: k.
		i _ i + 4 ].
	"Now deal with up to 3 bytes in the tail end."
	len _ len bitAnd: 3.
	len >= 3 ifTrue: [ h _ h bitXor: ((self byteAt: i + 3) bitShift: 16) ].
	len >= 2 ifTrue: [ h _ h bitXor: ((self byteAt: i + 2) bitShift: 8) ].
	len >= 1 ifTrue:
		[ h _ h bitXor: (self byteAt: i + 1).
		h _ h * m bitAnd: 4294967295 ].
	h _ h bitXor: (h bitShift: -13).
	h _ h * m bitAnd: 4294967295.
	h _ h bitXor: (h bitShift: -15).
	^ h
! !
SOLHashTable initialize!
