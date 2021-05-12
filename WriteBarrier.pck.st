'From Cuis 5.0 [latest update: #4579] on 12 May 2021 at 11:53:16 am'!
'Description License: MIT
Original author: Chris Muller (cmm)
Author: Josef Philip Bernhart (jpb)'!
!provides: 'WriteBarrier' 1 2!
SystemOrganization addCategory: 'WriteBarrier-Collections'!
SystemOrganization addCategory: 'WriteBarrier-Core'!
SystemOrganization addCategory: 'WriteBarrier-Tests'!


!classDefinition: #WBTestBarrier category: 'WriteBarrier-Tests'!
TestCase subclass: #WBTestBarrier
	instanceVariableNames: 'barrier'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'WriteBarrier-Tests'!
!classDefinition: 'WBTestBarrier class' category: 'WriteBarrier-Tests'!
WBTestBarrier class
	instanceVariableNames: ''!

!classDefinition: #WBTestSystemChanges category: 'WriteBarrier-Tests'!
TestCase subclass: #WBTestSystemChanges
	instanceVariableNames: 'barrier'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'WriteBarrier-Tests'!
!classDefinition: 'WBTestSystemChanges class' category: 'WriteBarrier-Tests'!
WBTestSystemChanges class
	instanceVariableNames: ''!

!classDefinition: #WBClassBuilder category: 'WriteBarrier-Core'!
Object subclass: #WBClassBuilder
	instanceVariableNames: 'class barrier fieldsCache'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'WriteBarrier-Core'!
!classDefinition: 'WBClassBuilder class' category: 'WriteBarrier-Core'!
WBClassBuilder class
	instanceVariableNames: ''!

!classDefinition: #WBMethodBuilder category: 'WriteBarrier-Core'!
Object subclass: #WBMethodBuilder
	instanceVariableNames: 'selector class fields stream'
	classVariableNames: 'Cache'
	poolDictionaries: ''
	category: 'WriteBarrier-Core'!
!classDefinition: 'WBMethodBuilder class' category: 'WriteBarrier-Core'!
WBMethodBuilder class
	instanceVariableNames: ''!

!classDefinition: #WriteBarrier category: 'WriteBarrier-Core'!
Object subclass: #WriteBarrier
	instanceVariableNames: 'builders'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'WriteBarrier-Core'!
!classDefinition: 'WriteBarrier class' category: 'WriteBarrier-Core'!
WriteBarrier class
	instanceVariableNames: ''!

!classDefinition: #DirtySetWriteBarrier category: 'WriteBarrier-Tests'!
WriteBarrier subclass: #DirtySetWriteBarrier
	instanceVariableNames: 'dirty'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'WriteBarrier-Tests'!
!classDefinition: 'DirtySetWriteBarrier class' category: 'WriteBarrier-Tests'!
DirtySetWriteBarrier class
	instanceVariableNames: ''!

!classDefinition: #WBMock category: 'WriteBarrier-Tests'!
Object subclass: #WBMock
	instanceVariableNames: 'x y'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'WriteBarrier-Tests'!
!classDefinition: 'WBMock class' category: 'WriteBarrier-Tests'!
WBMock class
	instanceVariableNames: ''!

!classDefinition: #WBMockSub category: 'WriteBarrier-Tests'!
WBMock subclass: #WBMockSub
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'WriteBarrier-Tests'!
!classDefinition: 'WBMockSub class' category: 'WriteBarrier-Tests'!
WBMockSub class
	instanceVariableNames: ''!


!WBMethodBuilder commentStamp: 'cmm 11/21/2011 23:41' prior: 0!
A WBMethodBuilder generates an override of a single method which could potentially alter the receiver's inst-vars.  First, it stores each of the receivers inst-vars into temp vars, calls super, then compares each of the temp-vars to the inst-vars.  If any are different, then "self writeBarrier modified: self" is called.

The method source would be something like this:

addValue: t1 
	| t2 t3 t4 t5 t6 |
	t2 _ self instVarAt: 2.
	t3 _ self instVarAt: 3.
	t4 _ self instVarAt: 4.
	t5 _ self instVarAt: 5.
	t6 _ super addValue: t1.
	t2 == (self instVarAt: 2) ifFalse:
		[ self writeBarrier modified: self.
		^ t6 ].
	t3 == (self instVarAt: 3) ifFalse:
		[ self writeBarrier modified: self.
		^ t6 ].
	t4 == (self instVarAt: 4) ifFalse:
		[ self writeBarrier modified: self.
		^ t6 ].
	t5 == (self instVarAt: 5) ifFalse:
		[ self writeBarrier modified: self.
		^ t6 ].
	^ t6!

!WriteBarrier commentStamp: '<historical>' prior: 0!
A WriteBarrier provides a way to watch for changes to the state of individual objects.  Any objects that you #add: to a WriteBarrier will be modified in the following ways:

- their class will be changed to be a new, anonymous subclass of whatever their class was before.  For example, if you #add: an Array to a WriteBarrier, it will now be of class "Array with write barrier", which is a subclass of Array (although it won't show up in "Array subclasses").
- any methods that potentially modify instance variables will be overriden in this new class.  The overridden method stores the original values of the instance variable in temps, then calls the super method, and then compares the current inst var values with the originals.
- If the instance variable values have changed, the WriteBarrier will be notified with a send to #modified:, with the object that was modified as the single argument.
- For variably-sized classes, #at:put: is also overridden to provide the same notification.
- the new class will override #isBehindWriteBarrier to return true, and will implement #writeBarrier to return the WriteBarrier instance.

The default implementation of #modified: doesn't do anything.  DirtySetWriteBarrier is a subclass that overrides #modified: to maintain a set of objects that have recently changed.  You may wish to create your own subclass with an alternate implementation.

Notes:
- You can only add any given object to one WriteBarrier.  If you try to add it to a second one, you will get an error.
- The classes of any objects you add to a WriteBarrier will be made uncompact.  For most compact classes (Array, String, Point, etc) the only effect this should have is to increase your image size by a few percent.  For some classes (CompiledMethod, MethodContext), the results are less predictable, and so adding them to a WriteBarrier is not supported.
- Because it's special cased by the VM, sending #class to an object will return the special anonymous class.  However, sending #species will still return the normal class (or whatever #species would have returned normally).
- The WriteBarrier is semi-permeable: if you want to modify an object directly without triggering notifications, you can use #instVarAt:put: and #basicAt:put:.!

!WBClassBuilder methodsFor: 'private' stamp: 'cmm 11/26/2011 11:04'!
fieldsWrittenToBySelector: selectorSymbol
	^ self targetClass fieldsWrittenToBySelector: selectorSymbol! !

!WriteBarrier methodsFor: 'as yet unclassified' stamp: 'avi 10/7/2004 03:18'!
storeOn: aStream
	aStream nextPutAll: 'self writeBarrier'! !

!WBTestBarrier methodsFor: 'as yet unclassified' stamp: 'avi 10/7/2004 03:19'!
assertChanged: anObject
	self assert: (barrier isDirty: anObject)! !

!WBTestBarrier methodsFor: 'as yet unclassified' stamp: 'avi 10/7/2004 03:19'!
denyChanged: anObject
	self deny: (barrier isDirty: anObject)! !

!WBTestBarrier methodsFor: 'as yet unclassified' stamp: 'avi 10/7/2004 03:19'!
enableWriteBarrier: anObject
	barrier add: anObject! !

!WBTestBarrier methodsFor: 'as yet unclassified' stamp: 'avi 10/7/2004 03:19'!
resetChanged
	barrier clearDirtySet ! !

!WBTestBarrier methodsFor: 'as yet unclassified' stamp: 'avi 10/7/2004 03:19'!
setUp
	barrier _ DirtySetWriteBarrier new! !

!WBTestBarrier methodsFor: 'as yet unclassified' stamp: 'avi 10/7/2004 03:19'!
tearDown
	barrier unregister! !

!WBTestBarrier methodsFor: 'as yet unclassified' stamp: 'avi 10/6/2004 14:01'!
testAtPutDelegatingCollection
	| coll |
	coll _ OrderedCollection new: 5.
	coll add: 'bar'.
	self enableWriteBarrier: coll.
	coll at: 1 put: 'foo'.
	self denyChanged: coll.
	1 to: 100 do: [:i | coll add: i].
	self assertChanged: coll! !

!WBTestBarrier methodsFor: 'as yet unclassified' stamp: 'avi 10/6/2004 14:01'!
testAtPutOverriden
	| array |
	array _ ColorArray new: 3.
	array at: 1 put: Color red.
	self denyChanged: array.
	self enableWriteBarrier: array.
	array at: 2 put: Color blue.
	self assertChanged: array! !

!WBTestBarrier methodsFor: 'as yet unclassified' stamp: 'cmm 11/26/2011 16:37'!
testAtPutVariablySized
	| array |
	array _ WordArray new: 3.
	array at: 1 put: 42.
	self denyChanged: array.
	self enableWriteBarrier: array.
	array at: 2 put: 37.
	self assertChanged: array! !

!WBTestBarrier methodsFor: 'as yet unclassified' stamp: 'cmm 5/30/2018 20:14'!
testBarrierIndependence
	"Independence is accomplished by each WriteBarrier compiling its own instances of the subclasses (which have the same names!!)."
	| barrier1 barrier2 arr1 arr2 |
	barrier1 _ DirtySetWriteBarrier new.
	barrier2 _ DirtySetWriteBarrier new.
	barrier1 add: (arr1 _ Array with: 'init').
	arr1
		at: 1
		put: 'barrier1'.
	barrier2 add: (arr2 _ Array with: 'init2').
	arr2
		at: 1
		put: 'barrier2'.
	self
		 assert: arr1 writeBarrier == barrier1 ;
		 assert: arr2 writeBarrier == barrier2 ;
		 assert: barrier1 dirtySet size = 1 ;
		 assert: barrier2 dirtySet size = 1 ;
		 assert: (barrier1 builderForClass: Array) barrierClass ~~ (barrier2 builderForClass: Array) barrierClass.
	barrier1 unregister.
	barrier2 unregister! !

!WBTestBarrier methodsFor: 'as yet unclassified' stamp: 'avi 10/7/2004 13:32'!
testCannotAddBlock
	self should: [self enableWriteBarrier: [2+2]] raise: Error! !

!WBTestBarrier methodsFor: 'as yet unclassified' stamp: 'avi 10/6/2004 12:14'!
testClassChange
	| dict |
	dict _ Dictionary new.
	self assert: dict class == Dictionary.
	self enableWriteBarrier: dict.
	self deny: dict class  == Dictionary.! !

!WBTestBarrier methodsFor: 'as yet unclassified' stamp: 'cmm 11/26/2011 16:40'!
testClassChangeCompact
	| arr |
	arr _ WordArray with: 37.
	self assert: arr class == WordArray.
	self enableWriteBarrier: arr.
	self deny: arr class  == WordArray! !

!WBTestBarrier methodsFor: 'as yet unclassified' stamp: 'avi 10/7/2004 03:14'!
testCompetingManager
	| manager2 x y |
	manager2 _ WriteBarrier new.
	x _ WBMock new.
	self shouldnt: [manager2 add: x] raise: Error.
	y _ WBMock new.
	self enableWriteBarrier: y.
	self should: [manager2 add: y] raise: Error
	! !

!WBTestBarrier methodsFor: 'as yet unclassified' stamp: 'avi 10/6/2004 13:06'!
testDoubleWriteBarrier
	| m |
	m _ WBMock new.
	self assert: m class == WBMock.
	self enableWriteBarrier: m.
	self assert: m class superclass == WBMock.
	self enableWriteBarrier: m.
	self assert: m class superclass == WBMock! !

!WBTestBarrier methodsFor: 'as yet unclassified' stamp: 'avi 10/6/2004 14:02'!
testNoWriteBarrier
	| point |
	point _ 2@2.
	point setX: 25 setY: 25.
	self denyChanged: point! !

!WBTestBarrier methodsFor: 'as yet unclassified' stamp: 'cmm 11/26/2011 16:42'!
testRemove
	| arr |
	arr _ WordArray with: 38.
	self enableWriteBarrier: arr.
	arr at: 1 put: 39.
	self assertChanged: arr.
	barrier remove: arr.
	self resetChanged.
	arr at: 1 put: 40.
	self denyChanged: arr! !

!WBTestBarrier methodsFor: 'as yet unclassified' stamp: 'avi 10/6/2004 14:01'!
testSelectiveNotification
	| m |
	m _ WBMock new.
	self enableWriteBarrier: m.
	self denyChanged: m.
	m lazyX.
	self assertChanged: m.
	self resetChanged.
	m lazyX.
	self denyChanged: m! !

!WBTestBarrier methodsFor: 'as yet unclassified' stamp: 'cmm 11/26/2011 16:54'!
testSpecies
	| array list |
	array _ WordArray with: 1 with: 2 with: 3.
	list _ LinkedList new add: (StackLink with: 3); yourself.
	self assert: array species == WordArray.
	self assert: list species == Array.
	self enableWriteBarrier: array.
	self enableWriteBarrier: list.
	self assert: array species == WordArray.
	self assert: list species == Array! !

!WBTestBarrier methodsFor: 'as yet unclassified' stamp: 'cmm 11/26/2011 17:06'!
testString
	| string |
	string _ 'test' copy.
	Smalltalk isRunningCog
		ifTrue:
			[ self
				should: [ self enableWriteBarrier: string ]
				raise: Error ]
		ifFalse:
			[ self
				shouldnt: [ self enableWriteBarrier: string ]
				raise: Error ]! !

!WBTestBarrier methodsFor: 'as yet unclassified' stamp: 'cmm 11/26/2011 17:10'!
testTrackEquivalentInstances
	| arr arr2 arr3 |
	arr _ WordArray with: 2.
	arr2 _ WordArray with: 2.
	arr3 _ WordArray with: 2.
	self
		 assert: arr = arr2 ;
		 deny: arr == arr2.
	self enableWriteBarrier: arr.
	self enableWriteBarrier: arr2.
	arr at: 1 put: 25.
	arr3 at: 1 put: 25.
	self assertChanged: arr.
	self denyChanged: arr2.
	self denyChanged: arr3! !

!WBTestBarrier methodsFor: 'as yet unclassified' stamp: 'cmm 11/26/2011 17:12'!
testVariableSelectiveNotification
	| a |
	a _ WordArray with: 3.
	self enableWriteBarrier: a.
	self denyChanged: a.
	a at: 1 put: 3.
	self denyChanged: a.
	a at: 1 put: 4.
	self assertChanged: a! !

!WBTestBarrier methodsFor: 'as yet unclassified' stamp: 'cmm 11/26/2011 17:14'!
testWriteBarrier
	| interval |
	interval _ 3 to: 5.
	self enableWriteBarrier: interval.
	interval setFrom: 13 to: 15 by: 1.
	self assertChanged: interval! !

!WBTestSystemChanges methodsFor: 'as yet unclassified' stamp: 'avi 10/7/2004 03:21'!
barrierClass
	^ barrier barrierClassForClass: WBMock! !

!WBTestSystemChanges methodsFor: 'as yet unclassified' stamp: 'avi 10/7/2004 03:20'!
setUp
	barrier _ WriteBarrier new! !

!WBTestSystemChanges methodsFor: 'as yet unclassified' stamp: 'avi 10/7/2004 11:47'!
tearDown
	barrier unregister! !

!WBTestSystemChanges methodsFor: 'as yet unclassified' stamp: 'cmm 11/23/2011 22:23'!
testAddMutation
	| c |
	c _ self barrierClass.
	self withDefaultMethod: 'y ^ y' on: WBMock do:
		[self deny: (c includesSelector: #y).
		WBMock compile: 'y ^ y ifNil: [y _ 37]' classified: 'accessing'.
		self assert: (c includesSelector: #y)]! !

!WBTestSystemChanges methodsFor: 'as yet unclassified' stamp: 'cmm 11/23/2011 22:23'!
testAddMutator
	| c md cm |
	c _ self barrierClass.
	md _ c methodDictionary copy.
	cm _ c >> #x:.
	self withTemporaryMethod: 'q ^ x _ 42' on: WBMock do:
		[self assert: (c >> #x:) == cm.
		self deny: md = c methodDictionary.
		self assert: (c includesSelector: #q)]! !

!WBTestSystemChanges methodsFor: 'as yet unclassified' stamp: 'cmm 11/23/2011 22:23'!
testAddNonMutator
	| c md cm |
	c _ self barrierClass.
	md _ c methodDictionary copy.
	cm _ c >> #x:.
	self withTemporaryMethod: 'q ^ 42' on: WBMock do:
		[self assert: (c >> #x:) == cm.
		self assert: md = c methodDictionary.
		self deny: (c includesSelector: #q)]! !

!WBTestSystemChanges methodsFor: 'as yet unclassified' stamp: 'cmm 7/29/2010 13:28'!
testChangeDifferentField
	| c cm |
	c _ self barrierClass.
	self withDefaultMethod: 'x: n x _ n' on: WBMock do:
		[cm _ c >> #x:.
		WBMock compile: 'x: n y _ n'.
		self deny: (c >> #x:) == cm]! !

!WBTestSystemChanges methodsFor: 'as yet unclassified' stamp: 'cmm 7/29/2010 13:28'!
testChangeSameField
	| c cm |
	c _ self barrierClass.
	self withDefaultMethod: 'x: n x _ n' on: WBMock do:
		[cm _ c >> #x:.
		WBMock compile: 'x: n x _ n + 1'.
		self assert: (c >> #x:) == cm]! !

!WBTestSystemChanges methodsFor: 'as yet unclassified' stamp: 'avi 10/7/2004 03:22'!
testClassFormatChange
	| oldFmt c |
	oldFmt _ WBMock format.
	c _ self barrierClass.
	self assert: c format = WBMock format.
	WBMock addInstVarName: 'foo'.
	c _ self barrierClass.
	[self deny: WBMock format = oldFmt.
	self assert: c format = WBMock format]
		ensure: [WBMock removeInstVarName: 'foo']! !

!WBTestSystemChanges methodsFor: 'as yet unclassified' stamp: 'avi 10/7/2004 11:48'!
testClassFormatChangeWithInstance
	| instance instance2 |
	instance _ WBMock new.
	instance2 _ WBMock new.
	barrier add: instance.
	instance y: 42.
	instance2 y: 23.
	WBMock removeInstVarName: 'x'.
	[self assert: instance2 y = 23.
	self assert: instance y = 42]
		ensure: [Object subclass: #WBMock
	instanceVariableNames: 'x y'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'WriteBarrier-Tests']! !

!WBTestSystemChanges methodsFor: 'as yet unclassified' stamp: 'cmm 11/23/2011 22:23'!
testRemoveField
	| c |
	c _ self barrierClass.
	self assert: (c includesSelector: #y:).
	WBMock removeInstVarName: 'y'.
	c _ self barrierClass.
	[self deny: (c includesSelector: #y:)]
		ensure: [WBMock addInstVarName: 'y']! !

!WBTestSystemChanges methodsFor: 'as yet unclassified' stamp: 'cmm 11/23/2011 22:23'!
testRemoveMutation
	| c |
	c _ self barrierClass.
	self withDefaultMethod: 'x: n x _ n' on: WBMock do:
		[self assert: (c includesSelector: #x:).
		WBMock compile: 'x: n ^ 42'.
		self deny: (c includesSelector: #x:)]! !

!WBTestSystemChanges methodsFor: 'as yet unclassified' stamp: 'cmm 11/23/2011 22:23'!
testRemoveMutator
	| c |
	c _ self barrierClass.
	self withDefaultMethod: 'x: n x _ n' on: WBMock do:
		[self assert: (c includesSelector: #x:).
		WBMock removeSelector: #x:.
		self deny: (c includesSelector: #x:)]! !

!WBTestSystemChanges methodsFor: 'as yet unclassified' stamp: 'cmm 11/23/2011 22:24'!
testSubClass
	| c |
	c _ (barrier builderForClass: WBMockSub) barrierClass.
	self withDefaultMethod: 'y ^ y' on: WBMock do:
		[self deny: (c includesSelector: #y).
		WBMock compile: 'y ^ y ifNil: [y _ 37]' classified: 'accessing'.
		self assert: (c includesSelector: #y)]! !

!WBTestSystemChanges methodsFor: 'as yet unclassified' stamp: 'avi 10/7/2004 02:03'!
withDefaultMethod: aString on: aClass do: aBlock
	aClass compile: aString classified: 'tests'.
	aBlock ensure: [aClass compile: aString classified: 'tests']! !

!WBTestSystemChanges methodsFor: 'as yet unclassified' stamp: 'avi 10/7/2004 02:08'!
withTemporaryMethod: aString on: aClass do: aBlock
	aClass compile: aString classified: 'tests'.
	aBlock ensure: [aClass removeSelector: (Parser new parseSelector: aString)]! !

!WBClassBuilder methodsFor: 'private' stamp: 'cmm 5/30/2018 22:02'!
allSelectorsDo: aBlock
	| uniqueSelectors | uniqueSelectors _ Set new.
	((self targetClass withAllSuperclasses copyWithout: Object) copyWithout: ProtoObject) do:
		[:cls |
		uniqueSelectors addAll: cls selectors].
	uniqueSelectors do: aBlock! !

!WBClassBuilder methodsFor: 'private' stamp: 'avi 10/7/2004 12:01'!
checkClassFormat: anEvent
	((class format ~~ class superclass format) or: [anEvent areInstVarsModified]) ifTrue:
		[self migrateFromTarget: anEvent oldItem to: anEvent itemClass]! !

!WBClassBuilder methodsFor: 'private' stamp: 'cmm 11/26/2011 13:37'!
checkOverrideOf: aSymbol 
	| fields |
	fields _ self fieldsWrittenToBySelector: aSymbol.
	fields isEmpty
		ifTrue:
			[ (class includesSelector: aSymbol) ifTrue: [ class removeSelector: aSymbol ] ]
		ifFalse:
			[ fields =
				(fieldsCache
					at: aSymbol
					ifAbsent: [  ]) ifFalse:
				[ self
					installOverrideOf: aSymbol
					fields: fields ] ]! !

!WBClassBuilder methodsFor: 'private' stamp: 'avi 10/23/2004 14:28'!
createSubclassOf: aClass
	| meta |
	meta _ Metaclass new.
	meta
		superclass: aClass class
		methodDictionary: MethodDictionary new
		format: aClass class format.
	class _ meta new.
	class
		superclass: aClass
		methodDictionary: MethodDictionary new
		format: aClass format.
	class setName: aClass name, '*'.
	^ class
! !

!WBClassBuilder methodsFor: 'private' stamp: 'cmm 9/8/2015 14:08'!
initializeWithTarget: aClass barrier: aBarrier
	barrier _ aBarrier.
	class _ self createSubclassOf: aClass.
	fieldsCache _ Dictionary new.
	self installOverrides.! !

!WBClassBuilder methodsFor: 'private' stamp: 'cmm 1/14/2013 10:11'!
installAccessingOverrides
	class
		
		compileSilently: 'writeBarrier
	^ #(size) first first'
		classified: 'access' ;
		
		compileSilently: 'species
		|species|
		species _ super species.
		^ species = self class
			ifTrue: [self class superclass]
			ifFalse: [species]'
		classified: 'accessing'.
	((class methodDictionary at: #writeBarrier) literalAt: 2)
		at: 1
		put: (WeakArray with: barrier)! !

!WBClassBuilder methodsFor: 'private' stamp: 'cmm 5/30/2018 22:10'!
installAtPutOverrides
	"This is purposefully written to work for Dictionary's, too."
	self shouldOverrideAtPut ifTrue:
		[class compileSilently:
			'at: aNumber put: anObject
				| shouldSignal result |
				shouldSignal _ (super at: aNumber ifAbsent: ['''']) ~~ anObject.
				result _ super at: aNumber put: anObject.
				shouldSignal ifTrue: [ self writeBarrier modified: self ].
				^ result'
				classified: 'standard']! !

!WBClassBuilder methodsFor: 'private' stamp: 'cmm 2/28/2012 17:13'!
installCopyingOverrides
	class
		compileSilently: 
'shallowCopy
	| copy |
	copy _ super shallowCopy.
	copy == self ifFalse:
		[copy primitiveChangeClassTo: (copy class superclass basicNew)].
	^ copy'
		classified: 'overrides'.
	class
		compileSilently: 
'clone
	| copy |
	copy _ super clone.
	copy == self ifFalse:
		[copy primitiveChangeClassTo: (copy class superclass basicNew)].
	^ copy'
		classified: 'overrides'! !

!WBClassBuilder methodsFor: 'private' stamp: 'cmm 11/26/2011 13:37'!
installFieldOverrides
	| fields |
	self allSelectorsDo:
		[:ea |
		fields _ self fieldsWrittenToBySelector: ea.
		fields isEmpty ifFalse: [self installOverrideOf: ea fields: fields]]! !

!WBClassBuilder methodsFor: 'private' stamp: 'avi 10/7/2004 17:27'!
installGOODSOverrides
	class class compileSilently: 'goodsClassName ^ self superclass name' classified: 'goods'! !

!WBClassBuilder methodsFor: 'private' stamp: 'cmm 3/7/2013 10:42'!
installInstVarAtPutOverride
	self shouldOverrideInstVarAtPut ifTrue:
		[ class compileSilently:
			'instVarAt: aNumber put: anObject
				| shouldSignal result |
				shouldSignal _ (super instVarAt: aNumber) ~~ anObject.
				result _ super instVarAt: aNumber put: anObject.
				shouldSignal ifTrue: [ self writeBarrier modified: self ].
				^ result'
				classified: 'standard' ]! !

!WBClassBuilder methodsFor: 'private' stamp: 'avi 10/7/2004 02:23'!
installOverrideOf: aSymbol fields: anArray
	class addSelectorSilently: aSymbol withMethod:
		(WBMethodBuilder selector: aSymbol class: class fields: anArray)
			compiledMethod.
	fieldsCache at: aSymbol put: anArray! !

!WBClassBuilder methodsFor: 'private' stamp: 'avi 10/6/2004 14:25'!
installOverrides
	self installStandardOverrides.
	self installFieldOverrides.  ! !

!WBClassBuilder methodsFor: 'private' stamp: 'cmm 5/30/2018 22:46'!
installStandardOverrides
	self
		 installAtPutOverrides ;
		 installInstVarAtPutOverride ;
		 installTestingOverrides ;
		 installAccessingOverrides ;
		 installCopyingOverrides! !

!WBClassBuilder methodsFor: 'private' stamp: 'avi 10/7/2004 03:13'!
installTestingOverrides
	class
		compileSilently: 'isBehindWriteBarrier ^ true'
		classified: 'writebarrier'! !

!WBClassBuilder methodsFor: 'private' stamp: 'avi 10/7/2004 03:05'!
migrateFromTarget: oldSuperclass to: newSuperclass
	| oldClass |
	oldClass _ class.
	oldClass superclass: oldSuperclass.
	class _ self createSubclassOf: newSuperclass.
	class updateInstancesFrom: oldClass! !

!WBClassBuilder methodsFor: 'private' stamp: 'avi 10/7/2004 11:46'!
rebuildMethods
	self allSelectorsDo: [:ea | self checkOverrideOf: ea]! !

!WBClassBuilder methodsFor: 'private' stamp: 'cmm 5/30/2018 21:42'!
shouldOverrideAtPut
	^ class isVariable or: [ (class whichClassIncludesSelector: #at:put:) ~= Object ]! !

!WBClassBuilder methodsFor: 'private' stamp: 'cmm 7/13/2009 18:09'!
shouldOverrideInstVarAtPut
	^ class isPointers! !

!WBClassBuilder methodsFor: 'private' stamp: 'cmm 11/23/2011 22:23'!
systemChanged: anEvent 
	anEvent itemKind = #method ifTrue:
		[ (anEvent isRemoved and: [ class includesSelector: anEvent itemSelector ]) ifTrue: [ class removeSelector: anEvent itemSelector ].
		self checkOverrideOf: anEvent itemSelector ].
	anEvent itemKind = #class ifTrue:
		[ anEvent isModified ifTrue:
			[ self checkClassFormat: anEvent.
			self rebuildMethods ] ]! !

!WBClassBuilder methodsFor: 'access' stamp: 'avi 10/6/2004 12:17'!
barrierClass
	^ class! !

!WBClassBuilder methodsFor: 'access' stamp: 'avi 10/6/2004 01:33'!
targetClass
	^ class superclass! !

!WBClassBuilder class methodsFor: 'as yet unclassified' stamp: 'avi 10/7/2004 03:11'!
target: aClass barrier: aBarrier
	^ self basicNew initializeWithTarget: aClass barrier: aBarrier! !

!WBMethodBuilder methodsFor: 'private' stamp: 'cmm 12/3/2011 16:48'!
buildCompiledMethod
	self
		 generateSignature ;
		 generateTemporaryDeclarations ;
		 generateStoreFields ;
		 generateCallSuper ;
		 generateCheckFields ;
		 generateReturn.
	class
		compileSilently: stream contents
		classified: 'overriding'.
	^ class methodDictionary at: selector! !

!WBMethodBuilder methodsFor: 'private' stamp: 'cmm 12/3/2011 16:31'!
generateCallSuper
	"After remembering instVars in temps, call the original version of the method in the superclass."
	self generateCallSuperSendingToArgs: nil! !

!WBMethodBuilder methodsFor: 'private' stamp: 'cmm 12/3/2011 16:43'!
generateCallSuperSendingToArgs: selectorSymbol 
	"After remembering instVars in temps, call the original version of the method in the superclass."
	stream
		 cr ;
		 tab ;
		 nextPutAll: 'returnValue _ super '.
	selector partsAndArgsDo:
		[ : eachPart : eachArg | stream nextPutAll: eachPart.
		eachArg ifNotNil:
			[ stream
				 space ;
				 nextPutAll: eachArg.
			selectorSymbol ifNotNil:
				[ stream
					 space ;
					 nextPutAll: selectorSymbol ].
			stream space ] ].
	stream nextPut: $.! !

!WBMethodBuilder methodsFor: 'private' stamp: 'cmm 11/22/2011 21:49'!
generateCheckField: fieldNumber 
	"Compare the fieldNumber'th instVar of the receiver to the temp-var it was stored in and send #modified: if they're not identical."
	stream
		 cr ;
		 tab ;
		 nextPut: $t ;
		 nextPutAll: fieldNumber asString ;
		 nextPutAll: ' == (' ;
		 nextPutAll: (class allInstVarNames at: fieldNumber) ;
		 nextPutAll: ') ifFalse: [ self writeBarrier modified: self. ^returnValue ].'! !

!WBMethodBuilder methodsFor: 'private' stamp: 'avi 10/6/2004 11:49'!
generateCheckFields
	fields do: [:i | self generateCheckField: i]! !

!WBMethodBuilder methodsFor: 'private' stamp: 'cmm 11/21/2011 23:21'!
generateReturn
	"Return the temp-var which holds the value of the call to super."
	stream
		 cr ;
		 tab ;
		 nextPutAll: '^returnValue'! !

!WBMethodBuilder methodsFor: 'private' stamp: 'cmm 12/3/2011 16:43'!
generateSignature
	"Write the first-line of the method."
	selector partsAndArgsDo:
		[ : eachPart : eachArg | stream nextPutAll: eachPart.
		eachArg ifNotNil:
			[ stream
				 space ;
				 nextPutAll: eachArg ;
				 space ] ]! !

!WBMethodBuilder methodsFor: 'private' stamp: 'cmm 11/22/2011 22:05'!
generateStoreField: fieldNumber 
	"Store the fieldNumber'th instVar into a temp-var for that field."
	stream
		 cr ; tab ;
		 nextPut: $t ;
		 nextPutAll: fieldNumber asString ;
		 nextPutAll: ' _ ' ;
		 nextPutAll: (class allInstVarNames at: fieldNumber) ;
		 nextPut: $.! !

!WBMethodBuilder methodsFor: 'private' stamp: 'avi 10/6/2004 11:42'!
generateStoreFields
	fields do: [:i | self generateStoreField: i]! !

!WBMethodBuilder methodsFor: 'private' stamp: 'cmm 11/21/2011 23:20'!
generateTemporaryDeclarations
	"Write the temps declaration."
	stream
		 cr ;
		 tab ;
		 nextPut: $| ;
		 space.
	fields do:
		[ : i | stream
			 space ;
			 nextPut: $t ;
			 nextPutAll: i asString ].
	stream nextPutAll: ' returnValue |'! !

!WBMethodBuilder methodsFor: 'private' stamp: 'jpb 5/12/2021 11:48:30'!
initialize
	super initialize.
	stream _ WriteStream on: ''! !

!WBMethodBuilder methodsFor: 'private' stamp: 'avi 10/6/2004 13:51'!
initializeWithSelector: aSymbol class: aClass fields: anArray
	selector _ aSymbol.
	class _ aClass.
	fields _ anArray! !

!WBMethodBuilder methodsFor: 'private' stamp: 'cmm 11/21/2011 19:58'!
selectorPartsAndArgsDo: twoArgBlock 
	selector isUnary
		ifTrue:
			[ twoArgBlock
				value: selector
				value: nil ]
		ifFalse:
			[ selector isKeyword
				ifTrue:
					[ (selector subStrings: ':') withIndexDo:
						[ : eachPart : x | twoArgBlock
							value: eachPart , ':'
							value: 'arg' , x asString ] ]
				ifFalse:
					[ twoArgBlock
						value: selector
						value: 'arg1' ] ]! !

!WBMethodBuilder methodsFor: 'access' stamp: 'avi 10/7/2004 03:28'!
compiledMethod
	^ Cache at: (class lookupSelector: selector) ifAbsentPut: [self buildCompiledMethod]! !

!WBMethodBuilder methodsFor: 'access' stamp: 'cmm 12/3/2011 16:33'!
streamContents
	^ stream contents! !

!WBMethodBuilder class methodsFor: 'as yet unclassified' stamp: 'cmm 1/2/2012 20:30'!
initialize
	Cache ifNotNil: [ WeakArray removeWeakDependent: Cache ].
	Cache _ WeakIdentityKeyDictionary new.
	WeakArray addWeakDependent: Cache! !

!WBMethodBuilder class methodsFor: 'as yet unclassified' stamp: 'cmm 12/3/2011 16:51'!
selector: aSymbol class: aClass fields: anArray
	^ self new
		initializeWithSelector: aSymbol
		class: aClass
		fields: anArray! !

!WriteBarrier methodsFor: 'as yet unclassified' stamp: 'avi 10/6/2004 13:25'!
barrierClassForClass: aClass
	^ (self builderForClass: aClass) barrierClass! !

!WriteBarrier methodsFor: 'as yet unclassified' stamp: 'avi 10/6/2004 13:22'!
builderForClass: aClass
	^ builders at: aClass ifAbsentPut: [self newBuilderForClass: aClass]! !

!WriteBarrier methodsFor: 'as yet unclassified' stamp: 'avi 10/7/2004 11:57'!
initialize
	builders _ WeakIdentityKeyDictionary new.
	WeakArray addWeakDependent: builders.
	self registerForNotifications ! !

!WriteBarrier methodsFor: 'as yet unclassified' stamp: 'avi 10/6/2004 13:45'!
modified: anObject! !

!WriteBarrier methodsFor: 'as yet unclassified' stamp: 'avi 10/7/2004 03:11'!
newBuilderForClass: aClass
	^ WBClassBuilder target: aClass barrier: self! !

!WriteBarrier methodsFor: 'as yet unclassified' stamp: 'jpb 5/11/2021 17:30:45'!
registerForNotifications
	MaRegistry registerForNotifications: self! !

!WriteBarrier methodsFor: 'as yet unclassified' stamp: 'avi 10/7/2004 02:15'!
systemChanged: anEvent
	builders keysAndValuesDo:
		[:class :builder |
		(class withAllSuperclasses includes: anEvent itemClass) ifTrue:
			[builder systemChanged: anEvent]]! !

!WriteBarrier methodsFor: 'public' stamp: 'cmm 12/27/2012 10:22'!
add: anObject 
	anObject isBehindWriteBarrier
		ifTrue:
			[ anObject writeBarrier = self ifFalse: [ self error: 'This object is already behind another write barrier.' ] ]
		ifFalse:
			[ anObject isClosure
				ifTrue: [ self error: 'Should not add BlockClosure''s to a WriteBarrier.' ]
				ifFalse:
					[ anObject primitiveChangeClassTo: (self barrierClassForClass: anObject class) basicNew.
					self assert: anObject writeBarrier = self ] ]! !

!WriteBarrier methodsFor: 'public' stamp: 'cmm 3/22/2013 20:30'!
remove: anObject 
	anObject isBehindWriteBarrier ifTrue:
		[ anObject writeBarrier == self ifFalse: [ ^ self ].
		anObject primitiveChangeClassTo: anObject class superclass basicNew ]! !

!WriteBarrier methodsFor: 'public' stamp: 'avi 10/6/2004 13:56'!
unregister
	SystemChangeNotifier uniqueInstance noMoreNotificationsFor: self! !

!DirtySetWriteBarrier methodsFor: 'as yet unclassified' stamp: 'avi 10/6/2004 13:58'!
clearDirtySet
	dirty _ IdentitySet new! !

!DirtySetWriteBarrier methodsFor: 'as yet unclassified' stamp: 'avi 10/6/2004 13:58'!
dirtySet
	^ dirty copy! !

!DirtySetWriteBarrier methodsFor: 'as yet unclassified' stamp: 'avi 10/6/2004 13:58'!
initialize
	super initialize.
	self clearDirtySet! !

!DirtySetWriteBarrier methodsFor: 'as yet unclassified' stamp: 'avi 10/6/2004 13:58'!
isDirty: anObject
	^ dirty includes: anObject! !

!DirtySetWriteBarrier methodsFor: 'as yet unclassified' stamp: 'avi 10/6/2004 13:58'!
modified: anObject
	dirty add: anObject! !

!WBMock methodsFor: 'as yet unclassified' stamp: 'avi 10/6/2004 12:21'!
lazyX
	^ x ifNil: [x _ 42]! !

!WBMock methodsFor: 'as yet unclassified' stamp: 'avi 10/6/2004 12:20'!
y: anObject
	y _ anObject! !

!WBMock methodsFor: 'tests' stamp: 'cmm 11/23/2011 22:24'!
x: n x _ n! !

!WBMock methodsFor: 'tests' stamp: 'avi 10/7/2004 13:54'!
y ^ y! !

!Object methodsFor: '*writebarrier' stamp: 'avi 10/7/2004 03:13'!
isBehindWriteBarrier
	^ false ! !

!Behavior methodsFor: '*writebarrier' stamp: 'avi 10/7/2004 02:23'!
fieldsWrittenToBySelector: aSymbol
	| cm |
	cm _ self lookupSelector: aSymbol.
	^ cm ifNil: [#()] ifNotNil: [(1 to: self instSize) select: [:i | cm writesField: i]]! !

!Behavior methodsFor: '*writebarrier' stamp: 'avi 10/6/2004 12:06'!
holder
	^ #holder -> self! !

!Symbol methodsFor: '*writebarrier' stamp: 'cmm 12/3/2011 16:24'!
partsAndArgsDo: twoArgBlock 
	self isUnary
		ifTrue:
			[ twoArgBlock
				value: self
				value: nil ]
		ifFalse:
			[ self isKeyword
				ifTrue:
					[ (self subStrings: ':') withIndexDo:
						[ : eachPart : x | twoArgBlock
							value: eachPart , ':'
							value: 'arg' , x asString ] ]
				ifFalse:
					[ twoArgBlock
						value: self
						value: 'arg1' ] ]! !
WBMethodBuilder initialize!
