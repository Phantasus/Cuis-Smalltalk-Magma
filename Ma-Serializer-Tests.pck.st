'From Cuis 5.0 [latest update: #4579] on 14 May 2021 at 10:26:03 pm'!
'Description License: MIT
Original author: Chris Muller (cmm)
Author: Josef Philip Bernhart (jpb)'!
!provides: 'Ma-Serializer-Tests' 1 5!
!requires: 'Ma-Serializer-Core' 1 14 nil!
SystemOrganization addCategory: 'Ma-Serializer-Tests'!


!classDefinition: #MaObjectSerializerTestCase category: 'Ma-Serializer-Tests'!
TestCase subclass: #MaObjectSerializerTestCase
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Serializer-Tests'!
!classDefinition: 'MaObjectSerializerTestCase class' category: 'Ma-Serializer-Tests'!
MaObjectSerializerTestCase class
	instanceVariableNames: ''!

!classDefinition: #MaFixtureFactory category: 'Ma-Serializer-Tests'!
MaSingleton subclass: #MaFixtureFactory
	instanceVariableNames: 'allNonCollectionSamples interval'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Serializer-Tests'!
!classDefinition: 'MaFixtureFactory class' category: 'Ma-Serializer-Tests'!
MaFixtureFactory class
	instanceVariableNames: ''!

!classDefinition: #MaTestMailingAddress category: 'Ma-Serializer-Tests'!
MaObject subclass: #MaTestMailingAddress
	instanceVariableNames: 'street zip'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Serializer-Tests'!
!classDefinition: 'MaTestMailingAddress class' category: 'Ma-Serializer-Tests'!
MaTestMailingAddress class
	instanceVariableNames: ''!


!MaFixtureFactory methodsFor: 'as yet unclassified' stamp: 'jpb 5/14/2021 22:13:25'!
methodsInCategory: aString 
	^(self class methodsInCategory: aString) collect: [:methodSymbol | 
		MethodReference class: self class selector: methodSymbol ].! !

!MaObjectSerializerTestCase methodsFor: 'as yet unclassified' stamp: 'cmm 8/4/2011 11:26'!
testBlocks
	| reconstituted |
	reconstituted _ MaObjectSerializer testMaterialize: MaFixtureFactory new blockSamples.
	MaFixtureFactory new verifyBlockSamples: reconstituted! !

!MaObjectSerializerTestCase methodsFor: 'as yet unclassified' stamp: 'cmm 9/16/2014 15:07'!
testNestedHashedCollections
	| dict |
	dict _ Dictionary new.
	50 timesRepeat:
		[ | set |
		set _ ((1 to: 5) collect:
			[ : n | UUID new ]) asSet.
		dict
			at: set
			put: set.
		set _ ((1 to: 15) collect:
			[ : n | UUID new ]) asSet.
		dict
			at: set
			put: set ].
	self assert: (MaObjectSerializer testMaterialize: dict) = dict! !

!MaObjectSerializerTestCase methodsFor: 'as yet unclassified' stamp: 'cmm 9/16/2014 15:05'!
testSamples
	| newSamples |
	newSamples _ MaFixtureFactory current samples.
	self assert: ((MaObjectSerializer testMaterialize: newSamples) maEquivalentForSerializationTest: newSamples)! !

!MaObjectSerializerTestCase methodsFor: 'as yet unclassified' stamp: 'cmm 12/11/2010 16:16'!
timeoutForTest
	"This test can take a while depending on many factors.  Use an appropriate timeout."
	^ 9 minutes asSeconds! !

!MaFixtureFactory methodsFor: 'private accessing' stamp: 'cmm 6/17/2002 22:42'!
allCollectionSamplesHoldingNonCollections

	^(self methodsInCategory: 'private collection samples')
		inject: OrderedCollection new
		into:
			[ :coll :each |
			coll
				addAll: (self perform: each selector);
				yourself ]
! !

!MaFixtureFactory methodsFor: 'private accessing' stamp: 'cmm 9/13/2004 00:29'!
allNonCollectionSamples

	allNonCollectionSamples
		ifNil:
			[ allNonCollectionSamples _ OrderedCollection new.
			self nonCollectionSamplesDo:
				[ : eachSelector : eachSamples |
				allNonCollectionSamples addAll: eachSamples ] ].
	^ allNonCollectionSamples! !

!MaFixtureFactory methodsFor: 'private accessing' stamp: 'cmm 7/28/2002 10:40'!
firstNames

	^#('Paula' 'Chris' 'Bif' 'Yury' 'David' 'Russ' 'Judy')! !

!MaFixtureFactory methodsFor: 'private accessing' stamp: 'cmm 7/28/2002 10:41'!
lastNames

	^#('Mayer' 'Muller' 'Brower' 'Katsman' 'Jackson' 'Blade' 'Muller')! !

!MaFixtureFactory methodsFor: 'private accessing' stamp: 'cmm 7/28/2002 10:45'!
middleNames

	^#('Leslie' 'Michael' '' '' '' '' 'Ann')! !

!MaFixtureFactory methodsFor: 'private accessing' stamp: 'cmm 7/28/2002 10:43'!
streetNames

	^#(
		'7547 McGee'
		'1314 E. 82nd Terr. #15'
		'4421 Springfield'
		'101 W. Meyer'
		'281 Aisle Drive'
		'2138 E. 83rd Terr.'
		'2104 E. Gregory')! !

!MaFixtureFactory methodsFor: 'private creation - domain objects' stamp: 'cmm 2/3/2005 23:34'!
collectionSamplesDo: twoArgBlock

	self
		methodsInCategory: 'private collection samples'
		do: twoArgBlock! !

!MaFixtureFactory methodsFor: 'private creation - domain objects' stamp: 'cmm 2/3/2005 23:34'!
methodsInCategory: aString do: twoArgBlock

	(self methodsInCategory: aString) do:
		[ : each |
		twoArgBlock
			value: each methodSymbol
			value: (self perform: each methodSymbol) ]! !

!MaFixtureFactory methodsFor: 'private creation - domain objects' stamp: 'cmm 2/3/2005 23:34'!
nonCollectionSamplesDo: twoArgBlock

	self
		methodsInCategory: 'private non-collection samples'
		do: twoArgBlock! !

!MaFixtureFactory methodsFor: 'private creation - domain objects' stamp: 'cmm 7/28/2002 10:45'!
zipCodes

	^#(
		'64114'
		'64131'
		'66101'
		'10201'
		'98876'
		'12345'
		'71717')! !

!MaFixtureFactory methodsFor: 'private non-collection samples' stamp: 'cmm 6/17/2002 22:43'!
atomicSamples

	^Array
		with: nil
		with: true
		with: false
! !

!MaFixtureFactory methodsFor: 'private non-collection samples' stamp: 'cmm 5/1/2014 17:43'!
blockSamples
	| temp |
	temp _ 'hello'->'world'.
	^ {[ : a : b | a name > b name ].
	[ : nm | Smalltalk at: nm ].
"	[ self maOriginalClass name ]."
	[ temp key asUppercase -> temp value asUppercase ].
"	[ interval select: [ : each | each even ] ]" }! !

!MaFixtureFactory methodsFor: 'private non-collection samples' stamp: 'cmm 6/17/2002 22:43'!
byteArraySamples

	^Array
		with: ByteArray new
		with: (ByteArray new: 100)
		with: (0 to: 255) asByteArray
! !

!MaFixtureFactory methodsFor: 'private non-collection samples' stamp: 'jpb 5/14/2021 22:17:08'!
characterSamples

	^String streamContents: [:stringStream | 
		(0 to: 255) do: [:v | stringStream nextPut: (Character numericValue: v) ]]! !

!MaFixtureFactory methodsFor: 'private non-collection samples' stamp: 'cmm 10/28/2004 22:26'!
classSamples

	^ Collection withAllSubclasses asArray! !

!MaFixtureFactory methodsFor: 'private non-collection samples' stamp: 'jpb 5/14/2021 22:20:07'!
colorSamples
	| paleBuff |
	paleBuff _ Color r:  1.0 g: 0.98 b: 0.92.
	
	^ Array
		with: paleBuff slightlyDarker
		with: (paleBuff slightlyDarker alpha: 0.5)! !

!MaFixtureFactory methodsFor: 'private non-collection samples' stamp: 'cmm 11/26/2004 13:17'!
exceptionSamples
	^ { Error new messageText: 'sample error'.
	Warning new messageText: 'sample warning'.
	Notification new messageText: 'sample notification' }! !

!MaFixtureFactory methodsFor: 'private non-collection samples' stamp: 'cmm 9/14/2004 12:48'!
floatSamples

	^{ Float e.  Float halfPi.  Float infinity.  "Float nan. <- this one is not supported, see http://lists.squeakfoundation.org/pipermail/squeak-dev/2004-September/082071.html"  Float negativeZero.  Float pi.  101.10001 }! !

!MaFixtureFactory methodsFor: 'private non-collection samples' stamp: 'cmm 7/11/2002 00:03'!
fractionSamples

	^Array with: 3/4 with: 0-(1001/1000)! !

!MaFixtureFactory methodsFor: 'private non-collection samples' stamp: 'jpb 5/14/2021 09:49:59'!
globalSamples

	^{ Transcript. Processor. Smalltalk. self activeHand. Integer.  Integer class }! !

!MaFixtureFactory methodsFor: 'private non-collection samples' stamp: 'cmm 6/17/2002 22:43'!
largeIntegerSamples

	^Array
		with: 100 factorial
		with: (0-100 factorial)
! !

!MaFixtureFactory methodsFor: 'private non-collection samples' stamp: 'cmm 10/28/2004 22:26'!
metaClassSamples

	^ self classSamples collect: [ : each | each class ]! !

!MaFixtureFactory methodsFor: 'private non-collection samples' stamp: 'cmm 5/7/2014 09:56'!
methodReferenceSamples
	^ {(self class compiledMethodAt: thisContext selector) methodReference.
	(MaSingleton class compiledMethodAt: #current) methodReference }! !

!MaFixtureFactory methodsFor: 'private non-collection samples' stamp: 'cmm 8/17/2009 15:42'!
processSamples
	"Processes are not supported by Ma object serialization at this time."
	^ { 
		nil.
	 }! !

!MaFixtureFactory methodsFor: 'private non-collection samples' stamp: 'cmm 6/17/2002 22:43'!
readStreamSamples

	^Array
		with: (ReadStream on: (1 to: 1000));
		with: (ReadStream on: #('chris' 'paula'))
! !

!MaFixtureFactory methodsFor: 'private non-collection samples' stamp: 'cmm 6/17/2002 22:43'!
readWriteStreamSamples

	^Array
		with: (ReadWriteStream on: (1 to: 1000));
		with: (ReadWriteStream on: #('chris' 'paula'))
! !

!MaFixtureFactory methodsFor: 'private non-collection samples' stamp: 'cmm 6/17/2002 22:43'!
smallIntegerSamples

	^Array
		with: -1212
		with: -7
		with: 0
		with: 1111
! !

!MaFixtureFactory methodsFor: 'private non-collection samples' stamp: 'cmm 6/17/2002 22:43'!
stringSamples

	| allCharactersString |

	allCharactersString _ (0 to: 255) asByteArray asString.
	^Array
		with: String new
		with: 'hello'
		with: allCharactersString
! !

!MaFixtureFactory methodsFor: 'private non-collection samples' stamp: 'cmm 7/8/2002 21:07'!
symbolSamples

	^Array
		with: #size
		with: #with:with:with:with:
		with: #'hello there'
		"with: '' asSymbol  <- conflicts with empty String sample since, in Squeak, they're equal.."
! !

!MaFixtureFactory methodsFor: 'private non-collection samples' stamp: 'cmm 11/7/2004 23:41'!
uuidSamples

	^ { UUID fromString: 'a3b64357-377a-5b41-b575-1c653084a121'.
	UUID nilUUID }! !

!MaFixtureFactory methodsFor: 'private non-collection samples' stamp: 'cmm 6/17/2002 22:43'!
writeStreamSamples

	^Array
		with: (WriteStream on: String new);
		with: (WriteStream on: (OrderedCollection new: 200))
! !

!MaFixtureFactory methodsFor: 'creation' stamp: 'cmm 6/23/2002 21:35'!
knot
	"Answer an object that contains a graph of references that span every combination of class supported by Magma."

	| samples populatedDictionary |

	samples _ OrderedCollection new.
	"First build collections that support addAll:"
	#(OrderedCollection Set Bag) do:
		[ :eachClassName |
		samples add: (
			(Smalltalk classNamed: eachClassName) new
				addAll: self allCollectionSamplesHoldingNonCollections;
				yourself) ].
	"Now do Array and Dictionary"
	samples add: self allCollectionSamplesHoldingNonCollections asArray.
	populatedDictionary _ Dictionary new.
	self allCollectionSamplesHoldingNonCollections do:
		[ :each |
		populatedDictionary
			at: each
			put: populatedDictionary copy ].
	samples add: populatedDictionary.
	^samples
! !

!MaFixtureFactory methodsFor: 'creation' stamp: 'cmm 3/20/2009 18:37'!
newMailingAddresses: anInteger 
	^ (1 to: anInteger) collect: 
		[ : index | 
		MaTestMailingAddress new
			street: (self streetNames at: index) ;
			zip: (self zipCodes at: index) ;
			yourself ]! !

!MaFixtureFactory methodsFor: 'creation' stamp: 'cmm 11/9/2011 16:18'!
newPersonNames: anInteger 
	^ (1 to: anInteger) collect:
		[ : index | self firstNames at: index ]! !

!MaFixtureFactory methodsFor: 'creation' stamp: 'cmm 7/18/2005 13:20'!
newPersons: anInteger
	"Answer a collection of anInteger number of MagmaPerson's."

	| names addresses persons |
	persons _ OrderedCollection new: anInteger.
	names _ self newPersonNames: anInteger.
	addresses _ self newMailingAddresses: anInteger.
	names
		with: addresses
		do:
			[ :eachName :eachAddress |
			persons add: (
				(Smalltalk classNamed: #MagmaPerson) new
					name: eachName ;
					address: eachAddress ;
					yourself) ].
	^ persons! !

!MaFixtureFactory methodsFor: 'creation' stamp: 'cmm 8/8/2002 17:17'!
peopleSample

	^self newPersons: 3! !

!MaFixtureFactory methodsFor: 'creation' stamp: 'cmm 2/3/2005 23:35'!
samples
	| samples |

	samples _ Dictionary new.
	self nonCollectionSamplesDo:
		[ : eachSelector : eachSamples |
		samples
			at: eachSelector
			put: eachSamples ].
	self collectionSamplesDo:
		[ : eachSelector : eachSamples |
		samples
			at: eachSelector
			put: eachSamples ].
	^ samples! !

!MaFixtureFactory methodsFor: 'private collection samples' stamp: 'cmm 6/17/2002 22:42'!
arraySamples

	| populatedArray |

	populatedArray _ self allNonCollectionSamples asArray.
	^Array
		with: Array new
		with: (Array new: 100)
		with: populatedArray
! !

!MaFixtureFactory methodsFor: 'private collection samples' stamp: 'cmm 10/18/2004 21:29'!
bagSamples

	^Array
		with: Bag new
		with: (Bag new addAll: (self allNonCollectionSamples copyWithout: nil); yourself) ;
		with: (Bag new add: 'a small bag' withOccurrences: 9999999999; yourself)! !

!MaFixtureFactory methodsFor: 'private collection samples' stamp: 'jpb 5/14/2021 22:24:09'!
dictionarySamples

	| populatedDictionary possibleSamples |

	populatedDictionary _ Dictionary new.
	"CompiledMethods were getting their #hash changing somewhere that I could not figure out.  Omit them from the test and BE WARNED about persisting them in a Set or keys of a Dictionary."

	possibleSamples _ 	(self allNonCollectionSamples copyWithoutAll: { nil } ,
		(self allNonCollectionSamples select: [ : each | each is: #CompiledMethod ])).
	
	possibleSamples do:
		[ :each |
		populatedDictionary
			at: each
			put: self allNonCollectionSamples ].
	^Array
		with: Dictionary new
		with: populatedDictionary
		with: Smalltalk! !

!MaFixtureFactory methodsFor: 'private collection samples' stamp: 'cmm 10/18/2004 21:21'!
intervalSamples

	^ Array
		with: (1 to: 10)
		with: (-30 to: 130 by: 2)
		with: (1 to: 999999999)
		with: (10 to: -6 by: -2)! !

!MaFixtureFactory methodsFor: 'private collection samples' stamp: 'cmm 7/8/2002 21:43'!
orderedCollectionSamples

	^Array
		with: OrderedCollection new
		with: (OrderedCollection new addAll: self allNonCollectionSamples; yourself)
! !

!MaFixtureFactory methodsFor: 'private collection samples' stamp: 'cmm 7/8/2002 21:43'!
setSamples

	^Array
		with: Set new
		with: (Set new addAll: (self allNonCollectionSamples copyWithout: nil); yourself)
! !

!MaFixtureFactory methodsFor: 'private collection samples' stamp: 'cmm 11/12/2004 16:16'!
sortedCollectionSamples

	| sentence |
	sentence _ 'the quick brown fox slyly jumped over 1029384756 lazy dogs.'.
	^Array
		with: SortedCollection new
		with: sentence asSortedCollection
		with: (
			(SortedCollection sortBlock: [ :a :b | a > b ])
				addAll: sentence substrings;
				addAll: sentence asUppercase substrings;
				yourself)
! !

!MaFixtureFactory methodsFor: 'initialize-release' stamp: 'cmm 8/1/2011 15:14'!
initialize
	super initialize.
	interval _ 1 to: 10! !

!MaFixtureFactory methodsFor: 'private individual fixtures' stamp: 'cmm 6/17/2002 22:43'!
noArgComplexBlock

	^[ | c |
		c _ OrderedCollection new.
		MaObject withAllSubclasses do: [ :each | c add: each name asLowercase ].
		c ]
! !

!MaFixtureFactory methodsFor: 'private individual fixtures' stamp: 'cmm 6/17/2002 22:43'!
oneArgComplexBlock

	^[ :number | number sqrt ]
! !

!MaFixtureFactory methodsFor: 'private individual fixtures' stamp: 'cmm 6/17/2002 22:43'!
simpleBlock

	^[ 'hello' collect: [ :each | each asUppercase ] ]
! !

!MaFixtureFactory methodsFor: 'private individual fixtures' stamp: 'cmm 12/25/2002 00:47'!
threeArgComplexBlock

	^[ :path :parent :index |
		Transcript
			cr;
			tab: path size;
			nextPutAll: path last printString ]
! !

!MaFixtureFactory methodsFor: 'accessing' stamp: 'cmm 3/20/2009 18:37'!
newOrganizationMailingAddresses: anInteger 
	^ (5 to: 5 + anInteger - 1) collect: 
		[ : index | 
		MaTestMailingAddress new
			street: (self streetNames at: index) ;
			zip: (self zipCodes at: index) ;
			yourself ]! !

!MaFixtureFactory methodsFor: 'future support' stamp: 'cmm 8/1/2011 16:33'!
pluggableDictionarySamples
	| populatedDictionary intKey |
	populatedDictionary _ PluggableDictionary integerDictionary.
	intKey _ -5.
	(self allNonCollectionSamples copyWithoutAll: {nil}) do:
		[ : each | populatedDictionary
			at: (intKey _ intKey + 1)
			put: self allNonCollectionSamples ].
	^ Array
		with: PluggableDictionary integerDictionary
		with: populatedDictionary! !

!MaFixtureFactory methodsFor: 'future support' stamp: 'cmm 4/8/2005 13:48'!
pluggableSetSamples

	^ Array
		with: PluggableSet integerSet
		with: (PluggableSet integerSet addAll: (-5 to: 50 by: 2); yourself)! !

!MaFixtureFactory methodsFor: 'testing' stamp: 'cmm 5/1/2014 17:44'!
verifyBlockSamples: anArray 
	self
		 assert: (Collection withAllSubclasses sort: self blockSamples first) = (Collection withAllSubclasses sort: anArray first) ;
		 assert: (anArray second value: #Integer) == Integer ;
		 assert: anArray third value = ('HELLO' -> 'WORLD')! !

!MaFixtureFactory class methodsFor: 'initializing' stamp: 'cmm 2/2/2003 14:30'!
initialize

	self reset! !

!MaTestMailingAddress methodsFor: 'building'!
street: aString

	street _ aString
! !

!MaTestMailingAddress methodsFor: 'building'!
zip: aString

	zip _ aString
! !

!MaTestMailingAddress methodsFor: 'accessing'!
street

	^street! !

!MaTestMailingAddress methodsFor: 'accessing'!
zip

	^zip! !

!Object methodsFor: '*ma-serializer-tests' stamp: 'cmm 6/22/2009 19:32'!
maEquivalentForSerializationTest: anObject
	"(sigh)  Floats and streams need their own equivalence checking."
	^ self
		maEquivalentForSerializationTest: anObject 
		using: MaIdentityDictionary new
		halt: true! !

!Object methodsFor: '*ma-serializer-tests' stamp: 'cmm 11/8/2014 12:25'!
maEquivalentForSerializationTest: anObject using: alreadyComparedDictionary halt: shouldHalt 
	| answer identityCheck |
	self == anObject ifTrue: [^true].
	(anObject isKindOf: self maOriginalClass) ifFalse: [^false].
	"Hm, this seems harmless enough."
	self = anObject ifTrue: [ ^ true ].
	identityCheck _ false.	"purpose of this is for debugging, when halt is on you know where it went."
	^(1 to: self maInstSize) allSatisfy: 
			[:x | 
			| myX otherX |
			myX _ self slotAt: x.
			otherX _ anObject slotAt: x.
			answer _ (alreadyComparedDictionary includesKey: myX) 
						ifTrue: 
							[identityCheck _ true.
							(alreadyComparedDictionary at: myX) = otherX]
						ifFalse: 
							[myX ifNotNil: [alreadyComparedDictionary at: myX put: otherX].
							myX 
								maEquivalentForSerializationTest: otherX
								using: alreadyComparedDictionary
								halt: shouldHalt].
			(shouldHalt and: [answer == false]) ifTrue: [self halt] ifFalse: [answer]]! !

!Boolean methodsFor: '*ma-serializer-tests' stamp: 'cmm 11/23/2004 14:16'!
maEquivalentForSerializationTest: aBoolean using: anIdentityKeyDictionary halt: shouldHalt
	^ self == aBoolean! !

!UndefinedObject methodsFor: '*ma-serializer-tests' stamp: 'cmm 11/23/2004 14:16'!
maEquivalentForSerializationTest: anObject using: alreadyComparedDictionary halt: aBoolean
	^ anObject == nil! !

!Behavior methodsFor: '*ma-serializer-tests' stamp: 'cmm 11/23/2004 21:20'!
maEquivalentForSerializationTest: anObject using: alreadyComparedDictionary halt: shouldHalt

	^ self == anObject! !

!Float methodsFor: '*ma-serializer-tests' stamp: 'cmm 11/23/2004 15:09'!
maEquivalentForSerializationTest: aFloat using: anIdentityKeyDictionary halt: aBoolean
	aFloat isFloat ifFalse: [ ^ false ].
	^ self asIEEE32BitWord = aFloat asIEEE32BitWord ! !

!BlockClosure methodsFor: '*ma-serializer-tests' stamp: 'cmm 5/7/2014 09:44'!
maEquivalentForSerializationTest: aBlockClosure using: anIdentityKeyDictionary halt: aBoolean 
	self == aBlockClosure ifTrue: [ ^ true ].
	aBlockClosure maOriginalClass = self maOriginalClass ifFalse: [ ^ false ].
	^ (self method equivalentTo: aBlockClosure method) and:
		[ self numArgs = aBlockClosure numArgs and: [ self startpc = aBlockClosure startpc ] ]! !

!ProcessorScheduler methodsFor: '*ma-serializer-tests' stamp: 'cmm 11/24/2004 10:53'!
maEquivalentForSerializationTest: aProcessorScheduler using: anIdentityKeyDictionary halt: aBoolean
	^ aProcessorScheduler == Processor! !

!String methodsFor: '*ma-serializer-tests' stamp: 'cmm 11/23/2004 15:15'!
maEquivalentForSerializationTest: aString using: alreadyComparedDictionary halt: aBoolean
	aString isString ifFalse: [ ^ false ].
	^ self = aString! !

!Symbol methodsFor: '*ma-serializer-tests' stamp: 'cmm 12/1/2004 16:39'!
maEquivalentForSerializationTest: aSymbol using: alreadyComparedDictionary halt: aBoolean
	aSymbol isSymbol ifFalse: [ ^ false ].
	^ self == aSymbol! !

!ByteArray methodsFor: '*ma-serializer-tests' stamp: 'cmm 3/28/2005 21:59'!
maEquivalentForSerializationTest: aByteArray using: anIdentityKeyDictionary halt: aBoolean
	self == aByteArray ifTrue: [ ^ true ].
	(aByteArray isKindOf: self species) ifFalse: [ ^ false ].
	^ self = aByteArray! !

!SortedCollection methodsFor: '*ma-serializer-tests' stamp: 'cmm 3/14/2010 21:20'!
maEquivalentForSerializationTest: aSortedCollection using: anIdentityKeyDictionary halt: aBoolean 
	self == aSortedCollection ifTrue: [ ^ true ].
	aSortedCollection maOriginalClass = self maOriginalClass ifFalse: [ ^ false ].
	self size = aSortedCollection size ifFalse: [ ^ false ].
	1
		to: self size
		do:
			[ : n | 
			((self at: n)
				maEquivalentForSerializationTest: (aSortedCollection at: n)
				using: anIdentityKeyDictionary
				halt: aBoolean) ifFalse: [ ^ false ] ].
	^ true! !

!Set methodsFor: '*ma-serializer-tests' stamp: 'cmm 8/2/2011 10:55'!
maEquivalentForSerializationTest: anObject using: alreadyComparedDictionary halt: aBoolean 
	self == anObject ifTrue: [ ^ true ].
	"stop recursion"
	(anObject isKindOf: self maOriginalClass) ifFalse: [ ^ false ].
	self size = anObject size ifFalse: [ ^ false ].
	self do:
		[ : each | anObject
			detect:
				[ : eachInOther | each
					maEquivalentForSerializationTest: eachInOther
					using: MaIdentityDictionary new
					halt: false ]
			ifNone:
				[ aBoolean ifTrue: [ self halt ].
				^ false ] ].
	^ true! !

!Dictionary methodsFor: '*ma-serializer-tests' stamp: 'cmm 6/22/2009 19:30'!
maAtSerializationEquivalent: anObject

	self keysDo:
		[ : eachKey |
		(anObject
			maEquivalentForSerializationTest: eachKey
			using: MaIdentityDictionary new
			halt: false) ifTrue: [ ^ eachKey ] ].
	^ nil! !

!Dictionary methodsFor: '*ma-serializer-tests' stamp: 'cmm 7/13/2009 17:52'!
maEquivalentForSerializationTest: anObject using: alreadyComparedDictionary halt: aBoolean
	self == anObject ifTrue: [ ^ true ].
	(anObject maOriginalClass = self maOriginalClass) ifFalse: [^false].
	self size = anObject size ifFalse: [^false].
	self keysDo:
		[ : eachMyKey |  | correspondingOtherKey |
		"first, find equivalent key in other Dictionary, unfortunately we can't use at:."
		correspondingOtherKey _ anObject maAtSerializationEquivalent: eachMyKey.
		correspondingOtherKey ifNotNil:
			[ ((self at: eachMyKey)
				maEquivalentForSerializationTest: (anObject at: correspondingOtherKey)
				using: alreadyComparedDictionary
				halt: aBoolean)

				ifFalse: [ aBoolean ifTrue: [ self halt ] ifFalse: [ ^ false ] ] ] ].
	^ true! !

!SystemDictionary methodsFor: '*ma-serializer-tests' stamp: 'cmm 3/12/2010 18:20'!
maEquivalentForSerializationTest: aSmalltalkImage using: anIdentityKeyDictionary halt: aBoolean
	^ Smalltalk == aSmalltalkImage! !

!ReadStream methodsFor: '*ma-serializer-tests' stamp: 'cmm 4/10/2005 18:00'!
maEquivalentForSerializationTest: aReadStream using: alreadyComparedDictionary halt: aBoolean 
	self == aReadStream ifTrue: [^true].
	(aReadStream isKindOf: self maOriginalClass) ifFalse: [^false].
	self size = aReadStream size ifFalse: [^false].
	^self contents = aReadStream contents! !

!WriteStream methodsFor: '*ma-serializer-tests' stamp: 'cmm 4/10/2005 18:00'!
maEquivalentForSerializationTest: aWriteStream using: alreadyComparedDictionary halt: aBoolean 
	self == aWriteStream ifTrue: [^true].
	(aWriteStream isKindOf: self maOriginalClass) ifFalse: [^false].
	self size = aWriteStream size ifFalse: [^false].
	^self contents = aWriteStream contents! !

!HandMorph methodsFor: '*ma-serializer-tests' stamp: 'jpb 5/14/2021 09:48:48'!
maEquivalentForSerializationTest: aHandMorph using: anIdentityKeyDictionary halt: aBoolean
	^ self == self activeHand! !
MaFixtureFactory initialize!
