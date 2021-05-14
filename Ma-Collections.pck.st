'From Cuis 5.0 [latest update: #4579] on 14 May 2021 at 10:13:27 am'!
'Description I provide several independent, special-purpose collection classes that seem to be generally useful.

MaWeakIdentityKeyDictionary and MaWeakValueDictionary wrap a collection of their Smalltalk counterparts and keeps them all under 12-bits in size, thus minimizing the number of collisions due to Squeaks 12-bits identity hash.  These provide major improvement in the #removeKey: message.

MaTree is one of my first attempts at a Smalltalk collection.  I never actually used it though I decided to keep it around.  It''''s API compatible with the other collections.  To play with an example:

	MaTree new
		add: ''''Great Grandma'''';
		add: ''''Grandma'''' asChildOf: ''''Great Grandma'''';
		add: ''''Mom'''' asChildOf: ''''Grandma'''';
		yourself


MaIntervalCollection is can efficiently track interval ranges and merge them when they get within their proximityThreshold.  This is useful for recording occupied space in a memory map, or perhaps grouping entities based on their proximity to each other.  Example:

	(MaIntervalCollection proximityThreshold: 1)
		addFrom: 5 to: 10;
		addFrom: 15 to: 20;
		addFrom: 25 to: 30;
		addFrom: 21 to: 24;
		yourself


MaLargeArrayOfNumbers is an auto-growing, never-shrinking array of numbers.  All numbers have the same number of bits available to represent them.  It maintains the collection in a single randomly-accessed file, and is therefore constrained by available disk space or the addressability of the file.

	MaLargeArrayOfNumbers create: filenameString bitSize: 32.
	myArray _ MaLargeArrayOfNumbers open: filenameString.
	myArray
		at: 10 put: 8734 ;
		at: 11 put: 6199 ;
		yourself
	"be sure to #close it when you are done."


MaHashIndex is another file-based, large-collection of uniformly-sized numbers.  It is much slower but more flexible than MaLargeArrayOfNumbers.  It allows pages between any two key ranges via:

	#upTo: countInteger keysAndValuesFrom: lowKey to: highKey startingAt: index

and pages between any two absolute positions via:

	#upTo: countInteger keysAndValuesFromIndex: lowIndex

Other features are:
	- supports key and value sizes from 16 to 256 bits
	- supports duplicate keys
	- includes test cases that demonstrate its capability and correctness

	MaHashIndex 
		create: fileNameString 
		keySize: 64 
		hashRecordSize: 10.
	myIndex _ MaHashIndex open: filenameString.
	myIndex
		add: 8734 at: 10 ;
		add: 1212 at: 10 ;  "duplicate key ok"
		add: 6199 at: 11 ;
		yourself.
	"be sure to #close it when you are done.
	
	
License: MIT
Original Author: Chris Muller (cmm)
Author: Josef Philip Bernhart (jpb)'!
!provides: 'Ma-Collections' 1 11!
SystemOrganization addCategory: 'Ma-Collections'!
SystemOrganization addCategory: 'Ma-Collections-Exceptions'!
SystemOrganization addCategory: 'Ma-Collections-Tests'!


!classDefinition: #MaHashIndexRecordConstants category: 'Ma-Collections'!
SharedPool subclass: #MaHashIndexRecordConstants
	instanceVariableNames: ''
	classVariableNames: 'ControlEntryOffset SizeOfControlFieldInBits SizeOfControlFieldInBytes SizeOfRecordNumberInBits SizeOfRecordNumberInBytes SlotFilledControlBit ValueEntryOffset'
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaHashIndexRecordConstants class' category: 'Ma-Collections'!
MaHashIndexRecordConstants class
	instanceVariableNames: ''!

!classDefinition: #MaAssociation category: 'Ma-Collections'!
Association subclass: #MaAssociation
	instanceVariableNames: 'next'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaAssociation class' category: 'Ma-Collections'!
MaAssociation class
	instanceVariableNames: ''!

!classDefinition: #MaIdentityKeyAssociation category: 'Ma-Collections'!
MaAssociation subclass: #MaIdentityKeyAssociation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaIdentityKeyAssociation class' category: 'Ma-Collections'!
MaIdentityKeyAssociation class
	instanceVariableNames: ''!

!classDefinition: #MaWeakKeyAssociation category: 'Ma-Collections'!
MaAssociation subclass: #MaWeakKeyAssociation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaWeakKeyAssociation class' category: 'Ma-Collections'!
MaWeakKeyAssociation class
	instanceVariableNames: ''!

!classDefinition: #MaWeakIdentityKeyAssociation category: 'Ma-Collections'!
MaWeakKeyAssociation subclass: #MaWeakIdentityKeyAssociation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaWeakIdentityKeyAssociation class' category: 'Ma-Collections'!
MaWeakIdentityKeyAssociation class
	instanceVariableNames: ''!

!classDefinition: #MaWeakValueAssociation category: 'Ma-Collections'!
WeakValueAssociation weakSubclass: #MaWeakValueAssociation
	instanceVariableNames: 'next'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaWeakValueAssociation class' category: 'Ma-Collections'!
MaWeakValueAssociation class
	instanceVariableNames: ''!

!classDefinition: #MaDictionary category: 'Ma-Collections'!
Dictionary subclass: #MaDictionary
	instanceVariableNames: ''
	classVariableNames: 'Primes'
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaDictionary class' category: 'Ma-Collections'!
MaDictionary class
	instanceVariableNames: ''!

!classDefinition: #MaIdentityDictionary category: 'Ma-Collections'!
MaDictionary subclass: #MaIdentityDictionary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaIdentityDictionary class' category: 'Ma-Collections'!
MaIdentityDictionary class
	instanceVariableNames: ''!

!classDefinition: #MaIdentitySet category: 'Ma-Collections'!
MaIdentityDictionary subclass: #MaIdentitySet
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaIdentitySet class' category: 'Ma-Collections'!
MaIdentitySet class
	instanceVariableNames: ''!

!classDefinition: #MaWeakKeyDictionary category: 'Ma-Collections'!
MaDictionary subclass: #MaWeakKeyDictionary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaWeakKeyDictionary class' category: 'Ma-Collections'!
MaWeakKeyDictionary class
	instanceVariableNames: ''!

!classDefinition: #MaWeakIdentityKeyDictionary category: 'Ma-Collections'!
MaWeakKeyDictionary subclass: #MaWeakIdentityKeyDictionary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaWeakIdentityKeyDictionary class' category: 'Ma-Collections'!
MaWeakIdentityKeyDictionary class
	instanceVariableNames: ''!

!classDefinition: #MaWeakValueDictionary category: 'Ma-Collections'!
MaDictionary subclass: #MaWeakValueDictionary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaWeakValueDictionary class' category: 'Ma-Collections'!
MaWeakValueDictionary class
	instanceVariableNames: ''!

!classDefinition: #BTree category: 'Ma-Collections'!
Collection subclass: #BTree
	instanceVariableNames: 'root'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'BTree class' category: 'Ma-Collections'!
BTree class
	instanceVariableNames: ''!

!classDefinition: #WeakValueBTree category: 'Ma-Collections'!
BTree subclass: #WeakValueBTree
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'WeakValueBTree class' category: 'Ma-Collections'!
WeakValueBTree class
	instanceVariableNames: ''!

!classDefinition: #DateTree category: 'Ma-Collections'!
Collection subclass: #DateTree
	instanceVariableNames: 'startTimes endTimes events'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'DateTree class' category: 'Ma-Collections'!
DateTree class
	instanceVariableNames: ''!

!classDefinition: #TSTree category: 'Ma-Collections'!
Collection subclass: #TSTree
	instanceVariableNames: 'root emptyValue'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'TSTree class' category: 'Ma-Collections'!
TSTree class
	instanceVariableNames: ''!

!classDefinition: #TreeSet category: 'Ma-Collections'!
Collection subclass: #TreeSet
	instanceVariableNames: 'tree sortKey equalsKey'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'TreeSet class' category: 'Ma-Collections'!
TreeSet class
	instanceVariableNames: ''!

!classDefinition: #MaSpecialCollectionsSoftwareError category: 'Ma-Collections-Exceptions'!
MaSoftwareError subclass: #MaSpecialCollectionsSoftwareError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections-Exceptions'!
!classDefinition: 'MaSpecialCollectionsSoftwareError class' category: 'Ma-Collections-Exceptions'!
MaSpecialCollectionsSoftwareError class
	instanceVariableNames: ''!

!classDefinition: #MaHashIndexUserError category: 'Ma-Collections-Exceptions'!
MaUserError subclass: #MaHashIndexUserError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections-Exceptions'!
!classDefinition: 'MaHashIndexUserError class' category: 'Ma-Collections-Exceptions'!
MaHashIndexUserError class
	instanceVariableNames: ''!

!classDefinition: #MaHashIndexTester category: 'Ma-Collections-Tests'!
MaTestCase subclass: #MaHashIndexTester
	instanceVariableNames: 'sortedKeys predictedSize index values nextValue'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections-Tests'!
!classDefinition: 'MaHashIndexTester class' category: 'Ma-Collections-Tests'!
MaHashIndexTester class
	instanceVariableNames: ''!

!classDefinition: #BTreeTest category: 'Ma-Collections-Tests'!
TestCase subclass: #BTreeTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections-Tests'!
!classDefinition: 'BTreeTest class' category: 'Ma-Collections-Tests'!
BTreeTest class
	instanceVariableNames: ''!

!classDefinition: #DateTreeTest category: 'Ma-Collections-Tests'!
TestCase subclass: #DateTreeTest
	instanceVariableNames: 'now sixHours tomorrow nextWeek twoWeeks threeWeeks timespans'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections-Tests'!
!classDefinition: 'DateTreeTest class' category: 'Ma-Collections-Tests'!
DateTreeTest class
	instanceVariableNames: ''!

!classDefinition: #MaDictionarysTests category: 'Ma-Collections-Tests'!
TestCase subclass: #MaDictionarysTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections-Tests'!
!classDefinition: 'MaDictionarysTests class' category: 'Ma-Collections-Tests'!
MaDictionarysTests class
	instanceVariableNames: ''!

!classDefinition: #MaDictionaryTest category: 'Ma-Collections-Tests'!
MaDictionarysTests subclass: #MaDictionaryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections-Tests'!
!classDefinition: 'MaDictionaryTest class' category: 'Ma-Collections-Tests'!
MaDictionaryTest class
	instanceVariableNames: ''!

!classDefinition: #MaIdentityKeyWeakValueDictionaryTest category: 'Ma-Collections-Tests'!
MaDictionarysTests subclass: #MaIdentityKeyWeakValueDictionaryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections-Tests'!
!classDefinition: 'MaIdentityKeyWeakValueDictionaryTest class' category: 'Ma-Collections-Tests'!
MaIdentityKeyWeakValueDictionaryTest class
	instanceVariableNames: ''!

!classDefinition: #MaWeakIdentityKeyDictionaryTest category: 'Ma-Collections-Tests'!
MaDictionarysTests subclass: #MaWeakIdentityKeyDictionaryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections-Tests'!
!classDefinition: 'MaWeakIdentityKeyDictionaryTest class' category: 'Ma-Collections-Tests'!
MaWeakIdentityKeyDictionaryTest class
	instanceVariableNames: ''!

!classDefinition: #MaWeakKeyDictionaryTest category: 'Ma-Collections-Tests'!
MaDictionarysTests subclass: #MaWeakKeyDictionaryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections-Tests'!
!classDefinition: 'MaWeakKeyDictionaryTest class' category: 'Ma-Collections-Tests'!
MaWeakKeyDictionaryTest class
	instanceVariableNames: ''!

!classDefinition: #MaWeakValueDictionaryTest category: 'Ma-Collections-Tests'!
MaDictionarysTests subclass: #MaWeakValueDictionaryTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections-Tests'!
!classDefinition: 'MaWeakValueDictionaryTest class' category: 'Ma-Collections-Tests'!
MaWeakValueDictionaryTest class
	instanceVariableNames: ''!

!classDefinition: #MaHashIndexRecordTester category: 'Ma-Collections-Tests'!
TestCase subclass: #MaHashIndexRecordTester
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections-Tests'!
!classDefinition: 'MaHashIndexRecordTester class' category: 'Ma-Collections-Tests'!
MaHashIndexRecordTester class
	instanceVariableNames: ''!

!classDefinition: #TSTreeTest category: 'Ma-Collections-Tests'!
TestCase subclass: #TSTreeTest
	instanceVariableNames: 'tree empty'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections-Tests'!
!classDefinition: 'TSTreeTest class' category: 'Ma-Collections-Tests'!
TSTreeTest class
	instanceVariableNames: ''!

!classDefinition: #MaFixedLengthRecord category: 'Ma-Collections'!
MaObject subclass: #MaFixedLengthRecord
	instanceVariableNames: 'byteArray'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaFixedLengthRecord class' category: 'Ma-Collections'!
MaFixedLengthRecord class
	instanceVariableNames: ''!

!classDefinition: #MaHashIndexRecord category: 'Ma-Collections'!
MaFixedLengthRecord subclass: #MaHashIndexRecord
	instanceVariableNames: 'recordNumber lowKey highKey keySize valueSize numberOfSlots entrySize entryWeight canHoldDuplicateKeys'
	classVariableNames: ''
	poolDictionaries: 'MaHashIndexRecordConstants'
	category: 'Ma-Collections'!
!classDefinition: 'MaHashIndexRecord class' category: 'Ma-Collections'!
MaHashIndexRecord class
	instanceVariableNames: ''!

!classDefinition: #MaHashIndexHeader category: 'Ma-Collections'!
MaObject subclass: #MaHashIndexHeader
	instanceVariableNames: 'byteArray'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaHashIndexHeader class' category: 'Ma-Collections'!
MaHashIndexHeader class
	instanceVariableNames: ''!

!classDefinition: #MaHashIndexRecordFactory category: 'Ma-Collections'!
MaObject subclass: #MaHashIndexRecordFactory
	instanceVariableNames: 'index recordNumbersPath entryIndexPath byteArrayIndexPath recordPath preMadeNewRecord'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaHashIndexRecordFactory class' category: 'Ma-Collections'!
MaHashIndexRecordFactory class
	instanceVariableNames: ''!

!classDefinition: #MaIntervalCollection category: 'Ma-Collections'!
MaObject subclass: #MaIntervalCollection
	instanceVariableNames: 'intervals proximityThreshold'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaIntervalCollection class' category: 'Ma-Collections'!
MaIntervalCollection class
	instanceVariableNames: ''!

!classDefinition: #MaLargeArrayOfRecords category: 'Ma-Collections'!
MaObject subclass: #MaLargeArrayOfRecords
	instanceVariableNames: 'broker'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaLargeArrayOfRecords class' category: 'Ma-Collections'!
MaLargeArrayOfRecords class
	instanceVariableNames: ''!

!classDefinition: #MaLargeArrayOfNumbers category: 'Ma-Collections'!
MaLargeArrayOfRecords subclass: #MaLargeArrayOfNumbers
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaLargeArrayOfNumbers class' category: 'Ma-Collections'!
MaLargeArrayOfNumbers class
	instanceVariableNames: ''!

!classDefinition: #MaMagnitudeIndex category: 'Ma-Collections'!
MaLargeArrayOfRecords subclass: #MaMagnitudeIndex
	instanceVariableNames: 'keySize valueSize nextRecordNumber highestPossibleKey'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaMagnitudeIndex class' category: 'Ma-Collections'!
MaMagnitudeIndex class
	instanceVariableNames: ''!

!classDefinition: #MaHashIndex category: 'Ma-Collections'!
MaMagnitudeIndex subclass: #MaHashIndex
	instanceVariableNames: 'hashRecordSize record recordFactory guard'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaHashIndex class' category: 'Ma-Collections'!
MaHashIndex class
	instanceVariableNames: ''!

!classDefinition: #MaRecordBroker category: 'Ma-Collections'!
MaObject subclass: #MaRecordBroker
	instanceVariableNames: 'headerSize recordSize'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaRecordBroker class' category: 'Ma-Collections'!
MaRecordBroker class
	instanceVariableNames: ''!

!classDefinition: #MaFileRecordBroker category: 'Ma-Collections'!
MaRecordBroker subclass: #MaFileRecordBroker
	instanceVariableNames: 'file'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaFileRecordBroker class' category: 'Ma-Collections'!
MaFileRecordBroker class
	instanceVariableNames: ''!

!classDefinition: #MaInImageRecordBroker category: 'Ma-Collections'!
MaRecordBroker subclass: #MaInImageRecordBroker
	instanceVariableNames: 'records'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaInImageRecordBroker class' category: 'Ma-Collections'!
MaInImageRecordBroker class
	instanceVariableNames: ''!

!classDefinition: #MaSharedObjectsBroker category: 'Ma-Collections'!
MaObject subclass: #MaSharedObjectsBroker
	instanceVariableNames: 'dates literals'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaSharedObjectsBroker class' category: 'Ma-Collections'!
MaSharedObjectsBroker class
	instanceVariableNames: ''!

!classDefinition: #MaTree category: 'Ma-Collections'!
MaObject subclass: #MaTree
	instanceVariableNames: 'parents children sortBlock'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaTree class' category: 'Ma-Collections'!
MaTree class
	instanceVariableNames: ''!

!classDefinition: #MaIdentityTree category: 'Ma-Collections'!
MaTree subclass: #MaIdentityTree
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaIdentityTree class' category: 'Ma-Collections'!
MaIdentityTree class
	instanceVariableNames: ''!

!classDefinition: #BTreeKeys category: 'Ma-Collections'!
Object subclass: #BTreeKeys
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'BTreeKeys class' category: 'Ma-Collections'!
BTreeKeys class
	instanceVariableNames: ''!

!classDefinition: #BTreeKeysArray category: 'Ma-Collections'!
BTreeKeys variableSubclass: #BTreeKeysArray
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'BTreeKeysArray class' category: 'Ma-Collections'!
BTreeKeysArray class
	instanceVariableNames: ''!

!classDefinition: #BTreeStringKeys category: 'Ma-Collections'!
BTreeKeys subclass: #BTreeStringKeys
	instanceVariableNames: 'keys prefix abbreviations'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'BTreeStringKeys class' category: 'Ma-Collections'!
BTreeStringKeys class
	instanceVariableNames: ''!

!classDefinition: #BTreeNode category: 'Ma-Collections'!
Object variableSubclass: #BTreeNode
	instanceVariableNames: 'parent keys'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'BTreeNode class' category: 'Ma-Collections'!
BTreeNode class
	instanceVariableNames: ''!

!classDefinition: #BTreeInteriorNode category: 'Ma-Collections'!
BTreeNode variableSubclass: #BTreeInteriorNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'BTreeInteriorNode class' category: 'Ma-Collections'!
BTreeInteriorNode class
	instanceVariableNames: ''!

!classDefinition: #BTreeLeafNode category: 'Ma-Collections'!
BTreeNode variableSubclass: #BTreeLeafNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'BTreeLeafNode class' category: 'Ma-Collections'!
BTreeLeafNode class
	instanceVariableNames: ''!

!classDefinition: #MaWeakAssociation category: 'Ma-Collections'!
Object weakSubclass: #MaWeakAssociation
	instanceVariableNames: 'finList finNext next'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaWeakAssociation class' category: 'Ma-Collections'!
MaWeakAssociation class
	instanceVariableNames: ''!

!classDefinition: #MaAutoWeakKeyAssociation category: 'Ma-Collections'!
MaWeakAssociation weakSubclass: #MaAutoWeakKeyAssociation
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaAutoWeakKeyAssociation class' category: 'Ma-Collections'!
MaAutoWeakKeyAssociation class
	instanceVariableNames: ''!

!classDefinition: #MaAutoWeakIdentityKeyAssociation category: 'Ma-Collections'!
MaAutoWeakKeyAssociation weakSubclass: #MaAutoWeakIdentityKeyAssociation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaAutoWeakIdentityKeyAssociation class' category: 'Ma-Collections'!
MaAutoWeakIdentityKeyAssociation class
	instanceVariableNames: ''!

!classDefinition: #MaAutoWeakValueAssociation category: 'Ma-Collections'!
MaWeakAssociation weakSubclass: #MaAutoWeakValueAssociation
	instanceVariableNames: 'key'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaAutoWeakValueAssociation class' category: 'Ma-Collections'!
MaAutoWeakValueAssociation class
	instanceVariableNames: ''!

!classDefinition: #MaAutoIdentityKeyWeakValueAssociation category: 'Ma-Collections'!
MaAutoWeakValueAssociation weakSubclass: #MaAutoIdentityKeyWeakValueAssociation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'MaAutoIdentityKeyWeakValueAssociation class' category: 'Ma-Collections'!
MaAutoIdentityKeyWeakValueAssociation class
	instanceVariableNames: ''!

!classDefinition: #TSTreeNode category: 'Ma-Collections'!
Object subclass: #TSTreeNode
	instanceVariableNames: 'key value low high equal'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections'!
!classDefinition: 'TSTreeNode class' category: 'Ma-Collections'!
TSTreeNode class
	instanceVariableNames: ''!

!classDefinition: #MaDictionaryBencher category: 'Ma-Collections-Tests'!
Object subclass: #MaDictionaryBencher
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Collections-Tests'!
!classDefinition: 'MaDictionaryBencher class' category: 'Ma-Collections-Tests'!
MaDictionaryBencher class
	instanceVariableNames: ''!


!MaDictionary commentStamp: '<historical>' prior: 0!
| sd md r | 
Transcript clear.
r _ OrderedCollection new.
ByteString allInstancesDo: [:each | r add: each ].
Smalltalk garbageCollect.
sd _ Dictionary new.
Transcript cr; show: 'time to add all strings to sd: ', 
	[ r do: [:each | sd at: each put: each ] ] timeToRun printString.
Smalltalk garbageCollect.
sd _ MaDictionary new.
Transcript cr; show: 'time to add all strings to md: ', 
	[ r do: [:each | sd at: each put: each ] ] timeToRun printString.


r _ (1 to: 15500) collect: [ :e | Object new ].
r _ r shuffled.
Smalltalk garbageCollect.
sd _ WeakIdentityKeyDictionary new.
md _ MaWeakIdentityKeyDictionary new.
Transcript cr; show: 'time to add to sd: ', ([ r do: [ :each | sd at: each put: each ] ] timeToRun) printString.
Transcript cr; show: 'time to add to md: ', ([ r do: [ :each | md at: each put: each ] ] timeToRun) printString.
r_r shuffled.
Transcript cr; show: 'time to access to sd: ', ([ r do: [ :each | sd at: each ] ] timeToRun) printString.
Transcript cr; show: 'time to access to md: ', ([ r do: [ :each | md at: each ] ] timeToRun) printString.
r _ r shuffled.
Transcript cr; show: 'time to replace to sd: ', ([ r do: [ :each | sd at: each put: each ] ] timeToRun) printString.
Transcript cr; show: 'time to replace to md: ', ([ r do: [ :each | md at: each put: each ] ] timeToRun) printString.
r _ r shuffled.
Transcript cr; show: 'time to remove 300 from sd: ', ([ (r copyFrom: 1 to: 300) do: [ :each | sd removeKey: each ] ] timeToRun) printString.
Transcript cr; show: 'time to remove 300 from md: ', ([ (r copyFrom: 1 to: 300) do: [ :each | md removeKey: each ] ] timeToRun) printString.
!

!DateTree commentStamp: '<historical>' prior: 0!
I provide a way to efficiently store and access date intervals. I am capable of answering the question, "What events lie within a given date range." !

!MaDictionarysTests commentStamp: '<historical>' prior: 0!
before running tests , use:

MaDictionaryTest initDictClass: MaWeakValueDictionary

MaDictionaryTest initDictClass: MaWeakValueDictionary

tests for WeakKey/WeakIdentityKey dicts will fail (keys must be non nil, and some tests because of identity compatison )!

!MaHashIndexRecord commentStamp: 'cmm 4/28/2005 21:25' prior: 0!
keySize and valueSize are specified in bits.
entrySize is in bytes.
!

!MaIntervalCollection commentStamp: 'cmm 6/4/2005 00:48' prior: 0!
This class keeps track of a collection of intervals.

As intervals are added that intersect or are within the proximityThreshold
of existing intervals, the existing interval is enlarged to include for the new interval.

If an interval is removed in the middle of a large interval such that
a "hole" is created, a new interval will be created and the other one
will be adjusted so that they will represent only the valid ranges.

For example:

	if an instance of this class has 1..10

	and we add: 8..15, then this class will have a single interval from 1..15

	Then remove 5..11..  Assuming a proximityThreshold of 1, this class will have the following two intervals:

		1..4
		12..15

Use a proximityThreshold of 0 to track the real-numbers..!

!MaLargeArrayOfRecords commentStamp: 'cmm 3/18/2007 23:38' prior: 0!
I represent large Array of ByteArray "records".  I am capable of being truly large when my 'broker' is a MaFileRecordBroker, and I am mostly used with such a broker, even though my default is an MaInImageRecordBroker.!

!MaLargeArrayOfNumbers commentStamp: 'cmm 3/18/2007 22:59' prior: 0!
MaLargeArrayOfNumbers is an auto-growing, never-shrinking array of numbers.  All numbers have the same number of bits available to represent them.!

!MaMagnitudeIndex commentStamp: '<historical>' prior: 0!
keySize in bits.!

!MaRecordBroker commentStamp: 'cmm 5/18/2005 09:46' prior: 0!
I am an abstract superclass for record-based collections such as MaHashIndex and MaLargeArrayOfNumbers.  By plugging them with my appropriate subclass, they are able to be file-based or in-memory (or maybe remote network location in the future).

I don't actually deal with the records themselves, just their reading and writing to the storage.!

!MaSharedObjectsBroker commentStamp: 'cmm 10/9/2011 16:58' prior: 0!
A MaxSharedObjectsBroker is used to canonicalize Dates, or other flyweight domain objects.  There is no reason to have multiple copies of the same date across all Securities to consume extra space redundantly in the repository, as well as in client memories.!

!MaWeakAssociation commentStamp: 'Igor.Stasenko 5/12/2010 21:02' prior: 0!
I am an abstact basic class for associations which holding either key or value weakly!

!MaWeakKeyAssociation methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 12:34'!
printOn: aStream
	self key printOn: aStream.
	aStream nextPutAll: '->'.
	self value printOn: aStream! !

!MaWeakKeyAssociation methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 12:34'!
storeOn: aStream
	aStream 
		nextPut: $(;
		nextPutAll: self class name;
		nextPutAll:' key: '.
	self key storeOn: aStream.
	aStream nextPutAll: ' value: '.
	self value storeOn: aStream.
	aStream nextPut: $)! !

!MaIntervalCollection methodsFor: 'copying' stamp: 'cmm 10/19/2005 10:05'!
postCopy
	super postCopy.
	intervals _ intervals copy! !

!MaTree methodsFor: 'copying' stamp: 'cmm 4/12/2007 13:13'!
postCopy
	"Private - use Copy"
	| newChildren |
	parents _ parents copy.
	newChildren _ children class new.
	children keysAndValuesDo:
		[ : eachNode : eachChildren |
		newChildren at: eachNode put: eachChildren copy ].
	children _ newChildren! !

!MaWeakAssociation methodsFor: 'printing' stamp: 'Igor.Stasenko 5/12/2010 21:54'!
printOn: aStream

	self key printOn: aStream.
	aStream nextPutAll: '->'.
	self value printOn: aStream! !

!MaHashIndexRecordConstants class methodsFor: 'as yet unclassified' stamp: 'cmm 11/4/2014 14:44'!
initialize
	ControlEntryOffset _ 0.
	SizeOfControlFieldInBits _ 8.
	SizeOfControlFieldInBytes _ SizeOfControlFieldInBits / 8.
	SizeOfRecordNumberInBits _ 32.
	SizeOfRecordNumberInBytes _ SizeOfRecordNumberInBits / 8.
	SlotFilledControlBit _ 1.
	ValueEntryOffset _ ControlEntryOffset + SizeOfControlFieldInBytes! !

!MaAssociation methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 12:32'!
do: aBlock
	aBlock value: self.
	next ifNotNil: [ next do: aBlock ]! !

!MaAssociation methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 12:32'!
findKeyOrNil: akey
	^ key = akey ifTrue: [ self ] ifFalse: [ next ifNotNil: [next findKeyOrNil: akey ] ]! !

!MaAssociation methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 12:32'!
key: akey value: avalue next: anext
	key _ akey.
	value _ avalue.
	next _ anext! !

!MaAssociation methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 12:32'!
next
	^ next! !

!MaAssociation methodsFor: 'accessing' stamp: 'sig 7/20/2007 12:32'!
next: aNext
	next _ aNext! !

!MaAssociation class methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 12:32'!
key: key value: value next: next
	^ self basicNew key: key value: value next: next! !

!MaIdentityKeyAssociation methodsFor: 'as yet unclassified' stamp: 'cmm 6/22/2009 13:39'!
findKeyOrNil: akey
	^ key == akey ifTrue: [ self ] ifFalse: [ next ifNotNil: [next findKeyOrNil: akey ] ]! !

!MaWeakKeyAssociation methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 12:34'!
< aLookupKey 
	"Refer to the comment in Magnitude|<."

	^self key < aLookupKey key! !

!MaWeakKeyAssociation methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 12:34'!
= aLookupKey

	self species = aLookupKey species
		ifTrue: [^self key = aLookupKey key]
		ifFalse: [^false]! !

!MaWeakKeyAssociation methodsFor: 'as yet unclassified' stamp: 'cmm 11/5/2008 17:05'!
do: aBlock 
	| k |
	k _ self key.
	k ifNotNil: [ aBlock value: self ].
	next ifNotNil: [ next do: aBlock ]! !

!MaWeakKeyAssociation methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 12:34'!
findKeyOrNil: akey
	^ self key = akey ifTrue: [ self ] ifFalse: [ next ifNotNil: [next findKeyOrNil: akey ] ]! !

!MaWeakKeyAssociation methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 12:34'!
hash
	"Hash is reimplemented because = is implemented."

	^self key hash! !

!MaWeakKeyAssociation methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 12:34'!
hashMappedBy: map
	"Answer what my hash would be if oops changed according to map."

	^self key hashMappedBy: map! !

!MaWeakKeyAssociation methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 12:34'!
identityHashMappedBy: map
	"Answer what my hash would be if oops changed according to map."

	^ self key identityHashMappedBy: map! !

!MaWeakKeyAssociation methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 12:34'!
key
	^key ifNotNil: [key at: 1]! !

!MaWeakKeyAssociation methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 12:34'!
key: aKey
	key _ WeakArray with: aKey! !

!MaWeakKeyAssociation methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 12:34'!
key: aKey value: anObject
	key _ WeakArray with: aKey.
	value _ anObject.! !

!MaWeakKeyAssociation methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 12:34'!
key: aKey value: anObject next: aNext
	key _ WeakArray with: aKey.
	value _ anObject.
	next _ aNext! !

!MaWeakIdentityKeyAssociation methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 12:33'!
findKeyOrNil: akey
	^ self key == akey ifTrue: [ self ] ifFalse: [ next ifNotNil: [next findKeyOrNil: akey ] ]! !

!MaWeakValueAssociation methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 12:37'!
do: aBlock
	aBlock value: self.
	next ifNotNil: [ next do: aBlock ]! !

!MaWeakValueAssociation methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 12:37'!
findKeyOrNil: akey
	^ key = akey ifTrue: [ self ] ifFalse: [ next ifNotNil: [next findKeyOrNil: akey ] ]! !

!MaWeakValueAssociation methodsFor: 'as yet unclassified' stamp: 'sig 7/25/2007 18:24'!
key: aKey value: anObject next: aNext
	"Store the arguments as the variables of the receiver."

	key _ aKey.
	self value: anObject.
	next _ aNext! !

!MaWeakValueAssociation methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 12:37'!
next
	^ next! !

!MaWeakValueAssociation methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 12:37'!
next: aNext
	next _ aNext! !

!MaWeakValueAssociation class methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 12:37'!
key: key value: value next: next
	^ (self basicNew:1) key: key value: value next: next! !

!MaDictionary methodsFor: 'adding' stamp: 'sig 7/19/2007 22:26'!
add: anAssociation
	self at: anAssociation key put: anAssociation value.
	^ anAssociation! !

!MaDictionary methodsFor: 'private' stamp: 'sig 7/20/2007 16:03'!
associationAt: key ifAbsent: aBlock 
	| bucket |
	bucket _ array at: (self keyHash:key).
	^ bucket ifNil: aBlock
		ifNotNil: [ (bucket findKeyOrNil: key) ifNil: aBlock ]! !

!MaDictionary methodsFor: 'private' stamp: 'sig 7/20/2007 12:37'!
associationClass
	^ MaAssociation! !

!MaDictionary methodsFor: 'private' stamp: 'sig 7/19/2007 22:26'!
atIndex: index insertKey: key value: value
	| newb |
	newb _ self associationClass key: key value: value next: (array at: index).
	array at: index put: newb.
	tally _ tally + 1.
	self checkForOverflow.
	^ value

	! !

!MaDictionary methodsFor: 'private' stamp: 'sig 7/19/2007 22:26'!
atRandom: aGenerator
	"Its ugly slow, not recommended to use."
	| ind i |
	self emptyCheck.
	ind _ aGenerator nextInt: array size.
	i _ 1.
	self associationsDo: [:b |  (i=ind) ifTrue: [^b]. i _ i +1].

	self errorEmptyCollection.! !

!MaDictionary methodsFor: 'private' stamp: 'sig 7/19/2007 22:26'!
bestArraySizeFor: size
	| hb |
	hb _ size highBit. 
	^ (hb <= Primes size) ifTrue: [ Primes at: hb ] ifFalse: [ size ]! !

!MaDictionary methodsFor: 'private' stamp: 'sig 7/20/2007 12:25'!
checkForOverflow
	| sz |
	sz _ array size.
	( sz < self maxBuckets) ifTrue: [
		tally >= (sz * 4) ifTrue: [ self rehash: (self bestArraySizeFor: tally * 2). ]
	]
	! !

!MaDictionary methodsFor: 'private' stamp: 'cmm 5/6/2013 10:49'!
checkForUnderflow
	self checkForUnderflow: false! !

!MaDictionary methodsFor: 'private' stamp: 'cmm 5/6/2013 10:46'!
checkForUnderflow: forceRehash 
	(forceRehash or: [ tally < (array size / 4) ]) ifTrue: [ self rehash: (self bestArraySizeFor: tally * 2 + 1) ]! !

!MaDictionary methodsFor: 'private' stamp: 'sig 7/25/2007 17:46'!
grow
	"do nothing"! !

!MaDictionary methodsFor: 'private' stamp: 'jpb 5/13/2021 10:39:11'!
inspectorClass
	^ Inspector! !

!MaDictionary methodsFor: 'private' stamp: 'cmm 10/13/2014 21:22'!
keyHash: key
	"Expand key's hash into the range of positive SmallIntegers.  See PluggableSet class>>#integerSet."
	^ ((key hash \\ 1064164 * 1009) \\ array size) + 1! !

!MaDictionary methodsFor: 'private' stamp: 'cmm 10/13/2014 21:24'!
keyHash: key size: aSize
	^ ((key hash \\ 1064164 * 1009) \\ aSize) + 1! !

!MaDictionary methodsFor: 'private' stamp: 'cmm 3/28/2010 11:51'!
maxBuckets
	^ SmallInteger maxVal! !

!MaDictionary methodsFor: 'private' stamp: 'Igor.Stasenko 9/24/2010 17:34'!
rehash
	
	"Force rehashing .. (was do nothing)"
	
	self rehash: array size! !

!MaDictionary methodsFor: 'private' stamp: 'sig 7/19/2007 22:26'!
rehash: newSize
	| newArray index |
	"rehash"
	newArray _ Array new: newSize.
	array do: [ :b | | next |
		next _ b.
		[ next notNil ] whileTrue: [  | nn |
			nn _ next next.
			index _ self keyHash: next key size: newSize.
			next next: (newArray at: index).
			newArray at: index put: next.
			next _ nn]
	].
	array _ newArray.! !

!MaDictionary methodsFor: 'enumerating' stamp: 'Igor.Stasenko 11/8/2010 00:05'!
associationsDo: aBlock
	array do: [ :b |
		b ifNotNil: [ b do: aBlock ]
	].
! !

!MaDictionary methodsFor: 'enumerating' stamp: 'sig 7/19/2007 22:26'!
do: aBlock
	self associationsDo: [:assoc | aBlock value: assoc value]! !

!MaDictionary methodsFor: 'accessing' stamp: 'sig 7/20/2007 14:22'!
at: key ifAbsent: aBlock
	| bucket |
	bucket _ array at: (self keyHash: key).
	[bucket notNil] whileTrue: [ bucket key = key ifTrue: [^ bucket value]. bucket _ bucket next ].
	^ aBlock value.
! !

!MaDictionary methodsFor: 'accessing' stamp: 'sig 7/20/2007 15:56'!
at: key ifAbsentPut: aBlock
	| index bucket |
	index _ self keyHash: key.
	bucket _ array at: index.
	[bucket notNil] whileTrue: [ bucket key = key ifTrue: [^ bucket value]. bucket _ bucket next ].
	^ self atIndex: index insertKey: key value: aBlock value.
! !

!MaDictionary methodsFor: 'accessing' stamp: 'cmm 10/30/2011 16:49'!
at: anObject ifPresent: oneArgBlock ifAbsent: zeroArgBlock 
	^ oneArgBlock value:
		(self
			at: anObject
			ifAbsent: [ ^ zeroArgBlock value ])! !

!MaDictionary methodsFor: 'accessing' stamp: 'sig 7/20/2007 15:23'!
at: key put: value
	| index bucket  |
	index _ self keyHash: key.
	bucket _ array at: index.
	[bucket notNil] whileTrue: [ bucket key = key ifTrue: [ bucket value: value. ^ value ]. bucket _ bucket next ].
	^ self atIndex: index insertKey: key value: value.

! !

!MaDictionary methodsFor: 'accessing' stamp: 'sig 7/19/2007 22:29'!
maAllKeysAtValue: anObject

	| aCollection |
	aCollection _ OrderedCollection new.
	self keysAndValuesDo: [ :key :value | value = anObject ifTrue: [ aCollection add: key ] ].
	^aCollection
! !

!MaDictionary methodsFor: 'accessing' stamp: 'sig 7/19/2007 22:26'!
size
	^ tally! !

!MaDictionary methodsFor: 'copying' stamp: 'sig 7/25/2007 18:20'!
copy
	| dict |
	dict _ self species new: self size.
	self associationsDo: [:b | dict at: b key put: b value  ].
	^ dict.! !

!MaDictionary methodsFor: 'testing' stamp: 'cmm 10/29/2013 16:42'!
includesKey: key 
	"Answer whether the receiver has a key equal to the argument, key."
	self
		at: key
		ifAbsent: [ ^ false ].
	^ true! !

!MaDictionary methodsFor: 'testing' stamp: 'sig 7/19/2007 22:30'!
maIsHashedCollection

	^true
! !

!MaDictionary methodsFor: 'removing' stamp: 'sig 7/19/2007 22:26'!
removeKey: key ifAbsent: aBlock 
	"Remove key (and its associated value) from the receiver. If key is not in 
	the receiver, answer the result of evaluating aBlock. Otherwise, answer 
	the value externally named by key."
	| index bucket next |
	index _ self keyHash: key.
	bucket _ array at: index.
	bucket ifNil: [ ^ aBlock value ].
	bucket key = key ifTrue: [ 
		tally _ tally -1. 
		array at: index put: bucket next. 
		self checkForUnderflow.
		^ bucket value ].
	[(next _ bucket next) notNil ] whileTrue: [
		next key = key ifTrue: [ 
		tally _ tally - 1. 
		bucket next: next next. 
		self checkForUnderflow.
		^ next value ].
		bucket _ next.
	].
	^ aBlock value! !

!MaDictionary class methodsFor: 'as yet unclassified' stamp: 'sig 7/19/2007 22:26'!
initialize
	"Primes up to 2^27"
	Primes _ #(
		5 5 11 17 37 67 131 257 521 1031 2053 4099 8209 16411 32771 65537 131101 
		262147 524309 1048583 2097169 4194319 8388617 16777259 33554467 67108879 134217757).
! !

!MaDictionary class methodsFor: 'as yet unclassified' stamp: 'sig 7/19/2007 22:26'!
primes
	^ Primes! !

!MaIdentityDictionary methodsFor: 'as yet unclassified' stamp: 'cmm 6/22/2009 13:39'!
associationClass
	^ MaIdentityKeyAssociation ! !

!MaIdentityDictionary methodsFor: 'as yet unclassified' stamp: 'cmm 6/22/2009 13:36'!
at: key ifAbsent: aBlock
	| bucket |
	bucket _ array at: (self keyHash: key).
	[bucket notNil] whileTrue: [ bucket key == key ifTrue: [^ bucket value]. bucket _ bucket next ].
	^ aBlock value.
! !

!MaIdentityDictionary methodsFor: 'as yet unclassified' stamp: 'cmm 3/27/2010 22:30'!
at: key ifAbsentPut: aBlock
	| index bucket |
	index _ self keyHash: key.
	bucket _ array at: index.
	[bucket ~~ nil] whileTrue: [ bucket key == key ifTrue: [^ bucket value]. bucket _ bucket next ].
	^ self atIndex: index insertKey: key value: aBlock value.
! !

!MaIdentityDictionary methodsFor: 'as yet unclassified' stamp: 'cmm 6/22/2009 13:35'!
at: key put: value
	| index bucket  |
	index _ self keyHash: key.
	bucket _ array at: index.
	[bucket notNil] whileTrue: [ bucket key == key ifTrue: [ bucket value: value. ^ value ]. bucket _ bucket next ].
	^ self atIndex: index insertKey: key value: value.

! !

!MaIdentityDictionary methodsFor: 'as yet unclassified' stamp: 'cmm 6/22/2009 14:59'!
keyHash: key
	^ (key identityHash \\ array size) + 1! !

!MaIdentityDictionary methodsFor: 'as yet unclassified' stamp: 'cmm 6/22/2009 14:59'!
keyHash: key size: aSize
	^ (key identityHash \\ aSize) + 1! !

!MaIdentityDictionary methodsFor: 'as yet unclassified' stamp: 'cmm 6/22/2009 13:43'!
removeKey: key ifAbsent: aBlock 
	"Remove key (and its associated value) from the receiver. If key is not in 
	the receiver, answer the result of evaluating aBlock. Otherwise, answer 
	the value externally named by key."
	| index bucket next |
	index _ self keyHash: key.
	bucket _ array at: index.
	bucket ifNil: [ ^ aBlock value ].
	bucket key == key ifTrue: [ 
		tally _ tally -1. 
		array at: index put: bucket next. 
		self checkForUnderflow.
		^ bucket value ].
	[(next _ bucket next) notNil ] whileTrue: [
		next key == key ifTrue: [ 
		tally _ tally - 1. 
		bucket next: next next. 
		self checkForUnderflow.
		^ next value ].
		bucket _ next.
	].
	^ aBlock value! !

!MaIdentityDictionary methodsFor: 'private' stamp: 'cmm 3/28/2010 11:50'!
maxBuckets 
	"squeak uses 12 bits for identity hash, using buckets more than 2^12 is pointless"
	^ 4096 " 2 raisedTo: 12 "

! !

!MaIdentitySet methodsFor: 'as yet unclassified' stamp: 'cmm 6/22/2009 13:45'!
add: anObject 
	^ self 
		at: anObject
		put: nil! !

!MaIdentitySet methodsFor: 'as yet unclassified' stamp: 'cmm 10/14/2014 10:33'!
addNewElement: anObject
	| index bucket  |
	index _ self keyHash: anObject.
	bucket _ array at: index.
	[bucket notNil] whileTrue: [ bucket key == anObject ifTrue: [ ^ false ]. bucket _ bucket next ].
	self atIndex: index insertKey: anObject value: nil.
	^ true

! !

!MaIdentitySet methodsFor: 'as yet unclassified' stamp: 'cmm 1/19/2012 20:17'!
collect: aBlock 
	"Evaluate aBlock with each of my values as the argument.  Collect the resulting values into a collection that is like me. Answer with the new collection."
	| newCollection |
	newCollection _ self species new: self size.
	self associationsDo:
		[ : each | newCollection add: (aBlock value: each key) ].
	^ newCollection! !

!MaIdentitySet methodsFor: 'as yet unclassified' stamp: 'cmm 6/22/2009 13:45'!
do: aBlock
	self keysDo: aBlock! !

!MaIdentitySet methodsFor: 'as yet unclassified' stamp: 'cmm 6/22/2009 13:45'!
includes: anObject
	^ self includesKey: anObject! !

!MaIdentitySet methodsFor: 'as yet unclassified' stamp: 'cmm 6/22/2009 13:48'!
remove: anObject ifAbsent: aBlock 
	^ self 
		removeKey: anObject
		ifAbsent: aBlock! !

!MaWeakKeyDictionary methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 12:38'!
associationClass
	^ MaWeakKeyAssociation 

	! !

!MaWeakKeyDictionary methodsFor: 'as yet unclassified' stamp: 'sig 7/25/2007 17:54'!
at: key ifAbsent: aBlock
	| bucket |
	"nil keys always absent in weak dictionary"
	key ifNil: [ ^ aBlock value ] ifNotNil: [
		bucket _ array at: (self keyHash: key).
		[bucket notNil] whileTrue: [ bucket key = key ifTrue: [^ bucket value]. bucket _ bucket next ].
		^ aBlock value.
	]
! !

!MaWeakKeyDictionary methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 16:00'!
at: key ifAbsentPut: aBlock
	| index bucket |
	key ifNil: [ ^ aBlock value ].	"nil keys is not allowed"
	index _ self keyHash: key.
	bucket _ array at: index.
	[bucket notNil] whileTrue: [ bucket key = key ifTrue: [^ bucket value]. bucket _ bucket next ].
	^ self atIndex: index insertKey: key value: aBlock value.! !

!MaWeakKeyDictionary methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 15:54'!
at: key put: value
	| index bucket  |
	"its better to use some Dead unique object for determining dead weaklings,
	but since in squeak dead weaklings replaced by nil, we can't allow to add it as key"
	key ifNil: [ ^ value ].	"nil keys is not allowed"

	index _ self keyHash: key.
	bucket _ array at: index.
	[bucket notNil] whileTrue: [ bucket key = key ifTrue: [ bucket value: value. ^ value ]. bucket _ bucket next ].
	^ self atIndex: index insertKey: key value: value.

! !

!MaWeakKeyDictionary methodsFor: 'as yet unclassified' stamp: 'cmm 5/6/2013 10:48'!
finalizeValues
	self finalizeValues: false! !

!MaWeakKeyDictionary methodsFor: 'as yet unclassified' stamp: 'cmm 5/6/2013 10:48'!
finalizeValues: forceRehash 
	"remove all nil keys and rehash the receiver afterwards if forceRehash is true or if it needs resized."
	1
		to: array size
		do:
			[ : i | | each next |
			each _ array at: i.
			[ each notNil and: [ each key isNil ] ] whileTrue:
				[ tally _ tally - 1.
				each _ each next ].
			array
				at: i
				put: each.
			each ifNotNil:
				[ next _ each next.
				[ next notNil ] whileTrue:
					[ next key
						ifNil:
							[ tally _ tally - 1.
							each next: next next ]
						ifNotNil: [ each _ next ].
					next _ next next ] ] ].
	self checkForUnderflow: forceRehash! !

!MaWeakKeyDictionary methodsFor: 'as yet unclassified' stamp: 'sig 7/27/2007 00:04'!
keysDo: aBlock 
	"Evaluate aBlock for each of the receiver's keys."
	self associationsDo: [:association | 
		association key ifNotNil:[aBlock value: association key]].! !

!MaWeakKeyDictionary methodsFor: 'as yet unclassified' stamp: 'sig 7/25/2007 18:02'!
removeKey: key ifAbsent: aBlock 
	"Remove key (and its associated value) from the receiver. If key is not in 
	the receiver, answer the result of evaluating aBlock. Otherwise, answer 
	the value externally named by key."
	| index bucket next |
	key ifNil: [ ^ aBlock value ].
	index _ self keyHash: key.
	bucket _ array at: index.
	bucket ifNil: [ ^ aBlock value ].
	bucket key = key ifTrue: [ 
		tally _ tally -1. 
		array at: index put: bucket next. 
		self checkForUnderflow.
		^ bucket value ].
	[(next _ bucket next) notNil ] whileTrue: [
		next key = key ifTrue: [ 
		tally _ tally - 1. 
		bucket next: next next. 
		self checkForUnderflow.
		^ next value ].
		bucket _ next.
	].
	^ aBlock value! !

!MaWeakIdentityKeyDictionary methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 12:39'!
associationClass
	^ MaWeakIdentityKeyAssociation! !

!MaWeakIdentityKeyDictionary methodsFor: 'as yet unclassified' stamp: 'sig 7/25/2007 17:56'!
at: key ifAbsent: aBlock
	| bucket |
	"nil keys always absent in weak dictionary"
	key ifNil: [ ^ aBlock value ] ifNotNil: [
		bucket _ array at: (self keyHash: key).
		[bucket notNil] whileTrue: [ bucket key == key ifTrue: [^ bucket value]. bucket _ bucket next ].
		^ aBlock value.
	]
! !

!MaWeakIdentityKeyDictionary methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 16:09'!
at: key ifAbsentPut: aBlock
	| index bucket |
	key ifNil: [ ^ aBlock value ].	"nil keys is not allowed"
	index _ self keyHash: key.
	bucket _ array at: index.
	[bucket notNil] whileTrue: [ bucket key == key ifTrue: [^ bucket value]. bucket _ bucket next ].
	^ self atIndex: index insertKey: key value: aBlock value.
! !

!MaWeakIdentityKeyDictionary methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 16:09'!
at: key put: value
	| index bucket  |
	key ifNil: [ ^ value ].	"nil keys is not allowed"
	index _ self keyHash: key.
	bucket _ array at: index.
	[bucket notNil] whileTrue: [ bucket key == key ifTrue: [ bucket value: value. ^ value ]. bucket _ bucket next ].
	^ self atIndex: index insertKey: key value: value.
! !

!MaWeakIdentityKeyDictionary methodsFor: 'as yet unclassified' stamp: 'sig 7/19/2007 22:28'!
keyHash: key
	^ (key identityHash \\ array size) + 1! !

!MaWeakIdentityKeyDictionary methodsFor: 'as yet unclassified' stamp: 'sig 7/19/2007 22:28'!
keyHash: key size: aSize
	^ (key identityHash \\ aSize) + 1! !

!MaWeakIdentityKeyDictionary methodsFor: 'as yet unclassified' stamp: 'sig 7/25/2007 18:01'!
removeKey: key ifAbsent: aBlock 
	"Remove key (and its associated value) from the receiver. If key is not in 
	the receiver, answer the result of evaluating aBlock. Otherwise, answer 
	the value externally named by key."
	| index bucket next |
	key ifNil: [ ^ aBlock value ].
	index _ self keyHash: key.
	bucket _ array at: index.
	bucket ifNil: [ ^ aBlock value ].
	bucket key == key ifTrue: [ 
		tally _ tally -1. 
		array at: index put: bucket next. 
		self checkForUnderflow.
		^ bucket value ].
	[(next _ bucket next) notNil ] whileTrue: [
		next key == key ifTrue: [ 
		tally _ tally - 1. 
		bucket next: next next. 
		self checkForUnderflow.
		^ next value ].
		bucket _ next.
	].
	^ aBlock value! !

!MaWeakValueDictionary methodsFor: 'as yet unclassified' stamp: 'sig 7/20/2007 12:38'!
associationClass
	^ MaWeakValueAssociation! !

!MaWeakValueDictionary methodsFor: 'as yet unclassified' stamp: 'sig 9/3/2007 15:38'!
reject: aBlock
" dirty hack , uncomment following line
	10 seconds asDelay wait. "
	^ super reject: aBlock! !

!BTree methodsFor: 'accessing' stamp: 'avi 2/23/2004 21:51'!
at: aMagnitude
	^ self at: aMagnitude ifAbsent: [self error: aMagnitude printString, ' not found']! !

!BTree methodsFor: 'accessing' stamp: 'lr 4/15/2009 09:50'!
at: aMagnitude ifAbsent: errorBlock
       | leaf |
       leaf _ root existingLeafForKey: aMagnitude.
       leaf ifNil: [^ errorBlock value].
       ^ leaf valueForKey: aMagnitude ifAbsent: errorBlock! !

!BTree methodsFor: 'accessing' stamp: 'RamonLeon 5/5/2011 23:16'!
at: aMagnitude ifPresent: aBlock
	| leaf |
	leaf _ root existingLeafForKey: aMagnitude.
	leaf ifNil: [ ^ nil ].
	^ leaf valueForKey: aMagnitude ifPresent: aBlock! !

!BTree methodsFor: 'accessing' stamp: 'avi 4/21/2005 02:28'!
depth
	^ root depth! !

!BTree methodsFor: 'accessing' stamp: 'lr 10/8/2009 12:56'!
first
	^ root first! !

!BTree methodsFor: 'accessing' stamp: 'avi 4/20/2005 14:29'!
keys
	^ Array streamContents:
		[:s |
		self keysDo: [:k | s nextPut: k]]! !

!BTree methodsFor: 'accessing' stamp: 'lr 10/8/2009 12:56'!
last
	^ root last! !

!BTree methodsFor: 'accessing' stamp: 'avi 2/25/2004 23:32'!
order
	^ root size! !

!BTree methodsFor: 'accessing' stamp: 'pmm 10/12/2005 10:57'!
values
	^ Array streamContents:
		[:s |
		self valuesDo: [:k | s nextPut: k]]! !

!BTree methodsFor: 'adding' stamp: 'avi 9/6/2005 17:10'!
at: aMagnitude ifAbsentPut: aBlock
	^ self at: aMagnitude ifAbsent: [self at: aMagnitude put: aBlock value]! !

!BTree methodsFor: 'adding' stamp: 'lr 4/15/2009 09:50'!
at: aMagnitude put: anObject
	| leaf |
	leaf _ root leafForKey: aMagnitude.
	leaf insertKey: aMagnitude value: anObject.
	root _ leaf root.
	^ anObject! !

!BTree methodsFor: 'adding' stamp: 'ac 11/15/2005 13:08'!
removeKey: aMagnitude
	^ self removeKey: aMagnitude ifAbsent: [self error: aMagnitude printString, ' not found.']! !

!BTree methodsFor: 'adding' stamp: 'lr 4/15/2009 09:50'!
removeKey: aMagnitude ifAbsent: aBlock
	| leaf |
	leaf _ root existingLeafForKey: aMagnitude.
	leaf ifNil: [^ aBlock value].
	leaf removeKey: aMagnitude ifAbsent: [^ aBlock value].
	root _ leaf root! !

!BTree methodsFor: 'enumerating' stamp: 'avi 4/21/2005 02:41'!
commonKeysWith: aTree keysAndValuesDo: aBlock
	^ aTree depth < self depth
		ifTrue: [aTree root commonKeysWith: root keysAndValuesDo: aBlock flip: true]
		ifFalse: [root commonKeysWith: aTree root keysAndValuesDo: aBlock flip: false]! !

!BTree methodsFor: 'enumerating' stamp: 'avi 2/23/2004 21:49'!
do: aBlock
	root allLeavesDo: [:ea | ea valuesDo: aBlock]! !

!BTree methodsFor: 'enumerating' stamp: 'avi 1/2/2006 16:03'!
from: start do: aBlock
	self from: start to: nil keysAndValuesDo: [:k :v | aBlock value: v]! !

!BTree methodsFor: 'enumerating' stamp: 'avi 1/2/2006 16:14'!
from: start keysAndValuesDo: aBlock
	self from: start to: nil keysAndValuesDo: aBlock! !

!BTree methodsFor: 'enumerating' stamp: 'avi 10/8/2004 18:04'!
from: start to: end do: aBlock
	self from: start to: end keysAndValuesDo: [:k :v | aBlock value: v]! !

!BTree methodsFor: 'enumerating' stamp: 'avi 1/2/2006 16:02'!
from: start to: end keysAndValuesDo: aBlock
	root leavesFrom: start to: end do:
		[:ea |
		ea keysAndValuesDo:
			[:k :v |
			((start isNil or: [k >= start]) and:
				[end isNil or: [k <= end]]) ifTrue:
					[aBlock value: k value: v]]]! !

!BTree methodsFor: 'enumerating' stamp: 'avi 2/24/2004 22:49'!
keysAndValuesDo: aBlock
	root allLeavesDo: [:ea | ea keysAndValuesDo: aBlock]! !

!BTree methodsFor: 'enumerating' stamp: 'avi 4/20/2005 14:29'!
keysDo: aBlock
	root allLeavesDo: [:ea | ea keysDo: aBlock]! !

!BTree methodsFor: 'enumerating' stamp: 'avi 1/2/2006 16:03'!
upTo: end do: aBlock
	self from: nil to: end keysAndValuesDo: [:k :v | aBlock value: v]! !

!BTree methodsFor: 'enumerating' stamp: 'avi 1/2/2006 16:03'!
upTo: end keysAndValuesDo: aBlock
	self from: nil to: end keysAndValuesDo: aBlock! !

!BTree methodsFor: 'enumerating' stamp: 'pmm 10/12/2005 10:57'!
valuesDo: aBlock
	root allLeavesDo: [:ea | ea valuesDo: aBlock]! !

!BTree methodsFor: 'copying' stamp: 'avi 5/1/2005 14:51'!
emptyCopy
	^ BTree keys: root keyArray emptyCopy! !

!BTree methodsFor: 'initialize-release' stamp: 'lr 4/15/2009 09:50'!
initializeWithKeys: aBTreeKeys
	aBTreeKeys size > 3 ifFalse: [self error: 'The BTree order must be at least 4'].
	root _ BTreeLeafNode keys: aBTreeKeys! !

!BTree methodsFor: 'private' stamp: 'avi 2/23/2004 21:21'!
root
	^ root! !

!BTree class methodsFor: 'as yet unclassified' stamp: 'avi 3/2/2004 15:03'!
keys: aBTreeKeys
	^ self basicNew initializeWithKeys: aBTreeKeys! !

!BTree class methodsFor: 'as yet unclassified' stamp: 'avi 2/25/2004 12:38'!
new
	^ self order: 5! !

!BTree class methodsFor: 'as yet unclassified' stamp: 'avi 2/26/2004 00:01'!
order: aNumber
	^ self keys: (BTreeKeysArray new: aNumber)! !

!WeakValueBTree methodsFor: 'accessing' stamp: 'cmm 3/23/2006 20:37'!
at: key ifAbsent: aBlock
	^ (super
		at: key
		ifAbsent: [ ^ aBlock value ]) at: 1! !

!WeakValueBTree methodsFor: 'accessing' stamp: 'jpb 5/12/2021 11:48:21'!
at: anObject ifPresent: oneArgBlock ifAbsent: zeroArgBlock 
	| current uniqueObject |
	uniqueObject _ ''.
	^ (current _ self
		at: anObject
		ifAbsent: [ uniqueObject ]) == uniqueObject
		ifTrue: [ zeroArgBlock value ]
		ifFalse: [ oneArgBlock value: current ]! !

!WeakValueBTree methodsFor: 'accessing' stamp: 'cmm 3/23/2006 21:26'!
at: key put: anObject
	super
		at: key
		put: (WeakArray with: anObject).
	^ anObject! !

!WeakValueBTree methodsFor: 'accessing' stamp: 'cmm 3/23/2006 19:15'!
copy
	| answer |
	answer _ self class new.
	self keysAndValuesDo: 
		[ : eachKey : eachValue | 
		answer 
			at: eachKey 
			put: eachValue ].
	^ answer! !

!WeakValueBTree methodsFor: 'enumerating' stamp: 'cmm 3/23/2006 21:42'!
do: aBlock
	self keysAndValuesDo:
		[ : eachKey : eachValue |
		aBlock value:
			(Association
				key: eachKey
				value: eachValue) ]! !

!WeakValueBTree methodsFor: 'enumerating' stamp: 'cmm 3/23/2006 19:41'!
keysAndValuesDo: aBlock
	super keysAndValuesDo:
		[ : eachKey : eachValue |
		aBlock
			value: eachKey
			value: (eachValue at: 1) ]! !

!WeakValueBTree methodsFor: 'enumerating' stamp: 'cmm 3/23/2006 21:47'!
select: aBlock
	| answer |
	answer _ self species new.
	self keysAndValuesDo:
		[ : eachKey : eachValue |
		(aBlock value: eachValue) ifTrue: 
			[answer
				at: eachKey
				put: eachValue ] ].
	^ answer! !

!DateTree methodsFor: 'accessing' stamp: 'bmp 9/13/2005 22:25'!
at: aTimepan
	^ self at: aTimepan ifAbsent: [ self error: aTimepan printString, ' not found' ]! !

!DateTree methodsFor: 'accessing' stamp: 'bmp 9/13/2005 22:25'!
at: aTimespan ifAbsent: aBlock
	^ events at: aTimespan ifAbsent: aBlock! !

!DateTree methodsFor: 'accessing' stamp: 'bmp 9/14/2005 02:48'!
at: aTimespan ifAbsentPut: exceptionBlock
	^ self at: aTimespan ifAbsent: [ self at: aTimespan put: exceptionBlock value ].! !

!DateTree methodsFor: 'accessing' stamp: 'lr 10/8/2009 17:18'!
endTimes
	^ endTimes! !

!DateTree methodsFor: 'accessing' stamp: 'lr 10/8/2009 14:37'!
first
	| timespans |
	timespans _ startTimes first 
		asSortedCollection: [ :a :b | a start <= b start ].
	^ events 
		at: timespans first
		ifAbsent: [ self errorEmptyCollection ]! !

!DateTree methodsFor: 'accessing' stamp: 'lr 4/15/2009 09:50'!
keys
	| keys |
	keys _ Set new.
	self keysAndValuesDo: [:k :v | keys add: k].
	^ keys! !

!DateTree methodsFor: 'accessing' stamp: 'lr 10/8/2009 14:28'!
last
	| timespans |
	timespans _ endTimes last 
		asSortedCollection: [ :a :b | a end <= b end ].
	^ events 
		at: timespans last
		ifAbsent: [ self errorEmptyCollection ]! !

!DateTree methodsFor: 'accessing' stamp: 'lr 10/8/2009 17:18'!
startTimes
	^ startTimes! !

!DateTree methodsFor: 'adding' stamp: 'bmp 9/14/2005 02:49'!
at: aTimespan put: anObject
	| timespans |
	timespans _ startTimes at: aTimespan start ifAbsentPut: [ Set new ].
	timespans add: aTimespan.
	timespans _ endTimes at: aTimespan end ifAbsentPut: [ Set new ].
	timespans add: aTimespan.
	events at: aTimespan put: anObject.
	^ anObject! !

!DateTree methodsFor: 'adding' stamp: 'bmp 9/14/2005 03:08'!
removeKey: aTimespan
	self removeKey: aTimespan ifAbsent: [ self error: aTimespan printString, ' not found' ].! !

!DateTree methodsFor: 'adding' stamp: 'ac 11/17/2005 15:14'!
removeKey: aTimespan ifAbsent: exceptionBlock
	| set |
	events removeKey: aTimespan ifAbsent: [^ exceptionBlock].
	
	"If we got here, we should be able to remove the start and end caches too."
	set _ (startTimes at: aTimespan start) remove: aTimespan; yourself.
	set isEmpty ifTrue: [ startTimes removeKey: aTimespan start ].
	set _ (endTimes at: aTimespan end) remove: aTimespan; yourself.
	set isEmpty ifTrue: [ endTimes removeKey: aTimespan end ].! !

!DateTree methodsFor: 'enumerating' stamp: 'lr 4/15/2009 09:50'!
between: startDateAndTime and: endDateAndTime
	"I return all events between a given start date and end date."
	
	| values |
	values _ TreeSet new.
	self between: startDateAndTime and: endDateAndTime keysAndValuesDo: [ :key :val | values add: val ].
	^ values! !

!DateTree methodsFor: 'enumerating' stamp: 'bmp 9/15/2005 17:35'!
between: startDateAndTime and: endDateAndTime keysAndValuesDo: aBlock
	| startOrLater endOrEarlier |

	"This adds stuff really slowly; I'm not sure what to do about that yet"
	startOrLater _ TreeSet new.
	endOrEarlier _ TreeSet new.
	startTimes from: DateAndTime epoch to: endDateAndTime do: [ :ea | endOrEarlier addAll: ea ].
	"Kluge to make the ranges work."
	endTimes from: startDateAndTime to: (DateAndTime year: 2029 day: 1) do: [ :ea | startOrLater addAll: ea ].
	(startOrLater intersection: endOrEarlier) do: [ :ea | aBlock value: ea value: (self at: ea) ].! !

!DateTree methodsFor: 'enumerating' stamp: 'bmp 9/13/2005 21:40'!
do: aBlock
	events do: aBlock.! !

!DateTree methodsFor: 'enumerating' stamp: 'bmp 9/13/2005 22:46'!
during: aTimespan
	"Return all events occuring within a given timespan"
	
	^ self between: aTimespan start and: aTimespan end! !

!DateTree methodsFor: 'enumerating' stamp: 'bmp 9/14/2005 02:50'!
keysAndValuesDo: aBlock
	events keysAndValuesDo: aBlock.! !

!DateTree methodsFor: 'enumerating' stamp: 'bmp 9/13/2005 22:45'!
within: aDuration of: aDateAndTime
	"Returns all events within the given duration from the given date, in either direction."
	
	^ self between: (aDateAndTime - aDuration) and: (aDateAndTime + aDuration)! !

!DateTree methodsFor: 'initialize-release' stamp: 'avi 10/15/2005 19:56'!
initialize
	startTimes _ BTree new.
	endTimes _ BTree new.
	events _ Dictionary new! !

!TSTree methodsFor: 'accessing' stamp: 'avi 9/15/2004 21:11'!
at: aString
	^ self at: aString ifAbsent: [self error: aString printString, ' not found']! !

!TSTree methodsFor: 'accessing' stamp: 'avi 9/7/2005 21:55'!
at: aString ifAbsent: exceptionBlock
	aString isEmpty ifTrue: [^ emptyValue ifNil: [exceptionBlock value]].
	root ifNil: [^ exceptionBlock value].
	
	^ (root lookupString: aString startingAt: 1) ifNil: exceptionBlock! !

!TSTree methodsFor: 'accessing' stamp: 'avi 9/15/2004 21:11'!
at: aString ifAbsentPut: exceptionBlock
	^ self at: aString ifAbsent: [self at: aString put: exceptionBlock value]! !

!TSTree methodsFor: 'accessing' stamp: 'lr 4/15/2009 09:50'!
at: aString put: anObject
	aString isEmpty ifTrue: [^ emptyValue _ anObject].
	root ifNil: [root _ TSTreeNode key: aString first].
	root lookupString: aString startingAt: 1 insert: anObject.
	^ anObject! !

!TSTree methodsFor: 'accessing' stamp: 'avi 8/11/2005 13:33'!
keys
	^ Array streamContents: [:s | self keysAndValuesDo: [:k :v | s nextPut: k]]! !

!TSTree methodsFor: 'accessing' stamp: 'avi 12/13/2004 13:09'!
removeKey: aString
	^ self removeKey: aString ifAbsent: [self error: 'Could not find key ', aString printString]! !

!TSTree methodsFor: 'accessing' stamp: 'lr 4/15/2009 09:50'!
removeKey: aString ifAbsent: errorBlock
	| val |
	^ root ifNil: errorBlock
		ifNotNil:
			[val _ root removeString: aString startingAt: 1.
			root canBeCulled ifTrue: [root _ nil].
			val ifNil: errorBlock]! !

!TSTree methodsFor: 'accessing' stamp: 'avi 9/15/2004 21:34'!
values
	^ Array streamContents: [:s | self do: [:ea | s nextPut: ea]]! !

!TSTree methodsFor: 'enumerating' stamp: 'jpb 5/12/2021 11:39:09'!
do: aBlock
	emptyValue ifNotNil: aBlock.
	root ifNotNil: [root do: aBlock]! !

!TSTree methodsFor: 'enumerating' stamp: 'avi 9/7/2005 21:55'!
keysAndValuesDo: aBlock
	emptyValue ifNotNil:
		[aBlock value: '' value: emptyValue].
	root ifNotNil: [root keysAndValuesDo: aBlock prefix: '']! !

!TSTree methodsFor: 'matching' stamp: 'avi 9/15/2004 21:59'!
matchesForPrefix: aString
	^ Array streamContents:
		[:s |
		self matchesForPrefix: aString do:
			[:match |
			s nextPut: match]]! !

!TSTree methodsFor: 'matching' stamp: 'avi 9/22/2004 00:57'!
matchesForPrefix: aString do: aBlock
	aString isEmpty
		ifTrue: [self do: aBlock]
		ifFalse: [root ifNotNil: [root matchesForPrefix: aString startingAt: 1 do: aBlock]]! !

!TSTree methodsFor: 'matching' stamp: 'avi 9/15/2004 15:21'!
matchesForString: aString distance: aNumber
	^ Array streamContents:
		[:s |
		self matchesForString: aString distance: aNumber do:
			[:match |
			s nextPut: match]]! !

!TSTree methodsFor: 'matching' stamp: 'avi 10/20/2004 21:26'!
matchesForString: aString distance: aNumber do: aBlock
	self matchesForString: aString distance: aNumber limitNodes: nil do: aBlock! !

!TSTree methodsFor: 'matching' stamp: 'lr 4/15/2009 09:50'!
matchesForString: aString distance: aNumber limitNodes: maxNodes do: aBlock
	| nodeCount |
	nodeCount _ 0.
	aString isEmpty ifTrue: [^ self].
	root isNil ifTrue: [^ self].
	root matchesForString: aString startingAt: 1 distance: aNumber do: aBlock nodesDo:
		[:ea |
		nodeCount _ nodeCount + 1.
		nodeCount = maxNodes ifTrue: [^ self]]! !

!TreeSet methodsFor: 'public' stamp: 'lr 4/15/2009 09:50'!
add: anObject
	| key bucket |
	key _ self keyForValue: anObject.
	bucket _ tree at: key ifAbsent: [#()].
	(self bucket: bucket includes: anObject) ifFalse:
		[tree at: key put: (bucket copyWith: anObject)].! !

!TreeSet methodsFor: 'public' stamp: 'lr 4/15/2009 09:50'!
addAll: aCollection
	| oldVals newVals combined |
	(self isCompatibleTreeSetWith: aCollection) ifFalse: [^ super addAll: aCollection].

	aCollection tree keysAndValuesDo:
		[:key :vals |
		oldVals _ tree at: key ifAbsent: [#()].
		newVals _ oldVals isEmpty
					ifTrue: [vals]
					ifFalse: [vals reject: [:ea | self bucket: oldVals includes: ea]].
		newVals isEmpty ifFalse:
			[combined _ oldVals isEmpty ifTrue: [newVals] ifFalse: [oldVals, newVals].
			tree at: key put: combined]]! !

!TreeSet methodsFor: 'public' stamp: 'lr 4/15/2009 09:50'!
atIndex: index
	| count |
	count _ 0.
	self do: [:ea | (count _ count + 1) = index ifTrue: [^ ea]].
	self error: 'No item at index: ', index asString.! !

!TreeSet methodsFor: 'public' stamp: 'avi 3/2/2004 11:16'!
do: aBlock
	tree do: [:bucket | bucket do: aBlock]! !

!TreeSet methodsFor: 'public' stamp: 'lr 4/15/2009 09:50'!
equalitySelector
	^ equalsKey ifNil: [equalsKey _ self class defaultEqualitySelector]! !

!TreeSet methodsFor: 'public' stamp: 'ac 5/17/2005 14:07'!
first
	^ self atIndex: 1! !

!TreeSet methodsFor: 'public' stamp: 'lr 4/15/2009 09:50'!
includes: anObject
	| bucket |
	bucket _  tree at: (self keyForValue: anObject) ifAbsent: [^ false].
	^ self bucket: bucket includes: anObject! !

!TreeSet methodsFor: 'public' stamp: 'lr 4/15/2009 09:50'!
intersection: aCollection
	| newTree intersection |
	(self isCompatibleTreeSetWith: aCollection) ifFalse: [^ super intersection: aCollection].

	newTree _ tree emptyCopy.
	
	tree commonKeysWith: aCollection tree keysAndValuesDo:
		[:key :left :right |
		intersection _ left select: [:ea | self bucket: right includes: ea].
		intersection isEmpty ifFalse: [newTree at: key put: intersection]].
	
	^ TreeSet basicNew setTree: newTree sortSelector: self sortSelector equalitySelector: self equalitySelector! !

!TreeSet methodsFor: 'public' stamp: 'avi 5/1/2005 14:10'!
isTreeSet
	^ true! !

!TreeSet methodsFor: 'public' stamp: 'lr 4/15/2009 09:50'!
remove: anObject
	| key bucket |
	key _ self keyForValue: anObject.
	bucket _ tree at: key ifAbsent: [^ self].
	(self bucket: bucket includes: anObject) ifTrue:
		[bucket _ bucket reject: [:ea | self value: anObject matches: ea].
		bucket isEmpty
			ifTrue: [tree removeKey: key]
			ifFalse: [tree at: key put: bucket]]! !

!TreeSet methodsFor: 'public' stamp: 'lr 5/3/2005 17:24'!
remove: anObject ifAbsent: aBlock
	self remove: anObject.! !

!TreeSet methodsFor: 'public' stamp: 'lr 4/15/2009 09:50'!
removeAllSuchThat: aBlock
	| changes remove |
	changes _ Dictionary new.
	tree keysAndValuesDo:
		[:key :bucket |
		remove _ bucket select: aBlock.
		remove isEmpty ifFalse:
			[changes at: key put: (bucket copyWithoutAll: remove)]].
	changes keysAndValuesDo:
		[:key :bucket |
		tree at: key put: bucket]! !

!TreeSet methodsFor: 'public' stamp: 'ac 5/17/2005 14:07'!
second
	^ self atIndex: 2! !

!TreeSet methodsFor: 'public' stamp: 'avi 4/21/2005 02:45'!
sortSelector
	^ sortKey! !

!TreeSet methodsFor: 'private' stamp: 'avi 5/21/2004 12:18'!
bucket: anArray includes: anObject
	^ anArray anySatisfy: [:ea | (self value: anObject matches: ea)]! !

!TreeSet methodsFor: 'private' stamp: 'avi 5/1/2005 15:26'!
isCompatibleTreeSetWith: aCollection
	aCollection isTreeSet ifFalse: [^ false].
	aCollection equalitySelector = self equalitySelector ifFalse: [^ false].
	aCollection sortSelector = self sortSelector ifFalse: [^ false].
	^ true! !

!TreeSet methodsFor: 'private' stamp: 'avi 4/20/2005 14:16'!
tree
	^ tree! !

!TreeSet methodsFor: 'private' stamp: 'lr 4/15/2009 09:50'!
tree: aBTree
	tree _ aBTree! !

!TreeSet methodsFor: 'initialize-release' stamp: 'avi 5/1/2005 14:52'!
initializeWithKeys: aBtreeKeys sortSelector: sortSymbol equalitySelector: equalsSymbol
	self setTree: (BTree keys: aBtreeKeys) sortSelector: sortSymbol equalitySelector: equalsSymbol! !

!TreeSet methodsFor: 'initialize-release' stamp: 'lr 4/15/2009 09:50'!
setTree: aBTree sortSelector: sortSymbol equalitySelector: equalsSymbol
	tree _ aBTree.
	sortKey _ sortSymbol.
	equalsKey _ equalsSymbol! !

!TreeSet methodsFor: 'plugs' stamp: 'avi 3/2/2004 15:01'!
keyForValue: anObject
	^ anObject perform: sortKey! !

!TreeSet methodsFor: 'plugs' stamp: 'avi 5/1/2005 15:51'!
value: anObject matches: otherObject
	^ anObject perform: self equalitySelector with: otherObject! !

!TreeSet class methodsFor: 'as yet unclassified' stamp: 'avi 5/1/2005 14:56'!
defaultEqualitySelector
	^ #=! !

!TreeSet class methodsFor: 'as yet unclassified' stamp: 'avi 5/1/2005 14:57'!
defaultKeys
	^ BTreeKeysArray new: 64! !

!TreeSet class methodsFor: 'as yet unclassified' stamp: 'avi 5/1/2005 14:56'!
defaultSortSelector
	^ #hash! !

!TreeSet class methodsFor: 'as yet unclassified' stamp: 'avi 5/1/2005 14:43'!
keys: aBtreeKeys sortSelector: sortSymbol equalitySelector: equalsSymbol
	^ self basicNew initializeWithKeys: aBtreeKeys sortSelector: sortSymbol equalitySelector: equalsSymbol! !

!TreeSet class methodsFor: 'as yet unclassified' stamp: 'avi 5/1/2005 14:55'!
new
	^ self sortBy: self defaultSortSelector! !

!TreeSet class methodsFor: 'as yet unclassified' stamp: 'avi 5/1/2005 14:56'!
sortBy: aSymbol
	^ self sortSelector: aSymbol equalitySelector: self defaultEqualitySelector! !

!TreeSet class methodsFor: 'as yet unclassified' stamp: 'avi 5/1/2005 14:57'!
sortSelector: sortSymbol equalitySelector: equalsSymbol
	^ self keys: self defaultKeys sortSelector: sortSymbol equalitySelector: equalsSymbol! !

!MaHashIndexTester methodsFor: 'private actions' stamp: 'cmm 4/28/2005 22:08'!
addKey: keyInteger

	| value |
	self index
		add: (value _ self getNextValue)
		at: keyInteger.
	sortedKeys add: keyInteger.
	(values
		at: keyInteger
		ifAbsentPut: [ OrderedCollection new ])
			add: value.
	predictedSize _ predictedSize + 1.
	^ value! !

!MaHashIndexTester methodsFor: 'private actions'!
addKeys: anArray

	^anArray collect: [ :each | self addKey: each ]
! !

!MaHashIndexTester methodsFor: 'private actions' stamp: 'cmm 9/10/2006 00:47'!
keySizes: keySizesArray withRecordSizes: recordSizesArray run: selectorSymbol

	keySizesArray do:
		[ : eachKeySize |
		recordSizesArray do:
			[ : eachRecordSize |
			{ self 
				newInMemoryHashIndexWithKeySize: eachKeySize
				recordSize: eachRecordSize.
			self
				newHashIndexWithKeySize: eachKeySize
				recordSize: eachRecordSize. }

				do:
					[ : eachIndex |
					index _ eachIndex.
					self
						setUp ;
						run: selectorSymbol keySize: eachKeySize recordSize: eachRecordSize ;
						tearDown ] ] ]! !

!MaHashIndexTester methodsFor: 'private actions'!
removeKey: keyInteger

	^self
		removeKey: keyInteger
		at: 1
! !

!MaHashIndexTester methodsFor: 'private actions' stamp: 'cmm 4/28/2005 22:06'!
removeKey: keyInteger at: anInteger

	self index
		remove: ((values at: keyInteger) removeAt: anInteger)
		at: keyInteger.
	sortedKeys remove: keyInteger.
	(values at: keyInteger) isEmpty ifTrue: [ values removeKey: keyInteger ].
	predictedSize _ predictedSize - 1
! !

!MaHashIndexTester methodsFor: 'private actions' stamp: 'cmm 11/28/2002 00:15'!
removeKeys: aCollection

	aCollection do: [ :each | self removeKey: each ]! !

!MaHashIndexTester methodsFor: 'private actions' stamp: 'cmm 8/19/2007 22:08'!
run: selectorSymbol keySize: keySize recordSize: recordSize 
	self notify: 
		(String streamContents: 
			[ : stream | 
			stream
				nextPutAll: 'keysize ' ;
				maPrint: keySize ;
				nextPutAll: ' record size ' ;
				maPrint: recordSize ;
				nextPutAll: ' completed in ' ;
				nextPutAll: [ self perform: selectorSymbol ] durationToRun printString ])! !

!MaHashIndexTester methodsFor: 'private accessing' stamp: 'cmm 4/28/2005 22:03'!
allValues

	^ values
		inject: OrderedCollection new
		into:
			[ : coll : each |
			coll
				addAll: each;
				yourself ]! !

!MaHashIndexTester methodsFor: 'private accessing' stamp: 'cmm 4/28/2005 22:04'!
getNextValue

	^ nextValue _ nextValue + 1! !

!MaHashIndexTester methodsFor: 'private accessing' stamp: 'cmm 1/30/2002 12:48'!
index

	^index
! !

!MaHashIndexTester methodsFor: 'private accessing' stamp: 'cmm 4/11/2005 10:58'!
indexFileNameForKeySize: keySize recordSize: recordSize

	^ self environmentDirectory fullNameFor: 'k', keySize printString, 'r', recordSize printString, '.', MaHashIndex suggestedFileExtension! !

!MaHashIndexTester methodsFor: 'private accessing' stamp: 'cmm 10/18/2014 15:01'!
indexKeys

	^(self index
		upTo: predictedSize*2
		keysFrom: 0) copy! !

!MaHashIndexTester methodsFor: 'private accessing' stamp: 'cmm 10/18/2014 15:03'!
indexValues

	^ (self index
		upTo: predictedSize*2
		keysAndValuesFrom: self index lowestPossibleKey
		to: self index highestPossibleKey
		startingAt: 1) last copy! !

!MaHashIndexTester methodsFor: 'overriding' stamp: 'cmm 2/11/2011 16:20'!
defaultTimeout
"Timeouts on tests, ain't it great?!!"
	^ 99 days asSeconds! !

!MaHashIndexTester methodsFor: 'accessing' stamp: 'cmm 8/30/2006 16:36'!
keyAndRecordSizesToTest

	^#(16 24 32 40 48 56 64 96 128 160 192 224 256) -> #(2 4 8 16 32 64 128)! !

!MaHashIndexTester methodsFor: 'private creation' stamp: 'cmm 3/20/2009 18:50'!
newHashIndexWithKeySize: keySize recordSize: recordSize
	| filename |
	self notify: 'creating ',
		(filename _ self
			indexFileNameForKeySize: keySize
			recordSize: recordSize), '..'.
	self deleteFilesNamed: { filename }.
	^ MaHashIndex
		createNamed: filename
		keySize: keySize
		valueSize: 48 "MaObjectBuffer oidSize"
		recordSize: recordSize! !

!MaHashIndexTester methodsFor: 'private creation' stamp: 'cmm 3/20/2009 18:49'!
newInMemoryHashIndexWithKeySize: keySize recordSize: recordSize 
	self notify: 'creating in-memory with keySize: ' , keySize printString , ' recordSize: ' , recordSize printString , '.'.
	^ MaHashIndex 
		newWithKeySize: keySize
		valueSize: 48 "MaObjectBuffer oidSize"
		recordSize: recordSize	! !

!MaHashIndexTester methodsFor: 'private tests' stamp: 'cmm 7/26/2012 20:16'!
notify: aString
	Transcript cr; show: aString! !

!MaHashIndexTester methodsFor: 'private tests' stamp: 'cmm 10/18/2014 17:05'!
verifyIndex

	self shouldnt: [ index hasAnomalies ].
	self
		verifySize;
		verifyKeys;
		verifyKeyValuePairs;
		verifyKeyQuantities;
		verifyIndexPositions ;
		verifyMidIndexAccess! !

!MaHashIndexTester methodsFor: 'private tests' stamp: 'cmm 4/28/2005 22:03'!
verifyIndexPositions

	| allValues |

	allValues _ self allValues.
	(self index
		upTo: allValues size
		keysAndValuesFromIndex: 1) last
			maConsistsOf: allValues! !

!MaHashIndexTester methodsFor: 'private tests' stamp: 'cmm 4/17/2005 22:07'!
verifyInsertionOfDuplicateKey: keyInteger
	"Test the insertion of a many of the same key, requiring the
	receivers index to zoom all the way into that key and getting
	into the inverted records."

	25 timesRepeat: [ self addKey: keyInteger ].
	self should:
		[ (self index
			upTo: 100
			at: keyInteger) last
				size = 25 ].
	275 timesRepeat: [ self addKey: keyInteger ].
	self should:
		[ (self index
			upTo: 350
			at: keyInteger) last
				size = 300 ]
! !

!MaHashIndexTester methodsFor: 'private tests' stamp: 'cmm 11/3/2014 15:35'!
verifyKeyQuantities
	self assert:
		(sortedKeys allSatisfy:
			[ : each | (self index occurrencesOf: each) = (values at: each) size ]).
	self assert:
		((sortedKeys isEmpty and: [ self index size = 0 ]) or:
			[ self index size =
				(self index
					numberOfEntriesFrom: 0
					to: sortedKeys last) ])! !

!MaHashIndexTester methodsFor: 'private tests' stamp: 'cmm 10/18/2014 15:24'!
verifyKeyValuePairs
	| keysAndValues |
	keysAndValues _ self index
		upTo: predictedSize * 2
		keysAndValuesFromIndex: 1.
	self assert: keysAndValues first size = self allValues size.
	keysAndValues first
		with: keysAndValues second
		do:
			[ : key : value | self assert: ((values at: key) includes: value) ]! !

!MaHashIndexTester methodsFor: 'private tests'!
verifyKeys

	self should: [ self indexKeys maMatchesElementsOf: sortedKeys ]
! !

!MaHashIndexTester methodsFor: 'private tests' stamp: 'jpb 5/9/2021 13:18:52'!
verifyMidIndexAccess
	| size |
	(size _ self index size)
		to: 1
		by: (size//100 max: 1) negated
		do:
			[ : n | | count |
			count _ 0.
			self index
				entriesFromIndex: n
				do:
					[ : rec : bax : level | count _ count + 1 ]
				until:
					[ : rec : bax : level | false ].
			self assert: count = (size-n+1) ]! !

!MaHashIndexTester methodsFor: 'private tests' stamp: 'cmm 10/18/2014 16:09'!
verifySize
	| size count |
	self assert: (size _ self index size) = predictedSize.
	count _ 0.
	self index
		entriesFromIndex: 1
		do:
			[ : rec : bax : level | count _ count + 1 ]
		until:
			[ : rec : bax : level | false ].
	self assert: size = count! !

!MaHashIndexTester methodsFor: 'tests' stamp: 'cmm 11/3/2014 15:38'!
runFullDepthKeyInsertionThenPullOut
	self
		addKeys: (64000 to: 0 by: -1) ;
		verifyIndex;
		"remove only half of them in the worst possible way and verify."
		removeKeys: (0 to: 31999) ;
		verifyIndex;
		"Remove the remaining and verify."
		removeKeys: (32000 to: 64000) ;
		verifyIndex ;
		"Now reuse some of those slots with a subset of the same key range"
		addKeys: (35000 to: 25001 by: -1) ;
		verifyIndex;
		"Add some back once again."
		removeKeys: (28001 to: 32000) ;
		verifyIndex! !

!MaHashIndexTester methodsFor: 'tests' stamp: 'cmm 11/4/2014 16:29'!
runInsertionOfEndpointKeys
	"This tests keys that fall at the endpoints of records.  It covers the lowest and highest keys."
	self
		verifyInsertionOfDuplicateKey: 1 ;
		verifyInsertionOfDuplicateKey: 0 ;
		verifyInsertionOfDuplicateKey: (2 raisedTo: index keySize) - 1;
		verifyInsertionOfDuplicateKey: (2 raisedTo: index keySize) - 2.
	self verifyIndex! !

!MaHashIndexTester methodsFor: 'tests' stamp: 'cmm 3/10/2004 01:09'!
runKeyInsertionIntoBroadRecords
	"A 'broad' record is one whose key range is greater than its
	numberOfEntries, thus it cannot hold duplicate keys.
	This test adds keys in an order that requires the index to
	re-sequence keys across multiple broad records."

	self
		addKeys: #(500 450 470 550 400);
		verifyIndex;
		removeKey: 450;
		verifyIndex;
		addKey: 471;
		verifyIndex.
	25 timesRepeat: [ self addKey: 470 ].
	self verifyIndex.
	25 timesRepeat: [ self addKey: 469 ].
	self verifyIndex.
	1
		to: 25
		do:
			[ :each |
			each even
				ifTrue:
					[ self
						removeKey: 469
						at: each // 2 ] ].
	self verifyIndex! !

!MaHashIndexTester methodsFor: 'tests' stamp: 'jpb 5/10/2021 06:05:27'!
testFullDepthKeyInsertionThenPullOut
	"Takes hours to days, depending on disk io and CPU, last run took 4-8 hours"
	true ifTrue: [ self assert: true. ^self "skipped" ].
	
	self
		keySizes: self keyAndRecordSizesToTest key
		withRecordSizes: self keyAndRecordSizesToTest value
		run: #runFullDepthKeyInsertionThenPullOut! !

!MaHashIndexTester methodsFor: 'tests' stamp: 'jpb 5/10/2021 06:11:58'!
testInsertionOfEndpointKeys
	"This test is really slowish, takes about 5 minutes"
	true ifTrue: [ self assert: true. ^self "skipped" ].
	
	self
		keySizes: self keyAndRecordSizesToTest key
		withRecordSizes: self keyAndRecordSizesToTest value
		run: #runInsertionOfEndpointKeys! !

!MaHashIndexTester methodsFor: 'tests' stamp: 'jpb 5/10/2021 06:12:04'!
testKeyInsertionIntoBroadRecords
	"Takes about one minute on a recent system with a SSD"
	true ifTrue: [ self assert: true. ^self "skipped" ].
	
	self
		keySizes: self keyAndRecordSizesToTest key
		withRecordSizes: self keyAndRecordSizesToTest value
		run: #runKeyInsertionIntoBroadRecords! !

!MaHashIndexTester methodsFor: 'private framework' stamp: 'jpb 5/9/2021 12:59:31'!
setUp

	predictedSize _ 0.
	values _ Dictionary new.
	sortedKeys _ SortedCollection new.
	nextValue _ 2 raisedTo: 17  "some arbitrary number"! !

!MaHashIndexTester methodsFor: 'private framework' stamp: 'cmm 4/16/2002 23:43'!
tearDown

	index ifNotNil: [ index close ]
! !

!BTreeTest methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
assertConsistent: aBTree
	| depths root |
	root _ aBTree root.
	
 " http://www.cs.umbc.edu/~woodcock/cmsc341/btree/defn.html

A B-Tree of order m is a search tree, where the data 
  (or pointers to it) is stored at the leaves, such that:

1) the root is either a leaf (as well--i.e. the tree is 
     a single node) or has between 2 and m children"
	
	self assert: (root isLeaf or: [root values size between: 2 and: aBTree order]).
	
"  2) all other (non-root) nodes have at least m/2 children,
     but no more than m children"

	root allChildrenDo: [:ea | self assert: (ea values size between: (aBTree order // 2) and: aBTree order)]. 

"  3) all leaves are at the same depth"

	depths _ Set new.
	root withAllChildrenDo: [:ea | ea isLeaf ifTrue: [depths add: ea depth]].
	self assert: depths size = 1.! !

!BTreeTest methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
assertSorted: aTree
	| last |
	last _ nil.
	aTree keysAndValuesDo:
		[:k :v |
		last ifNotNil: [self assert: last < k].
		last _ k]! !

!BTreeTest methodsFor: 'as yet unclassified' stamp: 'avi 2/27/2004 21:58'!
checkTree: tree array: pairArray
	pairArray withIndexDo:
		[:pair :i |
		tree at: pair first put: pair second.
		self assert: tree size = i.
		"self assertConsistent: tree.
		self assertSorted: tree"].
	pairArray shuffled do:
		[:pair |
		self assert: (tree at: pair first) = pair second].
	self assert: tree size = pairArray size.
	self assertConsistent: tree.
	self assertSorted: tree.
	^ tree
	
	 ! !

!BTreeTest methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
checkTree: tree items: count
	| pairArray  |
	pairArray _ ((1 to: count) collect: [:i | Array with: i asString with: i]) shuffled.
	self checkTree: tree array: pairArray! !

!BTreeTest methodsFor: 'as yet unclassified' stamp: 'avi 2/27/2004 21:59'!
checkTreeWithOrder: order items: count
	self checkTree: (BTree order: order) items: count! !

!BTreeTest methodsFor: 'as yet unclassified' stamp: 'avi 2/26/2004 18:08'!
testAddAndRetrieveWithSplit
	self checkTreeWithOrder: 4 items: 5! !

!BTreeTest methodsFor: 'as yet unclassified' stamp: 'avi 2/26/2004 18:08'!
testAddAndRetrieveWithTwoSplits
	self checkTreeWithOrder: 4 items: 17! !

!BTreeTest methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
testCommonKeysDifferentValues
	| large small expectedResults results |
	large _ BTree new.
	1 to: 1000 by: 2 do: [:i | large at: i put: i].
	small _ BTree new.
	2 to: 2000 by: 11 do: [:i | small at: i put: i*2].
	
	expectedResults _ ((-9 to: 1000 by: 22) allButFirst collect: [:i | Array with: i with: i with: i*2]) asOrderedCollection.
	
	results _ OrderedCollection new.
	large commonKeysWith: small keysAndValuesDo:
		[:k :v1 :v2 |
		results add: (Array with: k with: v1 with: v2)].
	self assert: results = expectedResults.
	
	results _ OrderedCollection new.
	small commonKeysWith: large keysAndValuesDo:
		[:k :v1 :v2 |
		results add: (Array with: k with: v2 with: v1)].
	self assert: results = expectedResults! !

!BTreeTest methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
testCommonKeysSameValues
	| large small expectedResults results |
	large _ BTree new.
	1 to: 1000 by: 2 do: [:i | large at: i put: i].
	small _ BTree new.
	2 to: 2000 by: 11 do: [:i | small at: i put: i].
	
	expectedResults _ ((-9 to: 1000 by: 22) allButFirst collect: [:i | Array with: i with: i with: i]) asOrderedCollection.
	
	results _ OrderedCollection new.
	large commonKeysWith: small keysAndValuesDo:
		[:k :v1 :v2 |
		results add: (Array with: k with: v1 with: v2)].
	self assert: results = expectedResults.
	
	results _ OrderedCollection new.
	small commonKeysWith: large keysAndValuesDo:
		[:k :v1 :v2 |
		results add: (Array with: k with: v2 with: v1)].
	self assert: results = expectedResults! !

!BTreeTest methodsFor: 'as yet unclassified' stamp: 'avi 2/24/2004 02:06'!
testEmptyTree
	self checkTreeWithOrder: 5 items: 0! !

!BTreeTest methodsFor: 'as yet unclassified' stamp: 'lr 10/8/2009 13:02'!
testFirstLast
	| tree |
	tree _ BTree new.
	self should: [ tree first ] raise: Error.
	self should: [ tree last ] raise: Error.
	tree at: SmallInteger minVal put: SmallInteger minVal.
	tree at: SmallInteger maxVal put: SmallInteger maxVal.
	10000 timesRepeat: [ 
		tree at: 536870911 atRandom put: nil.
		self assert: tree first = SmallInteger minVal.
		self assert: tree last = SmallInteger maxVal ]! !

!BTreeTest methodsFor: 'as yet unclassified' stamp: 'RamonLeon 5/5/2011 23:26'!
testFound
	| tree found |
	found _ false.
	tree _ BTree new.
	tree at: 1 put: 'foo'.
	tree
		at: 1
		ifPresent: [ :val | 
			self assert: 'foo' equals: val.
			found _ true ].
	self assert: found! !

!BTreeTest methodsFor: 'as yet unclassified' stamp: 'lr 10/8/2009 12:47'!
testLargeTree
	self checkTreeWithOrder: 8 items: 5000
	
! !

!BTreeTest methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
testMissing
	| tree |
	tree _ BTree new.
	tree at: 1 put: 'foo'.
	tree at: 2 put: 'bar'.
	self assert: (tree at: 1 ifAbsent: [42]) = 'foo'.
	self assert: (tree at: 2 ifAbsent: [42]) = 'bar'.
	self assert: (tree at: 3 ifAbsent: [42]) = 42.! !

!BTreeTest methodsFor: 'as yet unclassified' stamp: 'avi 2/24/2004 02:06'!
testMultipleAddAndRetrieve
	self checkTreeWithOrder: 5 items: 3! !

!BTreeTest methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
testRange
	| tree keys |
	tree _ BTree new.
	1 to: 100 by: 2 do: [:ea | tree at: ea put: ea * 2].
	self assert: tree size = 50.
	keys _ OrderedCollection new.
	tree from: 12 to: 19 keysAndValuesDo:
		[:k :v |
		self assert: k * 2 = v.
		keys add: k].
	self assert: keys asArray = #(13 15 17 19).
	self assertSorted: tree.
	self assertConsistent: tree.! !

!BTreeTest methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
testRemoval
	| tree |
	tree _ BTree new.
	#(a b c d e f g h i j k l) do: [:ea | tree at: ea put: ea, '!!'].
	self assert: tree size = 12.
	tree removeKey: #d.
	self assert: tree size = 11.
	self assert: (tree at: #d ifAbsent: [32]) = 32.
	tree removeKey: #k.
	self assert: tree size = 10.
	self assert: (tree at: #k ifAbsent: [32]) = 32.
	self assertSorted: tree.
	self assertConsistent: tree.! !

!BTreeTest methodsFor: 'as yet unclassified' stamp: 'avi 1/11/2005 13:12'!
testRemoval2
	| tree |
	tree _ BTree new.
	1 to: 15 do: [:i | tree at: i put: i].
	1 to: 15 do: [:i | tree removeKey: i].
	self assert: tree isEmpty! !

!BTreeTest methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
testRemoveAll
	| tree |
	tree _ BTree new.
	#(a b c d e f g h i j k l) do: [:ea | tree at: ea put: ea, '!!'].
	self assert: tree size = 12.
	#(a b c d e f g h i j k l)  shuffled do: [:ea | tree removeKey: ea].
	self assert: tree size = 0.

	self assertSorted: tree.
	self assertConsistent: tree.! !

!BTreeTest methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
testRemoveAllFailing
	| tree |
	tree _ BTree new.
	#(a b c d e f g h i j k l) do: [:ea | tree at: ea put: ea, '!!'].
	self assert: tree size = 12.
	#(#c #j #g #i #k #l #f #e #d #h #a #b) do: [:ea | tree removeKey: ea].
	self assert: tree size = 0.

	self assertSorted: tree.
	self assertConsistent: tree.! !

!BTreeTest methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
testRemoveLots
	| tree |
	tree _ BTree new.
	#(a b c d e f g h i j k l) do: [:ea | tree at: ea put: ea, '!!'].
	self assert: tree size = 12.
	#(a c e g i k) shuffled do: [:ea | tree removeKey: ea].
	self assert: tree size = 6.

	self assertSorted: tree.
	self assertConsistent: tree.! !

!BTreeTest methodsFor: 'as yet unclassified' stamp: 'avi 2/24/2004 02:06'!
testSimpleAddAndRetrieve
	self checkTreeWithOrder: 5 items: 1! !

!BTreeTest methodsFor: 'as yet unclassified' stamp: 'avi 2/28/2004 22:01'!
testStoreNil
	self checkTree: BTree new array: {{'x'. 1}. {'y'. nil}}! !

!BTreeTest methodsFor: 'as yet unclassified' stamp: 'avi 2/27/2004 21:59'!
testStringKeys
	self checkTree: (BTree keys: BTreeStringKeys new) items: 100! !

!DateTreeTest methodsFor: 'as yet unclassified' stamp: 'jpb 5/8/2021 09:23:35'!
setUp
	now _ DateAndTime now.
	sixHours _ now + 6 hours.
	tomorrow _ now + 1 days.
	nextWeek _ now + 1 weeks.
	twoWeeks _ now + 2 weeks.
	threeWeeks _ now + 3 weeks.
	
	timespans _ Set new.
	
	timespans add: (Timespan starting: now ending: nextWeek).
	timespans add: (Timespan starting: nextWeek ending: twoWeeks).
	timespans add: (Timespan starting: now ending: tomorrow).
	timespans add: (Timespan starting: sixHours ending: (sixHours + 6 hours)).! !

!DateTreeTest methodsFor: 'as yet unclassified' stamp: 'avi 10/15/2005 19:54'!
testAdd
	| dateRanges timespan |
	dateRanges _ DateTree new.
	timespan _ Timespan starting: now ending: twoWeeks.
	dateRanges at: timespan put: timespan.
	self assert: ((dateRanges at: timespan) = timespan)! !

!DateTreeTest methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
testClipEndRange
	| dateRanges returnedDates expectedDates |
	
	dateRanges _ DateTree new.
	timespans do: [ :ea | dateRanges at: ea put: ea asString ].
	expectedDates _ timespans select: [ :ea | (ea start >= now) and: [ ea end <= nextWeek ]] thenCollect: [ :ea | ea asString ].
	returnedDates _ (dateRanges between: now and: nextWeek) collect: [ :ea | ea asString ].
	self assert: (returnedDates intersection: expectedDates) size = expectedDates size.! !

!DateTreeTest methodsFor: 'as yet unclassified' stamp: 'avi 10/15/2005 19:54'!
testClipStartRange
	| dateRanges returnedDates expectedDates |
	
	dateRanges _ DateTree new.
	timespans do: [ :ea | dateRanges at: ea put: ea asString ].
	expectedDates _ timespans select: [ :ea | (ea start >= nextWeek) and: [ ea end <= twoWeeks ]] thenCollect: [ :ea | ea asString ].
	returnedDates _ (dateRanges between: nextWeek and: twoWeeks) collect: [ :ea | ea asString ].
	self assert: (returnedDates intersection: expectedDates) size = expectedDates size.! !

!DateTreeTest methodsFor: 'as yet unclassified' stamp: 'lr 10/8/2009 14:45'!
testFirstLast
	| dateRanges |
	dateRanges _ DateTree new.
	self should: [ dateRanges first ] raise: Error.
	self should: [ dateRanges last ] raise: Error.
	dateRanges at: (Timespan starting: tomorrow ending: nextWeek) put: #inner.
	self assert: dateRanges first = #inner.
	self assert: dateRanges last = #inner.
	dateRanges at: (Timespan starting: now ending: twoWeeks) put: #outer.
	self assert: dateRanges first = #outer.
	self assert: dateRanges last = #outer.
	dateRanges at: (Timespan starting: tomorrow ending: threeWeeks) put: #last.
	self assert: dateRanges first = #outer.
	self assert: dateRanges last = #last! !

!DateTreeTest methodsFor: 'as yet unclassified' stamp: 'avi 10/15/2005 19:54'!
testInclusiveRange
	| dateRanges returnedDates expectedDates |
	
	dateRanges _ DateTree new.
	timespans do: [ :ea | dateRanges at: ea put: ea asString ].
	expectedDates _ timespans collect: [ :ea | ea asString ].
	returnedDates _ (dateRanges between: now and: threeWeeks) collect: [ :ea | ea asString ].
	self assert: (returnedDates intersection: expectedDates) size = expectedDates size.! !

!DateTreeTest methodsFor: 'as yet unclassified' stamp: 'avi 10/15/2005 19:54'!
testIteration
	| dateRanges |
	
	dateRanges _ DateTree new.
	timespans do: [ :ea | dateRanges at: ea put: ea asString ].
	dateRanges keysAndValuesDo: [ :key :val | self assert: (key asString) = val ].! !

!DateTreeTest methodsFor: 'as yet unclassified' stamp: 'avi 10/15/2005 19:54'!
testMissing
	| dateRanges timespan missingTimespan |
	dateRanges _ DateTree new.
	timespan _ Timespan starting: now ending: twoWeeks.
	missingTimespan _ Timespan starting: now ending: tomorrow.
	dateRanges at: timespan put: timespan.
	self assert: (dateRanges at: missingTimespan ifAbsent: [ false ]) = false.! !

!DateTreeTest methodsFor: 'as yet unclassified' stamp: 'avi 10/15/2005 19:54'!
testRemove
	| dateRanges timespan |
	dateRanges _ DateTree new.
	timespans do: [ :ea | dateRanges at: ea put: ea asString. ].
	timespan _ timespans anyOne.
	self assert: (dateRanges at: timespan) = timespan asString.
	dateRanges removeKey: timespan.
	self assert: ((dateRanges at: timespan ifAbsent: [ false ]) = false)! !

!MaDictionarysTests methodsFor: 'instantiating dict' stamp: 'Igor.Stasenko 5/12/2010 22:10'!
newDict
	^ MaDictionary new! !

!MaDictionarysTests methodsFor: 'tests' stamp: 'Igor.Stasenko 5/12/2010 21:39'!
testAdd
	
	| dict |
	dict _ self newDict.
	dict add: #a -> 1.
	dict add: #b -> 2.
	self assert: (dict at: #a) = 1.
	self assert: (dict at: #b) = 2! !

!MaDictionarysTests methodsFor: 'tests' stamp: 'Igor.Stasenko 5/12/2010 21:39'!
testAddAll
	
	| dict1 dict2 |
	dict1 _ self newDict.
	dict1 at: #a put:1 ; at: #b put: 2. 
	dict2 _ self newDict.
	dict2 at: #a put: 3 ; at: #c put: 4.
	dict1 addAll: dict2.
	self assert: (dict1 at: #a) = 3.
	self assert: (dict1 at: #b) = 2.
	self assert: (dict1 at: #c) = 4.! !

!MaDictionarysTests methodsFor: 'tests' stamp: 'Igor.Stasenko 5/12/2010 21:40'!
testComma
	
	| dict1 dict2 dict3 |
	dict1 _ self newDict.
	dict1 at: #a put:1 ; at: #b put: 2. 
	dict2 _ self newDict.
	dict2 at: #a put: 3 ; at: #c put: 4.
	dict3 _ dict1, dict2.
	self assert: (dict3 at: #a) = 3.
	self assert: (dict3 at: #b) = 2.
	self assert: (dict3 at: #c) = 4.! !

!MaDictionarysTests methodsFor: 'tests' stamp: 'Igor.Stasenko 5/12/2010 21:40'!
testPseudo
	"(self run: #testPseudo)"
	"true and false are valid keys"
	
	| dict1  |
	dict1 _ self newDict.
	self shouldnt: [dict1 at: true put: #true] raise: Error.
	self assert: (dict1 at: true) = #true.
		
	self shouldnt: [dict1 at: false put: #false] raise: Error.
	self assert: (dict1 at: false) = #false.! !

!MaDictionarysTests methodsFor: 'association tests' stamp: 'Igor.Stasenko 5/12/2010 21:40'!
testAddAssociation
	"self run:#testAddAssociation"
	"self debug:#testAddAssociation"
	
	| dict |
	dict _ self newDict.
	dict at: #a put: 1.
	dict at: #b put: 2.
	self assert: (dict at: #a) = 1.
	self assert: (dict at: #b) = 2.
	
	dict at: #a put: 10.
	dict at: #c put: 2.
	
	self assert: (dict at: #a) = 10.
	self assert: (dict at: #b) = 2.
	self assert: (dict at: #c) = 2
	
	! !

!MaDictionarysTests methodsFor: 'association tests' stamp: 'jpb 5/9/2021 12:55:31'!
testAssociationsSelect
	| answer d |
	d _ self newDict.
	d at: (Array with: #hello with: #world)
	  put: #fooBar.
	d at: Smalltalk put: #'Smalltalk is the key'.
	d at: #Smalltalk put: Smalltalk.
	answer _ d
				associations select: [:assoc | assoc key == #Smalltalk
						and: [assoc value == Smalltalk]].
	self
		should: [answer size == 1].
	self
		should: [(answer at: 1) 				value == Smalltalk and: [ (answer at: 1) key == #Smalltalk ]].
		
	answer _ d
				associations select: [:assoc | assoc key == #NoSuchKey
						and: [assoc value == #NoSuchValue]].
					
	self
		should: [answer size == 0]! !

!MaDictionarysTests methodsFor: 'association tests' stamp: 'jpb 5/9/2021 12:47:16'!
testIncludesAssociation
	"self run:#testIncludesAssociation"
	
	| dict |
	dict _ self newDict.
	dict at: #a put: 1.
	dict at: #b put: 2.
	self assert: (dict at: #a) equals: 1.
	self assert: (dict at: #b) equals: 2.
	
	! !

!MaDictionarysTests methodsFor: 'association tests' stamp: 'Igor.Stasenko 5/12/2010 21:40'!
testIncludesAssociationNoValue
	"self run:#testIncludesAssociationNoValue"
	"self debug:#testIncludesAssociationNoValue"
	
	| dict a1 a3 |
	a1 _ Association key: #Italie.
	a3 _ Association key: #France value: 'Paris'.
	
	self assert: (a1 key = #Italie).
	self assert: (a1 value isNil).
	
	dict _ self newDict.
	dict add: a1.
	dict add: a3.
	self assert: (dict includesKey: #France).
	self assert: (dict includesKey: #Italie).
	self assert: (dict at: #Italie) isNil.
	self assert: (dict at: #France) = 'Paris'

	
	
	! !

!MaDictionarysTests methodsFor: 'basic tests' stamp: 'Igor.Stasenko 5/12/2010 21:40'!
testAtError
	"self run: #testAtError"
	
	| dict |
	dict _ self newDict.
	dict at: #a put: 666.
	self shouldnt: [ dict at: #a ] raise: Error.
	self should: [ dict at: #b ] raise: Error.
	
	! !

!MaDictionarysTests methodsFor: 'basic tests' stamp: 'Igor.Stasenko 5/12/2010 21:40'!
testAtIfAbsent
	"self run: #testAtIfAbsent"
	
	| dict |
	dict _ self newDict.
	dict at: #a put: 666.
	
	self assert: (dict at: #a ifAbsent: [nil]) = 666.
	
	self assert: (dict at: #b ifAbsent: [nil]) isNil.

	! !

!MaDictionarysTests methodsFor: 'basic tests' stamp: 'cmm 3/19/2013 16:45'!
testAtPut
	"self run: #testAtPut"
	"self debug: #testAtPut"
	
	| adictionary |
	adictionary _ self newDict.
	adictionary at: #a put: 3.
	self assert: (adictionary at: #a) = 3.
	adictionary at: #a put: 3.
	adictionary at: #a put: 4.
	self assert: (adictionary at: #a) = 4! !

!MaDictionarysTests methodsFor: 'basic tests' stamp: 'cmm 3/19/2013 16:32'!
testOccurrencesOf
	| dict |
	dict _ self newDict
		at: #a put: 1 ;
		at: #b put: 2 ;
		at: #c put: 1 ;
		at: #d put: 3 ;
		at: #z put: nil ;
		 yourself.
	self 
		assert: (dict occurrencesOf: 1) = 2 ;
		assert: (dict occurrencesOf: nil) = 1! !

!MaDictionarysTests methodsFor: 'keys and value tests' stamp: 'Igor.Stasenko 11/8/2010 00:37'!
testCopy

	"self run:#testKeys "
	
	| dict dict2 | 
	dict _ self newDict.
	dict at: 1 put: 1.
	dict at: 2 put: 2.
	dict at: 3 put: 3.
	dict at: 4 put: 4.

	dict2 _ dict copy.
	dict2 associationsDo: [:each | self assert: (dict at: each key) = each value ].
	self assert: dict size= dict2 size.

	! !

!MaDictionarysTests methodsFor: 'keys and value tests' stamp: 'Igor.Stasenko 5/12/2010 21:41'!
testDictionaryConcatenation
	"self run: #testDictionaryConcatenation"
	
	
	| dict1 dict2 dict3 |
	dict1 _ self newDict.
	dict1 at: #a put: 'Nicolas' ; at: #b put: 'Damien'. 
	
	dict2 _ self newDict.
	dict2 at: #a put: 'Christophe' ; at: #c put: 'Anthony'.
	dict3 _ dict1, dict2.
	
	self assert: (dict3 at: #a) = 'Christophe'.
	self assert: (dict3 at: #b) = 'Damien'.
	self assert: (dict3 at: #c) = 'Anthony'.
	

	! !

!MaDictionarysTests methodsFor: 'keys and value tests' stamp: 'cmm 10/13/2014 21:23'!
testKeyAtValue
	"self run: #testKeyAtValue"
	"self debug: #testKeyAtValue"
	
	| dict |
	dict _ self newDict.
	dict at: #a put: 1.
	dict at: #b put: 2.
	dict at: #c put: 1.
	
	self assert: (dict keyAtValue: 2) = #b.
	self assert: (#(c a) includes: (dict keyAtValue: 1)).
	"ugly may be a bug, why not having a set #a and #c"
	
	self should: [dict keyAtValue: 0] raise: Error
	
	
! !

!MaDictionarysTests methodsFor: 'keys and value tests' stamp: 'Igor.Stasenko 5/12/2010 21:41'!
testKeys

	"self run:#testKeys "
	
	| a1 a2  dict | 
	a1 _ Association key: 'France' value: 'Paris'.
	a2 _ Association key: 'Italie' value: 'Rome'.
	dict _ self newDict.
	dict add: a1.
	dict add: a2.
	 		
	self assert: (dict keys size) = 2.
	
	self assert: (dict keys includes: #France)
	
	


	
	! !

!MaDictionarysTests methodsFor: 'keys and value tests' stamp: 'Igor.Stasenko 5/12/2010 21:41'!
testKeysDo
	"self run: #testKeysDo"
	"self debug: #testKeysDo"
	
	| dict res |
	dict _ self newDict.
	
	dict at: #a put: 33.
	dict at: #b put: 66.
	
	res _ OrderedCollection new.
	dict keysDo: [ :each | res add: each].
	
	self assert: res asSet = #(a b) asSet.


	
	! !

!MaDictionarysTests methodsFor: 'keys and value tests' stamp: 'Igor.Stasenko 5/12/2010 21:41'!
testRemoveKey
		"self run:#testRemoveKey "

	| dict | 
	dict _ self newDict.
	dict at: #a put: 1.
	dict at: #b put: 2.
	 
	self assert: (dict keys size) = 2.
	dict removeKey: #a.
	self assert: dict keys size  = 1.

	self should: [dict at: #a] raise: Error.
	self assert: (dict at: #b) = 2


	
	! !

!MaDictionarysTests methodsFor: 'keys and value tests' stamp: 'cmm 3/19/2013 16:44'!
testValues
	"self run:#testValues "
	
	| a1 a2 dict | 
	a1 _ Association key: 'France' value: 'Paris'.
	a2 _ Association key: 'Italie' value: 'Rome'.
	dict _ self newDict.
	dict add: a1.
	dict add: a2.
	 
	self assert: (dict values size ) = 2.
	self assert: (dict values includes: 'Paris').! !

!MaDictionarysTests methodsFor: 'keys and value tests' stamp: 'sig 8/21/2007 23:03'!
testWeakReject

	"self run:#testKeys "
	
	| dict dict2 | 
	dict _ MaWeakValueDictionary new.
	dict at: 1 put: 2.
	dict at: 2 put: 3.
	dict at: 3 put: nil.
	dict at: 4 put: 5.

	dict2 _ dict reject: [:each | each isNil ].	! !

!MaDictionarysTests methodsFor: 'implementation tests' stamp: 'Igor.Stasenko 5/12/2010 21:41'!
testPseudoVariablesAreValidKeys
	"(self run: #testPseudoVariablesAreValidKeys)"
	"true and false are valid keys"
	
	| dict1  |
	dict1 _ self newDict.
	self shouldnt: [dict1 at: true put: #true] raise: Error.
	self assert: (dict1 at: true) = #true.
		
	self shouldnt: [dict1 at: false put: #false] raise: Error.
	self assert: (dict1 at: false) = #false.! !

!MaDictionarysTests methodsFor: 'weak keys' stamp: 'Igor.Stasenko 11/8/2010 00:33'!
testWeakIdentityKeys
	self weakIdentityKeysTestFor: self weakIdentityKeyClass.
"	self weakIdentityKeysTestFor: WeakIdentityKeyDictionary."
! !

!MaDictionarysTests methodsFor: 'weak keys' stamp: 'Igor.Stasenko 11/8/2010 00:29'!
testWeakKeys
	self weakKeysTestFor: self weakKeyClass
"	self weakKeysTestFor: WeakKeyDictionary."
! !

!MaDictionarysTests methodsFor: 'weak keys' stamp: 'sig 7/26/2007 23:52'!
weakIdentityKeysTestFor: aClass
	| d k1 k2 |
	d _ aClass new.

	k1 _ 'x' copy.
	k2 _ k1 copy.

	d at: k1 put: 1.
	d at: k2 put: 2.

	self assert:  (d at: k1) == 1 .
	self assert:  (d at: k2) == 2 .

	d at: k1 put: k2.
	k1 _ nil.
	k2 _ nil.
	Smalltalk garbageCollect.
	self assert:  d size = 2 .
	self assert:  (d includesKey: nil) not.
	self assert: ( d values includes: 2).
	self assert: ( d values includes: 1) not.
	d finalizeValues.
	self assert: d size = 1 .
	Smalltalk garbageCollect.
	d finalizeValues.
	self assert:  d size = 0 .! !

!MaDictionarysTests methodsFor: 'weak keys' stamp: 'Igor.Stasenko 11/8/2010 00:29'!
weakKeyClass
	^ MaWeakKeyDictionary.
! !

!MaDictionarysTests methodsFor: 'weak keys' stamp: 'sig 7/26/2007 23:50'!
weakKeysTestFor: aClass
	| d |
	d _ aClass new.

	d at: 'x' copy put: 'yyy'.
	d at: 'y' put: #zzz.
	Smalltalk garbageCollect.
	self assert:  (d includesKey: 'x') not .
	self assert:  (d at: 'y') = #zzz .
	self assert:  (d includesKey: nil ) not .
	self assert:  d size = 2 .

	d finalizeValues.
	self assert: d size = 1 .
	self assert: (d at: 'y') = #zzz.

	self assert:  (d at: nil put: 'kkk') = 'kkk' .
	self assert:  (d includesKey: nil ) not .! !

!MaDictionarysTests methodsFor: 'as yet unclassified' stamp: 'Igor.Stasenko 11/8/2010 00:39'!
weakIdentityKeyClass
	^ MaWeakIdentityKeyDictionary ! !

!MaDictionaryTest methodsFor: 'basic tests' stamp: 'Igor.Stasenko 5/12/2010 21:41'!
testAtNil
	"(self run: #testAtNil)"
	"nil is a valid key in squeak. In VW nil is not a valid key"
	"Ansi 1.9 p, 168
    		5.7.2.5 Message: at: key put: newElement
    		Synopsis
    			Store newElement at key in the receiver. Answer newElement.
    		Definition: <abstractDictionary>
    		If lookup succeeds for key, then newElement replaces the element previously stored at key.
    		Otherwise, the newElement is stored at the new key. In either case, subsequent successful
    		lookups for key will answer newElement.  Answer newElement.

    		The result is undefined if the key is nil.

		This clearly indicates that different smalltalks where doing different assumptions."
	
	
	
	| dict1  |
	dict1 _ self newDict.
	self shouldnt: [ dict1 at: nil put: #none] raise: Error.
	self assert: (dict1 at: nil) = #none. 
	! !

!MaDictionaryTest methodsFor: 'basic tests' stamp: 'Igor.Stasenko 5/12/2010 21:40'!
testAtPutNil
	"self run: #testAtPut"
	"self debug: #testAtPut"
	
	| dict |
	dict _ self newDict.
	dict at: nil put: 1.
	self assert: (dict at: nil) = 1.
	dict at: #a put: nil.
	self assert: (dict at: #a) = nil.
	dict at: nil put: nil.
	self assert: (dict at: nil) = nil.
	
	
	! !

!MaDictionaryTest methodsFor: 'basic tests' stamp: 'Igor.Stasenko 5/12/2010 21:41'!
testIncludesKey
	"self run:#testIncludesKey"
	"self debug:#testIncludesKey"
	
	| dict a1 a2 a3 |
	a1 _ Association key: 'Italie'.
	a2 _ Association new.
	a3 _ Association key: 'France' value: 'Paris'.
	
	dict _ self newDict.
	dict add: a1 .
	dict add: a2.
	dict add: a3.
	self assert: (dict includesKey: #France).
	self assert: (dict includesKey: 'France').
	self assert: (dict includesKey: #Italie).
	self assert: (dict includesKey: nil).	
		
	self assert: (dict at: 'France' ) = 'Paris'.
! !

!MaDictionaryTest methodsFor: 'keys and value tests' stamp: 'Igor.Stasenko 5/12/2010 21:42'!
testValues
	"self run:#testValues "
	
	| a1 a2 a3 dict | 
	a1 _ Association key: 'France' value: 'Paris'.
	a2 _ Association key: 'Italie' value: 'Rome'.
	dict _ self newDict.
	dict add: a1.
	dict add: a2.
	 
	self assert: (dict values size ) = 2.
	self assert: (dict values includes: 'Paris').
	
	a3 _ Association new.
	dict add: a3.
	self assert: (dict values size ) = 3.
	self assert: (dict values includes: nil).
	
	
	
	
	
	


	
	! !

!MaIdentityKeyWeakValueDictionaryTest methodsFor: 'as yet unclassified' stamp: 'cmm 3/19/2013 15:58'!
newDict
	^ MaWeakIdentityKeyDictionary new! !

!MaWeakIdentityKeyDictionaryTest methodsFor: 'as yet unclassified' stamp: 'Igor.Stasenko 11/8/2010 00:38'!
expectedFailures
	"identity key dictionary behaves differently, so, testIncludesKey is non fit"
	^ #( testIncludesKey)! !

!MaWeakIdentityKeyDictionaryTest methodsFor: 'as yet unclassified' stamp: 'cmm 3/19/2013 16:13'!
newDict
	^ MaWeakIdentityKeyDictionary new! !

!MaWeakIdentityKeyDictionaryTest methodsFor: 'as yet unclassified' stamp: 'cmm 3/19/2013 16:13'!
weakIdentityKeyClass
	^ MaWeakIdentityKeyDictionary! !

!MaWeakIdentityKeyDictionaryTest methodsFor: 'as yet unclassified' stamp: 'cmm 3/19/2013 16:00'!
weakKeyClass
	^ MaWeakKeyDictionary! !

!MaWeakKeyDictionaryTest methodsFor: 'as yet unclassified' stamp: 'cmm 3/19/2013 16:06'!
newDict
	^ MaWeakKeyDictionary new! !

!MaWeakValueDictionaryTest methodsFor: 'as yet unclassified' stamp: 'cmm 3/19/2013 16:13'!
newDict
	^ MaWeakValueDictionary new! !

!MaHashIndexRecordTester methodsFor: 'overriding' stamp: 'cmm 2/11/2011 16:20'!
defaultTimeout
"Timeouts on tests, ain't it great?!!"
	^ 99 days asSeconds! !

!MaHashIndexRecordTester methodsFor: 'private tests' stamp: 'cmm 7/26/2012 20:16'!
notify: aString
	Transcript cr; show: aString! !

!MaHashIndexRecordTester methodsFor: 'private tests' stamp: 'cmm 7/1/2005 16:53'!
verifyConsecutiveContiguousKeyRangesOn: aMaHashIndexRecord

	0
		to: aMaHashIndexRecord numberOfSlots - 2
		do:
			[ : index |
			self should:
				[ aMaHashIndexRecord canHoldDuplicateKeys
					ifTrue:
						[ ((aMaHashIndexRecord lowestKeyAtIndex: index + 1) -
							(aMaHashIndexRecord highestKeyAtIndex: index))
								between: 0
								and: 1 ]
					ifFalse:
						[ ((aMaHashIndexRecord lowestKeyAtIndex: index + 1) -
							(aMaHashIndexRecord highestKeyAtIndex: index)) = 1 ] ] ]! !

!MaHashIndexRecordTester methodsFor: 'private tests' stamp: 'cmm 7/1/2005 17:12'!
verifyEntryIndexAndRangeEndpointCongruenceOn: aMaHashIndexRecord

	0
		to: aMaHashIndexRecord numberOfSlots - 1
		do:
			[ : x |  | key |

			key _ aMaHashIndexRecord lowestKeyAtIndex: x.
			self should:
				[ x
					between: (aMaHashIndexRecord slotIndexFor: key)
					and: (aMaHashIndexRecord highestSlotIndexFor: key) ].

			x > 0 ifTrue:
				[ self should: [ (aMaHashIndexRecord highestSlotIndexFor: key-1) < x ] ].

			key _ aMaHashIndexRecord highestKeyAtIndex: x.
			self should:
				[ x
					between: (aMaHashIndexRecord slotIndexFor: key)
					and: (aMaHashIndexRecord highestSlotIndexFor: key) ].

			x < (aMaHashIndexRecord numberOfSlots - 1) ifTrue:
				[ self should: [ (aMaHashIndexRecord slotIndexFor: key+1) > x ] ] ]! !

!MaHashIndexRecordTester methodsFor: 'private tests' stamp: 'cmm 7/1/2005 17:00'!
verifyRecord: aMaHashIndexRecord do: twoArgBlock

	self
		verifyConsecutiveContiguousKeyRangesOn: aMaHashIndexRecord;
		verifyEntryIndexAndRangeEndpointCongruenceOn: aMaHashIndexRecord.
	aMaHashIndexRecord
		byteArrayIndexesFrom: 0
		do:
			[ : eachBax |
			twoArgBlock value: aMaHashIndexRecord value: eachBax.
			(aMaHashIndexRecord highKey - aMaHashIndexRecord lowKey) > 1  "if not fully zoomed in"
				ifTrue:
					[ | x lowestKey highestKey |
					x _ aMaHashIndexRecord slotIndexForBax: eachBax.
					lowestKey _ aMaHashIndexRecord lowestKeyAtIndex: x.
					highestKey _ aMaHashIndexRecord highestKeyAtIndex: x.
					self
						verifyRecord:
							(aMaHashIndexRecord independentCopy
								beZoomedInToward: (lowestKey to: highestKey) atRandom
								from: aMaHashIndexRecord)
						do: twoArgBlock ] ]! !

!MaHashIndexRecordTester methodsFor: 'tests' stamp: 'cmm 8/17/2005 19:42'!
testAll
	"Test a variety of keySize and recordSize combinations.  For each pair, run only as far as it takes to get two-deep into duplicates for all originating from one entry in the root record, chosen at random."

	| testCount |
	testCount _ 0.
	#(16 24 32 40 56 64 96 128 160 192 256) "keySizes" do:
		[ : keySize |
		#(2 4 8 16 32 64 128) "recordSizes" do:
			[ : recordSize |  | startRecord  |
			"make test run-time reasonable by skipping enough levels to only test the bottom 100000 records or so."
			startRecord _ 
				self
					zoomedRecord: keySize 
					recordSize: recordSize 
					childSpace: 10000.
			self notify: 'testing keySize: ', keySize printString, ' recordSize: ', recordSize printString, ', total key span: ', (startRecord highKey - startRecord lowKey) printString.
			self 
				verifyRecord: startRecord					
				do:
					[ : record : eachBax |
					record == startRecord
						ifTrue:
							[ self notify:
								(String streamContents:
									[ : stream |
									stream
										tab; maPrint: 'x:' ;
										maPrint: (record slotIndexForBax: eachBax) ;
										maPrint: ' (~' ;
										maPrint: testCount ;
										maPrint: ' records tested)' ]) ].
					testCount _ testCount + 1 ] ] ]! !

!MaHashIndexRecordTester methodsFor: 'private creation' stamp: 'cmm 7/1/2005 17:15'!
zoomedRecord: keySize recordSize: recordSize childSpace: anInteger

	| answer prior |
	answer _
		MaHashIndexRecord
			keySize: keySize
			valueSize: 64
			numberOfSlots: recordSize.
	[ (answer highKey - answer lowKey) > anInteger ]
		whileTrue:
			[ prior _ answer.
			answer _ answer
				beZoomedInToward: (answer lowKey to: answer highKey) atRandom
				from: answer ].
	^ (answer highKey - answer lowKey) < 1000
		ifTrue: [ prior ]
		ifFalse: [ answer ]! !

!TSTreeTest methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
setUp
	tree _ TSTree new.
	self words shuffled do: [:ea | tree at: ea put: ea asUppercase].
	empty _ TSTree new.! !

!TSTreeTest methodsFor: 'as yet unclassified' stamp: 'avi 9/22/2004 01:01'!
testAt
	self assert: (tree at: 'abear') = 'ABEAR'.
	self assert: (tree at: 'abelmosk') = 'ABELMOSK'.
	self assert: (tree at: 'abracadabra' ifAbsent: [42]) = 42.
	self assert: (tree at: '' ifAbsent: [42]) = 42.
	self assert: (empty at: 'foo' ifAbsent: [42]) = 42 ! !

!TSTreeTest methodsFor: 'as yet unclassified' stamp: 'avi 9/21/2004 20:38'!
testMatch
	self assert: (tree matchesForString: 'abea' distance: 1) asSet = #(ABEAM ABEAR ABED ABEL ABET ABE) asSet.
	self assert: (tree matchesForString: 'abel' distance: 2) asSet = #(ABELIA ABEAM ABEAR) asSet.
	self assert: (tree matchesForString: 'abel' distance: 0) = #(ABEL).
	self assert: (tree matchesForString: '' distance: 1) = #().
	self assert: (empty matchesForString: 'foo' distance: 0) = #()! !

!TSTreeTest methodsFor: 'as yet unclassified' stamp: 'avi 9/22/2004 00:48'!
testPrefix
	self assert: (tree matchesForPrefix: 'abet') asSet = #(ABET ABETMENT) asSet.
	self assert: (tree matchesForPrefix: 'abelm') asSet = #(ABELMOSCHUS ABELMOSK) asSet.
	self assert: (tree matchesForPrefix: '') asSet = (self words asSet collect: [:ea | ea asUppercase]).
	self assert: (empty matchesForPrefix: 'foo') = #()! !

!TSTreeTest methodsFor: 'as yet unclassified' stamp: 'avi 12/13/2004 13:07'!
testRemove
	self assert: (tree at: 'abel') = 'ABEL'.
	self assert: (tree removeKey: 'abel') = 'ABEL'.
	self assert: (tree at: 'abel' ifAbsent: [42]) = 42.
	self assert: (tree at: 'abelmosk') = 'ABELMOSK'.
	self assert: (tree removeKey: 'foo' ifAbsent: [42]) = 42.
	self assert: (tree removeKey: 'abel' ifAbsent: [42]) = 42.! !

!TSTreeTest methodsFor: 'as yet unclassified' stamp: 'avi 9/21/2004 20:38'!
testValues
	self assert: tree values asSet = (self words asSet collect: [:ea | ea asUppercase]).
	self assert: empty values isEmpty! !

!TSTreeTest methodsFor: 'as yet unclassified' stamp: 'avi 9/22/2004 00:58'!
words
	^ #(
abe
abeam
abear
abearance
abecedarian
abecedarium
abecedary
abed
abeigh
abel
abele
abelia
abelian
abelicea
abelite
abelite
abelmoschus
abelmosk
abelonian
abeltree
abencerrages
abenteric
abepithymia
aberdeen
aberdevine
aberdonian
aberia
aberrance
aberrancy
aberrant
aberrate
aberration
aberrational
aberrator
aberrometer
aberroscope
aberuncator
abet
abetment) ! !

!MaFixedLengthRecord methodsFor: 'accessing' stamp: 'cmm 5/19/2005 10:52'!
byteArray
	^ byteArray! !

!MaFixedLengthRecord methodsFor: 'accessing' stamp: 'cmm 5/19/2005 10:52'!
byteArray: aByteArray
	byteArray _ aByteArray! !

!MaFixedLengthRecord class methodsFor: 'create' stamp: 'cmm 5/19/2005 11:05'!
new: anInteger

	^ self new
		byteArray: (ByteArray new: anInteger) ;
		yourself! !

!MaHashIndexRecord methodsFor: 'SUnit tests' stamp: 'cmm 12/6/2002 00:05'!
addAnomaliesTo: aDictionary usingParent: parentRecord

	| originalCount |
	originalCount _ aDictionary size.
	self
		addChildCountAnomaliesTo: aDictionary
		using: parentRecord.
	^aDictionary size > originalCount! !

!MaHashIndexRecord methodsFor: 'SUnit tests' stamp: 'cmm 12/6/2002 00:04'!
addChildCountAnomaliesTo: aDictionary using: parentRecord

	| bax parentNumberOfChildren isCorrect |
	bax _ self baxInParent: parentRecord for: self.
	parentNumberOfChildren _ (parentRecord numberOfChildrenAtByteArrayIndex: bax).
	isCorrect _ (self lowKey = self highKey or: [ self numberOfChildren = 0 ])
		ifTrue: 
			[ "it's possible for the record not to have an entry in the parent under this condition."
			(parentRecord hasEntryAtByteArrayIndex: bax)
				ifTrue: [ (parentNumberOfChildren - 1) = self numberOfChildren ]
				ifFalse: [ parentNumberOfChildren = self numberOfChildren ] ]
		ifFalse:
			[ (parentNumberOfChildren - 1) = self numberOfChildren ].
	isCorrect ifFalse:
		[ (aDictionary
			at: 'number of children discrepency'
			ifAbsentPut: [ OrderedCollection new ]) add: { parentRecord.  self } ]! !

!MaHashIndexRecord methodsFor: 'SUnit tests' stamp: 'cmm 11/29/2002 23:39'!
baxInParent: parentRecord for: childRecord

	parentRecord
		byteArrayIndexesFrom: 0
		do:
			[ :bax |
			(parentRecord recordNumberAtByteArrayIndex: bax) = childRecord recordNumber
				ifTrue: [ ^bax ] ].
	self error: 'I am not child of parentRecord'! !

!MaHashIndexRecord methodsFor: 'printing'!
allNumberOfChildren
	"This is intended to be used only for printing!!"

	^(self headerSize
		to: byteArray size - 1
		by: entrySize)
			collect: [ :index | self numberOfChildrenAtByteArrayIndex: index ]
! !

!MaHashIndexRecord methodsFor: 'printing' stamp: 'cmm 10/1/2013 11:20'!
dumpEntriesTo: aStream 
	self 
		byteArrayIndexesFrom: 0
		do: 
			[ : eachBax | 
			(self numberOfChildrenAtByteArrayIndex: eachBax) > 0 ifTrue: 
				[ | x |
				x _ self slotIndexForBax: eachBax.
				aStream
					cr ;
					space ;
					space ;
					maPrint: 'x:' ;
					maPrint: x ;
					maPrint: ' [' ;
					maPrint: (self lowestKeyAtIndex: x) ;
					maPrint: '..' ;
					maPrint: (self highestKeyAtIndex: x) ;
					maPrint: ']' ;
					maPrint: ' bx:' ;
					maPrint: (self byteArrayIndexFor: x).
				(self hasSlotAvailableAtByteArrayIndex: eachBax) ifTrue: [ aStream nextPutAll: ' *empty slot* ' ].
				aStream
					maPrint: ' k:' ;
					maPrint: (self keyAtByteArrayIndex: eachBax) ;
					maPrint: ' v:' ;
					maPrint: (self valueAtByteArrayIndex: eachBax) ;
					maPrint: ' r:' ;
					maPrint: (self recordNumberAtByteArrayIndex: eachBax) ;
					maPrint: ' c:' ;
					maPrint: (self numberOfChildrenAtByteArrayIndex: eachBax) ;
					flush ] ]! !

!MaHashIndexRecord methodsFor: 'printing'!
keys
	"This is intended to be used only for printing!!"

	^(self headerSize
		to: byteArray size - 1
		by: entrySize)
			collect: [ :index | self keyAtByteArrayIndex: index ]
! !

!MaHashIndexRecord methodsFor: 'printing' stamp: 'cmm 9/10/2006 14:17'!
maPrintAbbreviatedOn: aStream

	self
		maPrintAttributes: #(recordNumber lowKey highKey entryWeight possibleKeys canHoldDuplicateKeys)
		on: aStream.
	aStream cr; maPrint: 'entries:'.
	self dumpEntriesTo: aStream! !

!MaHashIndexRecord methodsFor: 'printing'!
recordNumbers
	"This is intended to be used only for printing!!"

	^(self headerSize
		to: byteArray size - 1
		by: entrySize)
			collect: [ :index | self recordNumberAtByteArrayIndex: index ]
! !

!MaHashIndexRecord methodsFor: 'printing' stamp: 'cmm 4/28/2005 21:52'!
values
	"This is intended to be used only for printing!!"

	^ (self headerSize
		to: byteArray size - 1
		by: entrySize)
			collect: [ : index | self valueAtByteArrayIndex: index ]! !

!MaHashIndexRecord methodsFor: 'building' stamp: 'cmm 9/1/2006 18:47'!
atKey: keyInteger put: valueInteger 
	"The receiver has been verified for some available slot for keyInteger."
	self 
		eligibleByteArrayIndexesFor: keyInteger
		reverseDo: 
			[ : index | 
			(self hasSlotAvailableAtByteArrayIndex: index) ifTrue: 
				[ self 
					keyAtByteArrayIndex: index
					put: keyInteger.
				self 
					valueAtByteArrayIndex: index
					put: valueInteger.
				self occupySlotAtByteArrayIndex: index.
				^ index ] ].
	MaSoftwareError signal: 'I should have been verified for an available slot.'! !

!MaHashIndexRecord methodsFor: 'building' stamp: 'cmm 11/27/2011 20:03'!
beFrom: lowKeyInteger to: highKeyInteger 
	self
		 lowKey: lowKeyInteger ;
		 highKey: highKeyInteger ;
		 resetForNewKeyRange! !

!MaHashIndexRecord methodsFor: 'building' stamp: 'cmm 7/1/2005 17:09'!
beZoomedInToward: keyInteger from: aMaHashIndexRecord
	"Set the receivers low and highIndex to the correct range that can
	accomodate the index where keyInteger belongs in aMaHashIndexRecord."

	| index |

	index _ aMaHashIndexRecord slotIndexFor: keyInteger.
	self
		beFrom: (aMaHashIndexRecord lowestKeyAtIndex: index)
		to: (aMaHashIndexRecord highestKeyAtIndex: index)
! !

!MaHashIndexRecord methodsFor: 'building' stamp: 'cmm 9/10/2006 20:54'!
decrementNumberOfChildrenAtByteArrayIndex: anInteger
	| currentNumberOfChildren |
	currentNumberOfChildren _ self numberOfChildrenAtByteArrayIndex: anInteger.
	currentNumberOfChildren = 0 ifTrue: [MaSoftwareError signal].
	self
		numberOfChildrenAtByteArrayIndex: anInteger
		put: currentNumberOfChildren - 1! !

!MaHashIndexRecord methodsFor: 'building' stamp: 'cmm 11/30/2002 23:51'!
decrementNumberOfChildrenAtKey: keyInteger

	self decrementNumberOfChildrenAtByteArrayIndex: (self highestByteArrayIndexFor: keyInteger)! !

!MaHashIndexRecord methodsFor: 'building' stamp: 'cmm 1/27/2003 23:57'!
highKey: anInteger

	^byteArray
		maUint: keySize
		at: (keySize / 8)
		put: anInteger
! !

!MaHashIndexRecord methodsFor: 'building'!
incrementNumberOfChildrenAtByteArrayIndex: anInteger

	| currentNumberOfChildren |

	currentNumberOfChildren _ self numberOfChildrenAtByteArrayIndex: anInteger.
	self
		numberOfChildrenAtByteArrayIndex: anInteger
		put: currentNumberOfChildren + 1
! !

!MaHashIndexRecord methodsFor: 'building' stamp: 'cmm 1/27/2003 23:57'!
keyAtByteArrayIndex: index put: anInteger

	^byteArray
		maUint: keySize
		at: index + self keyEntryOffset
		put: anInteger
! !

!MaHashIndexRecord methodsFor: 'building' stamp: 'cmm 11/4/2014 14:42'!
keySize: keyBits valueSize: valueBits numberOfSlots: numberOfSlotsInteger
	keySize _ keyBits.
	valueSize _ valueBits.
	numberOfSlots _ numberOfSlotsInteger.
	"Each entry consists of:  value, record number, key, number of child entries."
	entrySize _ SizeOfControlFieldInBytes + (valueSize/8) + SizeOfRecordNumberInBytes + ((keySize / 8) * 2).
	byteArray _ ByteArray new: self headerSize + (entrySize * numberOfSlotsInteger)! !

!MaHashIndexRecord methodsFor: 'building' stamp: 'cmm 1/27/2003 23:57'!
lowKey: anInteger

	^byteArray
		maUint: keySize
		at: 0
		put: anInteger
! !

!MaHashIndexRecord methodsFor: 'building' stamp: 'cmm 11/27/2011 20:05'!
populateFrom: aMaHashIndexRecord
	byteArray
		replaceFrom: 1
		to: byteArray size
		with: aMaHashIndexRecord byteArray.
	recordNumber _ aMaHashIndexRecord recordNumber.
	self resetForNewKeyRange! !

!MaHashIndexRecord methodsFor: 'building'!
recordNumber: anInteger

	recordNumber _ anInteger
! !

!MaHashIndexRecord methodsFor: 'building'!
recordNumberAtSlotForKey: keyInteger put: recordNumberInteger

	self
		recordNumberAtByteArrayIndex: (self highestByteArrayIndexFor: keyInteger)
		put: recordNumberInteger
! !

!MaHashIndexRecord methodsFor: 'building' stamp: 'cmm 9/10/2006 20:56'!
removeKey: keyInteger withValue: valueInteger 
	self 
		eligibleByteArrayIndexesFor: keyInteger
		do: 
			[ : each | 
			((self keyAtByteArrayIndex: each) = keyInteger 
			and: [ (self valueAtByteArrayIndex: each) = valueInteger
			and: [ self hasEntryAtByteArrayIndex: each ] ]) ifTrue: 
				[ self
					vacateSlotAtByteArrayIndex: each ;
					decrementNumberOfChildrenAtByteArrayIndex: each.
				^ each ] ].
	^ nil! !

!MaHashIndexRecord methodsFor: 'debugging' stamp: 'cmm 7/1/2005 17:00'!
baxMap

	| map |

	map _ OrderedCollection new.
	self
		byteArrayIndexesFrom: 0
		do: [ :each | map add: (self slotIndexForBax: each) -> each ].
	^map asArray
! !

!MaHashIndexRecord methodsFor: 'debugging' stamp: 'cmm 3/9/2004 23:53'!
dumpEntries

	self dumpEntriesTo: Transcript! !

!MaHashIndexRecord methodsFor: 'debugging' stamp: 'cmm 4/28/2005 21:47'!
dumpStructureTo: aStream
	self
		maPrintAttributes: #(
			recordNumber lowKey highKey canHoldDuplicateKeys keys recordNumbers values
			allNumberOfChildren possibleKeys)
		on: aStream! !

!MaHashIndexRecord methodsFor: 'debugging' stamp: 'cmm 7/1/2005 16:51'!
possibleKeys

	| answer |

	answer _ WriteStream on: (String new: numberOfSlots * 2).
	0
		to: numberOfSlots - 1
		do:
			[ : index |  | low high |
			low _ self lowestKeyAtIndex: index.
			high _ self highestKeyAtIndex: index.
			answer nextPutAll: ' | '.
			low = high
				ifTrue:
					[ answer maPrint: low ]
				ifFalse:
					[ answer
						maPrint: low;
						maPrint: '..';
						maPrint: high ] ].
	^ answer contents! !

!MaHashIndexRecord methodsFor: 'debugging' stamp: 'cmm 3/11/2004 21:41'!
structure

	^ String streamContents: [ : stream | self dumpStructureTo: stream ]! !

!MaHashIndexRecord methodsFor: 'accessing'!
bufferSize

	^byteArray size
! !

!MaHashIndexRecord methodsFor: 'accessing' stamp: 'cmm 11/22/2002 00:12'!
byteArrayIndexContainingGlobalIndex: anInteger base: baseInteger
	"baseInteger is 0-based."

	| count |

	count _ baseInteger.
	self
		byteArrayIndexesFrom: 0
		do:
			[ :each |
			count _ count + (self numberOfChildrenAtByteArrayIndex: each).
			count >= anInteger ifTrue: [ ^each ] ].
	^nil! !

!MaHashIndexRecord methodsFor: 'accessing' stamp: 'cmm 11/27/2002 14:55'!
byteArrayIndexOfLowestEntry
	"Answers nil if no entries on this record."

	self
		byteArrayIndexesFrom: 0
		do:
			[ :each | (self hasEntryAtByteArrayIndex: each) ifTrue: [ ^each ] ].
	^nil! !

!MaHashIndexRecord methodsFor: 'accessing' stamp: 'cmm 1/27/2003 23:51'!
highKey

	^byteArray
		maUint: keySize
		at: keySize / 8
! !

!MaHashIndexRecord methodsFor: 'accessing' stamp: 'cmm 7/1/2005 17:12'!
highestByteArrayIndexFor: keyInteger
	"This will vary from the lowestByteArrayIndexFor: keyInteger only when the receiver canHoldDuplicateKeys."

	^ self byteArrayIndexFor: (self highestSlotIndexFor: keyInteger)! !

!MaHashIndexRecord methodsFor: 'accessing' stamp: 'cmm 7/1/2005 17:00'!
highestByteArrayIndexForAnyKeyAt: byteArrayIndex
	"this is for records that canHoldDuplicateKeys when we need to find the next child record number, since that is stored at the highestByteArrayIndexFor: that key."

	^self highestByteArrayIndexFor: (self lowestKeyAtIndex: (self slotIndexForBax: byteArrayIndex))! !

!MaHashIndexRecord methodsFor: 'accessing' stamp: 'cmm 3/12/2004 10:51'!
highestKeyAtIndex: anInteger

	^canHoldDuplicateKeys
		ifTrue:
			[ self lowestKeyAtIndex: anInteger ]
		ifFalse:
			[ (self lowestKeyAtIndex: anInteger + 1) - 1 ]
! !

!MaHashIndexRecord methodsFor: 'accessing' stamp: 'cmm 11/4/2014 14:07'!
highestPossibleKey
	^ (1 bitShift: keySize) - 1! !

!MaHashIndexRecord methodsFor: 'accessing' stamp: 'cmm 1/27/2003 23:51'!
keyAtByteArrayIndex: anInteger

	^byteArray
		maUint: keySize
		at: anInteger + self keyEntryOffset
! !

!MaHashIndexRecord methodsFor: 'accessing' stamp: 'cmm 11/4/2014 15:50'!
keyAtHighestSlotFor: keyInteger
self maMarked: 'delete'.
	^self keyAtByteArrayIndex: (self highestByteArrayIndexFor: keyInteger)
! !

!MaHashIndexRecord methodsFor: 'accessing' stamp: 'cmm 7/1/2005 17:13'!
keyAtSlotIndex: anInteger

	^ self keyAtByteArrayIndex: (self byteArrayIndexFor: anInteger)! !

!MaHashIndexRecord methodsFor: 'accessing' stamp: 'cmm 3/11/2004 21:53'!
keySize

	^ keySize! !

!MaHashIndexRecord methodsFor: 'accessing' stamp: 'cmm 1/27/2003 23:51'!
lowKey

	^byteArray
		maUint: keySize
		at: 0
! !

!MaHashIndexRecord methodsFor: 'accessing' stamp: 'cmm 12/29/2005 22:59'!
lowestPossibleKey
	^ 0! !

!MaHashIndexRecord methodsFor: 'accessing'!
numberOfChildren

	| total |

	total _ 0.
	self
		byteArrayIndexesFrom: 0
		do: [ :index | total _ total + (self numberOfChildrenAtByteArrayIndex: index) ].
	^total
! !

!MaHashIndexRecord methodsFor: 'accessing' stamp: 'cmm 7/1/2005 17:08'!
numberOfChildrenBefore: keyInteger

	| lastByteArrayIndex entryIndex totalInSlotsBeforeKey |

	entryIndex _ self slotIndexFor: keyInteger.
	lastByteArrayIndex _ self byteArrayIndexFor: entryIndex.
	totalInSlotsBeforeKey _ self numberOfChildrenBeforeByteArrayIndex: lastByteArrayIndex.
	^((self keyAtByteArrayIndex: lastByteArrayIndex) < keyInteger
		and: [ self hasEntryAtByteArrayIndex: lastByteArrayIndex ])
			ifTrue:
				[ (lastByteArrayIndex = (self highestByteArrayIndexFor: keyInteger))
					ifTrue: [ totalInSlotsBeforeKey + 1 ]
					ifFalse: [ totalInSlotsBeforeKey + (self numberOfChildrenAtByteArrayIndex: lastByteArrayIndex) ] ]
			ifFalse: [ totalInSlotsBeforeKey ]! !

!MaHashIndexRecord methodsFor: 'accessing' stamp: 'cmm 11/22/2002 00:13'!
numberOfChildrenBeforeByteArrayIndex: anInteger

	| total |

	total _ 0.
	self
		byteArrayIndexesFrom: 0
		do:
			[ :each |
			each = anInteger ifTrue: [ ^total ].
			total _ total + (self numberOfChildrenAtByteArrayIndex: each) ].
	self error: anInteger printString, ' is not a valid byteArrayIndex.'! !

!MaHashIndexRecord methodsFor: 'accessing' stamp: 'cmm 7/1/2005 16:51'!
numberOfSlots

	^ numberOfSlots! !

!MaHashIndexRecord methodsFor: 'accessing'!
recordNumber

	^recordNumber! !

!MaHashIndexRecord methodsFor: 'accessing' stamp: 'cmm 9/8/2015 15:14'!
recordNumberAtByteArrayIndex: anInteger 
	^ byteArray
"		maUint: SizeOfRecordNumberInBits"
		maUnsigned32At: anInteger + self recordNumberEntryOffset + 1! !

!MaHashIndexRecord methodsFor: 'accessing' stamp: 'cmm 12/1/2002 20:57'!
recordNumberAtHighestByteArrayIndexForBax: anInteger

	^self recordNumberAtByteArrayIndex: (self highestByteArrayIndexForAnyKeyAt: anInteger)! !

!MaHashIndexRecord methodsFor: 'accessing'!
recordNumberCloserTo: keyInteger

	^self recordNumberAtByteArrayIndex: (self highestByteArrayIndexFor: keyInteger)
! !

!MaHashIndexRecord methodsFor: 'accessing' stamp: 'cmm 8/17/2005 19:18'!
slotIndexFor: keyInteger
	"The lowest slot index in which keyInteger can reside."

	^ (keyInteger - lowKey) * numberOfSlots // entryWeight! !

!MaHashIndexRecord methodsFor: 'accessing' stamp: 'cmm 7/1/2005 16:59'!
slotIndexForBax: anInteger
	"Bax means 'byteArrayIndex'."

	^(anInteger - self headerSize) / entrySize! !

!MaHashIndexRecord methodsFor: 'private'!
byteArrayIndexFor: entryIndex

	^entryIndex * entrySize + self headerSize
! !

!MaHashIndexRecord methodsFor: 'private' stamp: 'cmm 9/8/2015 20:41'!
controlAtByteArrayIndex: anInteger
	^ byteArray 
"		maUint: SizeOfControlFieldInBits"
		byteAt: anInteger+1 "+ ControlEntryOffset"  "<-- avoid extra send for performance"! !

!MaHashIndexRecord methodsFor: 'private' stamp: 'cmm 11/4/2014 14:35'!
controlAtByteArrayIndex: index put: anInteger
	^ byteArray 
		maUint: SizeOfControlFieldInBits
		at: index "+ ControlEntryOffset"
		put: anInteger! !

!MaHashIndexRecord methodsFor: 'private' stamp: 'cmm 3/12/2004 15:37'!
entryWeight

	^ entryWeight! !

!MaHashIndexRecord methodsFor: 'private'!
headerSize
	"Low and high keys.
	^(keySize / 8) * 2  simplified to / 4 for max performance."

	^keySize / 4
! !

!MaHashIndexRecord methodsFor: 'private' stamp: 'cmm 7/1/2005 17:11'!
highestSlotIndexFor: keyInteger

	^ canHoldDuplicateKeys
		ifTrue:
			[ (self slotIndexFor: keyInteger + 1) - 1 ]
		ifFalse:
			[ self slotIndexFor: keyInteger ]! !

!MaHashIndexRecord methodsFor: 'private' stamp: 'cmm 11/4/2014 14:51'!
keyEntryOffset
	^ self recordNumberEntryOffset + SizeOfRecordNumberInBytes! !

!MaHashIndexRecord methodsFor: 'private' stamp: 'cmm 7/1/2005 17:08'!
lowestByteArrayIndexFor: keyInteger

	^self byteArrayIndexFor: (self slotIndexFor: keyInteger)
! !

!MaHashIndexRecord methodsFor: 'private' stamp: 'cmm 7/1/2005 16:51'!
lowestKeyAtIndex: entryIndex
	"Answer the lowest-possible key that can be stored at entryIndex."

	^ lowKey + (entryIndex * entryWeight // numberOfSlots)! !

!MaHashIndexRecord methodsFor: 'private' stamp: 'cmm 1/27/2003 23:51'!
numberOfChildrenAtByteArrayIndex: anInteger

	^byteArray
		maUint: keySize
		at: anInteger + self numberOfChildrenEntryOffset
! !

!MaHashIndexRecord methodsFor: 'private' stamp: 'cmm 1/27/2003 23:57'!
numberOfChildrenAtByteArrayIndex: index put: anInteger

	^byteArray
		maUint: keySize
		at: index + self numberOfChildrenEntryOffset
		put: anInteger! !

!MaHashIndexRecord methodsFor: 'private' stamp: 'cmm 12/30/2002 21:20'!
numberOfChildrenEntryOffset

	^self keyEntryOffset + (keySize / 8)! !

!MaHashIndexRecord methodsFor: 'private' stamp: 'cmm 11/4/2014 14:49'!
occupySlotAtByteArrayIndex: anInteger 
	| controlValue |
	controlValue _ self controlAtByteArrayIndex: anInteger.
	self
		controlAtByteArrayIndex: anInteger
		put: (controlValue maBitSet: SlotFilledControlBit)! !

!MaHashIndexRecord methodsFor: 'private' stamp: 'cmm 12/29/2005 23:00'!
postInitialize

	self
		beFrom: self lowestPossibleKey 
		to: self highestPossibleKey! !

!MaHashIndexRecord methodsFor: 'private' stamp: 'cmm 11/4/2014 14:47'!
recordNumberAtByteArrayIndex: index put: anInteger
	^ byteArray
		maUint: SizeOfRecordNumberInBits
		at: index + self recordNumberEntryOffset
		put: anInteger! !

!MaHashIndexRecord methodsFor: 'private' stamp: 'cmm 11/4/2014 14:35'!
recordNumberEntryOffset
	^ ValueEntryOffset + (valueSize/8 "bits")! !

!MaHashIndexRecord methodsFor: 'private' stamp: 'cmm 11/27/2011 20:03'!
resetForNewKeyRange
	lowKey _ self lowKey.
	highKey _ self highKey.
	canHoldDuplicateKeys _ (highKey - lowKey + 1) < numberOfSlots.
	entryWeight _ highKey - lowKey + 1! !

!MaHashIndexRecord methodsFor: 'private' stamp: 'cmm 7/1/2005 16:51'!
setLowKey: lowKeyInteger highKey: highKeyInteger

	lowKey _ self lowKey.
	highKey _ self highKey.
	canHoldDuplicateKeys _ (highKey - lowKey + 1) < numberOfSlots.
	entryWeight _ highKey - lowKey + 1! !

!MaHashIndexRecord methodsFor: 'private' stamp: 'cmm 11/4/2014 14:50'!
vacateSlotAtByteArrayIndex: anInteger 
	| controlValue |
	controlValue _ self controlAtByteArrayIndex: anInteger.
	self
		controlAtByteArrayIndex: anInteger
		put: (controlValue maBitClear: SlotFilledControlBit)! !

!MaHashIndexRecord methodsFor: 'private' stamp: 'cmm 11/4/2014 14:36'!
valueAtByteArrayIndex: anInteger 
	^ byteArray
		maUint: valueSize
		at: anInteger + ValueEntryOffset! !

!MaHashIndexRecord methodsFor: 'private' stamp: 'cmm 11/4/2014 14:36'!
valueAtByteArrayIndex: index put: anInteger 
	^ byteArray
		maUint: valueSize
		at: index + ValueEntryOffset
		put: anInteger! !

!MaHashIndexRecord methodsFor: 'private' stamp: 'cmm 10/23/2014 17:12'!
valueEntryOffset
	^ "self controlEntryOffset + self sizeOfControlFieldInBytes" 1! !

!MaHashIndexRecord methodsFor: 'actions' stamp: 'cmm 7/1/2005 16:51'!
byteArrayIndexesFrom: startingEntryIndex do: oneArgBlock

	self
		byteArrayIndexesFrom: startingEntryIndex
		to: numberOfSlots - 1
		do: oneArgBlock! !

!MaHashIndexRecord methodsFor: 'actions'!
byteArrayIndexesFrom: startingEntryIndex to: endingEntryIndex do: oneArgBlock

	(self byteArrayIndexFor: startingEntryIndex)
		to: (self byteArrayIndexFor: endingEntryIndex)
		by: entrySize
		do: oneArgBlock
! !

!MaHashIndexRecord methodsFor: 'actions'!
eligibleByteArrayIndexesFor: keyInteger do: oneArgBlock

	(self lowestByteArrayIndexFor: keyInteger)
		to: (self highestByteArrayIndexFor: keyInteger)
		by: entrySize
		do: [ :index | oneArgBlock value: index ]
! !

!MaHashIndexRecord methodsFor: 'actions' stamp: 'cmm 3/10/2004 01:00'!
eligibleByteArrayIndexesFor: keyInteger reverseDo: oneArgBlock

	(self highestByteArrayIndexFor: keyInteger)
		to: (self lowestByteArrayIndexFor: keyInteger)
		by: 0-entrySize
		do: [ :index | oneArgBlock value: index ]
! !

!MaHashIndexRecord methodsFor: 'testing'!
canAdd: keyInteger

	self
		eligibleByteArrayIndexesFor: keyInteger
		do: [ :index | (self hasSlotAvailableAtByteArrayIndex: index) ifTrue: [ ^true ] ].
	^false
! !

!MaHashIndexRecord methodsFor: 'testing'!
canHoldDuplicateKeys

	^canHoldDuplicateKeys! !

!MaHashIndexRecord methodsFor: 'testing'!
hasChildAtByteArrayIndex: byteArrayIndex

	^(self recordNumberAtByteArrayIndex: byteArrayIndex) > 0
! !

!MaHashIndexRecord methodsFor: 'testing' stamp: 'cmm 12/1/2002 21:44'!
hasChildAtHighestByteArrayIndexForBax: byteArrayIndex

	^(self recordNumberAtHighestByteArrayIndexForBax: byteArrayIndex) > 0! !

!MaHashIndexRecord methodsFor: 'testing'!
hasEntryAtByteArrayIndex: anInteger

	^(self hasSlotAvailableAtByteArrayIndex: anInteger) not
! !

!MaHashIndexRecord methodsFor: 'testing'!
hasEntryForKey: keyInteger
	"Answer whether keyInteger resides in an entry of the receiver."

	self
		eligibleByteArrayIndexesFor: keyInteger
		do:
			[ :index |
			((self hasEntryAtByteArrayIndex: index)
				and: [ (self keyAtByteArrayIndex: index) = keyInteger ])
					ifTrue:
						[ ^true ] ].
	^false
! !

!MaHashIndexRecord methodsFor: 'testing' stamp: 'cmm 11/4/2014 14:48'!
hasSlotAvailableAtByteArrayIndex: anInteger 
	^ (self controlAtByteArrayIndex: anInteger) maIsBitClear: SlotFilledControlBit! !

!MaHashIndexRecord methodsFor: 'copying' stamp: 'cmm 3/24/2005 12:03'!
independentCopy

	^ self copy postIndependentCopy! !

!MaHashIndexRecord methodsFor: 'copying' stamp: 'cmm 3/24/2005 12:03'!
postIndependentCopy

	byteArray _ byteArray copy! !

!MaHashIndexRecord class methodsFor: 'creation' stamp: 'cmm 7/18/2005 13:22'!
keySize: keyBits valueSize: valueBits numberOfSlots: entrySizeInteger

	^ self new
		keySize: keyBits
		valueSize: valueBits
		numberOfSlots: entrySizeInteger ;

		postInitialize ;
		yourself! !

!MaHashIndexHeader methodsFor: 'initialize' stamp: 'cmm 4/4/2007 23:45'!
byteArray: aByteArray
	byteArray _ aByteArray! !

!MaHashIndexHeader methodsFor: 'initialize' stamp: 'cmm 4/4/2007 23:44'!
initialize
	super initialize.
	byteArray _ ByteArray new: self class headerSize! !

!MaHashIndexHeader methodsFor: 'initialize' stamp: 'cmm 4/4/2007 23:58'!
keySize: anInteger 
	byteArray 
		maUint: 16
		at: (self positionOfKeySizeForVersion: self class version)
		put: anInteger! !

!MaHashIndexHeader methodsFor: 'initialize' stamp: 'cmm 4/5/2007 00:00'!
recordSize: anInteger 
	byteArray 
		maUint: 8
		at: (self positionOfRecordSizeForVersion: self class version)
		put: anInteger! !

!MaHashIndexHeader methodsFor: 'initialize' stamp: 'cmm 4/5/2007 00:01'!
valueSize: anInteger 
	byteArray 
		maUint: 16
		at: (self positionOfValueSizeForVersion: self class version)
		put: anInteger! !

!MaHashIndexHeader methodsFor: 'accessing' stamp: 'cmm 4/5/2007 00:02'!
headerBytesForKeySize: keySize valueSize: valueSize recordSize: hashRecordSize 
	self
		keySize: keySize ;
		valueSize: valueSize ;
		recordSize: hashRecordSize.
	^ byteArray! !

!MaHashIndexHeader methodsFor: 'accessing' stamp: 'cmm 4/8/2007 20:13'!
headerSize
	^ self version = 1 
		ifTrue: [ 3 ]
		ifFalse: [ 100 ]! !

!MaHashIndexHeader methodsFor: 'accessing' stamp: 'cmm 4/8/2007 19:58'!
keySize
	^ self version in: 
		[ : version | 
		| modifier |
		modifier _ version = 1 
			ifTrue: [ 1 ]
			ifFalse: [ 0 ].
		(byteArray 
			maUint: (self sizeOfKeySizeForVersion: version)
			at: (self positionOfKeySizeForVersion: version)) + modifier ]! !

!MaHashIndexHeader methodsFor: 'accessing' stamp: 'cmm 9/8/2015 15:10'!
recordSize
	^ byteArray byteAt: (self positionOfRecordSizeForVersion: self version) + 1! !

!MaHashIndexHeader methodsFor: 'accessing' stamp: 'cmm 4/8/2007 20:07'!
valueSize
	^ self version in: 
		[ : version | 
		| modifier |
		modifier _ version = 1 
			ifTrue: [ 1 ]
			ifFalse: [ 0 ].
		(byteArray 
			maUint: (self sizeOfValueSizeForVersion: version)
			at: (self positionOfValueSizeForVersion: version)) + modifier ]! !

!MaHashIndexHeader methodsFor: 'accessing' stamp: 'cmm 9/8/2015 15:11'!
version
	^ (byteArray byteAt: self positionOfVersion1Indicator + 1) = 0
		ifTrue: [ byteArray byteAt: self positionOfVersion + 1 ]
		ifFalse: [ 1 ]! !

!MaHashIndexHeader methodsFor: 'printing' stamp: 'cmm 4/8/2007 19:56'!
maPrintAbbreviatedOn: aStream 
	super maPrintAbbreviatedOn: aStream.
	self 
		maPrintAttributes: #(
				#version
				#keySize
				#valueSize
				#recordSize
			)
		on: aStream! !

!MaHashIndexHeader methodsFor: 'private' stamp: 'cmm 4/4/2007 23:57'!
positionOfKeySizeForVersion: anInteger 
	^ anInteger = 1 
		ifTrue: [ 0 ]
		ifFalse: [ 2 ]! !

!MaHashIndexHeader methodsFor: 'private' stamp: 'cmm 4/5/2007 00:00'!
positionOfRecordSizeForVersion: anInteger 
	^ anInteger = 1 
		ifTrue: [ 2 ]
		ifFalse: [ 6 ]! !

!MaHashIndexHeader methodsFor: 'private' stamp: 'cmm 4/5/2007 00:01'!
positionOfValueSizeForVersion: anInteger 
	^ anInteger = 1 
		ifTrue: [ 1 ]
		ifFalse: [ 4 ]! !

!MaHashIndexHeader methodsFor: 'private' stamp: 'cmm 4/4/2007 23:51'!
positionOfVersion
	"Position of the version for version 2+ HashIndexes."
	^ 1! !

!MaHashIndexHeader methodsFor: 'private' stamp: 'cmm 4/4/2007 23:50'!
positionOfVersion1Indicator
	"The first version of MaHashIndex did not have the foresight to include a version indicator.  However, position 0 of the header is the keySize, which can never be 0.  Therefore, version 2+ reserves position 0 for the 'version 1 indicator', which, if 0, is NOT version 1, if it is >0, it *is* verison 1."
	^ 0! !

!MaHashIndexHeader methodsFor: 'private' stamp: 'cmm 4/5/2007 00:07'!
sizeOfKeySizeForVersion: anInteger 
	^ anInteger = 1 
		ifTrue: [ 8 ]
		ifFalse: [ 16 ]! !

!MaHashIndexHeader methodsFor: 'private' stamp: 'cmm 4/5/2007 00:07'!
sizeOfValueSizeForVersion: anInteger 
	^ anInteger = 1 
		ifTrue: [ 8 ]
		ifFalse: [ 16 ]! !

!MaHashIndexHeader class methodsFor: 'accessing' stamp: 'cmm 4/5/2007 00:10'!
currentVersion
	^ 2! !

!MaHashIndexHeader class methodsFor: 'accessing' stamp: 'cmm 4/4/2007 23:45'!
headerSize
	"Header consists of:
		version:  8 bits
		keySize:  16 bits
		valueSize: 16 bits
		recordSize: 8 bits"
	^ 100! !

!MaHashIndexHeader class methodsFor: 'accessing' stamp: 'cmm 4/5/2007 00:11'!
version
	"The highest version this HashIndex can support."
	^ 2! !

!MaHashIndexRecordFactory methodsFor: 'initializing' stamp: 'cmm 7/1/2005 17:15'!
createPreMadeNewRecord

	preMadeNewRecord _
		MaHashIndexRecord
			keySize: index keySize
			valueSize: index valueSize
			numberOfSlots: index hashRecordSize
! !

!MaHashIndexRecordFactory methodsFor: 'initializing' stamp: 'cmm 7/1/2005 17:15'!
initializeRecordPathRecords

	1
		to: self maxDepth
		do:
			[ :x |
			recordPath
				at: x
				put: (
					MaHashIndexRecord
						keySize: index keySize
						valueSize: index valueSize
						numberOfSlots: index hashRecordSize) ]! !

!MaHashIndexRecordFactory methodsFor: 'initializing' stamp: 'cmm 12/4/2002 23:35'!
postInitialize

	recordNumbersPath _ OrderedCollection new: self maxDepth.
	entryIndexPath _ OrderedCollection new: self maxDepth.
	byteArrayIndexPath _ OrderedCollection new: self maxDepth.
	recordPath _ Array new: self maxDepth.
	self
		createPreMadeNewRecord;
		initializeRecordPathRecords! !

!MaHashIndexRecordFactory methodsFor: 'accessing'!
entryIndexAtLevel: anInteger

	^entryIndexPath at: anInteger
! !

!MaHashIndexRecordFactory methodsFor: 'accessing'!
preMadeNewRecord

	^preMadeNewRecord! !

!MaHashIndexRecordFactory methodsFor: 'accessing' stamp: 'cmm 11/29/2002 22:47'!
recordAtLevel: levelInteger

	^levelInteger > recordPath size
		ifTrue:
			[ recordPath first independentCopy ]
		ifFalse:
			[ recordPath at: levelInteger ]
! !

!MaHashIndexRecordFactory methodsFor: 'accessing'!
recordNumberAtLevel: anInteger

	^recordNumbersPath at: anInteger
! !

!MaHashIndexRecordFactory methodsFor: 'private' stamp: 'cmm 12/4/2002 23:35'!
index: aMaHashIndex

	index _ aMaHashIndex! !

!MaHashIndexRecordFactory methodsFor: 'private' stamp: 'cmm 4/2/2007 18:51'!
maxDepth
	"A shortcut way of saying, index highestPossibleKey log: index numberOfSlots."
	^ (index keySize / (index numberOfSlots log: 2)) asInteger
! !

!MaHashIndexRecordFactory methodsFor: 'building' stamp: 'cmm 7/1/2005 17:00'!
put: aMaHashIndexRecord atLevel: levelInteger byteArrayIndex: indexInteger

	levelInteger > recordNumbersPath size
		ifTrue:
			[ recordNumbersPath add: aMaHashIndexRecord recordNumber.
			byteArrayIndexPath add: indexInteger.
			entryIndexPath add: (aMaHashIndexRecord slotIndexForBax: indexInteger) ]
		ifFalse:
			[ recordNumbersPath
				at: levelInteger
				put: aMaHashIndexRecord recordNumber.
			byteArrayIndexPath
				at: levelInteger
				put: indexInteger.
			entryIndexPath
				at: levelInteger
				put: (aMaHashIndexRecord slotIndexForBax: indexInteger) ].
	levelInteger > recordPath size
		ifFalse:
			[ (recordPath at: levelInteger) populateFrom: aMaHashIndexRecord ]
! !

!MaHashIndexRecordFactory class methodsFor: 'creation' stamp: 'cmm 12/4/2002 23:31'!
index: aMaHashIndex

	^self new
		index: aMaHashIndex;
		postInitialize;
		yourself! !

!MaIntervalCollection methodsFor: 'add / remove' stamp: 'cmm 6/13/2005 15:43'!
addFrom: low to: high

	| intersecting lowestLow highestHigh |
	low > high ifTrue: [ self error: 'low should be lower than high' ].
	intersecting _ self intervalsIntersecting: (self expandedFrom: low to: high).
	lowestLow _ low.
	highestHigh _ high.
	intersecting do:
		[ : each |
		lowestLow _ lowestLow min: each first.
		highestHigh _ highestHigh max: each last ].
	intervals
		removeAll: intersecting ;
		add: (lowestLow to: highestHigh)! !

!MaIntervalCollection methodsFor: 'add / remove' stamp: 'cmm 6/4/2005 18:19'!
removeFrom: low to: high
"Removing is a two-step process:
1) remove intervals completely contained by input
2) adjust intersecting intervals
	- each intersects input-low only, set its high to input-low
	- each intersects input-high only, set its low to input-high
	- each intersects input-low and input-high, set its high to inputs-low and addFrom: inputs-high to its original high"

	(self intervalsInside: (low to: high)) do: [ : each | intervals remove: each ].
	(self intervalsIntersecting: (self expandedFrom: low to: high))
		do: 
			[ : each |  | eachIntersectsLow eachIntersectsHigh |
			eachIntersectsLow _ low between: each first and: each last.
			eachIntersectsHigh _ high between: each first and: each last.
			{ eachIntersectsLow. eachIntersectsHigh } caseOf:
				{ [ { true. false } ] -> [ each setFrom: each first to: high by: each increment ].
				[ { false. true } ] -> [ each setFrom: low to: each last by: each increment ].
				[ { true. true } ] -> 
					[ | oldHigh |
					oldHigh _ each last.
					each setFrom: each first to: low by: each increment.
					self addFrom: high to: oldHigh ] } ]! !

!MaIntervalCollection methodsFor: 'private' stamp: 'cmm 6/4/2005 01:04'!
expandedFrom: low to: high

	^ low-proximityThreshold to: high+proximityThreshold! !

!MaIntervalCollection methodsFor: 'private' stamp: 'cmm 6/4/2005 01:08'!
initialize
	super initialize.
	intervals _ SortedCollection sortBlock: [ : a : b | a first < b first ].
	proximityThreshold _ 1! !

!MaIntervalCollection methodsFor: 'private' stamp: 'cmm 6/4/2005 17:22'!
intervalsInside: anInterval

	^ intervals select: [ : each | anInterval maEnvelopes: each ]! !

!MaIntervalCollection methodsFor: 'private' stamp: 'cmm 6/4/2005 01:04'!
intervalsIntersecting: anInterval

	^ intervals select: [ : each | each maIntersects: anInterval ]! !

!MaIntervalCollection methodsFor: 'testing' stamp: 'cmm 6/4/2005 01:07'!
includes: aNumber

	^ intervals anySatisfy: [ : each | each includes: aNumber ]! !

!MaIntervalCollection methodsFor: 'enumerating' stamp: 'cmm 4/12/2006 10:48'!
intervalsDo: aBlock
	intervals do: aBlock! !

!MaIntervalCollection methodsFor: 'printing' stamp: 'cmm 6/4/2005 18:04'!
maPrintAbbreviatedOn: aStream
	super maPrintAbbreviatedOn: aStream.
	intervals do:
		[ : each |
		aStream 
			maPrint: each first ;
			maPrint: '..' ;
			maPrint: each last ;
			space ]! !

!MaLargeArrayOfRecords methodsFor: 'initialize-release' stamp: 'cmm 6/14/2005 10:41'!
close

	broker close! !

!MaLargeArrayOfRecords methodsFor: 'initialize-release' stamp: 'cmm 7/11/2005 22:37'!
create: aReadWriteStream

	broker _ 
		(MaFileRecordBroker headerSize: self headerSize)
			recordSize: broker recordSize ;
			yourself.
	broker create: aReadWriteStream.
	self writeHeader! !

!MaLargeArrayOfRecords methodsFor: 'initialize-release' stamp: 'cmm 5/22/2005 21:24'!
delete

	broker delete! !

!MaLargeArrayOfRecords methodsFor: 'initialize-release' stamp: 'cmm 5/23/2005 17:35'!
initialize

	super initialize.
	broker _ MaInImageRecordBroker new! !

!MaLargeArrayOfRecords methodsFor: 'initialize-release' stamp: 'cmm 6/14/2005 10:10'!
open: aReadWriteStream

	broker _ MaFileRecordBroker headerSize: self headerSize.
	broker open: aReadWriteStream.
	self readHeader! !

!MaLargeArrayOfRecords methodsFor: 'initialize-release' stamp: 'cmm 5/19/2005 10:13'!
readHeader

	| headerBytes |
	headerBytes _ ByteArray new: self headerSize.
	broker readHeaderInto: headerBytes.
	self initializeFromHeader: headerBytes! !

!MaLargeArrayOfRecords methodsFor: 'initialize-release' stamp: 'cmm 5/18/2005 15:53'!
writeHeader

	broker writeHeaderFrom: self newHeaderBytes! !

!MaLargeArrayOfRecords methodsFor: 'access' stamp: 'cmm 6/6/2005 12:31'!
filename

	^ broker filename! !

!MaLargeArrayOfRecords methodsFor: 'access' stamp: 'cmm 7/6/2005 22:52'!
filesDo: oneArgBlock

	broker filesDo: oneArgBlock! !

!MaLargeArrayOfRecords methodsFor: 'subclass responsibility' stamp: 'cmm 7/18/2005 13:27'!
headerSize

	self subclassResponsibility! !

!MaLargeArrayOfRecords methodsFor: 'subclass responsibility' stamp: 'cmm 5/18/2005 16:22'!
initializeFromHeader: aByteArray

	self subclassResponsibility! !

!MaLargeArrayOfRecords methodsFor: 'subclass responsibility' stamp: 'cmm 6/30/2005 23:14'!
newHeaderBytes

	self subclassResponsibility! !

!MaLargeArrayOfRecords class methodsFor: 'create' stamp: 'cmm 6/14/2005 10:34'!
open: aReadWriteStream

	^ self new open: aReadWriteStream! !

!MaLargeArrayOfRecords class methodsFor: 'create' stamp: 'cmm 12/3/2011 15:56'!
openNamed: filenameString 
	| file |
	(StandardFileStream isAFileNamed: filenameString) ifFalse: [ MaEnvironmentError signal: filenameString , ' does not exist.' ].
	file _ StandardFileStream fileNamed: filenameString.
	(file isNil or: [ file closed ]) ifTrue: [ MaEnvironmentError signal: 'Could not create ' , filenameString ].
	^ self open: file binary! !

!MaLargeArrayOfNumbers methodsFor: 'accessing'!
add: anInteger

	^self
		at: self size + 1
		put: anInteger
! !

!MaLargeArrayOfNumbers methodsFor: 'accessing' stamp: 'cmm 3/15/2005 21:42'!
at: index

	^ self
		at: index
		ifAbsent: [ self error: 'index out of bounds' ]! !

!MaLargeArrayOfNumbers methodsFor: 'accessing' stamp: 'cmm 3/20/2007 21:42'!
at: logicalIndex ifAbsent: aBlock 
	| bytes |
	(self includesKey: logicalIndex) ifFalse: [ ^ aBlock value ].
	broker 
		readInto: (bytes _ self newRecordBytes)
		at: logicalIndex - 1.
	^ bytes 
		maUint: broker recordSize * 8
		at: 0! !

!MaLargeArrayOfNumbers methodsFor: 'accessing' stamp: 'cmm 3/20/2007 21:49'!
at: logicalIndex put: anInteger 
	| bytes |
	logicalIndex > self maxSize ifTrue: [ MaUserError signal: 'Out of range.' ].
	bytes _ self newRecordBytes.
	bytes
		maUint: broker recordSize * 8
		at: 0
		put: anInteger.
	broker 
		writeFrom: bytes
		at: logicalIndex - 1.
	^ anInteger! !

!MaLargeArrayOfNumbers methodsFor: 'accessing' stamp: 'cmm 5/19/2005 10:39'!
maxSize

	^ self maxFileSize // broker recordSize! !

!MaLargeArrayOfNumbers methodsFor: 'accessing' stamp: 'cmm 5/17/2005 23:39'!
size

	^ broker size! !

!MaLargeArrayOfNumbers methodsFor: 'accessing' stamp: 'cmm 4/13/2005 15:27'!
upTo: countInteger startingAt: startInteger

	| answer size targetX |
	size _ self size.
	startInteger > size ifTrue: [ ^ #() ].
	answer _ Array new: (countInteger min: size-startInteger+1).
	targetX _ 0.
	startInteger to: (startInteger+countInteger-1 min: size) do:
		[ : sourceX |
		answer
			at: (targetX _ targetX + 1)
			put: (self at: sourceX) ].
	^ answer! !

!MaLargeArrayOfNumbers methodsFor: 'private' stamp: 'cmm 3/20/2007 21:36'!
byteSize: anInteger 
	broker
		headerSize: self headerSize ;
		recordSize: anInteger! !

!MaLargeArrayOfNumbers methodsFor: 'private'!
headerSize
	"Header consists of:
		number of bits per Integer in the receiver."
	^1
! !

!MaLargeArrayOfNumbers methodsFor: 'private' stamp: 'cmm 3/15/2005 21:40'!
maxFileSize

	^ 2000000000! !

!MaLargeArrayOfNumbers methodsFor: 'private' stamp: 'cmm 3/20/2007 21:40'!
newRecordBytes
	^ ByteArray new: broker recordSize! !

!MaLargeArrayOfNumbers methodsFor: 'testing' stamp: 'cmm 6/4/2005 18:38'!
includesKey: anInteger

	^ anInteger
		between: 1
		and: self size! !

!MaLargeArrayOfNumbers methodsFor: 'initialize' stamp: 'cmm 3/20/2007 21:34'!
initializeFromHeader: aByteArray 
	broker recordSize:
		(aByteArray 
			maUint: 8
			at: 0)! !

!MaLargeArrayOfNumbers methodsFor: 'initialize' stamp: 'cmm 5/19/2005 10:43'!
newHeaderBytes
	"Answer a new ByteArray containing the header for the receiver.
	This is only used when creating the an instance of this class with
	the create: constructor."

	^(ByteArray new: self headerSize)
		maUint: 8
		at: 0
		put: broker recordSize;
		yourself
! !

!MaLargeArrayOfNumbers methodsFor: 'printing' stamp: 'cmm 2/5/2003 00:25'!
maPrintAbbreviatedOn: aStream

	1
		to: (self size min: 100)
		do:
			[ :each |
			aStream
				space;
				maPrint: (self at: each ifAbsent: [ 'error at: ', each printString ]) ].
	self size > 100 ifTrue: [ aStream nextPutAll: ' ...' ]! !

!MaLargeArrayOfNumbers class methodsFor: 'utilities' stamp: 'cmm 6/13/2005 23:09'!
create: aReadWriteStream bitSize: anInteger

	^ (self newWithBitSize: anInteger)
		create: aReadWriteStream ;
		yourself! !

!MaLargeArrayOfNumbers class methodsFor: 'utilities' stamp: 'cmm 12/3/2011 15:56'!
createNamed: filenameString bitSize: anInteger 
	| file |
	(StandardFileStream isAFileNamed: filenameString) ifTrue: [ MaEnvironmentError signal: filenameString , ' already exists.' ].
	file _ StandardFileStream fileNamed: filenameString.
	(file isNil or: [ file closed ]) ifTrue: [ MaEnvironmentError signal: 'Could not create ' , filenameString ].
	^ self
		create: file
		bitSize: anInteger! !

!MaLargeArrayOfNumbers class methodsFor: 'creation' stamp: 'cmm 5/23/2005 17:45'!
newWithBitSize: anInteger

	^ self new
		byteSize: anInteger / 8 ;
		yourself! !

!MaLargeArrayOfNumbers class methodsFor: 'accessing' stamp: 'cmm 3/20/2005 19:23'!
suggestedFileExtension
	^ 'idx'! !

!MaMagnitudeIndex methodsFor: 'building'!
add: oidInteger at: keyInteger

	self subclassResponsibility
! !

!MaMagnitudeIndex methodsFor: 'accessing' stamp: 'cmm 12/1/2014 15:54'!
highestPossibleKey
	^ highestPossibleKey ifNil: [ highestPossibleKey _ (1 bitShift: keySize) - 1 ]! !

!MaMagnitudeIndex methodsFor: 'accessing' stamp: 'cmm 5/23/2005 23:13'!
initialize
	super initialize.
	nextRecordNumber _ 0! !

!MaMagnitudeIndex methodsFor: 'accessing'!
keySize

	^keySize! !

!MaMagnitudeIndex methodsFor: 'accessing'!
lowestPossibleKey

	^0
! !

!MaMagnitudeIndex methodsFor: 'accessing'!
recordSize

	self subclassResponsibility
! !

!MaMagnitudeIndex methodsFor: 'accessing' stamp: 'cmm 4/28/2005 21:12'!
valueSize

	^ valueSize! !

!MaMagnitudeIndex methodsFor: 'private'!
keySize: numberOfBitsInteger

	keySize _ numberOfBitsInteger
! !

!MaMagnitudeIndex methodsFor: 'private' stamp: 'cmm 8/22/2005 09:24'!
open: aReadWriteStream

	super open: aReadWriteStream.
	nextRecordNumber _ broker nextRecordNumber.
	nextRecordNumber isInteger
		ifFalse:
			[ MaSpecialCollectionsSoftwareError signal: 'Invalid index size.  Requires maintenance tool.' ]! !

!MaMagnitudeIndex methodsFor: 'framework' stamp: 'cmm 12/23/2002 22:16'!
size

	self subclassResponsibility! !

!MaHashIndex methodsFor: 'add / remove' stamp: 'cmm 12/5/2014 13:40'!
add: valueInteger at: keyInteger 
	"Find the record which either has space for keyInteger or is as far zoomed-in as possible (with either space for keyInteger or not).  If a record already contains another key greater than keyInteger, that entry must be 'pushed' down so we can maintain key order.  Additionally, we must increment the numberOfChildren for each record to the path of where we finally add."
	guard critical: 
		[ | currentKeyToWrite currentValueToWrite hasSpace reachedBottom |
		keyInteger > self highestPossibleKey ifTrue:
			[ MaHashIndexUserError signal: keyInteger printString, ' is larger than the highestPossibleKey.' ].
		currentKeyToWrite _ keyInteger.
		currentValueToWrite _ valueInteger.
		self selectRoot.
		hasSpace _ false.
		reachedBottom _ false.
		[ hasSpace | reachedBottom ] whileFalse: 
			[ | highestBax keyToMove valueToMove childRecordNumber |
			highestBax _ record highestByteArrayIndexFor: currentKeyToWrite.
			((hasSpace _ record canAdd: currentKeyToWrite) or: 
				[ (keyToMove _ record keyAtByteArrayIndex: highestBax) > currentKeyToWrite ]) 
				ifTrue: 
					[ hasSpace ifFalse: 
						[ valueToMove _ record valueAtByteArrayIndex: highestBax.
						record vacateSlotAtByteArrayIndex: highestBax ].
					record incrementNumberOfChildrenAtByteArrayIndex: (record 
							atKey: currentKeyToWrite
							put: currentValueToWrite) ]
				ifFalse: [ record incrementNumberOfChildrenAtByteArrayIndex: highestBax ].
			self writeRecord: record.
			valueToMove notNil ifTrue: 
				[ "we will need to push this key/value pair down"
				currentKeyToWrite _ keyToMove.
				currentValueToWrite _ valueToMove ].
			childRecordNumber _ record recordNumberCloserTo: currentKeyToWrite.
			reachedBottom _ childRecordNumber = 0.
			reachedBottom ifFalse: [ self selectRecord: childRecordNumber ] ].
		(reachedBottom and: [ hasSpace not ]) ifTrue: 
			[ self selectNewRecordFor: currentKeyToWrite.
			record incrementNumberOfChildrenAtByteArrayIndex: (record 
					atKey: currentKeyToWrite
					put: currentValueToWrite).
			self writeRecord ] ]! !

!MaHashIndex methodsFor: 'add / remove' stamp: 'cmm 3/26/2006 19:22'!
at: key put: value
	"For collection api compatibility."
	self
		add: value
		at: key.
	^ value! !

!MaHashIndex methodsFor: 'add / remove' stamp: 'cmm 9/1/2006 18:45'!
remove: valueInteger at: keyInteger 
	"Answer a boolean indicating whether anything was removed."
	guard critical: 
		[ | currentBaxToFill sourceBax parentRecord childRecord baxFilled |
		(self 
			includesValue: valueInteger
			at: keyInteger) ifFalse: [ ^ false ].
		self 
			navigateToward: keyInteger
			until: 
				[ : eachRecord | 
				(currentBaxToFill _ eachRecord 
					removeKey: keyInteger
					withValue: valueInteger) notNil ]
			do: 
				[ : eachRecord | 
				"No need for beforeImageSignal here because we already signaled it in the until block."
				eachRecord decrementNumberOfChildrenAtKey: keyInteger.
				self writeRecord ].
		self writeRecord.

		"get out if we can.."
		currentBaxToFill ifNil: [ ^ true ].
		(record hasChildAtByteArrayIndex: currentBaxToFill) ifFalse: [ ^ true ].

		"Now pull up child record entries into the newly vacated slot because add looks for the first available slot that is eligible for the key it is adding, which *could* be greater than the key of the next child (meaning we'd then be out of order)."
		sourceBax _ 0.	"non-nil"
		parentRecord _ record independentCopy.
		childRecord _ record independentCopy.
		
		[ sourceBax notNil and: [ parentRecord hasChildAtHighestByteArrayIndexForBax: currentBaxToFill ] ] whileTrue: 
			[ | highestByteArrayIndexForBaxToFill |
			highestByteArrayIndexForBaxToFill _ parentRecord highestByteArrayIndexForAnyKeyAt: currentBaxToFill.
			self 
				readRecord: childRecord
				at: (parentRecord recordNumberAtByteArrayIndex: highestByteArrayIndexForBaxToFill).
			sourceBax _ childRecord byteArrayIndexOfLowestEntry.
			sourceBax ifNotNil: 
				[ baxFilled _ parentRecord 
					atKey: (childRecord keyAtByteArrayIndex: sourceBax)
					put: (childRecord valueAtByteArrayIndex: sourceBax).
				baxFilled ~= highestByteArrayIndexForBaxToFill ifTrue: 
					[ parentRecord incrementNumberOfChildrenAtByteArrayIndex: baxFilled.
					parentRecord decrementNumberOfChildrenAtByteArrayIndex: highestByteArrayIndexForBaxToFill ].
				childRecord
					decrementNumberOfChildrenAtByteArrayIndex: sourceBax ;
					vacateSlotAtByteArrayIndex: sourceBax.
				self
					writeRecord: parentRecord ;
					writeRecord: childRecord.
				parentRecord populateFrom: childRecord.
				currentBaxToFill _ sourceBax ] ].
		^ true ]! !

!MaHashIndex methodsFor: 'SUnit tests' stamp: 'cmm 6/12/2006 22:48'!
allRecordsDo: twoArgBlock 
	guard critical: 
		[ self selectRoot.
		self 
			recordsFrom: record independentCopy
			do: twoArgBlock ]! !

!MaHashIndex methodsFor: 'SUnit tests' stamp: 'sig 7/20/2007 11:14'!
do: aBlock for: aMagmaFileTraverser using: aMaReadStrategy

	self
		entriesFromIndex: 1
		do:
			[ :eachRecord :recordPosition :levels |
			aMagmaFileTraverser
				graphFrom: (eachRecord keyAtByteArrayIndex: recordPosition)
				do: aBlock
				using: aMaReadStrategy ]
		until:
			[ :eachRecord :recordPosition :levels | false ]
! !

!MaHashIndex methodsFor: 'SUnit tests' stamp: 'cmm 9/9/2006 23:42'!
findAnomalies
	| answer |
	answer _ Dictionary new.
	self allRecordsDo:
		[ :eachParentRec :eachChildRec |
		(eachChildRec 
			addAnomaliesTo: answer 
			usingParent: eachParentRec) ifTrue:
				[ MaNotification new
					tag: answer;
					signal ] ].
	^answer! !

!MaHashIndex methodsFor: 'SUnit tests' stamp: 'cmm 7/2/2005 17:06'!
hasAnomalies

	^ self findAnomalies notEmpty! !

!MaHashIndex methodsFor: 'SUnit tests' stamp: 'cmm 11/4/2014 15:19'!
recordsDo: twoArgBlock level: level byteArrayIndex: anInteger 
self maMarked: 'delete'.
	guard critical: 
		[ | parent |
		recordFactory 
			put: record
			atLevel: level
			byteArrayIndex: anInteger.
		parent _ recordFactory recordAtLevel: level.
		twoArgBlock 
			value: parent
			value: level.
		parent 
			byteArrayIndexesFrom: 0
			do: 
				[ : eachBax | 
				(parent hasChildAtByteArrayIndex: eachBax) ifTrue: 
					[ self selectRecord: (parent recordNumberAtByteArrayIndex: eachBax).
					self 
						recordsDo: twoArgBlock
						level: level + 1
						byteArrayIndex: anInteger ] ] ]! !

!MaHashIndex methodsFor: 'SUnit tests' stamp: 'cmm 6/12/2006 22:49'!
recordsFrom: aMaHashIndexRecord do: twoArgBlock 
	guard critical: 
		[ | childRec |
		aMaHashIndexRecord 
			byteArrayIndexesFrom: 0
			do: 
				[ : eachBax | 
				(aMaHashIndexRecord hasChildAtByteArrayIndex: eachBax) ifTrue: 
					[ childRec _ aMaHashIndexRecord independentCopy.
					self 
						readRecord: childRec
						at: (aMaHashIndexRecord recordNumberAtByteArrayIndex: eachBax).
					twoArgBlock 
						value: aMaHashIndexRecord
						value: childRec.
					self 
						recordsFrom: childRec
						do: twoArgBlock ] ] ]! !

!MaHashIndex methodsFor: 'SUnit tests' stamp: 'cmm 11/3/2014 20:07'!
upTo: countInteger keysFrom: startKey 
	guard critical: 
		[ | result answerIndex |
		result _ Array new: countInteger.
		answerIndex _ 1.
		self 
			entriesFrom: startKey
			do: 
				[ : currentRecord : index : level | 
				(currentRecord hasEntryAtByteArrayIndex: index) ifTrue: 
					[ result 
						at: answerIndex
						put: (currentRecord keyAtByteArrayIndex: index).
					answerIndex _ answerIndex + 1 ] ]
			until: [ : currentRecord : index : level | answerIndex > countInteger ].
		"Need to check in case of a small index (say only 9 entries?)."
		^ answerIndex <= countInteger 
			ifTrue: 
				[ result 
					copyFrom: 1
					to: answerIndex - 1 ]
			ifFalse: [ result ] ]! !

!MaHashIndex methodsFor: 'initializing' stamp: 'cmm 7/18/2005 13:22'!
createRecord

	record _
		(MaHashIndexRecord
			keySize: keySize
			valueSize: valueSize
			numberOfSlots: hashRecordSize)

				beFrom: 0
				to: (2 raisedTo: keySize) - 1;

				recordNumber: 0 ;
				yourself.
	broker recordSize: record bufferSize! !

!MaHashIndex methodsFor: 'initializing' stamp: 'jpb 5/12/2021 19:49:04'!
initialize
	super initialize.
	guard _ MaGuard new! !

!MaHashIndex methodsFor: 'initializing'!
initializeRecordFactory

	recordFactory _ MaHashIndexRecordFactory index: self
! !

!MaHashIndex methodsFor: 'initializing'!
initializeRecords

	self
		createRecord;
		initializeRecordFactory
! !

!MaHashIndex methodsFor: 'initializing' stamp: 'cmm 5/23/2005 17:54'!
keySize: keySizeInteger valueSize: valueSizeInteger hashRecordSize: recordSizeInteger

	keySize _ keySizeInteger.
	valueSize _ valueSizeInteger.
	hashRecordSize _ recordSizeInteger.
	self initializeRecords! !

!MaHashIndex methodsFor: 'enumerating'!
entriesFrom: keyInteger do: threeArgBlock until: conditionBlock
	"The first two arguments of threeArgBlock and conditionBlock are the record and the
	internal index position needed to access the of each entry in those records via
	keyAtByteArrayIndex:, oidAtByteArrayIndex:, and recordNumberAtByteArrayIndex:.
	The third argument is the levels from the root record, where the root is level 1.
	This is used to reference into the receivers preMadeRecords, a performance optimization."

	^self
		slotsFrom: keyInteger
		do:
			[ :currentRecord :byteArrayIndex :level |
			(currentRecord hasEntryAtByteArrayIndex: byteArrayIndex)
				ifTrue:
					[ threeArgBlock
						value: currentRecord
						value: byteArrayIndex
						value: level ] ]
		until: conditionBlock
! !

!MaHashIndex methodsFor: 'enumerating'!
entriesFromIndex: globalIndex do: threeArgBlock until: conditionBlock

	^self
		slotsFromIndex: globalIndex
		do:
			[ :currentRecord :byteArrayIndex :level |
			(currentRecord hasEntryAtByteArrayIndex: byteArrayIndex)
				ifTrue:
					[ threeArgBlock
						value: currentRecord
						value: byteArrayIndex
						value: level ] ]
		until: conditionBlock
! !

!MaHashIndex methodsFor: 'enumerating' stamp: 'cmm 6/4/2006 12:53'!
keysAndValuesFrom: lowKey startingAt: anInteger do: twoArgBlock until: conditionBlock 
	"Value twoArgBlock with each key and value pair, until conditionBlock is false for same key-value pair, starting at anInteger after the lowest index of lowKey."
	| lowest currentIndex |
	currentIndex _ 0.
	lowest _ self 
		indexOfLowest: lowKey
		exactKey: false.
	lowest > 0 ifTrue: 
		[ self 
			entriesFromIndex: lowest + anInteger - 1
			do: 
				[ : currentRecord : byteArrayIndex : level | 
				currentIndex _ currentIndex + 1.
				twoArgBlock 
					value: (currentRecord keyAtByteArrayIndex: byteArrayIndex)
					value: (currentRecord valueAtByteArrayIndex: byteArrayIndex) ]
			until: 
				[ : currentRecord : byteArrayIndex : level | 
				conditionBlock 
					value: (currentRecord keyAtByteArrayIndex: byteArrayIndex)
					value: (currentRecord valueAtByteArrayIndex: byteArrayIndex) ] ]! !

!MaHashIndex methodsFor: 'enumerating' stamp: 'cmm 6/12/2006 22:46'!
slotsFrom: keyInteger do: threeArgBlock until: conditionBlock 
	"The first two arguments of threeArgBlock and conditionBlock are the record and the internal index position needed to access the of each entry in those records via keyAtByteArrayIndex:, oidAtByteArrayIndex:, and recordNumberAtByteArrayIndex:.  The third argument is the levels from the root record, where the root is level 1.  This is used to reference into the receivers preMadeRecords, a performance optimization."
	guard critical: 
		[ | level startingEntryIndex |
		(level _ self selectFirstRecordWithKeyEqualOrGreaterThan: keyInteger) isNil ifTrue: [ ^ self ].
		"For inverted records, it is possible the entryIndex for keyInteger will be consumed by the next lower key.  Unfortunately, we have to check."
		startingEntryIndex _ record slotIndexFor: keyInteger.
		(record keyAtSlotIndex: startingEntryIndex) < keyInteger ifTrue: [ startingEntryIndex _ startingEntryIndex + 1 ].
		self 
			traverseSlotsFromRecord: record
			index: startingEntryIndex
			do: threeArgBlock
			until: conditionBlock
			level: level ]! !

!MaHashIndex methodsFor: 'enumerating' stamp: 'cmm 6/12/2006 22:46'!
slotsFromIndex: globalIndex do: threeArgBlock until: conditionBlock 
	"The first two arguments of threeArgBlock and conditionBlock are the record and the internal index position needed to access the of each entry in those records via keyAtByteArrayIndex:, oidAtByteArrayIndex:, and recordNumberAtByteArrayIndex:.  The third argument is the levels from the root record, where the root is level 1.  This is used to reference into the receivers preMadeRecords, a performance optimization."
	guard critical: 
		[ | byteArrayIndexAndLevelArray |
		(byteArrayIndexAndLevelArray _ self selectRecordAt: globalIndex) isNil ifTrue: [ ^ self ].
		self 
			traverseSlotsFromRecord: record
			index: (record slotIndexForBax: byteArrayIndexAndLevelArray first)
			do: threeArgBlock
			until: conditionBlock
			level: byteArrayIndexAndLevelArray last ]! !

!MaHashIndex methodsFor: 'enumerating' stamp: 'cmm 4/12/2006 21:53'!
upTo: countInteger keysAndValuesFrom: lowKey to: highKey startingAt: index do: twoArgBlock
	"Answer the specified number of values starting at logical-position index within the lowKey to highKey range, value twoArgBlock with each key-value pair in that range."
	| lowest currentIndex |
	currentIndex _ 0.
	lowest _ self indexOfLowest: lowKey exactKey: false.
	lowest > 0
		ifTrue:
			[ self
				entriesFromIndex: lowest + index - 1
				do:
					[ : currentRecord : byteArrayIndex : level |
					currentIndex _ currentIndex + 1.
					twoArgBlock
						value: (currentRecord keyAtByteArrayIndex: byteArrayIndex)
						value: (currentRecord valueAtByteArrayIndex: byteArrayIndex) ]
				until:
					[  : currentRecord : byteArrayIndex : level |
					currentIndex = countInteger
					or: [ (currentRecord keyAtByteArrayIndex: byteArrayIndex) > highKey ] ] ]! !

!MaHashIndex methodsFor: 'private'!
getNextRecordNumber

	^nextRecordNumber _ nextRecordNumber + 1
! !

!MaHashIndex methodsFor: 'private' stamp: 'cmm 4/5/2007 00:13'!
headerSize
	^ MaHashIndexHeader headerSize! !

!MaHashIndex methodsFor: 'private' stamp: 'cmm 6/12/2006 17:26'!
indexOfLowest: keyInteger exactKey: aBoolean 
	"If aBoolean is true, answer 0 if we don't find an exact key.  If false answer the index of the first equal or higher key."
	| total index |
	^ guard critical: 
		[ total _ 0.
		self 
			navigateToward: keyInteger
			until: 
				[ : currentRecord | 
				| foundRecord |
				foundRecord _ false.
				currentRecord 
					eligibleByteArrayIndexesFor: keyInteger
					do: 
						[ : each | 
						((currentRecord hasEntryAtByteArrayIndex: each) and: [ (currentRecord keyAtByteArrayIndex: each) >= keyInteger ]) ifTrue: [ foundRecord _ true ] ].
				total _ total + (record numberOfChildrenBefore: keyInteger).
				foundRecord ]
			do: 
				[ : currentRecord | "nada" ].
		"We now have the correct potential record selected and a correct total number of entries that occur before the entry that would contain keyInteger.  Now determine whether we should answer it or nil"
		index _ total + 1.
		aBoolean 
			ifTrue: 
				[ (record hasEntryForKey: keyInteger) 
					ifTrue: [ ^ index ]
					ifFalse: [ 0 ] ]
			ifFalse: 
				[ index > self size 
					ifTrue: [ 0 ]
					ifFalse: [ index ] ] ]! !

!MaHashIndex methodsFor: 'private' stamp: 'cmm 4/8/2007 20:13'!
initializeFromHeader: aByteArray
	| header |
	header _ MaHashIndexHeader new byteArray: aByteArray.
	self
		keySize: header keySize
		valueSize: header valueSize
		hashRecordSize: header recordSize.
	broker 
		headerSize: header headerSize ;
		recordSize: record bufferSize! !

!MaHashIndex methodsFor: 'private' stamp: 'cmm 11/4/2014 11:13'!
navigateToward: keyInteger until: untilBlock do: doBlock
	"Select records between the root and the one that can contain keyInteger and value one-argument doBlock on each of those records until the one-argument untilBlock values true or we cannot navigate any closer to keyInteger."
	| level |
	level _ 1.
	self selectRoot.
	[ | goalRecordReached bax |
	bax _ record highestByteArrayIndexFor: keyInteger.
	recordFactory
		put: record
		atLevel: level
		byteArrayIndex: bax.
	goalRecordReached _ untilBlock value: record.
	goalRecordReached not and: [ (record numberOfChildrenAtByteArrayIndex: bax) > 1 ] ]
		whileTrue:
			[ doBlock value: record.
			self selectRecord: (record recordNumberCloserTo: keyInteger).
			level _ level + 1 ]! !

!MaHashIndex methodsFor: 'private' stamp: 'cmm 4/5/2007 00:02'!
newHeaderBytes
	^ MaHashIndexHeader new 
		headerBytesForKeySize: keySize
		valueSize: valueSize
		recordSize: hashRecordSize! !

!MaHashIndex methodsFor: 'private' stamp: 'cmm 7/1/2005 16:54'!
numberOfSlots

	^ record numberOfSlots! !

!MaHashIndex methodsFor: 'private' stamp: 'cmm 11/27/2011 20:05'!
readRecord: aMaHashIndexRecord at: recordIndex 
	broker 
		readInto: aMaHashIndexRecord byteArray
		at: recordIndex.
	^ aMaHashIndexRecord
		resetForNewKeyRange ;
		recordNumber: recordIndex ;
		yourself! !

!MaHashIndex methodsFor: 'private'!
recordSize

	^record bufferSize
! !

!MaHashIndex methodsFor: 'private' stamp: 'cmm 7/1/2005 17:10'!
selectFirstRecordWithKeyEqualOrGreaterThan: keyInteger
	"If keyInteger is larger than every key in the index, answer nil, otherwise answer the level of the record with the answer."

	| level searchedLevel |
	level _ 1.
	self
		navigateToward: keyInteger
		until:
			[ : currentRecord |
			currentRecord
				eligibleByteArrayIndexesFor: keyInteger
				do:
					[ : each |
					((currentRecord hasEntryAtByteArrayIndex: each)
						and: [ (currentRecord keyAtByteArrayIndex: each) >= keyInteger ])
							ifTrue:
								[ ^ level ] ].
			false ]
		do: [ :currentRecord | level _ level + 1 ].
	"Though we have arrived at the record which would contain keyInteger,
	in case it does not have entries whose keys are >= keyInteger,
	look for the next higher key."
	self
		traverseSlotsFromRecord: record
		index: (record slotIndexFor: keyInteger)
		do: [ : currentRecord : byteArrayIndex : currentLevel | "nothing" ]
		until:
			[ : currentRecord : byteArrayIndex : currentLevel |
			searchedLevel _ currentLevel.
			currentRecord hasEntryAtByteArrayIndex: byteArrayIndex ]
		level: level.
	^ searchedLevel! !

!MaHashIndex methodsFor: 'private'!
selectNewRecordFor: keyInteger
	"We need to make sure we reference the new record from the
	current record."

	self setUpNewRecordFor: keyInteger.
	"Reference new record and write before selecting the new record."
	record
		recordNumberAtSlotForKey: keyInteger
		put: recordFactory preMadeNewRecord recordNumber.
	self
		writeRecord; "replace record that now references newRecord.."
		selectPreMadeNewRecord
! !

!MaHashIndex methodsFor: 'private'!
selectPreMadeNewRecord

	record populateFrom: recordFactory preMadeNewRecord
! !

!MaHashIndex methodsFor: 'private'!
selectRecord: anInteger

	self
		readRecord: record
		at: anInteger
! !

!MaHashIndex methodsFor: 'private' stamp: 'cmm 11/30/2002 13:03'!
selectRecordAt: globalIndex
	"Answer the level and the byteArrayIndex of the selected record, or nil if out of bounds.
	Since the caller of this method is going to call traverseSlotsFromRecord:index:do:until:level:,
	we must be sure to populate the receivers path."

	| level byteArrayIndex currentGlobalPosition outOfBounds |

	self selectRoot.
	level _ 1.
	currentGlobalPosition _ 0.  "0-based"
	outOfBounds _ false.
	[
		byteArrayIndex _
			record
				byteArrayIndexContainingGlobalIndex: globalIndex
				base: currentGlobalPosition.
		byteArrayIndex isNil
			ifTrue:
				[ outOfBounds _ true.
				false ]
			ifFalse:
				[ currentGlobalPosition _
					currentGlobalPosition +
						(record numberOfChildrenBeforeByteArrayIndex: byteArrayIndex).
				(record hasEntryAtByteArrayIndex: byteArrayIndex)
					ifTrue: [ currentGlobalPosition _ currentGlobalPosition + 1 ].
				(currentGlobalPosition < globalIndex) and:
					[ "this should never be false if above is true"
					record hasChildAtByteArrayIndex: byteArrayIndex ] ] ]
						whileTrue:
							[ recordFactory
								put: record
								atLevel: level
								byteArrayIndex: byteArrayIndex.
							self selectRecord:
								(record recordNumberAtByteArrayIndex: byteArrayIndex).
							level _ level + 1 ].
	^outOfBounds
		ifTrue:
			[ nil ]
		ifFalse:
			[ Array
				with: byteArrayIndex
				with: level ]! !

!MaHashIndex methodsFor: 'private'!
selectRoot

	self selectRecord: 0
! !

!MaHashIndex methodsFor: 'private'!
setUpNewRecordFor: keyInteger

	recordFactory preMadeNewRecord
		beZoomedInToward: keyInteger
			from: record;
		recordNumber: self getNextRecordNumber
! !

!MaHashIndex methodsFor: 'private' stamp: 'cmm 11/29/2002 22:46'!
traverseSlotsFromParentRecord: aMaHashIndexRecord index: entryIndex do: threeArgBlock until: conditionBlock level: levelInteger
	"levelInteger is 1 for the root record."

	| conditionMet |

	conditionMet _ false.
	aMaHashIndexRecord
		byteArrayIndexesFrom: entryIndex
		do:
			[ :index | | nextToRead |
			conditionMet
				ifFalse:
					[ nextToRead _ aMaHashIndexRecord recordNumberAtByteArrayIndex: index.
					(conditionBlock
						value: aMaHashIndexRecord
						value: index
						value: levelInteger)
							ifTrue:
								[ conditionMet _ true ]
							ifFalse:
								[ threeArgBlock
									value: aMaHashIndexRecord
									value: index
									value: levelInteger ] ].
			conditionMet
				ifFalse:
					[ nextToRead > 0
						ifTrue:
							[ | currentRecord |
							currentRecord _ recordFactory recordAtLevel: levelInteger + 1.
							self
								readRecord: currentRecord
								at: nextToRead.
							conditionMet _
								self
									traverseSlotsFromParentRecord: currentRecord
									index: 0
									do: threeArgBlock
									until: conditionBlock
									level: levelInteger + 1 ] ] ].
	^conditionMet
! !

!MaHashIndex methodsFor: 'private' stamp: 'cmm 11/29/2002 22:46'!
traverseSlotsFromRecord: aMaHashIndexRecord index: entryIndex do: threeArgBlock until: conditionBlock level: levelInteger
	"levelInteger is 1 for the root record."

	| done |

	done _
		self
			traverseSlotsFromParentRecord: aMaHashIndexRecord
			index: entryIndex
			do: threeArgBlock
			until: conditionBlock
			level: levelInteger.
	(done not and: [ levelInteger > 1 ])
		ifTrue:
			[ | nextStart |
			nextStart _ recordFactory recordAtLevel: levelInteger - 1.
			self
				readRecord: nextStart
				at: (recordFactory recordNumberAtLevel: levelInteger - 1).
			self
				traverseSlotsFromRecord: nextStart
				index: (recordFactory entryIndexAtLevel: levelInteger - 1) + 1
				do: threeArgBlock
				until: conditionBlock
				level: levelInteger - 1 ]
! !

!MaHashIndex methodsFor: 'private'!
writeNewRoot

	self writeRecord
! !

!MaHashIndex methodsFor: 'private'!
writeRecord

	self writeRecord: record
! !

!MaHashIndex methodsFor: 'private' stamp: 'cmm 3/20/2007 21:30'!
writeRecord: aMaHashIndexRecord 
	broker 
		writeFrom: aMaHashIndexRecord byteArray
		at: aMaHashIndexRecord recordNumber! !

!MaHashIndex methodsFor: 'accessing'!
hashRecordSize

	^hashRecordSize! !

!MaHashIndex methodsFor: 'accessing'!
indexOf: keyInteger

	^self
		indexOfLowest: keyInteger
		exactKey: true
! !

!MaHashIndex methodsFor: 'accessing' stamp: 'cmm 6/12/2006 17:27'!
indexOfHighest: keyInteger 
	"If keyInteger is present, answer the index of its last occurrence.  Otherwise, answer the index of the next lower key.  If keyInteger is lower than all keys in the receiver, answer 0."
	| lowestIndexOfNextHigherKey |
	^ guard critical: 
		[ keyInteger >= self highestPossibleKey ifTrue: [ ^ self size ].
		lowestIndexOfNextHigherKey _ self 
			indexOfLowest: keyInteger + 1
			exactKey: false.
		lowestIndexOfNextHigherKey = 1 ifTrue: [ ^ 0 ].	"lower than all"
		lowestIndexOfNextHigherKey = 0 
			ifTrue: [ self size ]
			ifFalse: [ lowestIndexOfNextHigherKey - 1 max: 1 ] ]! !

!MaHashIndex methodsFor: 'accessing' stamp: 'cmm 6/12/2006 17:28'!
numberOfEntriesFrom: lowKey to: highKey 
	"Inclusive of lowKey and highKey, if those keys exist.
	If lowKey does not exist, we count from the next higher key.
	If highKey doesn't exist, we count up to the next highestKey."
	^ guard critical: 
		[ | lowest |
		(lowest _ self 
			indexOfLowest: lowKey
			exactKey: false) = 0 ifTrue: [ ^ 0 ].
		(self indexOfHighest: highKey) - lowest + 1 ]! !

!MaHashIndex methodsFor: 'accessing'!
occurrencesOf: keyInteger

	^self
		numberOfEntriesFrom: keyInteger
		to: keyInteger
! !

!MaHashIndex methodsFor: 'accessing' stamp: 'cmm 6/12/2006 17:26'!
size
	^ guard critical: 
		[ self selectRoot.
		record numberOfChildren ]! !

!MaHashIndex methodsFor: 'accessing' stamp: 'cmm 4/17/2005 22:13'!
upTo: countInteger at: keyInteger

	^ self
		upTo: countInteger
		keysAndValuesFrom: keyInteger
		to: keyInteger
		startingAt: 1! !

!MaHashIndex methodsFor: 'accessing' stamp: 'cmm 11/16/2007 16:36'!
upTo: countInteger keysAndValuesFrom: lowKey to: highKey startingAt: index 
	"Answer the specified number of values starting at logical-position index *within* the lowKey to highKey range."
	^ guard critical: 
		[ | answerIndex keys values |
		answerIndex _ 0.
		keys _ Array new: countInteger.
		values _ Array new: countInteger.
		self 
			upTo: countInteger
			keysAndValuesFrom: lowKey
			to: highKey
			startingAt: index
			do: 
				[ : eachKey : eachValue | 
				keys 
					at: (answerIndex _ answerIndex + 1)
					put: eachKey.
				values 
					at: answerIndex
					put: eachValue ].
		answerIndex = 0 
			ifTrue: 
				[ {  #(). #()  } ]
			ifFalse: 
				[ answerIndex < countInteger 
					ifTrue: 
						[ { 
							(keys 
								copyFrom: 1
								to: answerIndex).
							(values 
								copyFrom: 1
								to: answerIndex)
						 } ]
					ifFalse: 
						[ {  keys. values  } ] ] ]! !

!MaHashIndex methodsFor: 'accessing' stamp: 'cmm 11/16/2007 16:36'!
upTo: countInteger keysAndValuesFromIndex: lowIndex 
	^ guard critical: 
		[ | answerIndex keys values |
		keys _ Array new: countInteger.
		values _ Array new: countInteger.
		answerIndex _ 0.
		self 
			entriesFromIndex: lowIndex
			do: 
				[ : currentRecord : byteArrayIndex : level | 
				keys 
					at: (answerIndex _ answerIndex + 1)
					put: (currentRecord keyAtByteArrayIndex: byteArrayIndex).
				values 
					at: answerIndex
					put: (currentRecord valueAtByteArrayIndex: byteArrayIndex) ]
			until: [ : currentRecord : index : level | answerIndex = countInteger ].
		answerIndex = 0 
			ifTrue: 
				[ {  #(). #()  } ]
			ifFalse: 
				[ answerIndex < countInteger 
					ifTrue: 
						[ { 
							(keys 
								copyFrom: 1
								to: answerIndex).
							(values 
								copyFrom: 1
								to: answerIndex)
						 } ]
					ifFalse: 
						[ {  keys. values  } ] ] ]! !

!MaHashIndex methodsFor: 'testing' stamp: 'cmm 6/12/2006 22:50'!
includesKey: anInteger 
	^ guard critical: 
		[ self selectFirstRecordWithKeyEqualOrGreaterThan: anInteger.
		record hasEntryForKey: anInteger ]! !

!MaHashIndex methodsFor: 'testing' stamp: 'cmm 4/28/2005 21:55'!
includesValue: valueInteger at: keyInteger

	| hasEntry key |
	self
		entriesFrom: keyInteger
		do:
			[ : eachRecord : eachByteArrayIndex : level |
			(hasEntry and:
				[ key = keyInteger
					and: [ (eachRecord valueAtByteArrayIndex: eachByteArrayIndex) = valueInteger ] ])
						ifTrue:
							[ ^ true ] ]
		until:
			[ : eachRecord : eachByteArrayIndex : level |
			"Until we're on an entry that could not possibly hold keyInteger."
			((hasEntry _ eachRecord hasEntryAtByteArrayIndex: eachByteArrayIndex)
				and: [ (key _ eachRecord keyAtByteArrayIndex: eachByteArrayIndex) > keyInteger ])
					or: [ eachByteArrayIndex > (eachRecord highestByteArrayIndexFor: keyInteger) ] ].
	^ false! !

!MaHashIndex methodsFor: 'analyzing' stamp: 'cmm 7/20/2011 15:34'!
keyCounts
	"Answer a Bag of the keys of the receiver."
	| counts c |
	counts _ Bag new.
	c _ 0.
	'enumerating ' , self filename 
		displayProgressFrom: 0
		to: self size
		during: 
			[ : bar | 
			self 
				entriesFrom: 0
				do: 
					[ : rec : bax : lvl | 
					bar value: (c _ c + 1).
					counts add: (rec keyAtByteArrayIndex: bax) ]
				until: [ : rec : bax : lvl | false ] ].
	^ counts! !

!MaHashIndex class methodsFor: 'creation' stamp: 'cmm 6/13/2005 23:07'!
create: aReadWriteStream keySize: numberOfBitsInteger valueSize: valueSize recordSize: entriesInteger

	^ (self
		newWithKeySize: numberOfBitsInteger
		valueSize: valueSize
		recordSize: entriesInteger)

		create: aReadWriteStream ;
		yourself! !

!MaHashIndex class methodsFor: 'creation' stamp: 'jpb 5/9/2021 13:14:34'!
createNamed: filenameString keySize: numberOfBitsInteger valueSize: valueSize recordSize: entriesInteger 
	| file fileEntry |
	fileEntry _ filenameString asFileEntry.
	
	fileEntry exists ifTrue: [ MaEnvironmentError signal: filenameString , ' already exists.' ].
	
	file _ fileEntry writeStream.
	
	(file isNil or: [ file closed ])
		ifTrue: [ MaEnvironmentError signal: 'Could not create ' , filenameString ].
	
	^ self
		create: file binary
		keySize: numberOfBitsInteger
		valueSize: valueSize
		recordSize: entriesInteger! !

!MaHashIndex class methodsFor: 'creation' stamp: 'cmm 3/17/2011 22:43'!
newWithKeySize: numberOfBitsInteger valueSize: valueSize recordSize: entriesInteger
	"Use this constructor only when you want to create in-memory cached-hash-index."
	(self validRecordSizes includes: entriesInteger) 
		ifFalse: [ MaUserError signal: 'recordSize must be one of ', self validRecordSizes printString ].
	(self validKeySizes includes: numberOfBitsInteger) 
		ifFalse: [ MaUserError signal: 'keySize must be one of ', self validKeySizes printString ].
	^ self new
		keySize: numberOfBitsInteger
		valueSize: valueSize
		hashRecordSize: entriesInteger ;

		writeNewRoot ;
		yourself! !

!MaHashIndex class methodsFor: 'creation'!
suggestedFileExtension

	^'hdx'
! !

!MaHashIndex class methodsFor: 'accessing' stamp: 'cmm 11/17/2010 10:41'!
validKeySizes
	"Record sizes must be a power of 2 so that slots in every MaHashIndexRecord will be uniformely sized."
	^ 16
		to: 4096
		by: 8! !

!MaHashIndex class methodsFor: 'accessing' stamp: 'cmm 8/17/2005 21:21'!
validRecordSizes
	"Record sizes must be a power of 2 so that slots in every MaHashIndexRecord will be uniformely sized."

	^ #(2 4 8 16 32 64 128)! !

!MaRecordBroker methodsFor: 'accessing' stamp: 'cmm 8/12/2007 20:34'!
close
	"File-based will override."! !

!MaRecordBroker methodsFor: 'accessing' stamp: 'cmm 5/17/2005 23:49'!
headerSize

	^ headerSize! !

!MaRecordBroker methodsFor: 'accessing' stamp: 'cmm 5/17/2005 23:49'!
headerSize: anInteger

	headerSize _ anInteger! !

!MaRecordBroker methodsFor: 'accessing' stamp: 'cmm 5/22/2005 21:15'!
recordSize

	^ recordSize! !

!MaRecordBroker methodsFor: 'accessing' stamp: 'cmm 5/22/2005 21:15'!
recordSize: anInteger

	recordSize _ anInteger! !

!MaRecordBroker methodsFor: 'override' stamp: 'cmm 5/23/2005 14:32'!
delete
	"Do nothing by default."! !

!MaRecordBroker methodsFor: 'override' stamp: 'cmm 5/17/2005 23:01'!
nextRecordNumber

	self subclassResponsibility ! !

!MaRecordBroker methodsFor: 'override' stamp: 'cmm 8/14/2007 22:37'!
open: fileNameString
	"Only the MaFileRecordBroker needs to do anything."! !

!MaRecordBroker methodsFor: 'override' stamp: 'cmm 5/23/2005 22:50'!
readInto: aMaFixedLengthRecord at: recordIndex

	self subclassResponsibility! !

!MaRecordBroker methodsFor: 'override' stamp: 'cmm 3/20/2007 22:27'!
writeFrom: aByteArray at: recordIndex 
	self subclassResponsibility! !

!MaRecordBroker class methodsFor: 'as yet unclassified' stamp: 'cmm 5/17/2005 23:52'!
headerSize: anInteger

	^ self new
		headerSize: anInteger ;
		yourself! !

!MaFileRecordBroker methodsFor: 'file-specific' stamp: 'cmm 5/17/2005 23:32'!
close

	file ifNotNil: [ file closed ifFalse: [ file close ] ]! !

!MaFileRecordBroker methodsFor: 'file-specific' stamp: 'cmm 6/13/2005 23:22'!
create: aFileStream

	file _ aFileStream ifNil: [ ReadWriteStream on: (ByteArray new: 1000) ]! !

!MaFileRecordBroker methodsFor: 'file-specific' stamp: 'cmm 5/18/2005 13:30'!
delete

	self close.
	(FileDirectory forFileName: file name) deleteFileNamed: file name! !

!MaFileRecordBroker methodsFor: 'file-specific' stamp: 'cmm 5/18/2005 14:30'!
filePositionFor: recordIndex

	^ recordIndex * recordSize + headerSize! !

!MaFileRecordBroker methodsFor: 'file-specific' stamp: 'cmm 5/30/2006 08:49'!
filename

	^ file filename! !

!MaFileRecordBroker methodsFor: 'file-specific' stamp: 'cmm 6/14/2005 10:31'!
open: aReadWriteStream

	file _ aReadWriteStream! !

!MaFileRecordBroker methodsFor: 'file-specific' stamp: 'cmm 5/17/2005 23:28'!
readHeaderInto: aByteArray

	file
		maRead: self headerSize
		bytesFromPosition: 1
		of: aByteArray
		atFilePosition: 0! !

!MaFileRecordBroker methodsFor: 'file-specific' stamp: 'cmm 7/11/2005 09:03'!
writeHeaderFrom: aByteArray

	file
		maWrite: self headerSize
		bytesFromPosition: 1
		of: aByteArray
		atFilePosition: 0! !

!MaFileRecordBroker methodsFor: 'overriding' stamp: 'cmm 5/23/2005 14:11'!
nextRecordNumber

	^ (file size - self headerSize) / recordSize! !

!MaFileRecordBroker methodsFor: 'overriding' stamp: 'cmm 5/23/2005 14:12'!
size

	^ self nextRecordNumber! !

!MaFileRecordBroker methodsFor: 'record' stamp: 'cmm 3/20/2007 21:49'!
readInto: aByteArray at: recordIndex 
	file 
		maRead: recordSize
		bytesFromPosition: 1
		of: aByteArray
		atFilePosition: (self filePositionFor: recordIndex)! !

!MaFileRecordBroker methodsFor: 'record' stamp: 'cmm 3/20/2007 21:47'!
writeFrom: aByteArray at: recordIndex 
	file 
		maWrite: recordSize
		bytesFromPosition: 1
		of: aByteArray
		atFilePosition: (self filePositionFor: recordIndex)! !

!MaInImageRecordBroker methodsFor: 'initialize' stamp: 'cmm 5/23/2005 17:22'!
initialize

	super initialize.
	records _ OrderedCollection new! !

!MaInImageRecordBroker methodsFor: 'initialize' stamp: 'cmm 5/23/2005 14:34'!
nextRecordNumber

	^ records size! !

!MaInImageRecordBroker methodsFor: 'overriding' stamp: 'cmm 4/5/2007 00:20'!
readInto: aByteArray at: recordIndex 
	"Since records can be 0-based (sigh), we +1 the recordIndex."
	aByteArray 
		replaceFrom: 1
		to: aByteArray size
		with: (records at: recordIndex + 1)
		startingAt: 1! !

!MaInImageRecordBroker methodsFor: 'overriding' stamp: 'cmm 4/8/2007 18:42'!
writeFrom: aByteArray at: recordIndex 
	[ records size < (recordIndex + 1) ] whileTrue: [ records add: nil ].
	records 
		at: recordIndex + 1
		put: aByteArray copy! !

!MaSharedObjectsBroker methodsFor: 'access' stamp: 'cmm 1/30/2015 14:43'!
date: aDate 
	"Answer the exact shared date instance for aDate."
	^ aDate ifNotNil:
		[ aDate maOriginalClass = Date ifFalse: [ MaSoftwareError signal: 'The ''dates'' collection is intended to hold only instances of Date.' ].
		aDate start offset isZero ifFalse: [ MaWarning signal: 'Are you sure you want to canonicalize a non-globalalized Date?' ].
		(dates includesKey: aDate realObjectIfMutatingProxy)
			ifTrue: [ dates at: aDate realObjectIfMutatingProxy ]
			ifFalse:
				[ | dateToPut |
				"Put only a copy to ensure it is a unique instance to this broker and not belonging in another db."
				dateToPut _ aDate veryDeepCopy.
				dates
					at: dateToPut
					ifAbsentPut: [ dateToPut ] ] ]! !

!MaSharedObjectsBroker methodsFor: 'access' stamp: 'cmm 12/13/2016 20:45'!
literal: anObject 
	"Answer the shared version of anObject, a literal String or Array."
	anObject == nil ifTrue: [ ^ anObject ].
	anObject == true ifTrue: [ ^ anObject ].
	anObject == false ifTrue: [ ^ anObject ].
	anObject isSymbol ifTrue: [ ^ anObject ].
	(anObject isInteger and: [ anObject <= 1073741823 ]) ifTrue: [ ^ anObject ].
	(self shouldCacheAsLiteral: anObject) ifFalse: [ ^ anObject ].
	^ self literals
		at: anObject
		ifAbsentPut:
			[ anObject yourself isArray
				ifTrue:
					[ anObject veryDeepCopy collect:
						[ : each | self literal: each ] ]
				ifFalse:
					[ anObject isVariableBinding
						ifTrue:
							[ anObject veryDeepCopy
								key: (self literal: anObject key)
								value: (self literal: anObject value) ]
						ifFalse:
							[ | master masterInArray |
							master _ anObject veryDeepCopy.
							masterInArray _ Array with: master.
							self literals
								at: masterInArray
								ifAbsentPut: [ masterInArray ].
							master as32BitFloatIfFloat ] ] ]! !

!MaSharedObjectsBroker methodsFor: 'private' stamp: 'cmm 10/2/2012 13:33'!
dates
	"Invariably, a commit-conflict will occur on this collection.  This accessor allows applications to check the contents of the conflict and retry if this is the only conflict.  Otherwise, only #date: should be used."
	^ dates! !

!MaSharedObjectsBroker methodsFor: 'private' stamp: 'cmm 4/28/2013 15:47'!
literals
	^ literals ifNil: [ literals _ Dictionary new ]! !

!MaSharedObjectsBroker methodsFor: 'private' stamp: 'cmm 2/22/2014 16:11'!
shouldCacheAsLiteral: anObject 
	"Allow Associations too if both their key and value are literals."
	^ anObject yourself isLiteral or:
		[ anObject isVariableBinding and:
			[ (self shouldCacheAsLiteral: anObject key) and: [ self shouldCacheAsLiteral: anObject value ] ] ]! !

!MaSharedObjectsBroker methodsFor: 'initialize-release' stamp: 'cmm 2/21/2014 17:19'!
initialize
	super initialize.
	dates _ Dictionary new: 500.
	literals _ Dictionary new: 500! !

!MaTree methodsFor: 'building'!
add: anObject
	"Adds anObject as a main parent in the receiver."

	self
		add: anObject
		asChildOf: nil.
	^anObject
! !

!MaTree methodsFor: 'building' stamp: 'cmm 4/13/2007 16:05'!
add: anObject asChildOf: aParentObject 
	parents 
		at: anObject
		put: aParentObject.
	(children 
		at: aParentObject
		ifAbsentPut: [ self newChildCollection ]) in: [ : immediateChildren | (immediateChildren includes: anObject) ifFalse: [ immediateChildren add: anObject ] ].
	children 
		at: anObject
		ifAbsentPut: [ self newChildCollection ].
	^ anObject! !

!MaTree methodsFor: 'building' stamp: 'cmm 2/23/2007 16:00'!
addAll: aCollection 
	"Adds all in aCollection as main parents in the receiver."
	aCollection do: [ : each | self add: each ]! !

!MaTree methodsFor: 'building' stamp: 'cmm 2/23/2007 16:11'!
mergePath: anOrderedCollection 
	"Adds each object in anOrderedCollection as a new path in
	the receiver.  The first element in anOrderedCollection is the
	main parent, and each subsequent element is a child of the
	previous.  Any parts of the path that need created will be."
	^ self 
		mergePath: anOrderedCollection
		to: nil! !

!MaTree methodsFor: 'building' stamp: 'cmm 2/23/2007 16:11'!
mergePath: anOrderedCollection to: parentObject 
	"Adds each object in anOrderedCollection as a new path in the receiver.  The first element in anOrderedCollection is added as a child of parentObject, and each subsequent element is a child of the previous.  Whereever part of the path already exists, it is reused."
	parentObject ifNotNil: [ self verifyIncludes: parentObject ].
	anOrderedCollection 
		inject: parentObject
		into: 
			[ : parent : each | 
			self 
				add: each
				asChildOf: parent.
			each ].
	^ anOrderedCollection! !

!MaTree methodsFor: 'building' stamp: 'cmm 2/23/2007 16:12'!
mergeTree: aMaTree 
	^ self 
		mergeTree: aMaTree
		at: nil! !

!MaTree methodsFor: 'building' stamp: 'cmm 2/23/2007 16:12'!
mergeTree: aMaTree at: anObject 
	self verifyIncludes: anObject.
	aMaTree withParentsDo: 
		[ : each : eachParent | 
		self 
			add: each
			asChildOf: eachParent ].
	^ aMaTree! !

!MaTree methodsFor: 'building' stamp: 'cmm 4/11/2007 17:20'!
move: anObject to: newParentObject 
	^ self 
		add: anObject
		asChildOf: newParentObject! !

!MaTree methodsFor: 'building' stamp: 'cmm 7/25/2002 19:42'!
remove: anObject
	"Removes anObject and all of its children."

	^self
		remove: anObject
		ifAbsent: [ self error: anObject printString, ' was not found in ', self printString ]
! !

!MaTree methodsFor: 'building' stamp: 'cmm 4/13/2007 13:51'!
remove: anObject ifAbsent: aBlock 
	"Answers the tree of removed objects removed after removing anObject after removing it and all of its children."
	| tree |
	(self includes: anObject) ifFalse: [ ^ aBlock value ].
	self removeFromChildren: anObject.
	(tree _ self treeAt: anObject) asSet do: 
		[ : each | 
		parents removeKey: each.
		children 
			removeKey: each
			ifAbsent: 
				[ "do nothing"
				 ] ].
	^ tree! !

!MaTree methodsFor: 'building' stamp: 'cmm 4/13/2007 16:17'!
sortBlock: aBlock 
	"Specify a two-argument block, aBlock, which describes how children at each level are sorted."
	| newChildren |
	sortBlock _ aBlock.
	newChildren _ children class new: children size.
	children keysAndValuesDo: 
		[ : eachParent : eachChildren | 
		newChildren 
			at: eachParent
			put: (eachChildren asSortedCollection: sortBlock) ].
	children _ newChildren! !

!MaTree methodsFor: 'accessing' stamp: 'cmm 2/22/2007 12:25'!
anyOne
	^ self roots anyOne! !

!MaTree methodsFor: 'accessing' stamp: 'cmm 4/11/2007 17:19'!
childrenOf: anObject 
	^ children at: anObject! !

!MaTree methodsFor: 'accessing' stamp: 'cmm 2/23/2007 16:05'!
depthOf: anObject 
	"Returns the number of parents anObject has."
	| depth |
	depth _ -1.
	self 
		pathFrom: anObject
		to: nil
		do: [ : eachInPath | depth _ depth + 1 ].
	^ depth! !

!MaTree methodsFor: 'accessing' stamp: 'cmm 2/23/2007 16:05'!
nodesInPathFrom: someChildObject to: someParentObject 
	"Returns a collection of nodes between someChildObject
	and someParentObject."
	| answer |
	answer _ OrderedCollection new.
	self 
		pathFrom: someChildObject
		to: someParentObject
		do: [ : each | answer add: each ].
	^ answer! !

!MaTree methodsFor: 'accessing' stamp: 'cmm 4/12/2007 13:31'!
parentOf: anObject 
	^ parents at: anObject! !

!MaTree methodsFor: 'accessing' stamp: 'cmm 2/23/2007 15:57'!
pathFrom: anObject 
	"Returns a collection of the objects that are contained in the path to anObject ordered from an Object to the top of the hierarchy."
	^ self 
		nodesInPathFrom: anObject
		to: nil! !

!MaTree methodsFor: 'accessing' stamp: 'cmm 2/23/2007 15:57'!
pathTo: anObject 
	"Returns a collection of the objects that are contained in the path to anObject, ordered from the the top of the hierarchy to anObject."
	^ (self pathFrom: anObject) reverse! !

!MaTree methodsFor: 'accessing' stamp: 'cmm 4/29/2007 13:56'!
reSort
	children do: [ : each | each maIsSortedCollection ifTrue: [ each reSort ] ]! !

!MaTree methodsFor: 'accessing' stamp: 'cmm 6/10/2003 23:08'!
roots
	"Answers a collection of all roots in this tree."

	^self childrenOf: nil
! !

!MaTree methodsFor: 'accessing' stamp: 'cmm 2/23/2007 15:58'!
size
	^ parents size! !

!MaTree methodsFor: 'accessing' stamp: 'cmm 2/23/2007 15:58'!
treeAt: anObject 
	"Return a new instance of the receiver which has a single main parent anObject."
	^ self 
		treeAt: anObject
		ifAbsent: 
			[ self error: anObject printString , ' was not found in ' , self printString ]! !

!MaTree methodsFor: 'accessing' stamp: 'cmm 12/21/2007 09:54'!
treeAt: anObject ifAbsent: aBlock 
	"Return a new instance of the receiver which has a single main parent anObject."
	| newTree |
	(self includes: anObject) ifFalse: [ ^ aBlock value ].
	newTree _ self maOriginalClass new.
	self 
		depthFirstDo: 
			[ : path | 
			newTree 
				add: path last
				asChildOf: (path size > 1 ifTrue: [ path at: path size - 1 ]) ]
		at: anObject.
	^ newTree! !

!MaTree methodsFor: 'converting' stamp: 'cmm 5/24/2012 22:17'!
asSet
	"Answer a Set of all the members of this tree."
	^ parents keys asSet! !

!MaTree methodsFor: 'enumerating' stamp: 'cmm 4/11/2007 17:37'!
breadthFirstDo: oneArgBlock
	self 
		breadthFirstDo: oneArgBlock
		at: nil! !

!MaTree methodsFor: 'enumerating' stamp: 'cmm 4/12/2007 10:45'!
breadthFirstDo: oneArgBlock at: nodeObject 
	self 
		breadthFirstDo: oneArgBlock
		atAll: {nodeObject}
		path: OrderedCollection new! !

!MaTree methodsFor: 'enumerating' stamp: 'cmm 12/21/2007 09:53'!
collect: aBlock
	"Returns a new tree whose nodes have all been operated on by aBlock."
	^self
		collect: aBlock
		into: self maOriginalClass new! !

!MaTree methodsFor: 'enumerating' stamp: 'cmm 2/21/2007 12:55'!
depthFirstDo: oneArgBlock 
	"Value oneArgBlock with the path of objects in the receiver from each main parent in the order of depthFirst."
	self 
		depthFirstDo: oneArgBlock
		at: nil! !

!MaTree methodsFor: 'enumerating' stamp: 'cmm 2/21/2007 12:54'!
depthFirstDo: oneArgBlock at: anObject 
	self 
		depthFirstDo: oneArgBlock
		at: anObject
		path: OrderedCollection new! !

!MaTree methodsFor: 'enumerating' stamp: 'cmm 2/23/2007 16:04'!
detect: aBlock 
	"Evaluate aBlock with each of the receiver's elements as the argument. 
	Answer the first element for which aBlock evaluates to true."

	^ self detect: aBlock ifNone: [self errorNotFound: aBlock]! !

!MaTree methodsFor: 'enumerating' stamp: 'cmm 2/23/2007 16:03'!
detect: aBlock ifNone: exceptionBlock 
	"Evaluate aBlock with each of the receiver's elements as the argument.  
	Answer the first element for which aBlock evaluates to true. If none  
	evaluate to true, then evaluate the argument, exceptionBlock."

	self do: [ : each | (aBlock value: each) ifTrue: [ ^ each ] ].
	^ exceptionBlock value! !

!MaTree methodsFor: 'enumerating' stamp: 'cmm 12/24/2002 16:07'!
do: oneArgBlock

	parents keysDo: oneArgBlock! !

!MaTree methodsFor: 'enumerating' stamp: 'cmm 2/23/2007 16:04'!
maDetect: aBlock ifFound: foundBlock ifNone: exceptionBlock 
	"foundBlock takes one argument, the found object."

	self 
		do: [ :element | (aBlock value: element) ifTrue: [ ^foundBlock value: element ] ].
	^exceptionBlock value
! !

!MaTree methodsFor: 'enumerating' stamp: 'cmm 2/23/2007 16:05'!
pathFrom: anObject do: aBlock 
	"Value aBlock with the objects from anObject to its highest level parent."
	self 
		pathFrom: anObject
		to: nil
		do: aBlock! !

!MaTree methodsFor: 'enumerating' stamp: 'cmm 4/12/2007 13:31'!
pathFrom: someChildObject to: someParentObject do: oneArgBlock 
	"For each node in the tree from someChildObject to someParentObject, inclusive, value oneArgBlock.  The highest level parent (nil) will not be used as an argument to value oneArgBlock."
	| node |
	someParentObject ifNotNil: [ self verifyIncludes: someParentObject ].
	node _ someChildObject.
	[ node isNil or: [ node = someParentObject ] ] whileFalse: 
		[ oneArgBlock value: node.
		node _ self parentOf: node ]! !

!MaTree methodsFor: 'enumerating' stamp: 'cmm 12/21/2007 09:54'!
reject: aBlock 
	"Answer the Set of my elements which do not satisfy aBlock."
	| answer |
	answer _ self maOriginalClass new.
	self do: [ : each | (aBlock value: each) ifFalse: [ answer add: each ] ].
	^ answer! !

!MaTree methodsFor: 'enumerating' stamp: 'cmm 2/23/2007 16:11'!
rejectBranches: aBlock 
	"Returns a new Tree without my branches that satisfy aBlock."
	| newTree |
	newTree _ self maOriginalClass new.
	self do: [ : each | (aBlock value: each) ifFalse: [ newTree mergePath: (self pathTo: each) ] ].
	^ newTree! !

!MaTree methodsFor: 'enumerating' stamp: 'cmm 2/23/2007 16:28'!
select: aBlock 
	"Evaluate aBlock with each of the receiver's elements as the argument.  Answer a new Set, only those elements for which aBlock evaluates to true."
	| newCollection |
	newCollection _ Set new.
	self do: [ : each | (aBlock value: each) ifTrue: [ newCollection add: each ] ].
	^ newCollection! !

!MaTree methodsFor: 'enumerating' stamp: 'cmm 12/21/2007 09:48'!
selectPaths: aBlock 
	"Answer a new Tree with just my branches that at least somewhere link nodes that satisfy aBlock.  The argument to aBlock is the path of nodes to the current node."
	| newTree |
	newTree _ self maOriginalClass new.
	self depthFirstDo: 
		[ : path | 
		(aBlock value: path) ifTrue: [ newTree mergePath: path ] ].
	^ newTree! !

!MaTree methodsFor: 'enumerating' stamp: 'cmm 12/24/2002 16:09'!
withParentsDo: twoArgBlock

	parents keysAndValuesDo: twoArgBlock! !

!MaTree methodsFor: 'private' stamp: 'cmm 4/12/2007 13:10'!
breadthFirstDo: oneArgBlock atAll: nodes path: path 
	nodes do: [ : each | 
		each ifNotNil: 
			[ path addLast: each.
			oneArgBlock value: path ] ].
	nodes ifNotEmpty: 
		[ self 
			breadthFirstDo: oneArgBlock
			atAll: (nodes 
					inject: OrderedCollection new
					into: 
						[ : coll : each | 
						coll
							addAll: (self childrenOf: each) ;
							yourself ])
			path: path ].
	path removeLast! !

!MaTree methodsFor: 'private' stamp: 'cmm 12/21/2007 15:02'!
childrenClass
	^ (Smalltalk hasClassNamed: #MaDictionary) 
		ifTrue: [ Smalltalk classNamed: #MaDictionary ]
		ifFalse: [ Dictionary ]! !

!MaTree methodsFor: 'private' stamp: 'cmm 2/23/2007 17:12'!
collect: aBlock into: aMaTree 
	"Since some objects may share a parent, we use the map to make sure we only value each parent just once, so an identical version of that object is kept."
	| map |
	map _ IdentityDictionary new.
	self withParentsDo: 
		[ : eachChild : eachParent | 
		eachParent isNil 
			ifTrue: 
				[ aMaTree add:
					(map 
						at: eachChild
						ifAbsentPut: [ aBlock value: eachChild ]) ]
			ifFalse: 
				[ aMaTree 
					add: 
						(map 
							at: eachChild
							ifAbsentPut: [ aBlock value: eachChild ])
					asChildOf: 
						(map 
							at: eachParent
							ifAbsentPut: [ aBlock value: eachParent ]) ] ].
	^ aMaTree! !

!MaTree methodsFor: 'private' stamp: 'cmm 3/21/2007 12:03'!
depthFirstDo: oneArgBlock at: anObject path: path 
	anObject ifNotNil: 
		[ path addLast: anObject.
		oneArgBlock value: path ].
	(self childrenOf: anObject) do: 
		[ : each | 
		self 
			depthFirstDo: oneArgBlock
			at: each
			path: path ].
	anObject ifNotNil: [ path removeLast ]! !

!MaTree methodsFor: 'private' stamp: 'cmm 2/23/2007 16:04'!
errorNotFound: anObject
	"Actually, this should raise a special Exception not just an error."

	self error: 'Object is not in the collection.'! !

!MaTree methodsFor: 'private' stamp: 'cmm 4/13/2007 16:07'!
initialize
	super initialize.
	parents _ self parentsClass new.
	children _ self childrenClass new
		at: nil
			put: self newChildCollection ;
		yourself! !

!MaTree methodsFor: 'private' stamp: 'cmm 4/13/2007 16:09'!
newChildCollection
	^ sortBlock 
		ifNil: [ OrderedCollection new ]
		ifNotNil: [ SortedCollection sortBlock: sortBlock ]! !

!MaTree methodsFor: 'private' stamp: 'cmm 11/29/2007 09:45'!
parentsClass
	^ MaDictionary! !

!MaTree methodsFor: 'private' stamp: 'cmm 4/13/2007 13:52'!
removeFromChildren: anObject 
	(children at: (self parentOf: anObject)) remove: anObject! !

!MaTree methodsFor: 'private' stamp: 'cmm 2/23/2007 15:35'!
verifyIncludes: anObject 
	(self includes: anObject) ifFalse: 
		[ self error: self printString , ' does not include ' , anObject printString ]! !

!MaTree methodsFor: 'testing' stamp: 'cmm 4/12/2007 13:31'!
hasChildFor: anObject 
	"Returns true if anObject has any children.  Signal an error if anObject is not part of the hierarchy."
	^ parents includes: anObject! !

!MaTree methodsFor: 'testing' stamp: 'cmm 2/23/2007 16:16'!
hasParentFor: anObject 
	"Returns true if anObject has a parent.  Signal an error if anObject is not part of the hierarchy."
	^ (self parentOf: anObject) notNil! !

!MaTree methodsFor: 'testing' stamp: 'cmm 2/23/2007 17:59'!
ifEmpty: aBlock
	"Evaluate the block if I'm empty"

	^ self isEmpty ifTrue: aBlock! !

!MaTree methodsFor: 'testing'!
includes: anObject 
	^parents includesKey: anObject! !

!MaTree methodsFor: 'testing' stamp: 'cmm 2/23/2007 17:59'!
isEmpty
	"Answer whether the receiver contains any elements."

	^self size = 0! !

!MaTree methodsFor: 'printing' stamp: 'cmm 4/12/2007 16:58'!
maPrintAbbreviatedOn: aStream
	super maPrintAbbreviatedOn: aStream.
	self depthFirstDo:
		[ : path |
		aStream
			cr;
			tab: path size - 1 ;
			maPrint: path last ]! !

!MaIdentityTree methodsFor: 'private' stamp: 'cmm 4/13/2007 13:41'!
childrenClass
	^ IdentityDictionary! !

!MaIdentityTree methodsFor: 'private' stamp: 'cmm 4/13/2007 13:39'!
parentsClass
	^ IdentityDictionary! !

!MaIdentityTree methodsFor: 'private' stamp: 'cmm 4/13/2007 13:53'!
removeFromChildren: anObject 
	"There is no removeIdentical:, so I just did it this way.."
	(children at: (self parentOf: anObject)) removeAllSuchThat: [ : each | each == anObject ]! !

!BTreeKeys methodsFor: 'as yet unclassified' stamp: 'avi 2/27/2004 20:40'!
canGrow
	^ (self at: self size) isNil! !

!BTreeKeys methodsFor: 'as yet unclassified' stamp: 'avi 2/26/2004 18:00'!
canShrink
	^  (self at: self size // 2 + 1) notNil! !

!BTreeKeys methodsFor: 'as yet unclassified' stamp: 'avi 2/25/2004 23:39'!
emptyCopy
	^ self class new: self size! !

!BTreeKeys methodsFor: 'as yet unclassified' stamp: 'avi 2/26/2004 00:39'!
findIndexForKey: aMagnitude
	self withIndexDo:
		[:key :i |
		(key isNil or: [key > aMagnitude]) ifTrue:
			[^ i - 1]].
	^ self size
! !

!BTreeKeys methodsFor: 'as yet unclassified' stamp: 'avi 2/26/2004 00:02'!
first
	^ self at: 1! !

!BTreeKeys methodsFor: 'as yet unclassified' stamp: 'avi 1/2/2006 16:00'!
lastIndex
	self withIndexDo:
		[:key :i |
		key isNil ifTrue:
			[^ i - 1]].
	^ self size
! !

!BTreeKeys methodsFor: 'as yet unclassified' stamp: 'avi 2/26/2004 17:40'!
shiftLeftTo: index
	index to: self size - 1 by: 1 do:
		[:i |
		self at: i put: (self at: i+1)].
	self at: self size put: nil.! !

!BTreeKeys methodsFor: 'as yet unclassified' stamp: 'avi 2/25/2004 23:37'!
shiftRightFrom: index
	self size to: index+1 by: -1 do:
		[:i |
		self at: i put: (self at: i - 1)]
	! !

!BTreeKeys methodsFor: 'as yet unclassified' stamp: 'avi 2/26/2004 00:02'!
withIndexDo: aBlock
	1 to: self size do: [:i | aBlock value: (self at: i) value: i]! !

!BTreeStringKeys methodsFor: 'as yet unclassified' stamp: 'avi 3/2/2004 18:00'!
abbreviationSize
	^ 3! !

!BTreeStringKeys methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
abbreviationsAndIndicesDo: aBlock
	| stream |
	stream _ abbreviations readStream.
	1 to: self size do:
		[:i |
		stream atEnd
			ifFalse: [aBlock value: prefix, (stream next: self abbreviationSize) value: i]
			ifTrue: [aBlock value: nil value: i]]! !

!BTreeStringKeys methodsFor: 'as yet unclassified' stamp: 'avi 3/2/2004 15:41'!
at: aNumber
	^ keys at: aNumber! !

!BTreeStringKeys methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
at: aNumber put: aString
	keys at: aNumber put: aString.
	prefix _ self nilPrefix.! !

!BTreeStringKeys methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
buildAbbreviationsFrom: readStreams
	| nextChars |
	1 to: self abbreviationSize do:
		[:i |
		nextChars _ readStreams collect: [:ea | ea next ifNil: [Character value: 0]].
		nextChars withIndexDo:
			[:c :j |
			abbreviations at: (j-1 * self abbreviationSize) + i put: c]].
	^ abbreviations! !

!BTreeStringKeys methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
extractPrefixFrom: readStreams
	| prefixStream nextChars |
	prefixStream _ String new writeStream.
	
	[readStreams anySatisfy: [:ea | ea atEnd]] whileFalse:
		[nextChars _ readStreams collect: [:ea | ea next].
		(nextChars allSatisfy: [:ea | ea = nextChars first])
				ifTrue: [prefixStream nextPut: nextChars first]
				ifFalse: [readStreams do: [:ea | ea skip: -1]. ^ prefixStream contents]].
	^ prefixStream contents
! !

!BTreeStringKeys methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
findIndexForKey: aString
	| stream str diff |
	prefix = self nilPrefix ifTrue: [self rebuildAbbreviations].
	stream _ aString readStream.
	str _ stream next: prefix size + self abbreviationSize.
	diff _ prefix size + self abbreviationSize - str size.
	str _ str, (String new: diff).
	self abbreviationsAndIndicesDo:
		[:abbr :i |
		abbr ifNil: [^ i - 1].
		str < abbr ifTrue: [^ i - 1].
		str = abbr ifTrue: [^ super findIndexForKey: aString]].
	^ self size! !

!BTreeStringKeys methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
initializeWithSize: aNumber
	keys _ Array new: aNumber.
	prefix _ self nilPrefix.! !

!BTreeStringKeys methodsFor: 'as yet unclassified' stamp: 'avi 3/2/2004 18:51'!
nilPrefix
	^ '^^^'! !

!BTreeStringKeys methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
rebuildAbbreviations
	| keyStreams filled |
	filled _ keys count: [:ea | ea notNil].
	abbreviations _ String new: (filled * self abbreviationSize).
	filled = 0 ifTrue: [prefix _ ''. ^ self ].
	keyStreams _ (1 to: filled) collect: [:i | (keys at: i) readStream].
	
	prefix _ self extractPrefixFrom: keyStreams.
	abbreviations _ self buildAbbreviationsFrom: keyStreams.
! !

!BTreeStringKeys methodsFor: 'as yet unclassified' stamp: 'avi 3/2/2004 16:47'!
size
	^ keys size! !

!BTreeStringKeys class methodsFor: 'as yet unclassified' stamp: 'avi 2/25/2004 14:31'!
new
	^ self new: 8! !

!BTreeStringKeys class methodsFor: 'as yet unclassified' stamp: 'avi 2/26/2004 00:04'!
new: aNumber
	^ self basicNew initializeWithSize: aNumber! !

!BTreeNode methodsFor: 'enumerating' stamp: 'avi 2/23/2004 21:24'!
allChildrenDo: aBlock
	self childrenDo:
		[:ea |
		aBlock value: ea.
		ea allChildrenDo: aBlock]! !

!BTreeNode methodsFor: 'enumerating' stamp: 'avi 2/23/2004 21:34'!
allLeavesDo: aBlock
	self withAllChildrenDo: [:ea | ea isLeaf ifTrue: [aBlock value: ea]]! !

!BTreeNode methodsFor: 'enumerating' stamp: 'avi 2/23/2004 21:44'!
childrenDo: aBlock
	self subclassResponsibility! !

!BTreeNode methodsFor: 'enumerating' stamp: 'avi 2/25/2004 23:31'!
keysAndValuesDo: aBlock
	keys withIndexDo:
		[:key :i |
		key ifNotNil: [aBlock value: key value: (self at: i)]]! !

!BTreeNode methodsFor: 'enumerating' stamp: 'avi 4/20/2005 16:33'!
keysDo: aBlock
	keys withIndexDo:
		[:key :i |
		key ifNotNil: [aBlock value: key] ifNil: [^ self]]! !

!BTreeNode methodsFor: 'enumerating' stamp: 'avi 10/8/2004 17:57'!
leavesFrom: start to: end do: aBlock
	self subclassResponsibility! !

!BTreeNode methodsFor: 'enumerating' stamp: 'avi 2/23/2004 21:59'!
valuesDo: aBlock
	self keysAndValuesDo: [:k :v | aBlock value: v]! !

!BTreeNode methodsFor: 'enumerating' stamp: 'avi 2/23/2004 21:27'!
withAllChildrenDo: aBlock
	aBlock value: self.
	self allChildrenDo: aBlock.! !

!BTreeNode methodsFor: 'testing' stamp: 'avi 2/27/2004 20:41'!
canGrow
	^ keys canGrow! !

!BTreeNode methodsFor: 'testing' stamp: 'avi 2/26/2004 17:59'!
canShrink
	^ keys canShrink! !

!BTreeNode methodsFor: 'testing' stamp: 'avi 2/24/2004 00:22'!
isLeaf
	self subclassResponsibility! !

!BTreeNode methodsFor: 'accessing' stamp: 'avi 2/23/2004 21:23'!
children
	^ Array streamContents: [:s | self childrenDo: [:ea | s nextPut: ea]]! !

!BTreeNode methodsFor: 'accessing' stamp: 'avi 2/23/2004 21:27'!
depth
	^ parent ifNil: [1] ifNotNil: [1 + parent depth]! !

!BTreeNode methodsFor: 'accessing' stamp: 'lr 10/8/2009 12:56'!
first
	self subclassResponsibility! !

!BTreeNode methodsFor: 'accessing' stamp: 'avi 2/26/2004 00:35'!
firstKey
	^ keys first! !

!BTreeNode methodsFor: 'accessing' stamp: 'lr 10/8/2009 12:56'!
last
	self subclassResponsibility! !

!BTreeNode methodsFor: 'accessing' stamp: 'avi 2/24/2004 00:24'!
parent
	^ parent! !

!BTreeNode methodsFor: 'accessing' stamp: 'lr 4/15/2009 09:50'!
parent: aBTreeNode
	parent _ aBTreeNode! !

!BTreeNode methodsFor: 'accessing' stamp: 'avi 2/23/2004 22:17'!
root
	^ parent
		ifNil: [self]
		ifNotNil: [parent root]! !

!BTreeNode methodsFor: 'accessing' stamp: 'avi 2/23/2004 21:47'!
values
	^ Array streamContents: [:s | self valuesDo: [:ea | s nextPut: ea]]! !

!BTreeNode methodsFor: 'private' stamp: 'avi 4/29/2005 12:57'!
ensureParent
	parent ifNil:
		 [self parent: (self interiorNodeClass keys: keys emptyCopy).
		parent insertKey: self firstKey value: self].
	^ parent! !

!BTreeNode methodsFor: 'private' stamp: 'lr 4/15/2009 09:50'!
grow
	| sibling |
	parent ifNotNil:
		[sibling _ parent nextSiblingForChild: self.
		sibling ifNil: [self parent: nil. ^ self].
		sibling canShrink
			ifTrue: [self stealFrom: sibling]
			ifFalse: [self mergeWith: sibling]]
				! !

!BTreeNode methodsFor: 'private' stamp: 'avi 2/25/2004 23:29'!
insertKey: aMagnitude value: anObject at: index
	keys at: index put: aMagnitude.
	self at: index put: anObject! !

!BTreeNode methodsFor: 'private' stamp: 'avi 4/29/2005 12:51'!
interiorNodeClass
	^ BTreeInteriorNode! !

!BTreeNode methodsFor: 'private' stamp: 'avi 5/1/2005 13:56'!
keyArray
	^ keys! !

!BTreeNode methodsFor: 'private' stamp: 'lr 4/15/2009 09:50'!
keys: anArray
	keys _ anArray! !

!BTreeNode methodsFor: 'private' stamp: 'lr 4/15/2009 09:50'!
mergeWith: aNode		
	| oldKey |
	oldKey _ self firstKey.
	aNode keysAndValuesDo:
		[:k :v |
		self insertKey: k value: v].
	parent removeKey: aNode firstKey.
	parent updateKey: oldKey to: self firstKey.! !

!BTreeNode methodsFor: 'private' stamp: 'avi 2/26/2004 17:39'!
shiftLeftTo: index
	keys shiftLeftTo: index.
	index to: self size - 1 by: 1 do:
		[:i |
		self at: i put: (self at: i+1)].
	self at: self size put: nil.! !

!BTreeNode methodsFor: 'private' stamp: 'avi 2/25/2004 23:37'!
shiftRightFrom: index
	keys shiftRightFrom: index.
	self size to: index+1 by: -1 do:
		[:i |
		self at: i put: (self at: i-1)]! !

!BTreeNode methodsFor: 'private' stamp: 'lr 4/15/2009 09:50'!
split
	| other midpoint |
	other _ self class keys: keys emptyCopy.
	midpoint _ self size // 2 + 1.
	midpoint to: self size do:
		[:i |
		other insertKey: (keys at: i) value: (self at: i) at: (i - midpoint + 1).
		keys at: i put: nil.
		self at: i put: nil].
	
	self ensureParent insertKey: other firstKey value: other! !

!BTreeNode methodsFor: 'private' stamp: 'lr 4/15/2009 09:50'!
stealFrom: aNode
	| key value |
	aNode firstKey > self firstKey
		ifTrue: [value _ aNode at: 1. key _ aNode firstKey]
		ifFalse:
			[aNode keysAndValuesDo: [:k :v | key _ k. value _ v].
			parent ifNotNil: [parent updateKey: self firstKey to: key]].
	self insertKey: key value: value.
	aNode removeKey: key! !

!BTreeNode methodsFor: 'inserting' stamp: 'lr 4/15/2009 09:50'!
insertKey: aMagnitude value: anObject
	| index key |
	index _ keys findIndexForKey: aMagnitude.
	index = 0 ifTrue:
		[self canGrow
			ifTrue:
				[self shiftRightFrom: 1.
				^ self insertKey: aMagnitude value: anObject at: 1]
			ifFalse:
				[self split.
				^ (parent childForKey: aMagnitude) insertKey: aMagnitude value: anObject]].
	
	key _ keys at: index.
	key = aMagnitude ifTrue:
		[^ self insertKey: aMagnitude value: anObject at: index].
	index < self size ifTrue:
		[key _ keys at: index + 1.
		key
			ifNil: [^ self insertKey: aMagnitude value: anObject at: index+1]
			ifNotNil:
				[self canGrow ifTrue:
					[self shiftRightFrom: index+1.
					^ self insertKey: aMagnitude value: anObject at: index+1]]].

	"otherwise"
	self split.
	^ (parent childForKey: aMagnitude) insertKey: aMagnitude value: anObject! !

!BTreeNode methodsFor: 'removing' stamp: 'ac 11/15/2005 16:42'!
removeKey: aMagnitude
	self removeKey: aMagnitude ifAbsent: [self error: aMagnitude printString, ' not found.'].! !

!BTreeNode methodsFor: 'removing' stamp: 'lr 4/15/2009 09:50'!
removeKey: aMagnitude ifAbsent: aBlock
	| index key |
	self canShrink ifFalse: [self grow].
	
	index _ keys findIndexForKey: aMagnitude.
	index = 0 ifTrue: [^ aBlock value].
	key _ keys at: index.
	key = aMagnitude ifFalse: [^ aBlock value].
	
	self shiftLeftTo: index.
	
	index = 1 ifTrue: [parent ifNotNil: [parent updateKey: key to: self firstKey]]! !

!BTreeNode class methodsFor: 'as yet unclassified' stamp: 'avi 2/25/2004 12:28'!
keys: anArray
	^ (self new: (anArray size)) keys: anArray! !

!BTreeInteriorNode methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
childForKey: aMagnitude
	| index |
	index _ keys findIndexForKey: aMagnitude.
	index = 0 ifTrue:
		[keys at: 1 put: aMagnitude.
		^ self at: 1].
	^ self at: index
		
! !

!BTreeInteriorNode methodsFor: 'as yet unclassified' stamp: 'avi 2/23/2004 21:47'!
childrenDo: aBlock
	self valuesDo: aBlock! !

!BTreeInteriorNode methodsFor: 'as yet unclassified' stamp: 'jpb 5/12/2021 11:31:34'!
commonKeysWith: aNode keysAndValuesDo: aBlock flip: aBoolean
	| index |
	aNode firstKey < self firstKey ifTrue: [^ aNode commonKeysWith: self keysAndValuesDo: aBlock flip: aBoolean not].
	index _ (keys findIndexForKey: aNode firstKey) max: 1.
	index to: self size do:
		[:i |
		(self at: i) ifNotNil: [:c | c commonKeysWith: aNode keysAndValuesDo: aBlock flip: aBoolean]]! !

!BTreeInteriorNode methodsFor: 'as yet unclassified' stamp: 'avi 4/21/2005 02:28'!
depth
	^ 1 + self firstChild depth! !

!BTreeInteriorNode methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
existingChildForKey: aMagnitude
       "Unlike #childForKey:, this method looks for a child, but doesn't mess with the tree if it doesn't exist."
       | index |
       index _ keys findIndexForKey: aMagnitude.
       index = 0
               ifTrue: [^ nil]
               ifFalse: [^ self at: index].! !

!BTreeInteriorNode methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
existingLeafForKey: aMagnitude
       "Unlike #leafForKey:, this method looks for a leaf but doesn't mess with the tree if it doesn't exist."
       | child |
       child _ self existingChildForKey: aMagnitude.
       ^ child ifNotNil: [child existingLeafForKey: aMagnitude]! !

!BTreeInteriorNode methodsFor: 'as yet unclassified' stamp: 'lr 10/8/2009 12:55'!
first
	self childrenDo: [ :node | ^ node first ].
	self error: 'this tree is empty'! !

!BTreeInteriorNode methodsFor: 'as yet unclassified' stamp: 'avi 2/24/2004 00:39'!
firstChild
	self childrenDo: [:ea | ^ ea].
	self error: 'No children'.! !

!BTreeInteriorNode methodsFor: 'as yet unclassified' stamp: 'avi 2/24/2004 12:05'!
insertKey: aMagnitude value: anObject at: index
	super insertKey: aMagnitude value: anObject at: index.
	anObject parent: self! !

!BTreeInteriorNode methodsFor: 'as yet unclassified' stamp: 'avi 2/24/2004 00:22'!
isLeaf
	^ false! !

!BTreeInteriorNode methodsFor: 'as yet unclassified' stamp: 'lr 10/8/2009 12:56'!
last
	| child |
	child _ nil.
	self childrenDo: [ :node | child _ node ].
	child isNil ifTrue: [ self error: 'this tree is empty' ].
	^ child last! !

!BTreeInteriorNode methodsFor: 'as yet unclassified' stamp: 'avi 2/24/2004 01:59'!
leafForKey: aMagnitude
	^ (self childForKey: aMagnitude) leafForKey: aMagnitude! !

!BTreeInteriorNode methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
leavesFrom: start to: end do: aBlock
	| startIndex endIndex |
	startIndex _ start ifNil: [1] ifNotNil: [(keys findIndexForKey: start) max: 1].
	endIndex _ end ifNil: [keys lastIndex] ifNotNil: [keys findIndexForKey: end].
	startIndex to: endIndex do: [:i | (self at: i) leavesFrom: start to: end do: aBlock]! !

!BTreeInteriorNode methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
nextSiblingForChild: aNode
	| index |
	index _ keys findIndexForKey: aNode firstKey.
	^ (index = self size or: [(keys at: index+1) isNil]) 
		ifTrue: [index = 1 ifFalse: [self at: index - 1] ifTrue: [nil]]
		ifFalse: [self at: index + 1]! !

!BTreeInteriorNode methodsFor: 'as yet unclassified' stamp: 'avi 1/11/2005 13:13'!
updateKey: oldMagnitude to: newMagnitude
       keys withIndexDo:
               [:key :i |
               key = oldMagnitude ifTrue:
                       [(i = 1 and: [parent notNil]) ifTrue:
                               [parent updateKey: oldMagnitude to: newMagnitude].
                       ^ keys at: i put: newMagnitude]].
       self error: 'No such key'! !

!BTreeLeafNode methodsFor: 'as yet unclassified' stamp: 'avi 2/23/2004 21:45'!
childrenDo: aBlock
	"no children"! !

!BTreeLeafNode methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
commonKeysWith: aNode keysAndValuesDo: aBlock flip: aBoolean
	| index key block leaf advanceKey last |

	aNode firstKey ifNil: [^ self].

	block _ aBoolean ifTrue: [[:k :v1 :v2 | aBlock value: k value: v2 value: v1]] ifFalse: [aBlock].

	index _ 0.
	advanceKey _
		[index _ index + 1.
		index > self size ifTrue: [^ self].
		key _ keys at: index.
		key ifNil: [^ self]].
	last _ self lastKey.
	
	advanceKey value.
	[key < aNode firstKey] whileTrue: advanceKey.
		
	[leaf _ aNode existingLeafForKey: key.
	leaf lastKey < key ifTrue: advanceKey ifFalse:
		[leaf keysAndValuesDo:
			[:otherKey :otherValue |
			otherKey > last ifTrue: [^ self].
			[key < otherKey] whileTrue: advanceKey.
			key = otherKey ifTrue: [block value: key value: (self at: index) value: otherValue]].
		key > leaf lastKey ifFalse: advanceKey]] repeat
! !

!BTreeLeafNode methodsFor: 'as yet unclassified' stamp: 'avi 4/21/2005 02:28'!
depth
	^ 1! !

!BTreeLeafNode methodsFor: 'as yet unclassified' stamp: 'jcg 1/17/2005 23:08'!
existingLeafForKey: aMagnitude
       ^ self! !

!BTreeLeafNode methodsFor: 'as yet unclassified' stamp: 'lr 10/8/2009 12:55'!
first
	^ self values first! !

!BTreeLeafNode methodsFor: 'as yet unclassified' stamp: 'avi 2/23/2004 21:22'!
isLeaf
	^ true! !

!BTreeLeafNode methodsFor: 'as yet unclassified' stamp: 'avi 4/20/2005 16:41'!
keys
	^ Array streamContents: [:s | self keysDo: [:ea | s nextPut: ea]]! !

!BTreeLeafNode methodsFor: 'as yet unclassified' stamp: 'lr 10/8/2009 12:55'!
last
	^ self values last! !

!BTreeLeafNode methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
lastKey
	| last |
	last _ nil.
	self keysDo: [:k | last _ k].
	^ last! !

!BTreeLeafNode methodsFor: 'as yet unclassified' stamp: 'avi 2/23/2004 21:41'!
leafForKey: aMagnitude
	^ self! !

!BTreeLeafNode methodsFor: 'as yet unclassified' stamp: 'avi 10/8/2004 18:00'!
leavesFrom: start to: end do: aBlock
	aBlock value: self! !

!BTreeLeafNode methodsFor: 'as yet unclassified' stamp: 'lr 4/15/2009 09:50'!
valueForKey: aMagnitude ifAbsent: errorBlock
	| i |
	i _ keys findIndexForKey: aMagnitude.
	^ (i > 0 and: [(keys at: i) = aMagnitude])
		ifTrue: [self at: i]
		ifFalse: [errorBlock value]
! !

!BTreeLeafNode methodsFor: 'as yet unclassified' stamp: 'avi 4/20/2005 15:03'!
valueForKey: aMagnitude ifPresent: aBlock
	^ aBlock value: (self valueForKey: aMagnitude ifAbsent: [^ nil])! !

!MaWeakAssociation methodsFor: 'comparing and hashing' stamp: 'Igor.Stasenko 5/12/2010 20:48'!
= anObject
	"my instances should not be used in dictionaries as keys"
	^ self == anObject! !

!MaWeakAssociation methodsFor: 'comparing and hashing' stamp: 'Igor.Stasenko 5/12/2010 20:39'!
compareKey: aKey
	"answer true if my key matching given aKey"
	self subclassResponsibility ! !

!MaWeakAssociation methodsFor: 'comparing and hashing' stamp: 'Igor.Stasenko 5/12/2010 20:48'!
hash
	"my instances should not be used in dictionaries as keys"

	^ self identityHash! !

!MaWeakAssociation methodsFor: 'accessing' stamp: 'Igor.Stasenko 5/12/2010 20:55'!
clear

	finNext _ finList _ nil.
	self key: nil; value: nil! !

!MaWeakAssociation methodsFor: 'accessing' stamp: 'Igor.Stasenko 5/12/2010 20:39'!
finList
	^ finList! !

!MaWeakAssociation methodsFor: 'accessing' stamp: 'Igor.Stasenko 5/12/2010 20:39'!
finList: aList
	finList _ aList! !

!MaWeakAssociation methodsFor: 'accessing' stamp: 'Igor.Stasenko 5/12/2010 19:05'!
finNext
	^ finNext! !

!MaWeakAssociation methodsFor: 'accessing' stamp: 'Igor.Stasenko 5/12/2010 18:52'!
key
	self subclassResponsibility ! !

!MaWeakAssociation methodsFor: 'accessing' stamp: 'Igor.Stasenko 5/12/2010 20:40'!
key: aKey
	self subclassResponsibility ! !

!MaWeakAssociation methodsFor: 'accessing' stamp: 'Igor.Stasenko 5/12/2010 18:52'!
next
	^ next! !

!MaWeakAssociation methodsFor: 'accessing' stamp: 'Igor.Stasenko 5/12/2010 18:52'!
next: aNext
	next _ aNext! !

!MaWeakAssociation methodsFor: 'accessing' stamp: 'Igor.Stasenko 5/12/2010 18:52'!
value
	self subclassResponsibility ! !

!MaWeakAssociation methodsFor: 'accessing' stamp: 'Igor.Stasenko 5/12/2010 20:40'!
value: anObject
	self subclassResponsibility ! !

!MaWeakAssociation methodsFor: 'bucket iterations' stamp: 'Igor.Stasenko 5/12/2010 18:58'!
do: aBlock
	finList ifNotNil: [ aBlock value: self ].
	next ifNotNil: [ next do: aBlock ]! !

!MaWeakAssociation methodsFor: 'bucket iterations' stamp: 'Igor.Stasenko 11/8/2010 00:16'!
maFindKey: aKey 
	"find an association with given key,
	- answer nil, if key not found
	- answer free association if key not found and there is a free association found in list
	- if key found, answer it "
	| nxt free |	
	free _ nil.
	nxt _ self.
	[ nxt notNil ] whileTrue: [
		nxt isFree ifTrue: [ free _ nxt ] ifFalse: [
			(nxt compareKey: aKey) ifTrue: [ ^ nxt ]
			].
		free ifNil: [ nxt _ nxt next ] ifNotNil: [ nxt _ nxt skipFree ].
	].
	^ free! !

!MaWeakAssociation methodsFor: 'bucket iterations' stamp: 'Igor.Stasenko 5/12/2010 22:16'!
maFindKey: aKey ifAbsent: aBlock
	"find an association with given key,
	or free association, found during scanning, or nil"
	| nxt |	
	nxt _ self.
	[ nxt notNil ] whileTrue: [
		nxt finList ifNotNil: [ (nxt compareKey: aKey) ifTrue: [ ^ nxt ]].
		nxt _ nxt next
	].
	^ aBlock value! !

!MaWeakAssociation methodsFor: 'bucket iterations' stamp: 'Igor.Stasenko 5/12/2010 22:13'!
maFindKey: aKey ifAbsent: aBlock ifFree: aBlockFree
	"find an association with given key,
	or free association, found during scanning, or nil"
	| nxt free |	
	free _ nil.
	nxt _ self.
	[ nxt notNil ] whileTrue: [
		nxt finList ifNil: [ free _ nxt ] ifNotNil: [
			(nxt compareKey: aKey) ifTrue: [ ^ nxt ]
			].
		nxt _ nxt next
	].
	^ free ifNil: aBlock ifNotNil: [ aBlockFree value: free ]! !

!MaWeakAssociation methodsFor: 'bucket iterations' stamp: 'Igor.Stasenko 11/8/2010 00:10'!
skipFree
	| n |
	n _ next.
	[ n notNil and: [ n isFree ] ] whileTrue: [ n _ n next ].
	^ next _ n.
	! !

!MaWeakAssociation methodsFor: 'testing' stamp: 'Igor.Stasenko 5/12/2010 20:29'!
isFree
	^ finList == nil! !

!MaWeakAssociation methodsFor: 'initialize-release' stamp: 'Igor.Stasenko 5/12/2010 18:49'!
key: key value: value next: next finList: aList
	self subclassResponsibility ! !

!MaWeakAssociation class methodsFor: 'as yet unclassified' stamp: 'Igor.Stasenko 5/12/2010 18:56'!
key: key value: value next: next finList: aList
	^ (self basicNew: 1) key: key value: value next: next finList: aList! !

!MaWeakAssociation class methodsFor: 'as yet unclassified' stamp: 'Igor.Stasenko 5/12/2010 18:48'!
new
	^ self basicNew: 1! !

!MaAutoWeakKeyAssociation methodsFor: 'comparing and hashing' stamp: 'Igor.Stasenko 5/12/2010 20:44'!
compareKey: aKey
	"answer true if my key matching given aKey"
	^ (self basicAt: 1) = aKey! !

!MaAutoWeakKeyAssociation methodsFor: 'accessing' stamp: 'Igor.Stasenko 5/12/2010 18:53'!
key
	^ self basicAt: 1! !

!MaAutoWeakKeyAssociation methodsFor: 'accessing' stamp: 'Igor.Stasenko 5/12/2010 20:44'!
key: aKey
	self basicAt: 1 put: aKey! !

!MaAutoWeakKeyAssociation methodsFor: 'accessing' stamp: 'Igor.Stasenko 5/12/2010 18:53'!
value
	^ value! !

!MaAutoWeakKeyAssociation methodsFor: 'accessing' stamp: 'Igor.Stasenko 5/12/2010 20:43'!
value: aValue
	value _ aValue! !

!MaAutoWeakKeyAssociation methodsFor: 'initialize-release' stamp: 'Igor.Stasenko 9/24/2010 17:32'!
key: key value: aValue next: aNext

	self basicAt: 1 put: key.
	value _ aValue.
	next _ aNext! !

!MaAutoWeakKeyAssociation methodsFor: 'initialize-release' stamp: 'Igor.Stasenko 5/12/2010 18:50'!
key: key value: aValue next: aNext finList: aList

	self basicAt: 1 put: key.
	value _ aValue.
	finList _ aList.
	next _ aNext! !

!MaAutoWeakIdentityKeyAssociation methodsFor: 'as yet unclassified' stamp: 'Igor.Stasenko 5/12/2010 21:03'!
compareKey: aKey
	"answer true if my key matching given aKey"
	^ (self basicAt: 1) == aKey! !

!MaAutoWeakValueAssociation methodsFor: 'comparing and hashing' stamp: 'Igor.Stasenko 5/12/2010 21:13'!
compareKey: aKey
	"answer true if my key matching given aKey"
	^ key = aKey! !

!MaAutoWeakValueAssociation methodsFor: 'accessing' stamp: 'Igor.Stasenko 5/12/2010 21:13'!
key
	^ key! !

!MaAutoWeakValueAssociation methodsFor: 'accessing' stamp: 'Igor.Stasenko 5/12/2010 21:13'!
key: aKey
	key _ aKey! !

!MaAutoWeakValueAssociation methodsFor: 'accessing' stamp: 'Igor.Stasenko 5/12/2010 21:12'!
value
	^ self basicAt: 1! !

!MaAutoWeakValueAssociation methodsFor: 'accessing' stamp: 'Igor.Stasenko 5/12/2010 21:13'!
value: anObject
	self basicAt: 1 put: anObject! !

!MaAutoWeakValueAssociation methodsFor: 'initialize-release' stamp: 'Igor.Stasenko 9/24/2010 17:32'!
key: aKey value: aValue next: aNext
	key _ aKey.
	self basicAt: 1 put: aValue.
	next _ aNext! !

!MaAutoWeakValueAssociation methodsFor: 'initialize-release' stamp: 'Igor.Stasenko 5/12/2010 21:12'!
key: aKey value: aValue next: aNext finList: aList

	key _ aKey.
	self basicAt: 1 put: aValue.
	finList _ aList.
	next _ aNext! !

!MaAutoIdentityKeyWeakValueAssociation methodsFor: 'as yet unclassified' stamp: 'Igor.Stasenko 5/12/2010 22:41'!
compareKey: aKey
	"answer true if my key matching given aKey"
	^ key == aKey! !

!TSTreeNode methodsFor: 'private' stamp: 'RamonLeon 5/5/2011 23:20'!
canBeCulled
	^ self value isNil and: [ low isNil and: [ equal isNil and: [ high isNil ] ] ]! !

!TSTreeNode methodsFor: 'private' stamp: 'lr 4/15/2009 09:50'!
cullNode: aNode
	low == aNode ifTrue: [^ low _ nil].
	equal == aNode ifTrue: [^ equal _ nil].
	high == aNode ifTrue: [^ high _ nil]! !

!TSTreeNode methodsFor: 'private' stamp: 'jpb 5/12/2021 11:39:09'!
do: aBlock
	self nodesDo: [:ea | ea value ifNotNil: aBlock]! !

!TSTreeNode methodsFor: 'private' stamp: 'lr 4/15/2009 09:50'!
initializeWithKey: aCharacter
	key _ aCharacter! !

!TSTreeNode methodsFor: 'private' stamp: 'lr 4/15/2009 09:50'!
keysAndValuesDo: aBlock prefix: aString
	| fullKey |
	fullKey _ aString copyWith: key.
	value ifNotNil: [aBlock value: fullKey value: value].
	low ifNotNil: [low keysAndValuesDo: aBlock prefix: aString].
	equal ifNotNil: [equal keysAndValuesDo: aBlock prefix: fullKey].
	high ifNotNil: [high keysAndValuesDo: aBlock prefix: aString]! !

!TSTreeNode methodsFor: 'private' stamp: 'avi 12/13/2004 13:26'!
lookupString: aString startingAt: i
"inlined for performance"
"
	self
		lookupString: aString
		startingAt: i
		whenFound: [^ value]
		whenNil: [:c | ^ nil]
		recurseWith: [:node :j | ^ node lookupString: aString startingAt: j]"
	| char |
	char _ aString at: i.
	char = key
		ifTrue:
			[aString size = i
				ifTrue: [^ value]
				ifFalse: [^ equal ifNotNil: [equal lookupString: aString startingAt: i+1]]]
		ifFalse:
			[char < key
				ifTrue: [^ low ifNotNil: [low lookupString: aString startingAt: i]]
				ifFalse: [^ high ifNotNil: [high lookupString: aString startingAt: i]]]! !

!TSTreeNode methodsFor: 'private' stamp: 'avi 9/22/2004 01:41'!
lookupString: aString startingAt: i insert: anObject
	self
		lookupString: aString
		startingAt: i
		whenFound: [self value: anObject]
		whenNil: [:c | self newNodeWithKey: c]
		recurseWith: [:node :j | node lookupString: aString startingAt: j insert: anObject]! !

!TSTreeNode methodsFor: 'private' stamp: 'avi 9/22/2004 01:04'!
lookupString: aString startingAt: i whenFound: foundBlock whenNil: nilBlock recurseWith: recurseBlock
	| char |
	char _ aString at: i.
	char = key
		ifTrue:
			[aString size = i
				ifTrue: [foundBlock value]
				ifFalse: [equal ifNil: [equal _ nilBlock value: (aString at: i+1)].
						 recurseBlock value: equal value: i+1]]
		ifFalse:
			[char < key
				ifTrue: [low ifNil: [low _ nilBlock value: char].
						recurseBlock value: low value: i]
				ifFalse: [high ifNil: [high _ nilBlock value: char].
						recurseBlock value: high value: i]]! !

!TSTreeNode methodsFor: 'private' stamp: 'avi 9/22/2004 01:04'!
matchesForPrefix: aString startingAt: i do: aBlock
	self
		lookupString: aString
		startingAt: i
		whenFound: [value ifNotNil: [aBlock value: value].  equal ifNotNil: [equal do: aBlock]]
		whenNil: [:c | ^ self]
		recurseWith: [:n :j | n matchesForPrefix: aString startingAt: j do: aBlock]! !

!TSTreeNode methodsFor: 'private' stamp: 'avi 10/20/2004 21:27'!
matchesForString: aString startingAt: i distance: d do: aBlock nodesDo: nodeBlock
	
	| char d2 |
	nodeBlock value: self.
	d < 0 ifTrue: [^ self].
	
	char _ aString at: i.
	(d > 0 or: [char < key])
		ifTrue: [low ifNotNil: [low matchesForString: aString startingAt: i distance: d do: aBlock nodesDo: nodeBlock]].
		
	d2 _ char = key ifTrue: [d] ifFalse: [d-1].
	(i + d2 = aString size and: [value notNil]) ifTrue: [aBlock value: value].
	equal ifNotNil: [equal matchesForString: aString startingAt: (i+1 min: aString size) distance: d2 do: aBlock nodesDo: nodeBlock].
	
	(d > 0 or: [char > key])
		ifTrue: [high ifNotNil: [high matchesForString: aString startingAt: i distance: d do: aBlock nodesDo: nodeBlock]]! !

!TSTreeNode methodsFor: 'private' stamp: 'avi 9/22/2004 01:41'!
newNodeWithKey: aCharacter
	^ self class key: aCharacter! !

!TSTreeNode methodsFor: 'private' stamp: 'avi 9/22/2004 00:51'!
nodesDo: aBlock
	aBlock value: self.
	low ifNotNil: [low nodesDo: aBlock].
	equal ifNotNil: [equal nodesDo: aBlock].
	high ifNotNil: [high nodesDo: aBlock]! !

!TSTreeNode methodsFor: 'private' stamp: 'lr 4/15/2009 09:50'!
removeString: aString startingAt: i
	| val |
	self
		lookupString: aString
		startingAt: i
		whenFound: [val _ self value. self value: nil]
		whenNil: [:c | ^ nil]
		recurseWith:
			[:node :j |
			val _ node removeString: aString startingAt: j.
			node canBeCulled ifTrue:
				[self cullNode: node]].
	^ val! !

!TSTreeNode methodsFor: 'private' stamp: 'avi 9/22/2004 00:51'!
value
	^ value! !

!TSTreeNode methodsFor: 'private' stamp: 'lr 4/15/2009 09:50'!
value: anObject
	value _ anObject! !

!TSTreeNode class methodsFor: 'as yet unclassified' stamp: 'avi 9/22/2004 01:03'!
key: aCharacter
	^ self basicNew initializeWithKey: aCharacter! !

!MaDictionaryBencher methodsFor: 'as yet unclassified' stamp: 'Igor.Stasenko 9/24/2010 18:51'!
benchAt: aDictClass size: aCollectionSize

	| coll dict time shuffled |
	
	coll _ self createCollectionOfSize: aCollectionSize.
	dict _ aDictClass new.
	coll do: [:each | dict at: each put: each ].
	
	time _ OrderedCollection new.
	10 timesRepeat: [
		shuffled _ coll shuffled.
		Smalltalk garbageCollect.
		time add: [ 
			shuffled do: [:each | dict at: each] ] timeToRun
	].

	^ time average asFloat
	
! !

!MaDictionaryBencher methodsFor: 'as yet unclassified' stamp: 'Igor.Stasenko 9/24/2010 18:58'!
benchAtIfAbsent: aDictClass size: aCollectionSize

	" in this benchmark, we making a half of keys present,
	while another half absent. 
	so, an absent block will be evaluated 50% of time"
	
	| coll coll2 dict time shuffled count |

	coll _ self createCollectionOfSize: aCollectionSize.
	coll2 _ (coll first: (aCollectionSize // 2)) asOrderedCollection addAll: (self createCollectionOfSize: aCollectionSize //2 ).
	
	time _ OrderedCollection new.
	10 timesRepeat: [
		count _ 0. 
		dict _ aDictClass new.
		shuffled _ coll2 shuffled.
		Smalltalk garbageCollect.
		coll do: [:e | dict at: e put: e].
		time add: [ shuffled do: [:each | dict at: each ifAbsent: [ count _ count +1 ] ] ] timeToRun
	].		

	^ time average asFloat! !

!MaDictionaryBencher methodsFor: 'as yet unclassified' stamp: 'Igor.Stasenko 9/24/2010 18:46'!
benchAtIfAbsentPut2: aDictClass size: aCollectionSize

	" in this benchmark, we making a half of elements existing,
	while another half not,
	so, ifAbsentPut evaluating a block 50% of time"
	
	| coll coll2 dict time shuffled |
	coll _ self createCollectionOfSize: aCollectionSize.
	coll2 _ (coll first: (aCollectionSize // 2)) asOrderedCollection addAll: (self createCollectionOfSize: aCollectionSize //2 ).
	
	time _ OrderedCollection new.
	10 timesRepeat: [
		dict _ aDictClass new.
		shuffled _ coll2 shuffled.
		Smalltalk garbageCollect.
		coll do: [:e | dict at: e put: e].
		time add: [ shuffled do: [:each | dict at: each ifAbsentPut: [ each ] ] ] timeToRun
	].		

	^ time average asFloat! !

!MaDictionaryBencher methodsFor: 'as yet unclassified' stamp: 'Igor.Stasenko 9/24/2010 18:38'!
benchAtIfAbsentPut: aDictClass size: aCollectionSize

	| coll dict time shuffled |
	coll _ self createCollectionOfSize: aCollectionSize.
	time _ OrderedCollection new.
	10 timesRepeat: [
		dict _ aDictClass new.
		shuffled _ coll shuffled.
		Smalltalk garbageCollect.
		time add: [ shuffled do: [:each | dict at: each ifAbsentPut: [ each ] ] ] timeToRun
	].		

	^ time average asFloat! !

!MaDictionaryBencher methodsFor: 'as yet unclassified' stamp: 'Igor.Stasenko 9/24/2010 18:49'!
benchAtPut: aDictClass size: aCollectionSize

	| coll dict time shuffled |
	coll _ self createCollectionOfSize: aCollectionSize.
	time _ OrderedCollection new.
	10 timesRepeat: [
		dict _ aDictClass new.
		shuffled _ coll shuffled.
		Smalltalk garbageCollect.
		time add: [ shuffled do: [:each | dict at: each put: each ] ] timeToRun
	].		

	^ time average asFloat! !

!MaDictionaryBencher methodsFor: 'as yet unclassified' stamp: 'Igor.Stasenko 9/24/2010 18:04'!
createCollectionOfSize: aSize
	
	^ ((1 to: aSize) collect: [:e | Object new ]) 
! !

!MaDictionaryBencher class methodsFor: 'as yet unclassified' stamp: 'Igor.Stasenko 9/24/2010 19:08'!
benchAllOperations: collectionSize


	^ #( At AtIfAbsent AtIfAbsentPut AtPut AtIfAbsentPut2 ) collect: [:op |
		
		op -> (self benchKnownClasses: op size: collectionSize)
		]
! !

!MaDictionaryBencher class methodsFor: 'as yet unclassified' stamp: 'Igor.Stasenko 9/24/2010 19:08'!
benchKnownClasses: operation size: collectionSize
	| sel |
	
	sel _ ('bench' , operation, ':size:') asSymbol.
	
	^ self knownClasses collect: [:cls |
			cls name -> (self new perform: sel withArguments: { cls. collectionSize })
		]

! !

!MaDictionaryBencher class methodsFor: 'as yet unclassified' stamp: 'jpb 5/14/2021 10:12:15'!
knownClasses

^ { Dictionary. WeakKeyDictionary. WeakIdentityKeyDictionary. WeakValueDictionary.
 MaDictionary. MaWeakKeyDictionary. MaWeakIdentityKeyDictionary. MaWeakValueDictionary. } ! !

!Object methodsFor: '*ma-collections-btree' stamp: 'avi 5/1/2005 14:10'!
isTreeSet
	^ false! !

!UndefinedObject methodsFor: '*ma-collections' stamp: 'Igor.Stasenko 9/24/2010 18:27'!
maFindKey: key
	" ^ self == nil "! !

!UndefinedObject methodsFor: '*ma-collections' stamp: 'Igor.Stasenko 5/12/2010 22:15'!
maFindKey: key ifAbsent: aBlock
	^ aBlock value! !

!UndefinedObject methodsFor: '*ma-collections' stamp: 'Igor.Stasenko 5/12/2010 22:12'!
maFindKey: key ifAbsent: aBlock ifFree: aBlockFree
	^ aBlock value! !

!Collection class methodsFor: '*ma-collections' stamp: 'cmm 6/15/2010 14:02'!
isAutoCleaning
	"Answers whether this type of collection is an auto-cleaning type of collection.  Distinct from #supportsAutoCleaning."
	^ false! !

!Collection class methodsFor: '*ma-collections' stamp: 'cmm 6/15/2010 14:02'!
supportsAutoCleaning
	"supportsAutoCleaning is different from #isAutoCleaning.  It answers whether, even if I am a type of collection that is auto-cleaning, a newer vm is required to suport that, and so this answers whether it is also supported."
	^ false! !

!Dictionary methodsFor: '*ma-collections' stamp: 'cmm 10/19/2010 22:07'!
finalizeValues
	"For API compatibility with Weak-Dictionary's.  There have been cases where a pluggable Dictionary may be weak or strong."! !

!WeakKeyDictionary methodsFor: '*ma-collections' stamp: 'cmm 5/6/2013 10:29'!
finalizeValues: forceRehash
	"For API compatibility with MaWeakKeyDictionary."
	self finalizeValues! !

!WeakIdentityKeyDictionary methodsFor: '*ma-collections' stamp: 'cmm 6/22/2009 16:57'!
asMaDictionary
	| answer |
	answer _ MaWeakIdentityKeyDictionary new.
	self keysAndValuesDo: 
		[ : key : value | 
		answer 
			at: key
			put: value ].
	^ answer! !
MaDictionary initialize!
MaHashIndexRecordConstants initialize!
