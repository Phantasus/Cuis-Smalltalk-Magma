'From Cuis 5.0 [latest update: #4588] on 7 May 2021 at 1:00:36 am'!
'Description I am a general object serialization and materialization framework.  Currently, I convert objects to ByteArrays and back.  I am used by both the "Ma client server" and "Magma" packages.  I offer a lot of flexibility in the way objects are serialized and materialized, even to the way the object graphs are traversed during serialization.

The major class is MaObjectSerializer, see it for more information.  It utilizes a MaOidManager, a MaClassIdManager, and a MaObjectGraphTraversalStrategy to create a MaSerializedGraphBuffer, the final object that wraps the ByteArray.


License: MIT
Original Author: Chris Muller (cmm)
Author: Josef Philip Bernhart (jpb)'!
!provides: 'Ma-Serializer-Core' 1 1!
SystemOrganization addCategory: 'Ma-Serializer-Core'!


!classDefinition: #MaSerializerConstants category: 'Ma-Serializer-Core'!
SharedPool subclass: #MaSerializerConstants
	instanceVariableNames: ''
	classVariableNames: 'FirstCharacterOid FirstFloatOid FirstNewObjectOid FirstSmallIntegerOid FirstUserObjectOid LastCharacterOid LastFloatOid LastNewObjectOid LastSmallIntegerOid LastUserObjectOid OidForFalse OidForNil OidForTrue OidForZero'
	poolDictionaries: ''
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaSerializerConstants class' category: 'Ma-Serializer-Core'!
MaSerializerConstants class
	instanceVariableNames: ''!

!classDefinition: #MaObjectGraphTraversalStrategy category: 'Ma-Serializer-Core'!
Object subclass: #MaObjectGraphTraversalStrategy
	instanceVariableNames: 'valueWhenBlock traverseWhenBlock'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaObjectGraphTraversalStrategy class' category: 'Ma-Serializer-Core'!
MaObjectGraphTraversalStrategy class
	instanceVariableNames: ''!

!classDefinition: #MaStatHistory category: 'Ma-Serializer-Core'!
Object subclass: #MaStatHistory
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaStatHistory class' category: 'Ma-Serializer-Core'!
MaStatHistory class
	instanceVariableNames: ''!

!classDefinition: #MaBufferPositionMap category: 'Ma-Serializer-Core'!
ProtoObject subclass: #MaBufferPositionMap
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaBufferPositionMap class' category: 'Ma-Serializer-Core'!
MaBufferPositionMap class
	instanceVariableNames: ''!

!classDefinition: #MaClassIdManager category: 'Ma-Serializer-Core'!
ProtoObject subclass: #MaClassIdManager
	instanceVariableNames: 'classesById idsByClass nextClassId classDefinitionsById inImageDefinitions minimumClasses mutable'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaClassIdManager class' category: 'Ma-Serializer-Core'!
MaClassIdManager class
	instanceVariableNames: ''!

!classDefinition: #MaGlobalReference category: 'Ma-Serializer-Core'!
ProtoObject subclass: #MaGlobalReference
	instanceVariableNames: 'globalName'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaGlobalReference class' category: 'Ma-Serializer-Core'!
MaGlobalReference class
	instanceVariableNames: ''!

!classDefinition: #MaClassReference category: 'Ma-Serializer-Core'!
MaGlobalReference subclass: #MaClassReference
	instanceVariableNames: 'id'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaClassReference class' category: 'Ma-Serializer-Core'!
MaClassReference class
	instanceVariableNames: ''!

!classDefinition: #MaClassDefinition category: 'Ma-Serializer-Core'!
MaClassReference subclass: #MaClassDefinition
	instanceVariableNames: 'instVarNames version superclassDefinition category type comment commentStamp classVarNames poolDictionaryNames classInstVarNames aliases'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaClassDefinition class' category: 'Ma-Serializer-Core'!
MaClassDefinition class
	instanceVariableNames: ''!

!classDefinition: #MaIncomingChangeSetNotification category: 'Ma-Serializer-Core'!
ProtoObject subclass: #MaIncomingChangeSetNotification
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaIncomingChangeSetNotification class' category: 'Ma-Serializer-Core'!
MaIncomingChangeSetNotification class
	instanceVariableNames: ''!

!classDefinition: #MaMinimalObject category: 'Ma-Serializer-Core'!
ProtoObject subclass: #MaMinimalObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaMinimalObject class' category: 'Ma-Serializer-Core'!
MaMinimalObject class
	instanceVariableNames: ''!

!classDefinition: #MaMutatingProxy category: 'Ma-Serializer-Core'!
MaMinimalObject subclass: #MaMutatingProxy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaMutatingProxy class' category: 'Ma-Serializer-Core'!
MaMutatingProxy class
	instanceVariableNames: ''!

!classDefinition: #MaObjectBuffer category: 'Ma-Serializer-Core'!
ProtoObject subclass: #MaObjectBuffer
	instanceVariableNames: 'byteArray startPos'
	classVariableNames: 'BufferClasses BufferPositionMaps'
	poolDictionaries: 'MaSerializerConstants'
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaObjectBuffer class' category: 'Ma-Serializer-Core'!
MaObjectBuffer class
	instanceVariableNames: ''!

!classDefinition: #MaFixedObjectBuffer category: 'Ma-Serializer-Core'!
MaObjectBuffer subclass: #MaFixedObjectBuffer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaFixedObjectBuffer class' category: 'Ma-Serializer-Core'!
MaFixedObjectBuffer class
	instanceVariableNames: ''!

!classDefinition: #MaCompiledMethodBuffer category: 'Ma-Serializer-Core'!
MaFixedObjectBuffer subclass: #MaCompiledMethodBuffer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaCompiledMethodBuffer class' category: 'Ma-Serializer-Core'!
MaCompiledMethodBuffer class
	instanceVariableNames: ''!

!classDefinition: #MaMethodContextBuffer category: 'Ma-Serializer-Core'!
MaFixedObjectBuffer subclass: #MaMethodContextBuffer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaMethodContextBuffer class' category: 'Ma-Serializer-Core'!
MaMethodContextBuffer class
	instanceVariableNames: ''!

!classDefinition: #MaVariableBuffer category: 'Ma-Serializer-Core'!
MaObjectBuffer subclass: #MaVariableBuffer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaVariableBuffer class' category: 'Ma-Serializer-Core'!
MaVariableBuffer class
	instanceVariableNames: ''!

!classDefinition: #MaByteObjectBuffer category: 'Ma-Serializer-Core'!
MaVariableBuffer subclass: #MaByteObjectBuffer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaByteObjectBuffer class' category: 'Ma-Serializer-Core'!
MaByteObjectBuffer class
	instanceVariableNames: ''!

!classDefinition: #MaStorageObjectBuffer category: 'Ma-Serializer-Core'!
MaByteObjectBuffer subclass: #MaStorageObjectBuffer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaStorageObjectBuffer class' category: 'Ma-Serializer-Core'!
MaStorageObjectBuffer class
	instanceVariableNames: ''!

!classDefinition: #MaVariableObjectBuffer category: 'Ma-Serializer-Core'!
MaVariableBuffer subclass: #MaVariableObjectBuffer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaVariableObjectBuffer class' category: 'Ma-Serializer-Core'!
MaVariableObjectBuffer class
	instanceVariableNames: ''!

!classDefinition: #MaVariableWordBuffer category: 'Ma-Serializer-Core'!
MaVariableBuffer subclass: #MaVariableWordBuffer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaVariableWordBuffer class' category: 'Ma-Serializer-Core'!
MaVariableWordBuffer class
	instanceVariableNames: ''!

!classDefinition: #MaObjectSerializationSoftwareError category: 'Ma-Serializer-Core'!
ProtoObject subclass: #MaObjectSerializationSoftwareError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaObjectSerializationSoftwareError class' category: 'Ma-Serializer-Core'!
MaObjectSerializationSoftwareError class
	instanceVariableNames: ''!

!classDefinition: #MaObjectSerializationUserError category: 'Ma-Serializer-Core'!
ProtoObject subclass: #MaObjectSerializationUserError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaObjectSerializationUserError class' category: 'Ma-Serializer-Core'!
MaObjectSerializationUserError class
	instanceVariableNames: ''!

!classDefinition: #MaObjectSerializationWarning category: 'Ma-Serializer-Core'!
ProtoObject subclass: #MaObjectSerializationWarning
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaObjectSerializationWarning class' category: 'Ma-Serializer-Core'!
MaObjectSerializationWarning class
	instanceVariableNames: ''!

!classDefinition: #MaObjectSerializer category: 'Ma-Serializer-Core'!
ProtoObject subclass: #MaObjectSerializer
	instanceVariableNames: 'oidManager classIdManager preMadeObjectBuffers graphBuffer createProxyBlock traversalStrategy amBusy preferences bpMapIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaObjectSerializer class' category: 'Ma-Serializer-Core'!
MaObjectSerializer class
	instanceVariableNames: ''!

!classDefinition: #MaObjectSerializerPreferences category: 'Ma-Serializer-Core'!
ProtoObject subclass: #MaObjectSerializerPreferences
	instanceVariableNames: 'preSerializers postSerializers postMaterializers'
	classVariableNames: 'WeakIdentityKeyDictionaryClass WeakValueDictionaryClass'
	poolDictionaries: ''
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaObjectSerializerPreferences class' category: 'Ma-Serializer-Core'!
MaObjectSerializerPreferences class
	instanceVariableNames: ''!

!classDefinition: #MaOidCalculator category: 'Ma-Serializer-Core'!
ProtoObject subclass: #MaOidCalculator
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'MaSerializerConstants'
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaOidCalculator class' category: 'Ma-Serializer-Core'!
MaOidCalculator class
	instanceVariableNames: ''!

!classDefinition: #MaOidManager category: 'Ma-Serializer-Core'!
ProtoObject subclass: #MaOidManager
	instanceVariableNames: 'objects oids nextOid'
	classVariableNames: ''
	poolDictionaries: 'MaSerializerConstants'
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaOidManager class' category: 'Ma-Serializer-Core'!
MaOidManager class
	instanceVariableNames: ''!

!classDefinition: #MaSerializationStat category: 'Ma-Serializer-Core'!
ProtoObject subclass: #MaSerializationStat
	instanceVariableNames: 'timeToSerializeHistory timeToMaterializeHistory houseCleaningTimeHistory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaSerializationStat class' category: 'Ma-Serializer-Core'!
MaSerializationStat class
	instanceVariableNames: ''!

!classDefinition: #MaSerializedGraphBuffer category: 'Ma-Serializer-Core'!
ProtoObject subclass: #MaSerializedGraphBuffer
	instanceVariableNames: 'byteArray'
	classVariableNames: 'SizeWarningThreshold'
	poolDictionaries: ''
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaSerializedGraphBuffer class' category: 'Ma-Serializer-Core'!
MaSerializedGraphBuffer class
	instanceVariableNames: ''!

!classDefinition: #MaTraverseProxyNotification category: 'Ma-Serializer-Core'!
ProtoObject subclass: #MaTraverseProxyNotification
	instanceVariableNames: 'proxy path'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Serializer-Core'!
!classDefinition: 'MaTraverseProxyNotification class' category: 'Ma-Serializer-Core'!
MaTraverseProxyNotification class
	instanceVariableNames: ''!


!MaSerializerConstants commentStamp: 'cmm 12/2/2014 17:01' prior: 0!
Package-level constants.!

!MaBufferPositionMap commentStamp: 'cmm 8/26/2008 02:36' prior: 0!
This is an abstraction for the attributes available on a MaObjectBuffer.  Subclasses may override and extend.!

!MaClassIdManager commentStamp: 'cmm 6/11/2004 16:53' prior: 0!
classDefinitionsById -- all versions of all classes that I know about
 inImageDefinitions -- the in-image version of each class I know about.!

!MaMinimalObject commentStamp: 'cmm 1/13/2005 14:25' prior: 0!
I am the main superclass for objects with a minimal api.  I am meant to have just enough api to be able to develop and debug.!

!MaObjectBuffer commentStamp: 'cmm 11/13/2014 17:00' prior: 0!
This class encapsulates a single object into its byteArray.  The 0-based buffer positions of my fields are:

	0 = oid (6 bytes)
	6 = physicalSize (4 bytes)
	10 = control-fields2 (1 byte)
		bit 1 = 
			For MethodContextBuffers, 0 if small-frame, 1 = largeFrame.
			For CompiledMethodBuffers, 0 = Cog header, 1 = spurHeader.
	11 = filler (2 bytes)
	13 = control-fields (1 byte)
		4 bits (low-order) = bufferType (logical-type indicator of one of my subclasses)
		4 bits (high-order) = indexed position into my class' #bpMaps Array, this value 0-15 (so +1 for access), the attribute-map Dictionary, mapping each attribute Symbol (i.e., #oid) to its bufferPosition.  This allows advanced users like Magma to add its fields without interfering into the simpler nature of Ma object serialization.
		bpMaps:
			at: 0 = Ma object serialization minimum.
			at: 1 = Magma-added fields
	14 = classId (2 bytes)!

!MaFixedObjectBuffer commentStamp: 'cmm 8/10/2010 21:07' prior: 0!
This class encapsulates an object that has a fixed-size.  Most objects are fixed-size.  My 0-based buffer fields are:

	(see superclass)
	16 = classVersion (2 bytes)
	18 = first instance-variable
	
		OR (in Magma only)

	16 = commitNumber (6 bytes)
	22 = filler (6 bytes)
	28 = classVersion (2 bytes)
	30 = first instance-variable
!

!MaCompiledMethodBuffer commentStamp: 'cmm 11/13/2014 15:47' prior: 0!
A MaCompiledMethodBuffer encapsulates all data needed to instantiate a CompiledMethod.  CompiledMethod objects are special because they store bytes and pointers.  Therefore, this buffer type maps additional fields essential to storing CompiledMethods.

	(see superclass)
	18 = methodHeader (4 bytes)
	22 = byteCodesPlusTrailerSize (4 bytes).
	26 = first inst-var
	28 = second inst-var
		... etc...
	nn = byteCodes plus trailer bytes

		OR (in Magma only)

	(see superclass)
	16 = commitNumber (6 bytes)
	22 = method header (4 bytes)
	26 = filler (2 bytes)
	28 = classVersion (2 bytes)
	30 = byteCodesPlusTrailerSize (4 bytes)
	34 = first inst-var
	40 = second inst-var
		... etc...
	nn = byteCodes plus trailer bytes
!

!MaMethodContextBuffer commentStamp: 'cmm 8/4/2011 20:25' prior: 0!
A MaMethodContextBuffer is a special buffer to represent instances of MethodContext.  This is necessary because of the special-nature of MethodContexts; that you must know the correct frame size (small or full) but that is separate from the number of instance-variables it has.  Therefore, we add an attribute, #frameSize to the header.

	(see superclass)
	12 = control-byte
		bit 1 (low-order bit) "largeFrame"
			0 = CompiledMethod smallFrameSize
			1 = CompiledMethod fullFrameSize!

!MaVariableBuffer commentStamp: 'cmm 12/1/2004 23:13' prior: 0!
This class encapsulates an object that has a variable logical size, primarily Smalltalk collections including Byte-oriented collections such as ByteArray and String.

I add no additional fields, only behavior.!

!MaByteObjectBuffer commentStamp: 'cmm 8/10/2010 14:37' prior: 0!
I encapsulate objects that represented as a series of bytes; such as Strings and ByteArrays.
!

!MaStorageObjectBuffer commentStamp: 'cmm 5/1/2005 21:12' prior: 0!
I am a buffer for an object that requires first-class, custom 'storage-object' for serialization.  I contain a MaSerializedGraphBuffer which can be used to materialize the first-class storage object.!

!MaVariableObjectBuffer commentStamp: 'cmm 8/10/2010 15:21' prior: 0!
This class encapsulates variably-sized objects that reference objects.

My buffer fields are (these are 0-based indexes):

	(see superclass)
	18 = inst var #1!

!MaVariableWordBuffer commentStamp: 'cmm 8/26/2008 00:33' prior: 0!
I encapsulate objects that represented as a series of words (2-byte numbers).  These types are useful for multimedia like sounds.!

!MaObjectSerializer commentStamp: 'cmm 8/3/2011 17:46' prior: 0!
A MaObjectSerializer serializes any object into a bytes and back.  Transforming an object into bytes is useful for storing it on disk or sending it over the network.

A primary feature of this serializer is that it stores in a first-class buffer format.  There is a hierarchy of buffers for storing the various kinds of objects:  named inst-vars, indexed-vars, named + indexed, bytes, words, and a special one for CompiledMethods and MethodContexts.

First-class buffers allows object graphs to be "walked" similarly to the way the standard Smalltalk object-model is walked.
!

!MaOidCalculator commentStamp: 'cmm 12/3/2014 10:48' prior: 0!
The oid ranges are as follows:

The range from (0 to: SmallInteger maxVal - SmallInteger minVal) are reserved for:  user objects, the non-integral atomics including 65536 characters and space for 4000000 new-object oids (bigger than any transaction should ever be!!).  We should allow a few thousand for future-use as well.

SmallInteger minVal actually starts at the oid with the value SmallInteger maxVal + 1.  Thus, SmallInteger maxVal has the oid

We start at the bottom so user-objects are contiguous above 
 
  a   n u m b e r   l i n e
|<--- SmallInteger range -------------->|< - - - - - -  LargeInteger range - - - - - - - - - ->|
atomics | chars | new objects          |    user objects             | Floats | SmallIntegers  |

0
	nil
1
	false
2
	true
3
	indicate an unused slot in a MaHashIndex
4 to: 65539
	DB character-set (only SB currently supported)
65540 to: 66540
	future use?
66541 to: 66541 + 4000000  "no more than four-million new objects are allowed in a single commit."
	new-object oids
4066542 to: 281468533259712 (self oidForSmallestFloat-1)
	user objects
281468533259713 to: self oidForSmallestOptimizedInteger-1
	32-bit IEEE floats
281472829227008 to: 281474976710655
	SmallIntegers
!

!MaSerializedGraphBuffer commentStamp: 'cmm 6/10/2009 09:32' prior: 0!
I represent a serialized graph of objects.  Normally entire graphs are serialized but a #toCreateProxies: block may be specified for materialization so that the graph will be terminated with proxy objects.!

!MaClassReference methodsFor: 'accessing' stamp: 'cmm 1/1/2003 23:52'!
name
	"For interface compatibility with Class."

	^self className! !

!MaClassReference methodsFor: 'private' stamp: 'cmm 5/2/2005 15:20'!
maWantsPreSerialization
	^ true! !

!MaClassDefinition methodsFor: 'accessing' stamp: 'cmm 12/19/2002 21:45'!
allInstVarNames
	^instVarNames! !

!MaClassDefinition methodsFor: 'private' stamp: 'cmm 5/18/2004 00:37'!
classVariablesString
	^ self stringForVariables: classVarNames! !

!MaClassDefinition methodsFor: 'private' stamp: 'cmm 10/13/2004 13:03'!
instanceVariablesString

	^ self stringForVariables: (instVarNames copyWithoutAll: superclassDefinition allInstVarNames)! !

!MaClassDefinition methodsFor: 'private' stamp: 'cmm 5/18/2004 00:35'!
sharedPoolsString
	^ self stringForVariables: poolDictionaryNames! !

!MaMinimalObject methodsFor: 'printing'!
printOn: aStream
	"Append to the argument, aStream, a sequence of characters that  
	identifies the receiver."

	| title |
	title _ self class name.
	aStream
		nextPutAll: (title first isVowel ifTrue: ['an '] ifFalse: ['a ']);
		nextPutAll: title
! !

!MaObjectBuffer methodsFor: 'access' stamp: 'cmm 10/30/2004 16:00'!
classVersion

	^ 1! !

!MaObjectBuffer methodsFor: 'testing' stamp: 'cmm 10/21/2004 22:46'!
isBytes

	^ false! !

!MaObjectBuffer methodsFor: 'testing' stamp: 'cmm 2/8/2005 18:00'!
isPointers

	^ true! !

!MaFixedObjectBuffer methodsFor: 'accessing' stamp: 'cmm 10/21/2004 22:05'!
classVersion

	^self 
		uint: 16
		at: self bufferPositionOfClassVersion
! !

!MaByteObjectBuffer methodsFor: 'testing' stamp: 'cmm 10/8/2004 12:09'!
isBytes

	^ true! !

!MaByteObjectBuffer methodsFor: 'testing' stamp: 'cmm 2/8/2005 18:01'!
isPointers

	^ false! !

!MaVariableWordBuffer methodsFor: 'testing' stamp: 'cmm 2/8/2005 18:01'!
isPointers

	^ false! !

!MaSerializedGraphBuffer methodsFor: 'private creation' stamp: 'cmm 7/12/2007 21:24'!
postCopy
	super postCopy.
	self trimByteArray ! !

!MaSerializerConstants class methodsFor: 'as yet unclassified' stamp: 'cmm 12/3/2014 10:57'!
initialize
	OidForNil _ MaOidCalculator oidForNil.
	OidForFalse _ MaOidCalculator oidForFalse.
	OidForTrue _ MaOidCalculator oidForTrue.
	OidForZero _  MaOidCalculator oidForZero.
	FirstNewObjectOid _ MaOidCalculator newOidMinimum.
	LastNewObjectOid _ MaOidCalculator firstUserObjectOid-1.
	FirstUserObjectOid _ MaOidCalculator firstUserObjectOid.
	LastUserObjectOid _ MaOidCalculator lastUserObjectOid.
	FirstCharacterOid _ MaOidCalculator firstCharacterOid.
	LastCharacterOid _ MaOidCalculator lastCharacterOid.
	FirstFloatOid _ MaOidCalculator oidForSmallestFloat.
	LastFloatOid _ MaOidCalculator oidForSmallestOptimizedInteger - 1.
	"Hardcoded values to smooth transition to 64-bit Squeak..??  Although I guess it will still dispatch to the wrong class for serialization/materialization."
	FirstSmallIntegerOid _  281472829227008 "MaOidCalculator oidForInteger: SmallInteger minVal".
	LastSmallIntegerOid _ 281474976710655 "MaOidCalculator oidForInteger: SmallInteger minVal".! !

!MaObjectGraphTraversalStrategy methodsFor: 'private' stamp: 'cmm 5/2/2005 22:13'!
initialize
	super initialize.
	valueWhenBlock _ [:path :parent :instVarIndex | true].
	traverseWhenBlock _ [:path :parent :instVarIndex | true]! !

!MaObjectGraphTraversalStrategy methodsFor: 'testing'!
shouldTraverseIntoLastOf: path from: parent index: anInteger

	^traverseWhenBlock
		value: path
		value: parent
		value: anInteger
! !

!MaObjectGraphTraversalStrategy methodsFor: 'testing'!
shouldValueLastOf: anOrderedCollection from: parentObject index: anInteger

	^valueWhenBlock
		value: anOrderedCollection
		value: parentObject
		value: anInteger
! !

!MaObjectGraphTraversalStrategy methodsFor: 'building'!
traverseWhen: threeArgBlock
	"The default traversal behavior is to traverse everything.  threeArgBlock
	may be specified to restrict the default traversal (stepping into an objects
	instance variables).  The first argument is an OrderedCollection of the
	path of objects that lead to the current node, the second is the parent
	of the current node (and second to last in the path), the last is the integer
	index of the instVar of the current node."

	traverseWhenBlock _ threeArgBlock
! !

!MaObjectGraphTraversalStrategy methodsFor: 'building'!
valueWhen: threeArgBlock
	"The default behavior is to value every node once (the framework automatically
	keeps track of where it has already been).   threeArgBlock takes the same arguments
	as the other parameters of this class."

	valueWhenBlock _ threeArgBlock
! !

!MaObjectGraphTraversalStrategy class methodsFor: 'create' stamp: 'cmm 2/16/2014 18:01'!
newTraverseForSerialization
	^ self new traverseWhen:
		[ : path : parent : indexInteger | path last
			maShouldTraverseWithPath: path
			parent: parent
			index: indexInteger ]! !

!MaObjectGraphTraversalStrategy class methodsFor: 'create' stamp: 'cmm 2/16/2014 17:48'!
newTraverseNoBytes
	"Make a new traversal strategy that does not traverse into individual bytes or words of those class-types, only named and index pointers."
	^ self new traverseWhen:
		[ : path : parent : index | | obj cl |
		obj _ path last.
		cl _ self class.
		cl = CompiledMethod ifTrue: [ ^ true ].
		cl isBytes ifTrue: [ ^ false ].
		cl isPointers ifFalse: [ ^ false ].
		^ true ]! !

!MaObjectGraphTraversalStrategy class methodsFor: 'create' stamp: 'cmm 2/16/2014 17:53'!
newTraverseNoBytesNoGlobals
	"Make a new traversal strategy that does not traverse into individual bytes or words of those class-types, only named and index pointers."
	^ self new traverseWhen:
		[ : path : parent : index | | obj |
		obj _ path last.
		(self shouldTraverseNoBytes: obj) and: [ self shouldTraverseNoGlobals: obj ] ]! !

!MaObjectGraphTraversalStrategy class methodsFor: 'private' stamp: 'cmm 2/16/2014 17:51'!
shouldTraverseNoBytes: anObject 
	| cl |
	cl _ anObject class.
	cl = CompiledMethod ifTrue: [ ^ true ].
	cl isBytes ifTrue: [ ^ false ].
	cl isPointers ifFalse: [ ^ false ].
	^ true! !

!MaObjectGraphTraversalStrategy class methodsFor: 'private' stamp: 'cmm 5/28/2014 14:14'!
shouldTraverseNoGlobals: anObject 
	anObject == Smalltalk ifTrue: [ ^ false ].
	anObject == Processor ifTrue: [ ^ false ].
	anObject == Display ifTrue: [ ^ false ].
	anObject == ActiveHand ifTrue: [ ^ false ].
	anObject == ActiveWorld ifTrue: [ ^ false ].
	anObject == Sensor ifTrue: [ ^ false ].
	anObject == SourceFiles ifTrue: [ ^ false ].
	anObject == SystemOrganization ifTrue: [ ^ false ].
	anObject == TextConstants ifTrue: [ ^ false ].
	anObject == World ifTrue: [ ^ false ].
	anObject isBehavior ifTrue: [ ^ false ].
	anObject maIsEnvironment ifTrue: [ ^ false ].
	^ true! !

!MaStatHistory methodsFor: '*ma-serializer-core' stamp: 'cmm 8/5/2011 13:26'!
maTransientVariables
	^ #('timer' 'guard' )! !

!MaBufferPositionMap class methodsFor: 'as yet unclassified' stamp: 'cmm 8/1/2011 13:51'!
bufferPositionOfByteCodesPlusTrailerSize
	^ 22! !

!MaBufferPositionMap class methodsFor: 'as yet unclassified' stamp: 'cmm 8/10/2010 15:50'!
bufferPositionOfClassVersion
	"Zero-based position."
	^ 16! !

!MaBufferPositionMap class methodsFor: 'as yet unclassified' stamp: 'cmm 8/1/2011 13:08'!
bufferPositionOfMethodHeader
	^ 18! !

!MaBufferPositionMap class methodsFor: 'as yet unclassified' stamp: 'cmm 8/10/2010 15:23'!
headerSize
	"The standard record has 18 bytes of header."
	^ 18! !

!MaBufferPositionMap class methodsFor: 'as yet unclassified' stamp: 'cmm 8/4/2011 21:32'!
headerSizeForCompiledMethodBuffer
	^ 26! !

!MaBufferPositionMap class methodsFor: 'as yet unclassified' stamp: 'cmm 8/27/2008 20:53'!
indexPosition
	"Reserve the 0-based particular slot for this attribute map."
	^ 0! !

!MaClassIdManager methodsFor: 'building' stamp: 'cmm 8/24/2011 21:11'!
addClassDefinition: aMaClassDefinition 
	| definitions answer |
	definitions _ self ensureClassDefinitionsFor: aMaClassDefinition.
	(answer _ self
		definitionLike: aMaClassDefinition
		in: definitions) ifNil:
		[ answer _ aMaClassDefinition.
		aMaClassDefinition version = 0
			ifTrue:
				[ definitions add: aMaClassDefinition.
				aMaClassDefinition version: definitions size ]
			ifFalse:
				[ [ definitions size < aMaClassDefinition version ] whileTrue: [ definitions add: nil ].
				definitions
					at: aMaClassDefinition version
					put: aMaClassDefinition ] ].
	answer isDefined ifTrue:
		[ self
			idOfClass: answer classObject
			is: answer id.
		self refreshInImageDefinition: answer classObject.
		(answer superclassDefinition isNil and: [ answer classObject superclass ~= nil ]) ifTrue:
			[ self addNewClass: answer classObject superclass.
			answer initializeSuperclassDefinitionUsing: self ] ].
	^ answer! !

!MaClassIdManager methodsFor: 'building' stamp: 'cmm 11/30/2011 20:48'!
addNewClass: aClass 
	"Answer the storage definition created for aClass."
	aClass isMeta ifTrue: [ MaObjectSerializationSoftwareError signal: 'Metaclass instances are not stored here.' ].
	^ self addClassDefinition: (self newDefinitionNamed: aClass name)! !

!MaClassIdManager methodsFor: 'building' stamp: 'cmm 8/23/2007 16:25'!
beImmutable
	mutable _ false! !

!MaClassIdManager methodsFor: 'building' stamp: 'cmm 12/11/2013 17:08'!
idOfClass: aClass is: anInteger 
	mutable ifFalse: 
		[ (classesById includesKey: anInteger) ifFalse: 
			[ MaObjectSerializationSoftwareError signal: '#protocol extension not allowed (' , aClass printString , ').' ] ].
	nextClassId _ nextClassId max: anInteger.
	classesById 
		at: anInteger
		put: aClass.
	^ idsByClass 
		at: aClass
		put: anInteger! !

!MaClassIdManager methodsFor: 'building' stamp: 'cmm 6/30/2013 21:13'!
refreshInImageDefinition: aClass 
	"Whenever the user recompiles a class in the image (e.g., during development)."
	({Object. 
	ProtoObject} includes: aClass) ifTrue:
		[ (self hasClassDefinitionFor: aClass) ifTrue:
			[ inImageDefinitions
				at: aClass
				ifAbsentPut: [ "We should only ever have one definition of Object or ProtoObject."
					(self classDefinitionsForClass: aClass) last ].
			^ self"performance" ] ].
	aClass withAllSubclassesDo:
		[ : eachClass | | knownDefinitions | (eachClass = aClass or: [ self includesIdForClass: eachClass ]) ifTrue:
			[ knownDefinitions _ (self hasClassDefinitionFor: eachClass)
				ifTrue: [ self classDefinitionsForClass: eachClass ]
				ifFalse: [ Array empty ].
			inImageDefinitions
				at: eachClass
				put:
					(knownDefinitions
						maDetect: [ : each | each notNil and: [ each hasSameDefinitionAs: eachClass ] ]
						ifFound:
							[ : foundDef | "In the rare case, where a classdef was materialized but not defined in the image, so it was added to definitions only.  Now we're defining it so we need to be sure we set up its mappings."
							self
								idOfClass: eachClass
								is: foundDef id.
							foundDef ]
						ifNone: [ self newDefinitionNamed: eachClass name ]) ] ]! !

!MaClassIdManager methodsFor: 'accessing'!
classDefinitionsById

	^classDefinitionsById
! !

!MaClassIdManager methodsFor: 'accessing' stamp: 'cmm 5/19/2018 17:12'!
classDefinitionsById: aDictionary 
	classDefinitionsById _ aDictionary.
	"One day I encountered a class in an external package whose class name was a WideString (with special characters in it).  To be able to use such class, Magma would need WideString in its minimumClasses (as this is the set of classes required to materialize the classDefinitionsById Dictionary, which has MaClassDefinitions as its values).
	HOWEVER, some databases already have WideString incidentally from objects in their domain.  If this is the case, we must remove it from the minimumClasses to avoid an ambigous classId assignment!!"
	aDictionary
		detect:
			[ : each | each anyOne className = #WideString ]
		ifFound:
			[ : defs | defs anyOne id = (minimumClasses indexOf: WideString) ifFalse: [ minimumClasses _ minimumClasses copyWithout: WideString ] ]
		ifNone: [ "rebuildTransientClassMaps will end up putting it in, 'resulting in a dirty classDefinitionsById only upon opening." ].
	self rebuildTransientClassMaps! !

!MaClassIdManager methodsFor: 'accessing' stamp: 'cmm 10/17/2004 22:39'!
classDefinitionsForClass: aClass

	aClass isMeta ifTrue: [ MaObjectSerializationSoftwareError signal: 'Metaclass instances are not stored here.' ].
	^ self classDefinitionsForId: (self idForClass: aClass)! !

!MaClassIdManager methodsFor: 'accessing' stamp: 'cmm 8/22/2005 09:23'!
classDefinitionsForId: anInteger

	^ self
		classDefinitionsForId: anInteger
		ifAbsent: [ MaObjectSerializationSoftwareError signal: 'class-definition not found' ]! !

!MaClassIdManager methodsFor: 'accessing' stamp: 'cmm 10/12/2004 22:16'!
classDefinitionsForId: anInteger ifAbsent: aBlock

	^ anInteger
		ifNil: [ aBlock value ]
		ifNotNil:
			[ classDefinitionsById
				at: anInteger
				ifAbsent: aBlock ]! !

!MaClassIdManager methodsFor: 'accessing' stamp: 'cmm 6/8/2004 16:13'!
classForId: anInteger

	^ self
		classForId: anInteger
		ifAbsent: [ self error: anInteger printString, ' is not a known class id.' ]! !

!MaClassIdManager methodsFor: 'accessing' stamp: 'cmm 7/11/2005 12:46'!
classForId: anInteger ifAbsent: aBlock

	^ anInteger <= minimumClasses size
		ifTrue:
			[ minimumClasses at: anInteger ]
		ifFalse:
			[ classesById
				at: anInteger
				ifAbsent: aBlock ]! !

!MaClassIdManager methodsFor: 'accessing' stamp: 'cmm 10/17/2004 22:39'!
currentVersionOfClass: aClass

	aClass isMeta ifTrue: [ MaObjectSerializationSoftwareError signal: 'Metaclass instances are not stored here.' ].
	^ (self
		inImageDefinition: aClass
		ifAbsent: [ ^ 1 ]) version! !

!MaClassIdManager methodsFor: 'accessing' stamp: 'cmm 3/23/2005 13:25'!
definitionForClassId: classIdInteger version: classVersionInteger

	^ classVersionInteger = 0
		ifTrue: [ self inImageDefinition: (self classForId: classIdInteger) ]
		ifFalse: [ (self classDefinitionsForId: classIdInteger) at: classVersionInteger ]! !

!MaClassIdManager methodsFor: 'accessing' stamp: 'cmm 6/11/2018 22:16'!
ensureClassDefinitionsFor: aMaClassDefinition 
	"Look for the collection of versions of the same class that aMaClassDefinition is for.  If none exist create and answer the new collection that will hold aMaClassDefinition and its future versions."
	^ (aMaClassDefinition id notNil and: [ classDefinitionsById includesKey: aMaClassDefinition id ])
		ifTrue: [ classDefinitionsById at: aMaClassDefinition id ]
		ifFalse:
			[ classDefinitionsById
				detect:
					[ : eachDefinitions | eachDefinitions anySatisfy:
						[ : each | each notNil and: [ each isKnownAs: aMaClassDefinition className ] ] ]
				ifFound:
					[ : defs | "If new version of existing in-image class, make sure it's id is set!!"
					aMaClassDefinition hasId ifFalse: [ aMaClassDefinition id: defs first id ].
					defs ]
				ifNone:
					[ | id class |
					"None found, create one.  First, figure out the id."
					id _ aMaClassDefinition hasId
						ifTrue: [ aMaClassDefinition id ]
						ifFalse:
							[ "Okay, new class, increment classId and assign it.  Oh, but make sure this is not one of the minimumClasses which get added here during initialization."
							class _ Smalltalk classNamed: aMaClassDefinition className.
							(class notNil and: [ self isMemberOfMinimumClasses: class ])
								ifTrue: [ self idForClass: class ]
								ifFalse: [ self nextClassId ] ].
					aMaClassDefinition id: id.
					classDefinitionsById
						at: id
						put: (OrderedCollection new: 1) ] ]! !

!MaClassIdManager methodsFor: 'accessing' stamp: 'cmm 8/26/2002 22:03'!
idForClass: aClass

	^self
		idForClass: aClass
		ifAbsent: [ MaSoftwareError signal: aClass name, ' has no id assigned.' ]! !

!MaClassIdManager methodsFor: 'accessing' stamp: 'cmm 7/20/2007 11:52'!
idForClass: aClass ifAbsent: aBlock 
	| index |
	aClass isMeta ifTrue: 
		[ MaObjectSerializationSoftwareError signal: 'Metaclass instances are not stored here.' ].
	^ idsByClass 
		at: aClass
		ifAbsent: 
			[ (index _ minimumClasses indexOf: aClass) > 0 
				ifTrue: [ index ]
				ifFalse: [ aBlock value ] ]! !

!MaClassIdManager methodsFor: 'accessing' stamp: 'cmm 6/6/2004 19:46'!
inImageDefinition: aClass

	^ self
		inImageDefinition: aClass
		ifAbsent: [ self error: aClass name, ' is not part of my inImageDefinitions.' ]! !

!MaClassIdManager methodsFor: 'accessing' stamp: 'cmm 10/15/2004 11:58'!
inImageDefinition: aClass ifAbsent: aBlock

	^ inImageDefinitions
		at: (aClass isMeta ifTrue: [ Metaclass ] ifFalse: [ aClass ])
		ifAbsent: aBlock! !

!MaClassIdManager methodsFor: 'accessing' stamp: 'cmm 7/11/2005 12:46'!
minimumClasses

	^ minimumClasses! !

!MaClassIdManager methodsFor: 'accessing' stamp: 'cmm 7/11/2005 14:38'!
numberOfClasses

	^ classDefinitionsById size! !

!MaClassIdManager methodsFor: 'accessing' stamp: 'cmm 3/16/2009 20:43'!
protocol
	"Calculate and answer the protocol based on assigned classId's (which, because superclasses are added, may not match the original protocol set).  This is used for fileingout a single object, the user is not burdened with protocol, it is calculated and stored with the object."
	^ ((self classDefinitionsById select: [ : each | each anyOne id > self initialClassId ]) asSortedCollection: [ : a : b | a anyOne id < b anyOne id ]) collect: [ : each | each anyOne classObject ]! !

!MaClassIdManager methodsFor: 'testing' stamp: 'cmm 8/23/2011 21:55'!
definitionLike: aMaClassDefinition in: definitionsCollection 
	definitionsCollection isEmpty ifTrue: [ ^ nil ].
	(definitionsCollection anySatisfy:
		[ : each | each className = aMaClassDefinition className ]) ifFalse: [ ^ nil ].
	(definitionsCollection includes: aMaClassDefinition) ifTrue: [ ^ aMaClassDefinition ].
	^ definitionsCollection
		detect:
			[ : eachDef | eachDef notNil and: [ eachDef hasSameDefinitionAs: aMaClassDefinition ] ]
		ifNone: [ nil ]! !

!MaClassIdManager methodsFor: 'testing' stamp: 'cmm 2/10/2012 15:38'!
hasClassDefinitionFor: aClass 
	| foundQuickly |
	foundQuickly _ inImageDefinitions
		at: aClass
		ifPresent: [ : definition | definition isPartOfClassDefinitions ]
		ifAbsent: [ false ].
	^ foundQuickly or:
		[ classDefinitionsById anySatisfy:
			[ : eachDefinitions | (eachDefinitions last isKnownAs: aClass name) and:
				[ eachDefinitions anySatisfy:
					[ : each | each notNil and: [ each hasSameDefinitionAs: aClass ] ] ] ] ]! !

!MaClassIdManager methodsFor: 'testing' stamp: 'cmm 6/30/2004 00:03'!
includesIdForClass: aClass

	^ idsByClass includesKey: aClass! !

!MaClassIdManager methodsFor: 'testing' stamp: 'cmm 7/11/2005 12:46'!
isMemberOfMinimumClasses: aClass
	aClass isMeta ifTrue: [ MaObjectSerializationSoftwareError signal: 'Metaclass instances are not stored here.' ].
	^ minimumClasses includes: aClass! !

!MaClassIdManager methodsFor: 'event handling' stamp: 'cmm 10/1/2004 15:21'!
handleClassModification: aClass using: aMaObjectSerializer

	"Optional subclass hook."! !

!MaClassIdManager methodsFor: 'copy' stamp: 'cmm 3/23/2013 17:11'!
independentCopy
self maMarked: 'delete'.
	^ self copy postIndependentCopy! !

!MaClassIdManager methodsFor: 'private' stamp: 'cmm 5/20/2010 14:26'!
initialClassId
	^ 1000! !

!MaClassIdManager methodsFor: 'private' stamp: 'cmm 3/16/2009 20:29'!
initialize
	super initialize.
	idsByClass _ Dictionary new.
	classesById _ Dictionary new.
	nextClassId _ self initialClassId.
	inImageDefinitions _ Dictionary new.
	mutable _ true.
	self classDefinitionsById: Dictionary new.
	self initializeMinimumClasses! !

!MaClassIdManager methodsFor: 'private' stamp: 'jpb 5/7/2021 00:50:04'!
initializeMinimumClasses
	| legacyDefinitions minimumClassDefs |
	legacyDefinitions _ OrderedCollection new.
	"In Squeak 3.9, there were only 14 minimumClasses numbered from (101 to: 114).  115 was the first user class-id, but as-of Squeak 4.1, the hierarchy changed and HashedCollection is extra and would try to occupy 115 when initializing the minimumClasses.  This made me realize minimumClasses could change, and therefore needed some buffer space.  Therefore, I made HashedCollection 90 and set the first user classId up to 1000 so it won't happen again!!"
				
	minimumClasses _ self class minimumClasses.
	
	self legacyClassMap do: 
		[ : each | 
		legacyDefinitions add:
			((self newDefinitionNamed: each value name)
				id: each key ;
				yourself) ].
			
	"Reserve those legacy id's first."
	minimumClassDefs _ legacyDefinitions collect: [ : each | self primAddClassDefinition: each ].
	nextClassId _ 1000.
	
	"Now add them using the normal API so that their superlcass defs will get defined too."
	minimumClassDefs do: [ : each | self addClassDefinition: each ].
	
	"Finally, make sure any that were added as minimumClasses since those legacy ones are also included."
	minimumClasses do: [ : each | (self hasClassDefinitionFor: each) ifFalse: [ self addNewClass: each ] ]! !

!MaClassIdManager methodsFor: 'private' stamp: 'cmm 2/25/2008 16:36'!
isMutable
	^ mutable! !

!MaClassIdManager methodsFor: 'private' stamp: 'cmm 7/14/2010 14:28'!
legacyClassMap
	^ { 
		(1 -> Metaclass).
		(2 -> Class).
		(3 -> MaClassReference).
		(4 -> MaClassDefinition).
		(5 -> Boolean).
		(6 -> SmallInteger).
		(7 -> Character).
		(8 -> Float).
		(9 -> UndefinedObject).
		(10 -> Array).
		(11 -> ByteSymbol).
		(12 -> ByteString).
		(13 -> ByteArray).
		(14 -> Set).
		(15 -> OrderedCollection).
		(16 -> Dictionary).
		(17 -> True).
		(18 -> False).
		(101 -> ClassDescription).
		(102 -> Behavior).
		(103 -> Object).
		(104 -> ProtoObject).
		(105 -> MaGlobalReference).
		(106 -> MaObject).
		(107 -> Integer).
		(108 -> Number).
		(109 -> Magnitude).
		(110 -> ArrayedCollection).
		(111 -> SequenceableCollection).
		(112 -> Collection).
		(113 -> Symbol).
		(114 -> String)
	 }! !

!MaClassIdManager methodsFor: 'private' stamp: 'cmm 11/30/2011 20:46'!
newDefinitionNamed: className 
	^ MaClassDefinition className: className! !

!MaClassIdManager methodsFor: 'private' stamp: 'cmm 8/15/2002 23:53'!
nextClassId

	^nextClassId _ nextClassId + 1
! !

!MaClassIdManager methodsFor: 'private' stamp: 'cmm 3/23/2013 17:12'!
postIndependentCopy
self maMarked: 'delete'.
	classesById _ classesById copy.
	idsByClass _ idsByClass copy.
	classDefinitionsById _ classDefinitionsById copy.
	inImageDefinitions _ inImageDefinitions copy! !

!MaClassIdManager methodsFor: 'private' stamp: 'cmm 8/24/2011 21:05'!
primAddClassDefinition: aMaClassDefinition 
	"Add only aMaClassDefinition without any of its superclasses."
	| definitions answer |
	definitions _ self ensureClassDefinitionsFor: aMaClassDefinition.
	(answer _ self
		definitionLike: aMaClassDefinition
		in: definitions) ifNil:
		[ answer _ aMaClassDefinition.
		aMaClassDefinition version = 0
			ifTrue:
				[ definitions add: aMaClassDefinition.
				aMaClassDefinition version: definitions size ]
			ifFalse:
				[ definitions
					at: aMaClassDefinition version
					put: aMaClassDefinition ] ].
	answer isDefined ifTrue:
		[ self
			idOfClass: answer classObject
			is: answer id.
		self refreshInImageDefinition: answer classObject ].
	^ answer! !

!MaClassIdManager methodsFor: 'private' stamp: 'cmm 9/28/2009 11:43'!
rebuildTransientClassMaps
	| highestId |
	idsByClass _ idsByClass maOriginalClass new: idsByClass size.
	classesById _ classesById maOriginalClass new: classesById size.
	inImageDefinitions _ inImageDefinitions maOriginalClass new: inImageDefinitions size.
	highestId _ 0.
	classDefinitionsById keysAndValuesDo: 
		[ : eachId : eachDefinitions | 
		| eachClass |
		highestId _ highestId max: eachId.
		eachDefinitions do: 
			[ : each | 
			each isDefined ifTrue: 
				[ eachClass _ each classObject.
				self 
					idOfClass: eachClass
					is: eachId.
				self refreshInImageDefinition: eachClass ] ] ].
	nextClassId _ highestId max: nextClassId! !

!MaClassIdManager class methodsFor: 'accessing' stamp: 'cmm 1/21/2018 14:54'!
minimumClasses
	"These are the classes required to transmit a MaClassDefinition, used to establish protocol between two images."
	^ { Metaclass.  Class.  MaClassReference.  MaClassDefinition.
	"These atomic types are needed for backward compatibility with version 8."
	Boolean. SmallInteger. Character. Float. UndefinedObject.
	Array. #size class. '' class. ByteArray. Set.  OrderedCollection. Dictionary.
	"Added these at the end for backward compatibility.  Boolean was not the right one, you need the exact classes!!"
	True. False.
	WideString } ! !

!MaGlobalReference methodsFor: 'private'!
globalName

	^globalName! !

!MaGlobalReference methodsFor: 'private'!
globalName: aSymbol

	globalName _ aSymbol
! !

!MaGlobalReference methodsFor: 'accessing' stamp: 'cmm 9/6/2012 18:11'!
globalObject
	^ Smalltalk classNamed: self globalName! !

!MaGlobalReference methodsFor: 'printing' stamp: 'cmm 4/22/2002 22:25'!
maPrintAbbreviatedOn: aStream

	aStream nextPutAll: self globalName
! !

!MaGlobalReference class methodsFor: 'creation'!
globalName: aSymbol

	^self new globalName: aSymbol
! !

!MaClassReference methodsFor: 'accessing'!
className

	^self globalName
! !

!MaClassReference methodsFor: 'accessing'!
classObject

	^self globalObject
! !

!MaClassReference methodsFor: 'accessing' stamp: 'cmm 6/23/2004 00:03'!
hasId

	^ self id notNil! !

!MaClassReference methodsFor: 'accessing'!
id

	^id
! !

!MaClassReference methodsFor: 'building'!
className: aSymbol

	self globalName: aSymbol
! !

!MaClassReference methodsFor: 'building' stamp: 'cmm 5/18/2018 18:21'!
id: anInteger
	(id notNil and: [id~=anInteger]) ifTrue: [ MaObjectSerializationSoftwareError signal ].
	id _ anInteger! !

!MaClassReference methodsFor: 'testing' stamp: 'cmm 2/11/2012 16:51'!
isDefinition
	^ false! !

!MaClassReference class methodsFor: 'creation' stamp: 'cmm 6/28/2004 18:05'!
className: aSymbol

	^ self globalName: aSymbol! !

!MaClassDefinition methodsFor: 'accessing' stamp: 'cmm 9/26/2009 19:08'!
allSuperclassDefinitions
	^ Array streamContents: 
		[ : stream | 
		self allSuperclassDefinitionsDo: [ : each | stream nextPut: each ] ]! !

!MaClassDefinition methodsFor: 'accessing' stamp: 'cmm 9/6/2012 18:12'!
ensureClassUsing: aMaObjectSerializer 
	^ self classObject ifNil: [ self createClassUsing: aMaObjectSerializer ]! !

!MaClassDefinition methodsFor: 'accessing' stamp: 'cmm 9/6/2012 18:16'!
globalObject
	^ super globalObject ifNil:
		[ aliases do:
			[ : each | (Smalltalk classNamed: each) ifNotNil:
				[ : cls | ^ cls ] ].
		nil ]! !

!MaClassDefinition methodsFor: 'accessing' stamp: 'cmm 6/16/2004 22:40'!
indexOfInstVarCorrespondingTo: instVarIndex of: anotherMaClassDefinition
	"Answer the index of the instVar in me that corresponds to the one at instVarIndex in anotherMaClassDefinition."

	self == anotherMaClassDefinition ifTrue: [ ^ instVarIndex ].
	"different versions, determine if instVarIndex refers to a named or indexed var"
	^ instVarIndex > anotherMaClassDefinition allInstVarNames size
		ifTrue:
			[ "indexed inst var" 
			self allInstVarNames size + (instVarIndex - anotherMaClassDefinition allInstVarNames size) ]
		ifFalse:
			[ "find the instVar with the same name."
			self allInstVarNames
				indexOf: (anotherMaClassDefinition allInstVarNames at: instVarIndex) ]! !

!MaClassDefinition methodsFor: 'accessing' stamp: 'cmm 12/19/2002 21:43'!
namedInstSize
	^self allInstVarNames size! !

!MaClassDefinition methodsFor: 'accessing' stamp: 'cmm 6/11/2004 00:55'!
superclassDefinition

	^ superclassDefinition! !

!MaClassDefinition methodsFor: 'accessing' stamp: 'cmm 6/10/2004 23:49'!
superclassName

	^ superclassDefinition className! !

!MaClassDefinition methodsFor: 'accessing'!
version

	^version! !

!MaClassDefinition methodsFor: 'actions' stamp: 'cmm 1/26/2005 13:06'!
allSuperclassDefinitionsDo: oneArgBlock
	"Value oneArgBlock with each of my superclass-definitions, in turn."

	superclassDefinition ifNotNil: [ superclassDefinition withAllSuperclassDefinitionsDo: oneArgBlock ]! !

!MaClassDefinition methodsFor: 'actions' stamp: 'cmm 3/8/2005 13:51'!
createClassUsing: aMaObjectSerializer
	| superClass |
	superClass _ self superclassDefinition ensureClassUsing: aMaObjectSerializer.
	^ SystemChangeNotifier uniqueInstance doSilently:
		[ ((ClassBuilder new)
			name: self className
			inEnvironment: superClass environment 
			subclassOf: superClass
			type: type 
			instanceVariableNames: self instanceVariablesString 
			classVariableNames: self classVariablesString 
			poolDictionaries: self sharedPoolsString
			category: category)
			
			ifNotNilDo:
				[ : class |
				aMaObjectSerializer classIdManager
					idOfClass: class
					is: self id.
				class class instanceVariableNames: self classInstanceVariablesString.
				class hasComment
					ifTrue: 
						[ class 
							classComment: comment 
							stamp: commentStamp ].
				aMaObjectSerializer classIdManager refreshInImageDefinition: class.
				class ] ]! !

!MaClassDefinition methodsFor: 'actions' stamp: 'cmm 10/17/2004 15:04'!
withAllSuperclassDefinitionsDo: oneArgBlock
	"Value oneArgBlock with myself, then each of my superclass-definitions, in turn."

	oneArgBlock value: self.
	superclassDefinition ifNotNil: [ superclassDefinition withAllSuperclassDefinitionsDo: oneArgBlock ]! !

!MaClassDefinition methodsFor: 'private' stamp: 'cmm 5/18/2004 00:38'!
classInstanceVariablesString
	^ self stringForVariables: classInstVarNames! !

!MaClassDefinition methodsFor: 'private' stamp: 'cmm 10/13/2004 23:50'!
initialize

	super initialize.
	self version: 0.
	aliases _ OrderedCollection new! !

!MaClassDefinition methodsFor: 'private' stamp: 'cmm 6/10/2004 23:43'!
initializeFrom: aClass

	self globalName: aClass name.
	instVarNames _ aClass allInstVarNames.
	classVarNames _ aClass classVarNames.
	poolDictionaryNames _ aClass poolDictionaryNames.
	classInstVarNames _ aClass class instVarNames.
	category _ aClass category.
	type _ aClass typeOfClass.
	comment _ aClass organization classComment asString.
	commentStamp _ aClass organization commentStamp! !

!MaClassDefinition methodsFor: 'private' stamp: 'cmm 5/18/2004 00:34'!
stringForVariables: aCollection

	^ String streamContents:
		[ :stream |
		aCollection
			do: [ :ea | stream nextPutAll: ea ]
			separatedBy: [ stream space ] ]! !

!MaClassDefinition methodsFor: 'testing' stamp: 'cmm 5/20/2010 15:19'!
hasSameDefinitionAs: aClassOrMaClassDefinition 
	"Answer whether my definition is the same as aClassOrMaClassDefinition.  However, since Ma serializes only above the Smalltalk meta-layer, don't acknowledge differences in Class or Metaclass."
	^ (self name = #Class or: [ self name = #Metaclass ])
		or: [ self allInstVarNames maMatchesElementsOf: aClassOrMaClassDefinition allInstVarNames ]! !

!MaClassDefinition methodsFor: 'testing' stamp: 'cmm 9/6/2012 18:06'!
isDefined
	^ (Smalltalk hasClassNamed: self className) or:
		[ aliases anySatisfy:
			[ : each | Smalltalk hasClassNamed: each ] ]! !

!MaClassDefinition methodsFor: 'testing' stamp: 'cmm 2/11/2012 16:51'!
isDefinition
	^ true! !

!MaClassDefinition methodsFor: 'testing' stamp: 'cmm 10/13/2004 23:53'!
isKnownAs: className

	^ self name = className
	or: [ aliases includes: className ]! !

!MaClassDefinition methodsFor: 'testing' stamp: 'cmm 6/7/2004 21:35'!
isPartOfClassDefinitions

	^ version > 0! !

!MaClassDefinition methodsFor: 'testing' stamp: 'cmm 11/26/2004 15:12'!
maWantsPostMaterialization
	^ true! !

!MaClassDefinition methodsFor: 'building' stamp: 'cmm 8/24/2011 16:42'!
initializeSuperclassDefinitionUsing: aMaClassIdManager 
	| superclassDefinitions |
	superclassDefinitions _ aMaClassIdManager classDefinitionsForClass: self classObject superclass.
	superclassDefinition _ superclassDefinitions
		detect:
			[ : each | each notNil and: [ each hasSameDefinitionAs: self classObject superclass ] ]
		ifNone: [ aMaClassIdManager inImageDefinition: self classObject superclass ]! !

!MaClassDefinition methodsFor: 'building' stamp: 'cmm 6/23/2004 13:49'!
version: anInteger

	version _ anInteger
! !

!MaClassDefinition methodsFor: 'printing' stamp: 'cmm 6/24/2004 14:42'!
maPrintAbbreviatedOn: aStream

	super maPrintAbbreviatedOn: aStream.
	self
		maPrintAttribute: #version
		on: aStream! !

!MaClassDefinition class methodsFor: 'creation' stamp: 'cmm 6/16/2004 11:26'!
className: aSymbol

	^(super className: aSymbol)
		initializeFrom: (Smalltalk classNamed: aSymbol) ;
		yourself! !

!MaIncomingChangeSetNotification methodsFor: 'as yet unclassified' stamp: 'cmm 2/3/2005 21:22'!
defaultAction
	"The ChangeSet will be created if it does not exist.  Resume with true to instruct Magma to file in the code with the ChangeSet."

	self resume: false! !

!MaMinimalObject methodsFor: 'Public methods'!
= anObject 
	"Answer whether the receiver and the argument represent the same 
	object. If = is redefined in any subclass, consider also redefining the 
	message hash."

	^self == anObject! !

!MaMinimalObject methodsFor: 'Public methods'!
~= anObject

	"Answer a Boolean which is false when the receiver and anObject
	 are equivalent, and true otherwise."

	^(self = anObject) not! !

!MaMinimalObject methodsFor: 'Public methods' stamp: 'cmm 12/23/2010 15:03'!
subclassResponsibility
	"This message sets up a framework for the behavior of the class' subclasses.
	Announce that the subclass should have implemented this message."
	self error: 'My subclass should have overridden ' , thisContext sender selector printString! !

!MaMinimalObject methodsFor: 'printing' stamp: 'kph 7/14/2007 05:48'!
asExplorerString
	^ self printString! !

!MaMinimalObject methodsFor: 'printing' stamp: 'cmm 12/25/2002 00:41'!
printString
	"Answer a String whose characters are a description of the receiver. 
	If you want to print without a character limit, use fullPrintString."

	^String streamContents: [ :s | self printOn: s ]! !

!MaMinimalObject methodsFor: 'actions' stamp: 'cmm 1/13/2005 13:46'!
becomeForward: otherObject copyHash: copyHash
	"Primitive. All variables in the entire system that used to point to the receiver now point to the argument.
	If copyHash is true, the argument's identity hash bits will be set to those of the recevier.
	Fails if either argument is a SmallInteger."

	(Array with: self)
		elementsForwardIdentityTo:
			(Array with: otherObject)
				copyHash: copyHash! !

!MaMinimalObject methodsFor: 'accessing' stamp: 'cmm 8/10/2011 16:19'!
class

	"Answer a Class which is the receiver's class"

	<primitive: 111>
	self primitiveFailed
! !

!MaMinimalObject methodsFor: 'private' stamp: 'cmm 7/1/2012 17:05'!
iconOrThumbnailOfSize: aNumberOrPoint 
	"To support the ObjectExplorer.  Answer an appropiate form to represent the receiver."
	^ nil! !

!MaMinimalObject methodsFor: 'private' stamp: 'cmm 12/25/2002 00:42'!
primitiveFailed
	"Announce that a primitive has failed and there is no appropriate 
	Smalltalk code to run."

	self error: 'a primitive has failed'! !

!MaMinimalObject methodsFor: 'debugging' stamp: 'cmm 12/1/2004 14:28'!
inspect
	"Create and schedule an Inspector in which the user can examine the receiver's variables."

	self inspectorClass openOn: self withEvalPane: true
! !

!MaMinimalObject methodsFor: 'debugging' stamp: 'cmm 12/1/2004 14:28'!
inspectorClass

	^ Inspector! !

!MaMinimalObject methodsFor: 'testing' stamp: 'cmm 5/4/2005 11:15'!
isBehindWriteBarrier
	"Proxy's don't change anyway.."

	^ false! !

!MaMinimalObject methodsFor: 'testing' stamp: 'cmm 5/23/2011 14:20'!
isLiteral
	"Answer whether the receiver has a literal text form recognized by the compiler."
	^ false! !

!MaMinimalObject methodsFor: 'testing' stamp: 'cmm 2/15/2005 10:45'!
isMorph
	"this is here to satisfy CommandHistory."

	^ false! !

!MaMutatingProxy methodsFor: 'private' stamp: 'cmm 10/25/2010 13:29'!
doesNotUnderstand: aMessage 
	self subclassResponsibility! !

!MaMutatingProxy methodsFor: 'private' stamp: 'cmm 1/13/2005 13:45'!
maIsMutatingProxy

	^ true! !

!MaMutatingProxy methodsFor: 'private' stamp: 'cmm 10/25/2010 13:29'!
respondsTo: aMessage 
	"this is so that respondsTo can be used on proxies without realizing the object needed for explorers which send respondsTo: #explorerContents"
	^ (self class canUnderstand: aMessage) or: [ self realObjectIfMutatingProxy respondsTo: aMessage ]! !

!MaMutatingProxy methodsFor: 'ide support' stamp: 'cmm 10/25/2010 12:58'!
explorerContents
	| proxy |
	proxy _ self printString.
	^ Array with:
		(ObjectExplorerWrapper
			with: self realObjectIfMutatingProxy
			name: proxy asString
			model: self realObjectIfMutatingProxy)! !

!MaMutatingProxy methodsFor: 'ide support' stamp: 'kph 7/14/2007 05:49'!
hasContentsInExplorer

	^true! !

!MaMutatingProxy methodsFor: 'testing' stamp: 'cmm 10/25/2010 13:28'!
maRealObjectIsReified
	self subclassResponsibility! !

!MaMutatingProxy methodsFor: 'accessing' stamp: 'cmm 4/23/2013 10:07'!
maWantsPostMaterialization
	^ self realObjectIfMutatingProxy maWantsPostMaterialization! !

!MaMutatingProxy methodsFor: 'accessing' stamp: 'cmm 10/25/2010 13:08'!
realObjectIfMutatingProxy
	self subclassResponsibility! !

!MaMutatingProxy methodsFor: 'accessing' stamp: 'cmm 1/17/2014 14:02'!
realObjectIfReified
	"Only answer my realObject if its reified, otherwise nil."
	^ self maRealObjectIsReified ifTrue: [ self realObjectIfMutatingProxy ]! !

!MaMutatingProxy methodsFor: 'accessing' stamp: 'cmm 10/25/2010 13:32'!
setRealObjectTo: anObject
	self subclassResponsibility! !

!MaObjectBuffer methodsFor: 'access' stamp: 'cmm 8/25/2008 22:43'!
bpMap
	"Answer the actual MaBufferPositionMap used to map this buffer."
	^ self class bpMapsAt: self bpMapIndex+1! !

!MaObjectBuffer methodsFor: 'access' stamp: 'cmm 8/25/2008 22:17'!
bpMapIndex
	"Answer the index into my BufferPositionMaps array that has my buffer position map.  It is the 4 high-order bits of my controlFields."
	^ self controlFields bitShift: -4! !

!MaObjectBuffer methodsFor: 'access' stamp: 'cmm 8/25/2008 22:24'!
bpMapIndex: anInteger 
	"Set my bpMapIndex to a value between 0 and 15."
	| shifted |
	shifted _ anInteger bitShift: 4.
	self controlFields: (shifted bitOr: self type)! !

!MaObjectBuffer methodsFor: 'access' stamp: 'cmm 10/21/2004 12:41'!
classId

	^self 
		uint: 16
		at: self bufferPositionOfClassId
! !

!MaObjectBuffer methodsFor: 'access' stamp: 'cmm 10/21/2004 12:41'!
classId: anInteger

	self
		uint: 16
		at: self bufferPositionOfClassId
		put: anInteger
! !

!MaObjectBuffer methodsFor: 'access' stamp: 'cmm 12/2/2004 12:35'!
instVarsDoWithIndex: twoArgBlock

	1
		to: self objectInstSize
		do:
			[ :index |
			twoArgBlock
				value: (self maInstVarAt: index)
				value: index ]
! !

!MaObjectBuffer methodsFor: 'access' stamp: 'cmm 4/21/2005 15:44'!
maInstVarAt: anInteger 

	^ self 
		uint: 48   "self class oidSize"
		at: (self bufferPositionOfInstVarAt: anInteger)! !

!MaObjectBuffer methodsFor: 'access' stamp: 'cmm 4/21/2005 15:45'!
maInstVarAt: anInteger put: oid

	self
		uint: 48  "self class oidSize"
		at: (self bufferPositionOfInstVarAt: anInteger)
		put: oid
! !

!MaObjectBuffer methodsFor: 'access' stamp: 'cmm 12/2/2004 12:35'!
objectInstSize
	"Answer the capacity of this buffer to hold references to other objects."

	^ self objectSize / self slotSize! !

!MaObjectBuffer methodsFor: 'access' stamp: 'cmm 12/2/2004 12:34'!
objectSize

	^ self physicalSize - self headerSize! !

!MaObjectBuffer methodsFor: 'access' stamp: 'cmm 4/27/2005 23:03'!
oid

	^self 
		uint: 48  "self class oidSize"
		at: self bufferPositionOfOid! !

!MaObjectBuffer methodsFor: 'access' stamp: 'cmm 4/21/2005 15:47'!
oid: anInteger

	self
		uint: 48  "self class oidSize"
		at: self bufferPositionOfOid
		put: anInteger
! !

!MaObjectBuffer methodsFor: 'access' stamp: 'cmm 8/10/2010 15:47'!
physicalSize
	^ self 
		uint: self class sizeOfPhysicalSizeField 
		at: self class bufferPositionOfPhysicalSize! !

!MaObjectBuffer methodsFor: 'access' stamp: 'cmm 7/31/2011 20:51'!
physicalSize: anInteger 
	self
		uint: self class sizeOfPhysicalSizeField
		at: self class bufferPositionOfPhysicalSize
		put: anInteger! !

!MaObjectBuffer methodsFor: 'access' stamp: 'cmm 4/28/2005 12:50'!
slotSize
	^ 6   "self class oidSize / 8"! !

!MaObjectBuffer methodsFor: 'access'!
startPos

	^startPos! !

!MaObjectBuffer methodsFor: 'access' stamp: 'cmm 3/26/2007 22:36'!
trimByteArray
	byteArray _ self trimmedByteArray.
	startPos _ 0! !

!MaObjectBuffer methodsFor: 'access' stamp: 'cmm 3/26/2007 22:21'!
trimmedByteArray
	^ byteArray copyFrom: startPos+1 to: startPos + self physicalSize! !

!MaObjectBuffer methodsFor: 'access' stamp: 'cmm 8/2/2011 15:41'!
type
	"Answer the type of buffer this is.
		1=MaByteObjectBuffer
		2=MaVariableObjectBuffer
		3=MaFixedObjectBuffer
		4=MaVariableWordBuffer 
		5=MaStorageObjectBuffer
		6=MaCompiledMethodBuffer 
		7=MaContextMethodBuffer"
	^ self controlFields bitAnd: 2r00001111! !

!MaObjectBuffer methodsFor: 'access' stamp: 'cmm 8/25/2008 22:06'!
type: anInteger 
	| controlFieldsValue withZeroedBits |
	controlFieldsValue _ self controlFields.
	"Zero out 4 lowest-order bits, that's where this field is stored."
	withZeroedBits _ controlFieldsValue >> 4 << 4.
	"Now OR these bits with anInteger."
	self controlFields: (withZeroedBits bitOr: anInteger)! !

!MaObjectBuffer methodsFor: 'private' stamp: 'cmm 8/10/2010 15:20'!
bufferPositionOfClassId
	"Zero-based position of the class id."
	^ 14! !

!MaObjectBuffer methodsFor: 'private' stamp: 'cmm 11/19/2004 15:52'!
bufferPositionOfInstVarAt: anInteger
	"Answer the physical 0-based byte-position within the receivers byteArray
	where the instVar with index anInteger is located."

	^ self headerSize + ((anInteger - 1) * self slotSize)! !

!MaObjectBuffer methodsFor: 'private'!
bufferPositionOfOid
	"Zero-based position within a buffer that the oid is at."

	^0
! !

!MaObjectBuffer methodsFor: 'private' stamp: 'cmm 4/26/2005 07:35'!
bufferType

	self subclassResponsibility! !

!MaObjectBuffer methodsFor: 'private'!
byteArray

	^byteArray! !

!MaObjectBuffer methodsFor: 'private'!
byteArray: aByteArray

	byteArray _ aByteArray
! !

!MaObjectBuffer methodsFor: 'private' stamp: 'cmm 7/31/2011 21:35'!
calculateHeaderSizeUsing: aMaBufferPositionMap
	^ aMaBufferPositionMap headerSize! !

!MaObjectBuffer methodsFor: 'private' stamp: 'cmm 4/26/2005 08:03'!
controlFields

	^ self class
		controlFieldsIn: byteArray
		startingAt: startPos! !

!MaObjectBuffer methodsFor: 'private' stamp: 'cmm 8/4/2011 20:35'!
controlFields2
	^ self class
		controlFields2In: byteArray
		startingAt: startPos! !

!MaObjectBuffer methodsFor: 'private' stamp: 'cmm 8/4/2011 20:35'!
controlFields2: anInteger 
	self
		uint: 8
		at: self class bufferPositionOfControlFields2
		put: anInteger! !

!MaObjectBuffer methodsFor: 'private' stamp: 'cmm 4/26/2005 08:08'!
controlFields: anInteger

	self
		uint: 8
		at: self class bufferPositionOfControlFields
		put: anInteger! !

!MaObjectBuffer methodsFor: 'private' stamp: 'cmm 11/21/2004 23:29'!
ensureClassUsing: aMaObjectSerializer

	^ (aMaObjectSerializer classIdManager
		classForId: self classId
		ifAbsent:
			[ "going to materialize an instance of the missing class."
			| sourceDefinition |
			sourceDefinition _
				(aMaObjectSerializer classIdManager classDefinitionsForId: self classId) last.  "the most-recent one is the best guess."
			sourceDefinition createClassUsing: aMaObjectSerializer ])! !

!MaObjectBuffer methodsFor: 'private' stamp: 'cmm 6/10/2009 11:35'!
ensureSpaceFor: storageObject using: bpMapClass 
	| totalSize requiredSpace |
	requiredSpace _ self 
		physicalSizeFor: storageObject
		using: bpMapClass.
	(totalSize _ requiredSpace + self startPos) > MaSerializedGraphBuffer sizeWarningThreshold ifTrue: 
		[ MaObjectSerializationWarning signal: 'Serialization sizeWarningThreshold reached.  Proceed to double it.'.
		MaSerializedGraphBuffer doubleSizeWarningThreshold ].
	totalSize > byteArray size ifTrue: [ self growTo: totalSize * 2 ].
	self physicalSize: requiredSpace! !

!MaObjectBuffer methodsFor: 'private' stamp: 'cmm 4/3/2003 00:09'!
growTo: anInteger

	self byteArray: (
		(ByteArray new: anInteger)
			replaceFrom: 1
			to: byteArray size
			with: byteArray
			startingAt: 1)
! !

!MaObjectBuffer methodsFor: 'private' stamp: 'cmm 8/25/2008 22:34'!
headerSize
	"The number of bytes in each object record before its 'data' begins; the objects it references."
	^self bpMap headerSize! !

!MaObjectBuffer methodsFor: 'private' stamp: 'cmm 11/13/2014 13:23'!
longAt: position 
	^ byteArray
		longAt: self startPos + position + 1
		bigEndian: false! !

!MaObjectBuffer methodsFor: 'private' stamp: 'cmm 11/13/2014 13:28'!
longAt: position put: anInteger
	^ byteArray
		longAt: self startPos + position + 1
		put: anInteger
		bigEndian: false! !

!MaObjectBuffer methodsFor: 'private' stamp: 'cmm 12/1/2004 22:54'!
physicalDataSizeNeededFor: storageObject

	^ storageObject maSizeIn: self! !

!MaObjectBuffer methodsFor: 'private' stamp: 'cmm 8/27/2008 14:40'!
physicalSizeFor: storageObject 
	^ self 
		physicalSizeFor: storageObject
		using: nil! !

!MaObjectBuffer methodsFor: 'private' stamp: 'cmm 7/31/2011 21:41'!
physicalSizeFor: storageObject using: bpMapClassOrNil 
	| headerSize |
	headerSize _ bpMapClassOrNil
		ifNil: [ self headerSize ]
		ifNotNil: [ self calculateHeaderSizeUsing: bpMapClassOrNil ].
	^ headerSize + (self physicalDataSizeNeededFor: storageObject)! !

!MaObjectBuffer methodsFor: 'private' stamp: 'cmm 11/21/2004 18:53'!
populateBodyFor: storageObject using: aMaObjectSerializer
	self subclassResponsibility! !

!MaObjectBuffer methodsFor: 'private' stamp: 'cmm 4/22/2013 22:10'!
populateHeaderFor: anObject using: aMaObjectSerializer 
	"physicalSize was already set in ensureSpaceFor:, no need to calculate it again."
	self
		oid: (aMaObjectSerializer oidFor: anObject) ;
		type: self bufferType ;
		bpMapIndex: aMaObjectSerializer bpMapIndex ;
		classId: (aMaObjectSerializer classIdManager 
				idForClass: anObject maSerializationClass
				ifAbsent: 
					[ (aMaObjectSerializer classIdManager addNewClass: anObject maSerializationClass) id ])! !

!MaObjectBuffer methodsFor: 'private'!
startPos: anInteger

	startPos _ anInteger
! !

!MaObjectBuffer methodsFor: 'private' stamp: 'cmm 4/3/2003 00:09'!
uint: numberOfBits at: position

	^byteArray
		maUint: numberOfBits
		at: self startPos + position
! !

!MaObjectBuffer methodsFor: 'private' stamp: 'cmm 4/3/2003 00:10'!
uint: numberOfBits at: zeroBasedIndexPosition put: valueInteger

	^byteArray
		maUint: numberOfBits
		at: self startPos + zeroBasedIndexPosition
		put: valueInteger
! !

!MaObjectBuffer methodsFor: 'copying' stamp: 'cmm 10/10/2004 00:03'!
copyWithSameBuffer

	^ self copy! !

!MaObjectBuffer methodsFor: 'copying' stamp: 'cmm 3/24/2005 12:00'!
independentCopy

	^ self copy postIndependentCopy! !

!MaObjectBuffer methodsFor: 'copying' stamp: 'cmm 7/12/2007 21:23'!
postIndependentCopy
	self trimByteArray! !

!MaObjectBuffer methodsFor: 'creation' stamp: 'cmm 11/23/2004 12:44'!
createObjectUsing: aMaObjectSerializer
	self subclassResponsibility! !

!MaObjectBuffer methodsFor: 'creation' stamp: 'cmm 11/22/2004 14:40'!
establishReferencesFrom: anObject using: aMaObjectSerializer
	"This is the second-stage of materializing anObject.  The first stage populated its instVars with oids, this stage now replaces those oids with the actual objects.  Typically, only Fixed and VariableObject buffers will need to do anything on this."! !

!MaObjectBuffer methodsFor: 'testing' stamp: 'cmm 10/8/2012 16:54'!
equivalentTo: aMaObjectBuffer 
	self type = aMaObjectBuffer type ifFalse: [ ^ false ].
	self oid = aMaObjectBuffer oid ifFalse: [ ^ false ].
	self classId = aMaObjectBuffer classId ifFalse: [ ^ false ].
	self objectInstSize = aMaObjectBuffer objectInstSize ifFalse: [ ^ false ].
	self instVarsDoWithIndex:
		[ : eachRef : n | eachRef = (aMaObjectBuffer maInstVarAt: n) ifFalse: [ ^ false ] ].
	^ true! !

!MaObjectBuffer methodsFor: 'testing' stamp: 'cmm 4/19/2009 17:45'!
references: oid 
	^ self isPointers and: 
		[ (1 to: self objectInstSize) anySatisfy: [ : n | (self maInstVarAt: n) = oid ] ]! !

!MaObjectBuffer methodsFor: 'initializing'!
initialize

	super initialize.
	startPos _ 0
! !

!MaObjectBuffer methodsFor: 'printing' stamp: 'cmm 3/9/2009 22:35'!
maPrintAbbreviatedOn: aStream 
	self 
		maPrintAttributes: #(
				#oid
				#classId
				#objectInstSize
				#commitNumber
			)
		on: aStream! !

!MaObjectBuffer methodsFor: 'printing' stamp: 'cmm 4/21/2005 15:46'!
oids
	"This method is intended for printing only.  Use instVarsDoWithIndex: if you need to enumerate my oids."

	| oids |
	self objectInstSize isInteger ifFalse: [ ^ '** invalid **' ].
	oids _ OrderedCollection new.
	1
		to: self objectInstSize
		do: [ :index | oids add: (self maInstVarAt: index) ].
	^ oids! !

!MaObjectBuffer class methodsFor: 'accessing' stamp: 'cmm 8/26/2008 02:24'!
bpMapsAt: anIndex
	"Answer the requested Dictionary of attribute positions."
	^ BufferPositionMaps at: anIndex! !

!MaObjectBuffer class methodsFor: 'accessing' stamp: 'cmm 8/26/2008 02:34'!
bpMapsAt: anIndex put: aMaBufferPositionMap 
	^ BufferPositionMaps 
		at: anIndex
		put: aMaBufferPositionMap! !

!MaObjectBuffer class methodsFor: 'accessing' stamp: 'cmm 4/26/2005 08:00'!
bufferClassFor: aByteArray startPos: anInteger

	^ self bufferClasses at: 
		(self
			bufferTypeIn: aByteArray
			startingAt: anInteger)! !

!MaObjectBuffer class methodsFor: 'accessing' stamp: 'cmm 7/15/2002 23:04'!
bufferClasses

	^BufferClasses! !

!MaObjectBuffer class methodsFor: 'accessing' stamp: 'cmm 8/10/2010 16:33'!
bufferPositionOfControlFields
	"Zero-based position of the control-fields (buffer-type and isStorageObject)."
	^ 13! !

!MaObjectBuffer class methodsFor: 'accessing' stamp: 'cmm 8/4/2011 20:33'!
bufferPositionOfControlFields2
	"Zero-based position of the new control-fields - bit-level fields."
	^ 10! !

!MaObjectBuffer class methodsFor: 'accessing' stamp: 'cmm 4/27/2005 23:01'!
bufferPositionOfPhysicalSize
	"Zero-based logical position within this buffer's byteArray that contains the physical size of this buffer."

	^ 6! !

!MaObjectBuffer class methodsFor: 'accessing' stamp: 'cmm 4/26/2005 07:57'!
bufferTypeIn: aByteArray startingAt: startPositionOfObjectBuffer
	"The bufferType is stored in the 4 low-order bits of the controlFields."

	^ (self 
		controlFieldsIn: aByteArray
		startingAt: startPositionOfObjectBuffer) bitAnd: 2r00001111! !

!MaObjectBuffer class methodsFor: 'accessing' stamp: 'cmm 9/8/2015 15:16'!
controlFields2In: aByteArray startingAt: startPositionOfObjectBuffer
	^ aByteArray
"		maUint: 8"
		byteAt: startPositionOfObjectBuffer + self bufferPositionOfControlFields2 + 1! !

!MaObjectBuffer class methodsFor: 'accessing' stamp: 'cmm 9/8/2015 15:16'!
controlFieldsIn: aByteArray startingAt: startPositionOfObjectBuffer
	^ aByteArray
"		maUint: 8"
		byteAt: startPositionOfObjectBuffer + self bufferPositionOfControlFields + 1! !

!MaObjectBuffer class methodsFor: 'accessing' stamp: 'cmm 8/27/2008 14:31'!
defaultBpMap
	^ MaBufferPositionMap! !

!MaObjectBuffer class methodsFor: 'accessing' stamp: 'cmm 8/27/2008 21:39'!
indexOfBpMap: bpMapClass 
	"Answer the 0-based index"
	^ (BufferPositionMaps indexOf: bpMapClass) - 1! !

!MaObjectBuffer class methodsFor: 'accessing' stamp: 'cmm 4/21/2005 15:43'!
oidSize

	^ 48! !

!MaObjectBuffer class methodsFor: 'accessing' stamp: 'cmm 8/10/2010 15:28'!
sizeOfPhysicalSizeField
	"in bits."
	^ 32! !

!MaObjectBuffer class methodsFor: 'creation' stamp: 'cmm 7/18/2005 13:22'!
byteArray: aByteArray startPos: anInteger

	^self new
		startPos: anInteger ;
		byteArray: aByteArray ;
		yourself! !

!MaObjectBuffer class methodsFor: 'creation' stamp: 'cmm 7/10/2002 20:28'!
createFromByteArray: aByteArray startPos: anInteger

	^(self
		bufferClassFor: aByteArray
		startPos: anInteger)
			byteArray: aByteArray
			startPos: anInteger
! !

!MaObjectBuffer class methodsFor: 'initializing' stamp: 'cmm 8/25/2008 21:50'!
initialize
	"Called from preamble of MaObjectSerialization."
	self
		initializeBufferClasses ;
		initializeBufferPositionMaps! !

!MaObjectBuffer class methodsFor: 'initializing' stamp: 'cmm 7/30/2011 12:03'!
initializeBufferClasses
	BufferClasses _ 
		{ MaByteObjectBuffer. 
		MaVariableObjectBuffer. 
		MaFixedObjectBuffer. 
		MaVariableWordBuffer. 
		MaStorageObjectBuffer.
		MaCompiledMethodBuffer.
		MaMethodContextBuffer }! !

!MaObjectBuffer class methodsFor: 'initializing' stamp: 'cmm 8/25/2008 22:38'!
initializeBufferPositionMaps
	BufferPositionMaps _ Array new: 16.
	self 
		bpMapsAt: 1
		put: self defaultBpMap! !

!MaFixedObjectBuffer methodsFor: 'private' stamp: 'cmm 8/25/2008 22:14'!
bufferPositionOfClassVersion
	^ self bpMap bufferPositionOfClassVersion! !

!MaFixedObjectBuffer methodsFor: 'accessing' stamp: 'cmm 11/19/2004 15:32'!
bufferType
	^ 3! !

!MaFixedObjectBuffer methodsFor: 'accessing' stamp: 'cmm 10/21/2004 22:05'!
classVersion: anInteger

	self
		uint: 16
		at: self bufferPositionOfClassVersion
		put: anInteger
! !

!MaFixedObjectBuffer methodsFor: 'creation' stamp: 'cmm 8/1/2011 20:46'!
createObjectUsing: aMaObjectSerializer 
	| class indexedSize sourceDefinition |
	class _ self ensureClassUsing: aMaObjectSerializer.
	sourceDefinition _ aMaObjectSerializer classIdManager
		definitionForClassId: self classId
		version: self classVersion.
	indexedSize _ self objectInstSize - sourceDefinition namedInstSize.
	^ indexedSize = 0
		ifTrue: [ class basicNew ]
		ifFalse: [ class basicNew: indexedSize ]! !

!MaFixedObjectBuffer methodsFor: 'creation' stamp: 'cmm 11/10/2014 10:29'!
establishReferencesFrom: anObject using: aMaObjectSerializer 
	| class sourceDefinition inImageDefinition |
	class _ self ensureClassUsing: aMaObjectSerializer.
	sourceDefinition _ aMaObjectSerializer classIdManager
		definitionForClassId: self classId
		version: self classVersion.
	inImageDefinition _ aMaObjectSerializer classIdManager inImageDefinition: class.
	self instVarsDoWithIndex:
		[ : eachOid : sourceIndex | | targetIndex |
		targetIndex _ inImageDefinition
			indexOfInstVarCorrespondingTo: sourceIndex
			of: sourceDefinition.
		targetIndex > 0
			ifTrue:
				[ anObject
					slotAt: targetIndex
					put: (aMaObjectSerializer objectWithOid: eachOid) ] ]! !

!MaFixedObjectBuffer methodsFor: 'testing' stamp: 'cmm 10/8/2012 16:55'!
equivalentTo: aMaFixedObjectBuffer 
	(super equivalentTo: aMaFixedObjectBuffer) ifFalse: [ ^ false ].
	self classVersion = aMaFixedObjectBuffer classVersion ifFalse: [ ^ false ].
	^ true! !

!MaFixedObjectBuffer methodsFor: 'printing' stamp: 'cmm 11/11/2014 14:08'!
maPrintAbbreviatedOn: aStream 
	super maPrintAbbreviatedOn: aStream.
	self
		maPrintAttributes: #(#classVersion #oids "#infos")
		on: aStream! !

!MaFixedObjectBuffer methodsFor: 'building' stamp: 'cmm 12/2/2014 17:09'!
populateBodyFor: storageObject using: aMaObjectSerializer
	1
		to: storageObject maInstSize
		do:
			[ :index |
			self
				maInstVarAt: index
				put:
					((storageObject maIsTransient: index)
						ifTrue: [ OidForNil ]
						ifFalse: [ aMaObjectSerializer oidFor: (storageObject slotAt: index) ]) ]! !

!MaFixedObjectBuffer methodsFor: 'building' stamp: 'cmm 4/22/2013 22:10'!
populateHeaderFor: anObject using: aMaObjectSerializer

	| classVersion |
	super
		populateHeaderFor: anObject
		using: aMaObjectSerializer.
	classVersion _ 
		aMaObjectSerializer classIdManager
			currentVersionOfClass: (aMaObjectSerializer classFor: anObject).
	self classVersion: classVersion! !

!MaCompiledMethodBuffer methodsFor: 'private' stamp: 'cmm 7/30/2011 21:44'!
bufferPositionOfByteCodesPlusTrailerBytes
	"The 1-based delta from my startPos where the bytes of the original CompiledMethod are stored."
	^ self headerSize + self objectSize + 1! !

!MaCompiledMethodBuffer methodsFor: 'private' stamp: 'cmm 7/29/2011 18:25'!
bufferPositionOfByteCodesPlusTrailerSize
	^ self bpMap bufferPositionOfByteCodesPlusTrailerSize! !

!MaCompiledMethodBuffer methodsFor: 'private' stamp: 'cmm 7/29/2011 18:25'!
bufferPositionOfMethodHeader
	^ self bpMap bufferPositionOfMethodHeader! !

!MaCompiledMethodBuffer methodsFor: 'private' stamp: 'cmm 7/30/2011 11:58'!
bufferType
	^ 6! !

!MaCompiledMethodBuffer methodsFor: 'private' stamp: 'cmm 8/4/2011 21:32'!
calculateHeaderSizeUsing: aMaBufferPositionMap
	^ aMaBufferPositionMap headerSizeForCompiledMethodBuffer! !

!MaCompiledMethodBuffer methodsFor: 'private' stamp: 'cmm 5/5/2015 11:15'!
headerForThisVm
	"Header fields and number of bits:
	Cog:							Spur:
	9:  primitive #					15:	numLiterals
	8:  numLiterals					1:
									1:  has primitive
	1:  frameSize					1:  frameSize
	6:  numTemps					6:  numTemps
	4:  numArgs						4:  numArgs"
	| headerVal |
	headerVal _ self longAt: self bufferPositionOfMethodHeader.
	^ self spurHeader
		ifTrue:
			[ Smalltalk isRunningSpur
				ifTrue: [headerVal]
				ifFalse: 
					[ "Spur-to-Cog header conversion."
					|cogHeader numLits| 
					(numLits_ headerVal bitAnd: 2r111111111111111) > 255 ifTrue: [ MaEnvironmentError signal: 'This image cannot materialize the CompiledMethod from Spur because it has more than 255 literals.' ].
					"Rebuild Cog header starting with high-order bits.  Erase low-order 16 bits by shifting right, then back left only 8 because that's all there is for Cog."
					cogHeader _ (headerVal bitShift: -17) bitShift: 8.
					"Add in numLits to properly set the low-order 8 bits."
					cogHeader _ cogHeader + numLits.
					"Finally, the 9 low-order bits in Cog are for primitive #.  We don't need to support CM's with primitives right now, so simply shift left."
					cogHeader bitShift: 9 ] ]
		ifFalse:
			[ Smalltalk isRunningSpur
				ifTrue:
					[ "Cog-to-Spur header conversion."
					| spurHeader numLits |
					"Obtain number of literals."
					numLits _ (headerVal bitShift: -9) bitAnd: 16rFF.
					"Erase bottom 17 bits.  'has primitive' bit is 0, but we dont care about those right now."
					spurHeader _ (headerVal bitShift: -17) bitShift: 17.
					"Bottom 16 bits are 0.  Set bottom 8 with numLits."
					spurHeader _ spurHeader + numLits ]
				ifFalse: [ headerVal ] ]! !

!MaCompiledMethodBuffer methodsFor: 'private' stamp: 'cmm 7/30/2011 16:09'!
populateBytesFor: aCompiledMethod using: aMaObjectSerializer 
	1
		to: aCompiledMethod maBytesSize
		do:
			[ : n | self
				putByte: n
				of: aCompiledMethod ]! !

!MaCompiledMethodBuffer methodsFor: 'private' stamp: 'cmm 7/30/2011 20:48'!
populateLiteralsFor: aCompiledMethod using: aMaObjectSerializer 
	1
		to: aCompiledMethod numLiterals
		do:
			[ : index | 
			self
				maInstVarAt: index
				put: (aMaObjectSerializer oidFor: (aCompiledMethod literalAt: index)) ]! !

!MaCompiledMethodBuffer methodsFor: 'private' stamp: 'cmm 7/30/2011 21:52'!
putByte: anInteger of: aCompiledMethod 
	"Value aBlock with each byteCode and trailer byte."
	byteArray
		at: startPos + self bufferPositionOfByteCodesPlusTrailerBytes + anInteger - 1
		put: (aCompiledMethod basicAt: aCompiledMethod initialPC + anInteger - 1)! !

!MaCompiledMethodBuffer methodsFor: 'access' stamp: 'cmm 7/29/2011 17:56'!
byteCodeAndTrailerBytesDo: aBlock
	"Value aBlock with each byteCode and trailer byte."
	self bufferPositionOfByteCodesPlusTrailerBytes to: self physicalSize do:
		[ : n |
		aBlock value: (byteArray at: (startPos + n)) ]! !

!MaCompiledMethodBuffer methodsFor: 'access' stamp: 'cmm 7/29/2011 17:58'!
byteCodesPlusTrailerSize
	^ self
		uint: 32
		at: self bufferPositionOfByteCodesPlusTrailerSize! !

!MaCompiledMethodBuffer methodsFor: 'access' stamp: 'cmm 7/29/2011 17:55'!
byteCodesPlusTrailerSize: anInteger 
	self
		uint: 32
		at: self bufferPositionOfByteCodesPlusTrailerSize
		put: anInteger! !

!MaCompiledMethodBuffer methodsFor: 'access' stamp: 'cmm 8/4/2011 21:32'!
headerSize
	^ self bpMap headerSizeForCompiledMethodBuffer! !

!MaCompiledMethodBuffer methodsFor: 'access' stamp: 'cmm 11/13/2014 13:30'!
methodHeader
	^ self longAt: self bufferPositionOfMethodHeader! !

!MaCompiledMethodBuffer methodsFor: 'access' stamp: 'cmm 11/13/2014 13:30'!
methodHeader: anInteger 
	^ self
		longAt: self bufferPositionOfMethodHeader
		put: anInteger! !

!MaCompiledMethodBuffer methodsFor: 'access' stamp: 'cmm 7/29/2011 17:51'!
objectSize
	^ self physicalSize - self byteCodesPlusTrailerSize - self headerSize! !

!MaCompiledMethodBuffer methodsFor: 'access' stamp: 'cmm 11/13/2014 17:04'!
spurHeader
	"Answer whether the CompiledMethod this buffer represents should calculate its numLiterals using the new Spur way (1) or the old Cog way (0).  If the CM instance was serialized under Spur, it will be 1, otherwise 0.
	See class comment of CompiledMethod (and in a Cog image)."
	^ (self controlFields2 bitAnd: 2r00000001) = 1! !

!MaCompiledMethodBuffer methodsFor: 'access' stamp: 'cmm 11/13/2014 17:49'!
spurHeader: aBoolean 
	"Specify whether the CompiledMethod this buffer should, when materialized, calculate its numLiterals using the new Spur way (1) or the old Cog way (0)."
	self controlFields2:
		(self controlFields2
			bitAt: 1
			put:
				(aBoolean
					ifTrue: [ 1 ]
					ifFalse: [ 0 ]))! !

!MaCompiledMethodBuffer methodsFor: 'printing' stamp: 'cmm 7/30/2011 18:15'!
bytes
	^ ByteArray streamContents:
		[ : stream | self byteCodeAndTrailerBytesDo:
			[ : eachByte | stream nextPut: eachByte ] ]! !

!MaCompiledMethodBuffer methodsFor: 'printing' stamp: 'cmm 8/1/2011 14:04'!
maPrintAbbreviatedOn: aStream 
	super maPrintAbbreviatedOn: aStream.
	self
		maPrintAttributes: #(#byteCodesPlusTrailerSize #bytes )
		on: aStream! !

!MaCompiledMethodBuffer methodsFor: 'building' stamp: 'cmm 11/13/2014 16:58'!
captureEssentialAttributesFrom: aCompiledMethod
	self
		byteCodesPlusTrailerSize: aCompiledMethod maBytesSize ;
		methodHeader: aCompiledMethod header ;
		spurHeader: Smalltalk isRunningSpur! !

!MaCompiledMethodBuffer methodsFor: 'building' stamp: 'cmm 7/30/2011 20:39'!
populateBodyFor: aCompiledMethod using: aMaObjectSerializer 
	self
		
		populateBytesFor: aCompiledMethod
		using: aMaObjectSerializer ;
		
		populateLiteralsFor: aCompiledMethod
		using: aMaObjectSerializer! !

!MaCompiledMethodBuffer methodsFor: 'building' stamp: 'cmm 4/22/2013 22:11'!
populateHeaderFor: aMethodContextOrCompiledMethod using: aMaObjectSerializer 
	super
		populateHeaderFor: aMethodContextOrCompiledMethod
		using: aMaObjectSerializer.
	self captureEssentialAttributesFrom: aMethodContextOrCompiledMethod! !

!MaCompiledMethodBuffer methodsFor: 'creation' stamp: 'cmm 11/18/2014 20:35'!
createObjectUsing: aMaObjectSerializer 
	| cm offset |
	cm _ CompiledMethod
		newMethod: self byteCodesPlusTrailerSize
		header: self headerForThisVm.
	"First populate the bytes."
	offset _ self bufferPositionOfByteCodesPlusTrailerBytes.
	1
		to: self byteCodesPlusTrailerSize
		do:
			[ : n | cm
				basicAt: cm initialPC + n - 1
				put: (byteArray at: startPos + offset + n - 1) ].
	^ cm! !

!MaCompiledMethodBuffer methodsFor: 'creation' stamp: 'cmm 8/10/2011 16:09'!
establishReferencesFrom: anObject using: aMaObjectSerializer 
	1
		to: anObject maInstSize
		do:
			[ : instVarIndex | 
			anObject
				literalAt: instVarIndex
				put: (aMaObjectSerializer objectWithOid: (self maInstVarAt: instVarIndex)) realObjectIfMutatingProxy ]! !

!MaMethodContextBuffer methodsFor: 'private' stamp: 'cmm 7/31/2011 17:53'!
bufferType
	^ 7! !

!MaMethodContextBuffer methodsFor: 'building' stamp: 'cmm 8/4/2011 20:44'!
captureEssentialAttributesFrom: aMethodContext 
	self largeFrame: aMethodContext method frameSize = CompiledMethod fullFrameSize! !

!MaMethodContextBuffer methodsFor: 'building' stamp: 'cmm 4/22/2013 22:10'!
populateHeaderFor: aMethodContextOrCompiledMethod using: aMaObjectSerializer 
	super
		populateHeaderFor: aMethodContextOrCompiledMethod
		using: aMaObjectSerializer.
	self captureEssentialAttributesFrom: aMethodContextOrCompiledMethod! !

!MaMethodContextBuffer methodsFor: 'creation' stamp: 'jpb 5/7/2021 00:53:46'!
createObjectUsing: aMaObjectSerializer 
	^ MethodContext basicNew:
		(self largeFrame
			ifTrue: [ CompiledMethod fullFrameSize ]
			ifFalse: [ CompiledMethod smallFrameSize ])! !

!MaMethodContextBuffer methodsFor: 'access' stamp: 'cmm 8/4/2011 20:39'!
largeFrame
	"Answer whether this MethodContext must be created with the largeFrame size."
	^ (self controlFields2 bitAnd: 2r00000001) = 1! !

!MaMethodContextBuffer methodsFor: 'access' stamp: 'cmm 11/13/2014 17:47'!
largeFrame: aBoolean 
	"Specify whether this MethodContext must be created with the largeFrame size."
	self controlFields2:
		(self controlFields2
			bitAt: 1
			put:
				(aBoolean
					ifTrue: [ 1 ]
					ifFalse: [ 0 ]))! !

!MaMethodContextBuffer methodsFor: 'printing' stamp: 'cmm 8/4/2011 20:43'!
maPrintAbbreviatedOn: aStream 
	self
		maPrintAttributes: #(#oid #classId #objectInstSize #commitNumber #oids)
		on: aStream! !

!MaVariableBuffer methodsFor: 'accessing' stamp: 'cmm 11/20/2004 12:41'!
numberToStoreFor: anObject using: aMaObjectSerializer
	"This method stores either anObject itself or the oid for anInteger."
	self subclassResponsibility! !

!MaByteObjectBuffer methodsFor: 'converting' stamp: 'cmm 12/1/2004 22:47'!
asByteArray

	^ self asByteObject: ByteArray! !

!MaByteObjectBuffer methodsFor: 'converting' stamp: 'cmm 2/23/2005 14:38'!
asByteObject: byteClass

	^ self fillByteObject: (byteClass new: self objectSize)! !

!MaByteObjectBuffer methodsFor: 'converting' stamp: 'cmm 12/1/2004 22:47'!
asString

	^ self asByteObject: String! !

!MaByteObjectBuffer methodsFor: 'accessing' stamp: 'cmm 11/19/2004 15:32'!
bufferType
	^ 1! !

!MaByteObjectBuffer methodsFor: 'accessing' stamp: 'cmm 10/9/2012 12:10'!
maInstVarAt: anInteger 
	^ self 
		uint: 8
		at: (self bufferPositionOfInstVarAt: anInteger)! !

!MaByteObjectBuffer methodsFor: 'accessing' stamp: 'cmm 7/18/2005 13:32'!
numberToStoreFor: anObject using: aMaObjectSerializer
	"This method stores either anObject itself or the oid for anInteger."
	self shouldNotImplement! !

!MaByteObjectBuffer methodsFor: 'accessing' stamp: 'cmm 11/20/2004 11:08'!
slotSize

	^ 1! !

!MaByteObjectBuffer methodsFor: 'creation' stamp: 'cmm 11/23/2004 22:41'!
createObjectUsing: aMaObjectSerializer
	"Objects with byte-based storage-objects can and do materialize now, rather than pointer-based storage-objects, which aren't actually well-formed until after establishingReferencesFrom:."
	^ (self ensureClassUsing: aMaObjectSerializer)
		maMaterializeFrom: self
		using: aMaObjectSerializer! !

!MaByteObjectBuffer methodsFor: 'private' stamp: 'cmm 4/3/2003 00:10'!
fillByteObject: byteObject

	^byteObject
		replaceFrom: 1
		to: byteObject size
		with: byteArray
		startingAt: self startPos + self headerSize + 1.
! !

!MaByteObjectBuffer methodsFor: 'private' stamp: 'cmm 4/3/2003 00:10'!
replaceFrom: startInteger to: endInteger with: byteObject startingAt: startingInteger

	byteArray
		replaceFrom: self startPos + self headerSize + startInteger
		to: self startPos + self headerSize + endInteger
		with: byteObject
		startingAt: startingInteger
! !

!MaByteObjectBuffer methodsFor: 'actions' stamp: 'cmm 12/13/2016 17:27'!
populateBodyFor: storageObject using: aMaObjectSerializer 
	storageObject
		maStreamBytesInto: self
		for: aMaObjectSerializer! !

!MaStorageObjectBuffer methodsFor: 'accessing' stamp: 'cmm 5/1/2005 21:13'!
bufferType
	^ 5! !

!MaStorageObjectBuffer methodsFor: 'accessing' stamp: 'cmm 5/2/2005 13:39'!
buffersDo: aBlock

	(MaSerializedGraphBuffer byteArray: self asByteArray) buffersDo: aBlock! !

!MaStorageObjectBuffer methodsFor: 'accessing' stamp: 'cmm 5/1/2005 22:29'!
createObjectUsing: aMaObjectSerializer

	^ (self ensureClassUsing: aMaObjectSerializer)
		maMaterializeFromGraph: self asByteArray
		using: aMaObjectSerializer copyWithNewOidSpace! !

!MaVariableObjectBuffer methodsFor: 'accessing' stamp: 'cmm 11/19/2004 15:33'!
bufferType
	^ 2! !

!MaVariableObjectBuffer methodsFor: 'accessing' stamp: 'cmm 11/20/2004 12:41'!
numberToStoreFor: anObject using: aMaObjectSerializer
	^ aMaObjectSerializer oidFor: anObject! !

!MaVariableObjectBuffer methodsFor: 'creation' stamp: 'cmm 8/1/2011 21:17'!
createObjectUsing: aMaObjectSerializer
	| class |
	class _ self ensureClassUsing: aMaObjectSerializer.
	"Set and Dictionary are special-case for this because we store their logical rather than physical representation.  Therefore, dispatch to the class to build the skeleton for VariableObjectBuffers."
	^ class newSkeletonFor: self! !

!MaVariableObjectBuffer methodsFor: 'creation' stamp: 'cmm 8/1/2011 20:55'!
establishReferencesFrom: anObject using: aMaObjectSerializer 
	"Set and Dictionary require special-case processing, therefore we dispatch."
	anObject
		maEstablishPointerReferencesFor: self
		using: aMaObjectSerializer! !

!MaVariableObjectBuffer methodsFor: 'printing' stamp: 'cmm 8/12/2010 14:28'!
maPrintAbbreviatedOn: aStream 
	super maPrintAbbreviatedOn: aStream.
	self
		maPrintAttributes: #(#oids )
		on: aStream! !

!MaVariableObjectBuffer methodsFor: 'building' stamp: 'cmm 11/28/2004 16:21'!
populateBodyFor: storageObject using: aMaObjectSerializer
	"Logical storage of collections varies by collection, therefore dispatch back to it."
	storageObject
		maStreamVariablyInto: self
		for: aMaObjectSerializer! !

!MaVariableWordBuffer methodsFor: 'accessing' stamp: 'cmm 5/1/2005 21:08'!
bufferType
	^ 4! !

!MaVariableWordBuffer methodsFor: 'accessing' stamp: 'cmm 12/2/2004 12:35'!
createObjectUsing: aMaObjectSerializer
	| answer |
	answer _ (self ensureClassUsing: aMaObjectSerializer) basicNew: self objectInstSize.
	1 to: self objectInstSize do:
		[ : x |
		answer
			basicAt: x
			put: (self wordAt: x) ].
	^ answer! !

!MaVariableWordBuffer methodsFor: 'accessing' stamp: 'cmm 11/19/2004 15:12'!
maInstVarAt: logicalPosition

	^ self wordAt: logicalPosition! !

!MaVariableWordBuffer methodsFor: 'accessing' stamp: 'cmm 11/19/2004 15:12'!
maInstVarAt: logicalPosition put: anInteger

	^ self
		wordAt: logicalPosition
		put: anInteger! !

!MaVariableWordBuffer methodsFor: 'accessing' stamp: 'cmm 11/20/2004 12:41'!
numberToStoreFor: anInteger using: aMaObjectSerializer

	^ anInteger! !

!MaVariableWordBuffer methodsFor: 'accessing' stamp: 'cmm 12/31/2015 13:57'!
populateBodyFor: storageObject using: aMaObjectSerializer
	1
		to: storageObject maInstSize
		do:
			[ :index |
			self
				wordAt: index
				put: (storageObject wordAt: index) ]! !

!MaVariableWordBuffer methodsFor: 'accessing' stamp: 'cmm 11/20/2004 11:08'!
slotSize

	^ 4! !

!MaVariableWordBuffer methodsFor: 'accessing' stamp: 'cmm 11/19/2004 15:10'!
wordAt: logicalPosition

	^ self 
		uint: 32
		at: (self bufferPositionOfInstVarAt: logicalPosition)! !

!MaVariableWordBuffer methodsFor: 'accessing' stamp: 'cmm 11/19/2004 15:09'!
wordAt: logicalPosition put: anInteger

	self
		uint: 32
		at: (self bufferPositionOfInstVarAt: logicalPosition)
		put: anInteger! !

!MaVariableWordBuffer methodsFor: 'printing' stamp: 'cmm 8/10/2010 22:07'!
maPrintAbbreviatedOn: aStream
	self
		maPrintAttributes: #(words)
		on: aStream! !

!MaVariableWordBuffer methodsFor: 'printing' stamp: 'cmm 12/2/2004 12:35'!
words
	"This is intended for printing only."
	self objectInstSize isInteger ifFalse: [ ^ '** invalid **' ].
	^ (1 to: self objectInstSize) collect: [ : index | self maInstVarAt: index ]! !

!MaObjectSerializer methodsFor: 'building' stamp: 'cmm 10/13/2012 17:13'!
afterMaterializingAny: className do: oneArgValuator 
	"Set up preference for materializing instances of the class named className by sending oneArgValuator.  The first argument is the object being serialized, the second is the serializer (aMaObjectSerializer) doing the serialization."
	preferences
		afterMaterializingAny: className
		do: oneArgValuator! !

!MaObjectSerializer methodsFor: 'building' stamp: 'cmm 10/13/2012 17:13'!
afterSerializingAny: className do: oneArgValuator 
	"Set up preference for serializing instances of class named className by sending oneArgValuator.  The first argument is the object being serialized, the second is the serializer (aMaObjectSerializer) doing the serialization."
	preferences
		afterSerializingAny: className
		do: oneArgValuator! !

!MaObjectSerializer methodsFor: 'building' stamp: 'cmm 10/13/2012 17:12'!
beforeSerializingAny: className do: oneArgValuator 
	"Set up preference for serializing instances of Class named className by sending oneArgValuator.  The first argument is the object being serialized, the second is the serializer (aMaObjectSerializer) doing the serialization."
	preferences
		beforeSerializingAny: className
		do: oneArgValuator! !

!MaObjectSerializer methodsFor: 'building'!
graphBuffer: aMaSerializedGraphBuffer

	graphBuffer _ aMaSerializedGraphBuffer
! !

!MaObjectSerializer methodsFor: 'building'!
oidManager: aMaOidManager

	oidManager _ aMaOidManager
! !

!MaObjectSerializer methodsFor: 'building' stamp: 'cmm 12/29/2002 16:49'!
optimumByteArraySize: anInteger

	self byteArray: (ByteArray new: anInteger).
	self resetByteArray! !

!MaObjectSerializer methodsFor: 'building'!
toCreateProxies: oneArgBlock

	createProxyBlock _ oneArgBlock
! !

!MaObjectSerializer methodsFor: 'private' stamp: 'cmm 8/29/2011 10:01'!
append: anObject
	"Append only anObject to the receiver.  However, in the case where anObject is stored via a storage-object (see #maAsStorageObject), the entire graph of the storage object must be stored."

	| storageObject |
	storageObject _ anObject maAsStorageObject.
	anObject maWantsPreSerialization ifTrue: [ self preSerialize: storageObject ].
	storageObject ~~ anObject
		ifTrue:
			[ "This is a storage object, so traverse it deeply into an inner serialized graph ByteArray."
			storageObject _ (self copyForStorageObject serializeGraph: storageObject) trimmedByteArray ].
	self graphBuffer increaseBufferSizeBy:
		(self
			bufferFor: anObject
			storageObject: storageObject
			startingAt: self graphBuffer bufferSize)
				physicalSize.
	"Since the need is so scarce anyway, if you order pre-serialization, you get post too."
	anObject maWantsPreSerialization ifTrue: [ self postSerialize: storageObject ]! !

!MaObjectSerializer methodsFor: 'private' stamp: 'cmm 4/22/2013 18:48'!
appendGraph: anObject do: oneArgBlock 
	"Answer a MaSerializedObjectBuffer containing anObject and all objects it can reach, serialized into aByteArray."
	self beBusy.
	anObject
		maGraphDo:
			[ : path : parent : index | (path last
				maShouldAppendWithPath: path
				parent: parent
				index: index) ifTrue:
				[ self append: path last.
				oneArgBlock value: path last ] ]
		using: self traversalStrategy.
	self beBored.
	^ self graphBuffer trimByteArray! !

!MaObjectSerializer methodsFor: 'private' stamp: 'cmm 5/29/2002 23:22'!
beBored

	amBusy _ false
! !

!MaObjectSerializer methodsFor: 'private' stamp: 'cmm 5/29/2002 23:33'!
beBusy

	amBusy _ true
! !

!MaObjectSerializer methodsFor: 'private' stamp: 'cmm 8/27/2008 14:47'!
bpMap
	^ MaObjectBuffer bpMapsAt: bpMapIndex + 1! !

!MaObjectSerializer methodsFor: 'private' stamp: 'cmm 4/23/2013 09:50'!
bufferFor: anObject storageObject: storageObject startingAt: anInteger 
	| buffer |
	buffer _ anObject == storageObject 
		ifTrue: [ storageObject realObjectIfMutatingProxy maSelectPreMadeObjectBufferFrom: self ]
		ifFalse: [ self preMadeStorageObjectBuffer ].
	buffer
		startPos: anInteger ;
		ensureSpaceFor: storageObject realObjectIfMutatingProxy
			using: self bpMap.
	buffer byteArray == self byteArray ifFalse: 
		[ "aByteArray must not have been big enough.."
		self byteArray: buffer byteArray ].
	buffer 
		populateHeaderFor: anObject
		using: self.
	buffer 
		populateBodyFor: storageObject realObjectIfMutatingProxy
		using: self.
	^ buffer! !

!MaObjectSerializer methodsFor: 'private' stamp: 'cmm 4/10/2005 18:56'!
classFor: anObject 

	^ anObject maSerializationClass! !

!MaObjectSerializer methodsFor: 'private' stamp: 'cmm 9/20/2014 16:02'!
materializeGraphDo: twoArgBlock 
	"Materialize as much as the object in the receivers byteArray as possible.  For each object *materialized*, value twoArgBlock [ : eachObject : eachBuffer | ].  twoArgBlock is not valued for objects encountered in the materialized graph if they were already present in the receivers oidManager, that way we know when objects are exactly materialized."
	| skeletons rootObject |
	skeletons _ OrderedCollection new: 48.
	rootObject _ nil.
	self beBusy.
	[ self graphBuffer buffersDo:
		[ : each | | object |
		object _ self
			objectWithOid: each oid
			ifFound:
				[ : foundObj | (foundObj maIsMutatingProxy and: [ foundObj maRealObjectIsReified not ]) ifTrue:
					[ skeletons add:
						(Association
							key:
								(self
									newSkeletonFor: each
									fromProxy: foundObj)
							value: each copyWithSameBuffer) ].
				foundObj ]
			ifAbsent:
				[ | newObject |
				skeletons add:
					(Association
						key:
							(newObject _ self
								newSkeletonFor: each
								fromProxy: nil)
						value: each copyWithSameBuffer).
				newObject ].
		rootObject ifNil: [ rootObject _ object ] ] ] ensure:
		[ | hashedCollections |
		hashedCollections _ OrderedCollection new.
		skeletons do:
			[ : eachAssociation | | eachObject eachBuffer |
			eachObject _ eachAssociation key.
			eachBuffer _ eachAssociation value.
			eachObject realObjectIfMutatingProxy maIsHashedCollection ifTrue: [ hashedCollections add: eachAssociation ].
			eachBuffer
				establishReferencesFrom: eachObject realObjectIfMutatingProxy
				using: self ].
		hashedCollections do:
			[ : eachAssociation | eachAssociation key realObjectIfMutatingProxy rehash ] ].
	skeletons do:
		[ : eachAssociation | | eachFullyFormedObject eachBuffer |
		eachFullyFormedObject _ eachAssociation key.
		eachBuffer _ eachAssociation value.
		eachFullyFormedObject maWantsPostMaterialization ifTrue: [ self postMaterialize: eachFullyFormedObject ].
		twoArgBlock
			value: eachFullyFormedObject
			value: eachBuffer ].
	self beBored.
	^ rootObject! !

!MaObjectSerializer methodsFor: 'private' stamp: 'cmm 5/6/2013 14:43'!
newSkeletonFor: aMaObjectBuffer fromProxy: aMaMutatingProxy 
	| skel |
	skel _ aMaObjectBuffer createObjectUsing: self.
	aMaMutatingProxy ifNotNil:
		[ aMaMutatingProxy setRealObjectTo: skel.
		skel _ aMaMutatingProxy ].
	self
		oidOf: skel
		is: aMaObjectBuffer oid.
	^ skel! !

!MaObjectSerializer methodsFor: 'private' stamp: 'cmm 10/30/2006 00:09'!
objectsDo: oneArgBlock 
	self oidsAndObjectsDo: [ : eachOid : eachObject | oneArgBlock value: eachObject ]! !

!MaObjectSerializer methodsFor: 'private' stamp: 'cmm 6/23/2004 17:41'!
oidOf: anObject is: anInteger

	oidManager
		oidOf: anObject
		is: anInteger! !

!MaObjectSerializer methodsFor: 'private' stamp: 'cmm 10/30/2006 00:09'!
oidsAndObjectsDo: twoArgBlock
	oidManager oidsAndObjectsDo: twoArgBlock! !

!MaObjectSerializer methodsFor: 'private' stamp: 'cmm 3/24/2005 14:20'!
postCopyWithNewBuffer

	graphBuffer _ MaSerializedGraphBuffer new: 1000.
	self
		initializePreMadeObjectBuffers;
		resetByteArray;
		beBored! !

!MaObjectSerializer methodsFor: 'private' stamp: 'cmm 5/7/2008 16:28'!
postCopyWithNewOidSpace
	self oidManager: 
		(oidManager species new
			useStatisticsFrom: oidManager ;
			yourself)! !

!MaObjectSerializer methodsFor: 'private' stamp: 'cmm 3/23/2013 17:10'!
postIndependentCopy
	"Answer a completely independent copy of the receiver.  This will probably mostly be used during debugging."
self maMarked: 'delete'.
	self 
		oidManager: oidManager independentCopy;
		classIdManager: self classIdManager independentCopy;
		resetByteArray.
	graphBuffer _ graphBuffer copy.
	traversalStrategy _ traversalStrategy copy! !

!MaObjectSerializer methodsFor: 'private' stamp: 'cmm 10/28/2011 15:38'!
postMaterialize: anObject 
	"maPostMaterialize could be useful for when you don't necessarily require serialization, but needed so that it *can* be used, if desired."

	(anObject respondsTo: #maPostMaterialize) 
		ifTrue: [anObject maPostMaterialize].
	anObject maOriginalClass withAllSuperclassesDo: 
			[:eachClass | 
			preferences postMaterializers 
				at: eachClass name
				ifPresent: 
					[:valuators | 
					valuators do: [:each | each valueWithArguments: { 
										anObject}]]
				ifAbsent: 
					["do nothing"

					]]! !

!MaObjectSerializer methodsFor: 'private' stamp: 'cmm 10/28/2011 15:39'!
postSerialize: anObject 
	"maPostSerialize could be useful for when you don't necessarily require serialization, but needed so that it *can* be used, if desired."

	(anObject respondsTo: #maPostSerialize) ifTrue: [anObject maPostSerialize].
	anObject maOriginalClass withAllSuperclassesDo: 
			[:eachClass | 
			preferences postSerializers 
				at: eachClass name
				ifPresent: [:valuators | valuators do: [:each | each value: anObject]]
				ifAbsent: 
					["do nothing"

					]]! !

!MaObjectSerializer methodsFor: 'private' stamp: 'cmm 11/11/2004 15:42'!
preMadeByteObjectBuffer

	^ self preMadeObjectBufferAt: 1! !

!MaObjectSerializer methodsFor: 'private' stamp: 'cmm 7/30/2011 12:08'!
preMadeCompiledMethodBuffer
	^ self preMadeObjectBufferAt: 6! !

!MaObjectSerializer methodsFor: 'private' stamp: 'cmm 11/11/2004 15:43'!
preMadeFixedObjectBuffer

	^ self preMadeObjectBufferAt: 3! !

!MaObjectSerializer methodsFor: 'private' stamp: 'cmm 7/30/2011 12:08'!
preMadeMethodContextBuffer
	^ self preMadeObjectBufferAt: 7! !

!MaObjectSerializer methodsFor: 'private' stamp: 'cmm 11/11/2004 15:42'!
preMadeObjectBufferAt: bufferTypeInteger

	^ preMadeObjectBuffers at: bufferTypeInteger! !

!MaObjectSerializer methodsFor: 'private' stamp: 'cmm 5/1/2005 21:42'!
preMadeStorageObjectBuffer

	^ self preMadeObjectBufferAt: 5! !

!MaObjectSerializer methodsFor: 'private' stamp: 'cmm 11/11/2004 15:43'!
preMadeVariableObjectBuffer

	^ self preMadeObjectBufferAt: 2! !

!MaObjectSerializer methodsFor: 'private' stamp: 'cmm 5/1/2005 22:14'!
preMadeVariableWordBuffer

	^ self preMadeObjectBufferAt: 4! !

!MaObjectSerializer methodsFor: 'private' stamp: 'cmm 10/28/2011 15:39'!
preSerialize: anObject 
	"maPreserialize could be useful for when you don't necessarily require serialization, but needed so that it *can* be used, if desired."
	(anObject respondsTo: #maPreSerialize) ifTrue: [ anObject maPreSerialize ].
	anObject maOriginalClass withAllSuperclassesDo: 
		[ : eachClass | 
		preferences preSerializers 
			at: eachClass name
			ifPresent: 
				[ : valuators | 
				valuators do: [ : each | each valueWithArguments: {  anObject  } ] ]
			ifAbsent: 
				[ "do nothing"
				 ] ]! !

!MaObjectSerializer methodsFor: 'private' stamp: 'cmm 5/6/2013 15:01'!
proxyFor: oid 
	| proxy |
	self
		oidOf: (proxy _ createProxyBlock value: oid)
		is: oid.
	^ proxy! !

!MaObjectSerializer methodsFor: 'initializing' stamp: 'cmm 8/27/2008 10:14'!
bpMapIndex
	"The index into the MaObjectBuffer's 'BufferPositionMaps' Array referring to the MaBufferPositionMap, which identifies the attribute offsets."
	^ bpMapIndex! !

!MaObjectSerializer methodsFor: 'initializing' stamp: 'cmm 8/27/2008 20:47'!
bpMapIndex: anInteger 
	"Set the 0-based index of the MaBufferPositionMap to be used by this serializer."
	bpMapIndex _ anInteger! !

!MaObjectSerializer methodsFor: 'initializing' stamp: 'cmm 6/3/2004 14:07'!
classDefinitions: aDictionary
	"aDictionary keys are the classId (an Integer), values are a collection of known MaClassDefinitions, representing different versions of that class."

	self classIdManager classDefinitionsById: aDictionary! !

!MaObjectSerializer methodsFor: 'initializing' stamp: 'cmm 6/8/2004 22:09'!
classDefinitionsByteArray: aByteArray
	"Initialize the receiver with aByteArray that materializes to my classDefinitions.  These are the classDefinitions used to work with objects that were being used when the user saved off the byteArray by calling the getter, #classDefinitionsByteArray."

	self classDefinitions: (self materializeGraph: aByteArray)! !

!MaObjectSerializer methodsFor: 'initializing' stamp: 'cmm 5/2/2005 15:03'!
classIdManager: aMaClassIdManager

	classIdManager _ aMaClassIdManager.
	self setUpClassDefinitionProcessing! !

!MaObjectSerializer methodsFor: 'initializing' stamp: 'cmm 8/21/2012 21:15'!
initialize
	super initialize.
	bpMapIndex _ 0. "0-based index"
	preferences _ MaObjectSerializerPreferences new.
	self
		 oidManager: MaOidManager new ;
		 classIdManager: MaClassIdManager new ;
		 initializeTraversalStrategy ;
		 toCreateProxies:
			[ : oid | MaObjectSerializationUserError signal: 'No createProxyBlock specified.  See MaObjectSerializer>>toCreateProxies:' ]; 
		graphBuffer: (MaSerializedGraphBuffer new: 50) ;
		 initializePreMadeObjectBuffers ;
		 beBored ;
		 setUpPreAndPostProcessing! !

!MaObjectSerializer methodsFor: 'initializing' stamp: 'cmm 10/21/2004 12:53'!
initializePreMadeObjectBuffers

	preMadeObjectBuffers _ MaObjectBuffer bufferClasses collect:
		[ :each |
		each
			byteArray: self byteArray
			startPos: 0 ]
! !

!MaObjectSerializer methodsFor: 'initializing' stamp: 'cmm 2/16/2014 18:02'!
initializeTraversalStrategy
	traversalStrategy _ MaObjectGraphTraversalStrategy newTraverseForSerialization! !

!MaObjectSerializer methodsFor: 'initializing' stamp: 'cmm 3/16/2009 20:38'!
protocol
	"The protocol established (directly or indirectly) for this serializer."
	^ classIdManager protocol! !

!MaObjectSerializer methodsFor: 'initializing' stamp: 'cmm 1/26/2009 13:57'!
protocol: aCollection 
	"This is only called once per instance, don't try to reset the protocol because this implementation doesn't remove any old protocol.  Create a new serializer if you have to."
	| sc |
	sc _ aCollection asSortedCollection: [ : a : b | a name < b name ].
	sc do: [ : each | classIdManager addNewClass: each ].
	self classIdManager beImmutable! !

!MaObjectSerializer methodsFor: 'initializing' stamp: 'cmm 9/21/2013 18:01'!
setUpClassDefinitionProcessing
	preferences
		
		beforeSerializingAny: #MaClassReference
		do:
			[ : aMaClassReference | | id defs |
			id _ classIdManager
				idForClass: aMaClassReference classObject
				ifAbsent: [ (classIdManager addNewClass: aMaClassReference classObject theNonMetaClass) id ].
			defs _ classIdManager
				classDefinitionsForId: id
				ifAbsent: [ Array empty ].
			aMaClassReference isDefinition ifTrue:
				[ (defs noneSatisfy:
					[ : each | each isKnownAs: aMaClassReference name ]) ifTrue: [ MaObjectSerializationUserError signal: 'MaClassDefinitions are private to serializers, you must not serialize MaClassDefinitions from other serializers.' ] ].
			aMaClassReference id: id ] ;
		
		afterMaterializingAny: #MaClassDefinition
		do:
			(MessageSend
				receiver: classIdManager
				selector: #addClassDefinition:)! !

!MaObjectSerializer methodsFor: 'initializing' stamp: 'jpb 5/7/2021 00:43:05'!
setUpPreAndPostProcessing
	"Initiailize the pre and post-materializers for classes that come with standard Squeak.  Base Squeak uses one of two methods for serializing objects; ReferenceStream and ImageSegments.  MaObjectSerialization more-closely resembles ReferenceStream.  While the setup for these processors is based on the behavior in those other two frameworks, there are bound to be some minor differences."
	self setUpClassDefinitionProcessing.
	preferences
		afterMaterializingAny: #Form
		do: [ : aForm | aForm maCheckBits ].

	"preferences
	beforeSerializingAny: #Form
	do: [ : aForm | aForm hibernate ].
preferences
	afterSerializingAny: #Form
	do: [ : aForm | aForm unhibernate ]."
	"preferences
	beforeSerializingAny: #ColorForm
	do: [ : aColorForm | aColorForm clearColormapCache ]."
	preferences 
		beforeSerializingAny: #Morph
		do: 
			[ : aPasteUpMorph | 
			aPasteUpMorph prepareToBeSaved.	"Amen"
			thisContext home removeSelf ].
	"preferences
	afterSerializingAny: #ScriptEditorMorph
	do: [ : aScriptEditorMorph | aScriptEditorMorph class = BooleanScriptEditor ifFalse: [ aScriptEditorMorph unhibernate ] ].
preferences
	afterMaterializingAny: #ScriptEditorMorph
	do: [ : aScriptEditorMorph | aScriptEditorMorph class = BooleanScriptEditor ifFalse: [ aScriptEditorMorph unhibernate ] ]."

	"preferences
		beforeSerializingAny: #Wonderland
		do: [ : aWonderland | aWonderland prepareToBeSaved ].
preferences
	beforeSerializingAny: #ViewerFlapTab
	do: [ : aViewFlapTab | aViewFlapTab hibernate ]."
	self maMarked: 'dev'.
	"You've got this commented out because it changes the shape of the object while you're serializing it, which ends up causing the graphBuffer to not be #isWhole (which causes problems on materialization).
Do we need this?  It appears that Project>>exportSegmentWithChangeSet:  fileName:  directory: calls it at the end.  Also, Project>>exportSegmentWithCatagories: classes: fileName: directory:"
	"preferences
	afterSerializingAny: #ViewerFlapTab
	do: [ : aViewerFlapTab | aViewerFlapTab unhibernate ].
preferences
	afterMaterializingAny: #ViewerFlapTab
	do: [ : aViewerFlapTab | aViewerFlapTab unhibernate ]."
	preferences
		beforeSerializingAny: #CompiledMethod
			do: [ : aCompiledMethod | aCompiledMethod fixForWriteBarrier ] ;
		beforeSerializingAny: #Context
			do:
				[ : aContext | aContext removeSelf.
				1 to: aContext numArgs do: [ : n | aContext tempAt: n put: nil ] ] ;
		afterMaterializingAny: #Context
			do: [ : aContext | aContext privRefresh ].
	(Smalltalk hasClassNamed: #Project) ifTrue: 
		[ preferences 
			beforeSerializingAny: #Project
			do: 
				[ : aProject | 
				| world |
				world _ aProject world.
				aProject world 
					setProperty: #optimumExtentFromAuthor
					toValue: aProject world extent.	"As suggested by Project>>#storeOnServerAssumingNameValid"
				(Smalltalk classNamed: #Utilities) ifNotNilDo: 
					[ : utilities | 
					"The following is from Project>>#exportSegmentWithChangeSet:fileName:directory:"
					utilities emptyScrapsBook ].
				world currentHand pasteBuffer: nil.	"don't write the paste buffer."
				world currentHand mouseOverHandler initialize.	"forget about any references here"
				"Display checkCurrentHandForObjectToPaste."
				(Smalltalk classNamed: #Command) ifNotNilDo: [ : command | command initialize ].
				world clearCommandHistory.
				world
					fullReleaseCachedState ;
					releaseViewers.
				world cleanseStepList.
				world releaseSqueakPages.
				(Smalltalk classNamed: #ScriptEditorMorph) ifNotNilDo: 
					[ : sem | 
					sem writingUniversalTiles: (aProject 
							projectParameterAt: #universalTiles
							ifAbsent: [ false ]) ].
				thisContext home removeSelf ].
		preferences 
			afterMaterializingAny: #Project
			do: 
				[ : aProject | 
				aProject setParent: (Smalltalk classNamed: #Project) current.
				aProject world beWorldForProject: aProject.	"sets aProject's worldState"
				"This behavior suggested by ImageSegment>>#comeFullyUpOnReload:"
				aProject ensureChangeSetNameUnique.
				(Smalltalk classNamed: #Project) addingProject: aProject.
				aProject restoreReferences.
				self maMarked: 'dev'.	"need to restore dependents??"
				(Smalltalk classNamed: #ScriptEditorMorph) ifNotNilDo: 
					[ : sem | 
					sem writingUniversalTiles: ((aProject projectPreferenceAt: #universalTiles) ifNil: [ false ]) ].
				thisContext home removeSelf ]
		"preferences
	afterMaterializingAny: #WorldState
	do:
		[ : aWorldState |
		aWorldState
			convertStepList ;
			convertAlarms ]." ]! !

!MaObjectSerializer methodsFor: 'accessing'!
byteArray

	^self graphBuffer byteArray
! !

!MaObjectSerializer methodsFor: 'accessing'!
byteArray: aByteArray

	self graphBuffer byteArray: aByteArray.
	preMadeObjectBuffers do: [ :each | each byteArray: aByteArray ]
! !

!MaObjectSerializer methodsFor: 'accessing' stamp: 'cmm 11/25/2011 16:38'!
classDefinitionsById
	^ classIdManager classDefinitionsById! !

!MaObjectSerializer methodsFor: 'accessing' stamp: 'cmm 6/8/2004 21:14'!
classDefinitionsByteArray
	"Answer a ByteArray that can be used to reinitialize a new instance of the receiver so that it can materialize the objects it has serialized."

	^ (
self copyWithNewBuffer serializeGraph: self classIdManager classDefinitionsById) trimmedByteArray! !

!MaObjectSerializer methodsFor: 'accessing' stamp: 'cmm 5/23/2004 22:18'!
classDefinitionsOid

	^self oidFor: self classIdManager classDefinitionsById! !

!MaObjectSerializer methodsFor: 'accessing'!
classIdManager

	^classIdManager
! !

!MaObjectSerializer methodsFor: 'accessing'!
graphBuffer

	^graphBuffer
! !

!MaObjectSerializer methodsFor: 'accessing' stamp: 'cmm 3/27/2006 16:45'!
objectWithOid: anInteger
	^ oidManager
		objectWithOid: anInteger
		ifAbsent: [ self proxyFor: anInteger ]! !

!MaObjectSerializer methodsFor: 'accessing' stamp: 'cmm 3/20/2003 21:55'!
objectWithOid: anInteger ifAbsent: aBlock

	^oidManager
		objectWithOid: anInteger
		ifAbsent: aBlock
! !

!MaObjectSerializer methodsFor: 'accessing' stamp: 'cmm 3/20/2003 21:54'!
objectWithOid: anInteger ifFound: oneArgBlock ifAbsent: aBlock

	^oidManager
		objectWithOid: anInteger
		ifFound: oneArgBlock
		ifAbsent: aBlock
! !

!MaObjectSerializer methodsFor: 'accessing' stamp: 'cmm 4/20/2003 22:18'!
oidCount
	"Answers the number of objects that have oids."

	^oidManager oidCount! !

!MaObjectSerializer methodsFor: 'accessing' stamp: 'cmm 3/20/2003 21:54'!
oidFor: anObject

	^oidManager oidFor: anObject
! !

!MaObjectSerializer methodsFor: 'accessing' stamp: 'cmm 7/10/2009 17:19'!
oidFor: anObject ifAbsent: aBlock 
	^ oidManager 
		oidFor: anObject
		ifAbsent: aBlock! !

!MaObjectSerializer methodsFor: 'accessing' stamp: 'cmm 11/26/2004 09:46'!
preferences
	^ preferences! !

!MaObjectSerializer methodsFor: 'accessing'!
traversalStrategy

	^traversalStrategy
! !

!MaObjectSerializer methodsFor: 'copying' stamp: 'cmm 8/29/2011 19:47'!
copyForStorageObject
	^ self copyWithNewOidSpace
		 initializeTraversalStrategy ;
		 yourself! !

!MaObjectSerializer methodsFor: 'copying' stamp: 'cmm 3/24/2005 11:59'!
copyWithNewBuffer

	^ self copy
		postCopyWithNewBuffer ;
		yourself! !

!MaObjectSerializer methodsFor: 'copying' stamp: 'cmm 3/24/2005 11:58'!
copyWithNewOidSpace
	"Answer a new instance of the me that shares my class-ids, but not the oids."
	
	^ self copyWithNewBuffer
		postCopyWithNewOidSpace ;
		yourself! !

!MaObjectSerializer methodsFor: 'copying' stamp: 'cmm 3/23/2013 17:09'!
independentCopy
	"Answer a completely independent copy of the receiver.  This will probably mostly be used during debugging."
self maMarked: 'delete'.
	^ self copy postIndependentCopy! !

!MaObjectSerializer methodsFor: 'serializing' stamp: 'HB 3/30/2017 23:26'!
fileOut: anObject toFileNamed: fileName in: aFileDirectory 
	"Write anObject to a file named fileName in aFileDirectory."
	^ aFileDirectory asFileDirectory
		maFileNamed: fileName
		do: 
			[ : stream | 
			stream
				binary ;
				position: 0.
			self 
				object: anObject
				toStream: stream ]! !

!MaObjectSerializer methodsFor: 'serializing' stamp: 'cmm 11/22/2016 14:42'!
object: anObject toStream: aWriteStream 
	"Serialize anObject onto aWriteStream, taking care to ensure any Proxies are reified first, so that the entire graph is serialized.  Answer the final MaSerializedGraphBuffer."
	| objectGb anyProxyEncountered |
	[ anyProxyEncountered _ nil.
	objectGb _ [ self serializeGraph: anObject ]
		on: MaTraverseProxyNotification
		do:
			[ : noti | anyProxyEncountered _ noti proxy.
			anyProxyEncountered realObjectIfMutatingProxy.
			noti resume ].
	anyProxyEncountered yourself. "one force bulkBecome"
	anyProxyEncountered notNil ] whileTrue.
	objectGb buffersMissingFromWhole ifNotEmpty:
		[ : missing | MaSoftwareError signal: 'Incomplete graph, check serializer configuration.' ].
	"serialize protocol and object in succession."
	aWriteStream
		 nextPutAll: self classDefinitionsByteArray ;
		 nextPutAll: objectGb byteArray.
	^ objectGb! !

!MaObjectSerializer methodsFor: 'serializing' stamp: 'cmm 3/16/2009 20:12'!
serializeGraph: anObject
	"Serialize anObject and answer it as a MaSerializedGraphBuffer."
	^self
		serializeGraph: anObject
		do: [ :each | nil ]
! !

!MaObjectSerializer methodsFor: 'serializing' stamp: 'cmm 8/9/2010 19:33'!
serializeGraph: anObject do: oneArgBlock
	"Serialize anObject and answer it as a MaSerializedGraphBuffer.  For each object traversed in the serialization, value oneArgBlock."
	^ self copyWithNewBuffer
		appendGraph: anObject
		do: oneArgBlock! !

!MaObjectSerializer methodsFor: 'actions' stamp: 'cmm 1/20/2003 22:26'!
finalizeOids

	oidManager finalizeOids! !

!MaObjectSerializer methodsFor: 'actions' stamp: 'cmm 12/29/2004 17:30'!
rehashOids

	oidManager rehashOids! !

!MaObjectSerializer methodsFor: 'actions' stamp: 'cmm 7/30/2011 12:06'!
resetByteArray
	"Ensure my preMade buffers share the same byteArray as my graphBuffer (a performance optimization) and set my size to 0 objects."
	preMadeObjectBuffers first byteArray ~~ self byteArray ifTrue:
		[ | ba |
		ba _ self byteArray.
		preMadeObjectBuffers do:
			[ : each | each byteArray: ba ] ].
	self graphBuffer resetBufferSize! !

!MaObjectSerializer methodsFor: 'actions' stamp: 'cmm 6/8/2006 15:45'!
resetOidManager
	"If receiving a byteArray from another serializer, this method should be invoked prior to materializing here so cached oids in the oidManager that may not match the objects that were serialized by the other serializer."
	oidManager reset
! !

!MaObjectSerializer methodsFor: 'event handling' stamp: 'cmm 12/12/2004 18:54'!
handleClassModification: aModifiedClassDefinitionEvent

	aModifiedClassDefinitionEvent isModified ifFalse: [ ^ self ].
	aModifiedClassDefinitionEvent item isMeta ifTrue: [ ^ self ].
	oidManager
		handleClassModification: aModifiedClassDefinitionEvent item
		using: self.
	classIdManager
		handleClassModification: aModifiedClassDefinitionEvent item
		using: self! !

!MaObjectSerializer methodsFor: 'testing' stamp: 'cmm 7/17/2002 22:49'!
hasOidFor: anObject

	^oidManager hasOidFor: anObject! !

!MaObjectSerializer methodsFor: 'testing' stamp: 'cmm 3/16/2009 20:24'!
protocolEstablished
	^ classIdManager isMutable not! !

!MaObjectSerializer methodsFor: 'materializing' stamp: 'cmm 10/9/2004 23:58'!
materializeGraph: aByteArray

	^self
		materializeGraph: aByteArray
		do: [ : eachObject : eachBuffer | "do nothing" ]
! !

!MaObjectSerializer methodsFor: 'materializing' stamp: 'cmm 1/30/2005 20:47'!
materializeGraph: aByteArray do: twoArgBlock
	"Answer a fully-formed object from aByteArray of aMaSerializedGraphBuffer.  If buffers are missing to complete the full-graph, I will substitute with proxy's based on the block specified by toCreateProxies:."

	"Guard against stepping on my own buffers if I'm busy serializing or materializing already."
	^ amBusy
		ifTrue:
			[ self copyWithNewBuffer
				byteArray: aByteArray;
				materializeGraphDo: twoArgBlock ]
		ifFalse:
			[ self
				byteArray: aByteArray;
				materializeGraphDo: twoArgBlock ]! !

!MaObjectSerializer class methodsFor: 'debugging' stamp: 'cmm 4/19/2009 20:52'!
fileIn: aDirectoryEntryFile 
	^ aDirectoryEntryFile containingDirectory 
		maFileNamed: aDirectoryEntryFile name
		do: 
			[ : stream | 
			stream binary.
			self objectFromStream: stream ]! !

!MaObjectSerializer class methodsFor: 'debugging' stamp: 'cmm 11/9/2010 23:00'!
objectFromStream: stream 
	| serializer buffers |
	stream binary.
	buffers _ OrderedCollection new.
	stream maBuffersDo:
		[ : each | buffers add: each ].
	serializer _ MaObjectSerializer new.
	^ buffers size > 1
		ifTrue:
			[ serializer classDefinitionsByteArray: buffers first.
			serializer materializeGraph: buffers second ]
		ifFalse: [ serializer materializeGraph: buffers first ]! !

!MaObjectSerializer class methodsFor: 'debugging' stamp: 'cmm 8/23/2005 18:56'!
testMaterialize: anObject

	| s1 graphBuffer |
	s1 _ self new.
	graphBuffer _ s1 serializeGraph: anObject.
	^ self new
		classDefinitionsByteArray: s1 classDefinitionsByteArray ;
		materializeGraph: graphBuffer byteArray copy! !

!MaObjectSerializer class methodsFor: 'creation' stamp: 'cmm 10/15/2002 22:15'!
new

	^self new: 1000
! !

!MaObjectSerializer class methodsFor: 'creation'!
new: anInteger

	^super new optimumByteArraySize: anInteger
! !

!MaObjectSerializer class methodsFor: 'creation' stamp: 'cmm 10/25/2005 22:00'!
protocol: aCollection

	^ self new
		protocol: aCollection ;
		yourself! !

!MaObjectSerializerPreferences methodsFor: 'pre and post processing' stamp: 'cmm 2/11/2005 11:17'!
afterMaterializingAny: className do: oneArgValuator
	"Set up preference for materializing instances of the class named className by sending oneArgValuator.  The first argument is the object being serialized, the second is the serializer (aMaObjectSerializer) doing the serialization."

	| valuators |
	self
		validate: className
		has: #maWantsPostMaterialization.
	valuators _ 
		(postMaterializers
			at: className
			ifAbsentPut: [ OrderedCollection new ]).
	(valuators includes: oneArgValuator) ifFalse: [ valuators add: oneArgValuator ]! !

!MaObjectSerializerPreferences methodsFor: 'pre and post processing' stamp: 'cmm 2/11/2005 11:17'!
afterSerializingAny: className do: oneArgValuator
	"Set up preference for serializing instances of class named className by sending oneArgValuator.  The first argument is the object being serialized, the second is the serializer (aMaObjectSerializer) doing the serialization."

	| valuators |
	self
		validate: className
		has: #maWantsPreSerialization.
	valuators _ postSerializers
		at: className
		ifAbsentPut: [ OrderedCollection new ].
	(valuators includes: oneArgValuator) ifFalse: [ valuators add: oneArgValuator ]! !

!MaObjectSerializerPreferences methodsFor: 'pre and post processing' stamp: 'cmm 2/11/2005 11:17'!
beforeSerializingAny: className do: oneArgValuator
	"Set up preference for serializing instances of aClass by sending oneArgValuator.  The first argument is the object being serialized, the second is the serializer (aMaObjectSerializer) doing the serialization.
	Note, only do this if aClass is present."

	| valuators |
	self
		validate: className
		has: #maWantsPreSerialization.
	valuators _ 
		preSerializers
			at: className
			ifAbsentPut: [ OrderedCollection new ].
	(valuators includes: oneArgValuator) ifFalse: [ valuators add: oneArgValuator ]! !

!MaObjectSerializerPreferences methodsFor: 'pre and post processing' stamp: 'cmm 11/26/2004 10:17'!
postMaterializers
	^ postMaterializers! !

!MaObjectSerializerPreferences methodsFor: 'pre and post processing' stamp: 'cmm 11/28/2004 17:12'!
postSerializers
	^ postSerializers! !

!MaObjectSerializerPreferences methodsFor: 'pre and post processing' stamp: 'cmm 11/26/2004 10:17'!
preSerializers
	^ preSerializers! !

!MaObjectSerializerPreferences methodsFor: 'pre and post processing' stamp: 'cmm 2/3/2005 22:54'!
releasePostMaterializationFor: className
	"Remove all post-materialization behaviors for the class named className."
	postMaterializers
		removeKey: className
		ifAbsent: [ "ok" ]! !

!MaObjectSerializerPreferences methodsFor: 'pre and post processing' stamp: 'cmm 2/3/2005 22:55'!
releasePostSerializationFor: className
	"Remove all post-materialization behaviors for the class named className."
	postSerializers
		removeKey: className
		ifAbsent: [ "ok" ]! !

!MaObjectSerializerPreferences methodsFor: 'pre and post processing' stamp: 'cmm 2/3/2005 22:51'!
releasePreserializationFor: className
	"Remove all preserialization behaviors for the Class named className."
	preSerializers
		removeKey: className
		ifAbsent: [ "ok" ]! !

!MaObjectSerializerPreferences methodsFor: 'initializing' stamp: 'cmm 11/28/2004 19:22'!
initialize
	super initialize.
	preSerializers _ Dictionary new.
	postSerializers _ Dictionary new.
	postMaterializers _ Dictionary new! !

!MaObjectSerializerPreferences methodsFor: 'validate' stamp: 'cmm 9/13/2013 14:09'!
validate: className has: selector 
	| inst cls |
	className isSymbol ifFalse: [ MaObjectSerializationUserError signal: 'Specify the class *name*, not the class itself.' ].
	(Smalltalk hasClassNamed: className) ifFalse: [ "No validation needed"
		^ self ].
	"MagmaForwardingProxy cannot understand #perform:, so we special check it by type name."
	className = #MagmaForwardingProxy ifTrue: [ ^ self ].
	inst _ (cls_Smalltalk at: className) someInstance
		ifNil: [ cls basicNew ].
	(inst perform: selector) ifFalse: [ MaObjectSerializationUserError signal: 'Need to implement ' , selector , ' on ' , className ]! !

!MaObjectSerializerPreferences class methodsFor: 'special collections' stamp: 'cmm 11/22/2010 10:13'!
defaultWeakIdentityKeyDictionaryClass
	^ "MaAutoWeakDictionary supportsAutoCleaning
		ifTrue: [ MaAutoWeakIdentityKeyDictionary ]
		ifFalse: [ MaWeakIdentityKeyDictionary ]"

"Do not use AutoDictionary's for now, my initial tests show they do not collect properly..?"

MaWeakIdentityKeyDictionary! !

!MaObjectSerializerPreferences class methodsFor: 'special collections' stamp: 'cmm 6/14/2010 22:25'!
defaultWeakValueDictionaryClass
	^ MaAutoWeakDictionary supportsAutoCleaning
		ifTrue: [ MaAutoIdentityKeyWeakValueDictionary ]
		ifFalse: [ MaWeakValueDictionary ]! !

!MaObjectSerializerPreferences class methodsFor: 'special collections' stamp: 'cmm 4/23/2011 16:56'!
newWeakIdentityKeyDictionary
	| dict |
	dict _ self weakIdentityKeyDictionaryClass new.
	"There is a precendent for using a standard (strong) IdentityKeyDictionary, therefore check that it can #finalizeValues."
"Don't register with WeakArray.  It might be possible for the finalization process to be finalizing at the same time access is occurring (although, since that runs at a higher-priority, it shouldn't).
	However, it seems really don't need this since we clean-up from MagmaSession>>#refreshViewUsing:includingLocal: anyway."
"	(dict respondsTo: #finalizeValues) ifTrue: [ WeakArray addWeakDependent: dict ]."
	^ dict! !

!MaObjectSerializerPreferences class methodsFor: 'special collections' stamp: 'cmm 4/25/2010 21:13'!
newWeakValueDictionary
	^ self weakValueDictionaryClass new! !

!MaObjectSerializerPreferences class methodsFor: 'special collections' stamp: 'cmm 6/14/2010 22:20'!
weakIdentityKeyDictionaryClass
	^ WeakIdentityKeyDictionaryClass
		ifNil: [ self defaultWeakIdentityKeyDictionaryClass ]
		ifNotNil:
			[ WeakIdentityKeyDictionaryClass isAutoCleaning
				ifTrue: [ self defaultWeakIdentityKeyDictionaryClass ]
				ifFalse: [ WeakIdentityKeyDictionaryClass ] ]! !

!MaObjectSerializerPreferences class methodsFor: 'special collections' stamp: 'cmm 4/25/2010 20:44'!
weakIdentityKeyDictionaryClass: aClass
	WeakIdentityKeyDictionaryClass _ aClass! !

!MaObjectSerializerPreferences class methodsFor: 'special collections' stamp: 'cmm 6/14/2010 22:20'!
weakValueDictionaryClass
	^ WeakValueDictionaryClass
		ifNil: [ self defaultWeakValueDictionaryClass ]
		ifNotNil:
			[ WeakValueDictionaryClass isAutoCleaning
				ifTrue: [ self defaultWeakValueDictionaryClass ]
				ifFalse: [ WeakValueDictionaryClass ] ]! !

!MaObjectSerializerPreferences class methodsFor: 'special collections' stamp: 'cmm 4/25/2010 20:44'!
weakValueDictionaryClass: aClass 
	WeakValueDictionaryClass _ aClass! !

!MaOidCalculator class methodsFor: 'atomics' stamp: 'cmm 4/29/2005 12:20'!
firstCharacterOid

	^ 4! !

!MaOidCalculator class methodsFor: 'atomics' stamp: 'cmm 6/1/2005 09:13'!
firstUserObjectOid

	^ 4066542! !

!MaOidCalculator class methodsFor: 'atomics' stamp: 'cmm 4/29/2005 12:21'!
lastCharacterOid

	"^self firstCharacterOid + 65535"   "DBCS"
	^ 65539! !

!MaOidCalculator class methodsFor: 'atomics' stamp: 'cmm 4/21/2005 15:41'!
lastUserObjectOid

	^ 281468533259712   "self oidForSmallestFloat - 1"! !

!MaOidCalculator class methodsFor: 'atomics' stamp: 'cmm 9/1/2002 22:54'!
newOidMinimum

	^66541! !

!MaOidCalculator class methodsFor: 'atomics' stamp: 'cmm 12/3/2014 10:56'!
objectWithOid: anInteger ifNone: aBlock 
	anInteger == OidForNil ifTrue: [ ^ nil ].
	anInteger == OidForFalse ifTrue: [ ^ false ].
	anInteger == OidForTrue ifTrue: [ ^ true ].
	(anInteger
		between: FirstFloatOid
		and: LastFloatOid) ifTrue: [ ^ self floatFromOid: anInteger ].
	(anInteger
		between: FirstSmallIntegerOid
		and: LastSmallIntegerOid) ifTrue: [ ^ self integerFromOid: anInteger ].
	(anInteger
		between: FirstCharacterOid
		and: LastCharacterOid) ifTrue: [ ^ Character value: anInteger - FirstCharacterOid ].
	^ aBlock value! !

!MaOidCalculator class methodsFor: 'atomics' stamp: 'cmm 12/3/2014 10:40'!
oidForCharacter: aCharacter 
	^ FirstCharacterOid + aCharacter asciiValue! !

!MaOidCalculator class methodsFor: 'atomics' stamp: 'cmm 8/6/2002 23:41'!
oidForFalse

	^1! !

!MaOidCalculator class methodsFor: 'atomics' stamp: 'cmm 8/6/2002 23:37'!
oidForNil

	^0! !

!MaOidCalculator class methodsFor: 'atomics' stamp: 'cmm 8/6/2002 23:41'!
oidForTrue

	^2! !

!MaOidCalculator class methodsFor: 'floats' stamp: 'cmm 12/2/2014 22:15'!
floatFromOid: anInteger 
	^ Float fromIEEE32Bit: anInteger - FirstFloatOid! !

!MaOidCalculator class methodsFor: 'floats' stamp: 'cmm 12/2/2014 22:12'!
isOidForFloat: oidInteger 
	^ oidInteger
		between: FirstFloatOid
		and: LastFloatOid! !

!MaOidCalculator class methodsFor: 'floats' stamp: 'cmm 12/2/2014 22:12'!
oidForFloat: aFloat 
	^ aFloat asIEEE32BitWord + FirstFloatOid! !

!MaOidCalculator class methodsFor: 'floats' stamp: 'cmm 12/2/2014 22:17'!
oidForSmallestFloat
	^ 281468533259713! !

!MaOidCalculator class methodsFor: 'integers' stamp: 'cmm 12/2/2014 22:14'!
integerFromOid: oidInteger 
	^ oidInteger - OidForZero! !

!MaOidCalculator class methodsFor: 'integers' stamp: 'cmm 12/3/2014 10:38'!
isOidForOptimizedInteger: oidInteger
	^ oidInteger
		between: FirstSmallIntegerOid  "self oidForZero + SmallInteger minVal"
		and: LastSmallIntegerOid  "self oidForZero + SmallInteger maxVal"! !

!MaOidCalculator class methodsFor: 'integers' stamp: 'cmm 12/2/2014 22:22'!
oidForInteger: anInteger 
	^ anInteger + OidForZero! !

!MaOidCalculator class methodsFor: 'integers' stamp: 'cmm 12/2/2014 22:26'!
oidForSmallestOptimizedInteger
	"Hard-code to avoid potential problems when moving to 64-bit Squeak."
	^ self oidForInteger: -1073741824 "SmallInteger minVal"! !

!MaOidCalculator class methodsFor: 'integers' stamp: 'cmm 6/1/2005 09:42'!
oidForZero

	"^16rFFFFFFFFFFFF - SmallInteger maxVal"
	^ 281473902968832! !

!MaOidCalculator class methodsFor: 'testing' stamp: 'cmm 12/3/2014 10:40'!
isOidForOptimizedObject: oidInteger 
	"Answer whether oidInteger is an oid for anObject which will never require its own buffer.  These include optimized Integers, nil, true, false, and all Characters."
	^ oidInteger <= LastCharacterOid or: [ oidInteger >= FirstFloatOid ]! !

!MaOidManager methodsFor: 'actions' stamp: 'cmm 6/22/2016 20:00'!
finalizeOids
	objects class isAutoCleaning
		ifTrue: [ objects finalizeValues ]
		ifFalse: [ objects _ objects reject: [ : each | each isNil ] ].
	oids finalizeValues: true! !

!MaOidManager methodsFor: 'actions' stamp: 'cmm 10/30/2006 00:06'!
oidsAndObjectsDo: twoArgBlock
	objects keysAndValuesDo: twoArgBlock! !

!MaOidManager methodsFor: 'actions' stamp: 'cmm 12/29/2004 17:29'!
rehashOids

	oids rehash! !

!MaOidManager methodsFor: 'actions' stamp: 'cmm 4/27/2010 09:13'!
reset
	oids _ MaObjectSerializerPreferences newWeakIdentityKeyDictionary.
	objects _ MaObjectSerializerPreferences newWeakValueDictionary.
	self resetNextOid! !

!MaOidManager methodsFor: 'private' stamp: 'cmm 7/26/2005 13:09'!
getNextOid

	^ nextOid _ nextOid + 1! !

!MaOidManager methodsFor: 'private' stamp: 'cmm 12/22/2008 15:47'!
initialize
	super initialize.
	self
		reset ;
		resetNextOid! !

!MaOidManager methodsFor: 'private' stamp: 'cmm 3/23/2013 17:11'!
postIndependentCopy
self maMarked: 'delete'.
	objects _ objects copy.
	oids _ oids copy.
	self resetNextOid! !

!MaOidManager methodsFor: 'private' stamp: 'cmm 12/2/2014 17:17'!
resetNextOid
	nextOid _ FirstNewObjectOid! !

!MaOidManager methodsFor: 'private' stamp: 'cmm 5/7/2008 16:28'!
useStatisticsFrom: anotherOidManager
	"Do nothing for now, since only MagmaOidManagers have an interest in statistics."! !

!MaOidManager methodsFor: 'event handling' stamp: 'cmm 6/24/2004 11:59'!
handleClassModification: aClass using: aMaObjectSerializer
	"optional subclass responsibility"! !

!MaOidManager methodsFor: 'testing' stamp: 'cmm 4/22/2013 15:22'!
hasOidFor: anObject 
	^ oids includesKey: anObject! !

!MaOidManager methodsFor: 'copying' stamp: 'cmm 3/23/2013 17:11'!
independentCopy
self maMarked: 'delete'.
	^ self copy postIndependentCopy! !

!MaOidManager methodsFor: 'accessing' stamp: 'cmm 3/20/2011 14:11'!
objectCountByClass
	^ (objects collect: [ : e | e class ]) asBag sortedCounts! !

!MaOidManager methodsFor: 'accessing' stamp: 'cmm 12/27/2002 16:03'!
objectWithOid: anInteger ifAbsent: aBlock

	^self
		objectWithOid: anInteger
		ifFound: [ :foundObj | foundObj ]
		ifAbsent: aBlock! !

!MaOidManager methodsFor: 'accessing' stamp: 'cmm 10/28/2011 15:39'!
objectWithOid: anInteger ifFound: oneArgBlock ifAbsent: aBlock

	^MaOidCalculator
		objectWithOid: anInteger
		ifNone:
			[ objects
				at: anInteger
				ifPresent:
					[ :obj |
					obj   "oid key marked to be cleaned"
						ifNil: [ aBlock value ]
						ifNotNil: [ oneArgBlock value: obj ] ]
				ifAbsent: [ aBlock value ] ]! !

!MaOidManager methodsFor: 'accessing' stamp: 'cmm 4/20/2003 22:18'!
oidCount

	^oids size! !

!MaOidManager methodsFor: 'accessing' stamp: 'cmm 4/22/2013 15:22'!
oidFor: anObject 
	^ self
		oidFor: anObject
		ifAbsent:
			[ self
				oidOf: anObject
				is: self getNextOid ]! !

!MaOidManager methodsFor: 'accessing' stamp: 'cmm 5/5/2013 21:53'!
oidFor: anObject ifAbsent: aBlock 
	^ anObject maRequiresOwnBuffer
		ifTrue:
			[ oids
				at: anObject
				ifPresent: [ : oid | oid ifNil: aBlock ]
				ifAbsent: aBlock ]
		ifFalse: [ anObject maOid ]! !

!MaOidManager methodsFor: 'building' stamp: 'cmm 12/22/2008 15:58'!
oidOf: anObject is: anInteger 
	objects 
		at: anInteger
		put: anObject.
	^ oids 
		at: anObject
		put: anInteger! !

!MaSerializationStat methodsFor: 'enumerate' stamp: 'cmm 5/7/2008 15:20'!
historysDo: aBlock 
	{ 
		houseCleaningTimeHistory.
		timeToMaterializeHistory.
		timeToSerializeHistory
	 } do: aBlock! !

!MaSerializationStat methodsFor: 'historys' stamp: 'cmm 5/9/2008 17:04'!
houseCleaningTimeHistory
	"MaObjectSerializers must do house-cleaning to maintain good performance but this, itself, consumes a bit of time, which is tracked by this stat."
	^houseCleaningTimeHistory! !

!MaSerializationStat methodsFor: 'historys' stamp: 'cmm 5/9/2008 17:03'!
timeToMaterializeHistory
	"The time spent materializing objects.  In a client-server application, this means materializing requests on the server or responses on the client."
	^timeToMaterializeHistory! !

!MaSerializationStat methodsFor: 'historys' stamp: 'cmm 5/9/2008 17:03'!
timeToSerializeHistory
	"The time spent serializing objects.  In a client-server application, this means serializing requests on the client or responses on the server."
	^timeToSerializeHistory! !

!MaSerializationStat methodsFor: 'initialize-release' stamp: 'cmm 5/7/2008 17:38'!
initialize
	super initialize.
	houseCleaningTimeHistory _ MaStatHistory name: 'House Cleaning Times'.
	timeToMaterializeHistory _ MaStatHistory name: 'Time Spent Materializing'.
	timeToSerializeHistory _ MaStatHistory name: 'Time Spent Serializing'! !

!MaSerializationStat methodsFor: 'ui-support' stamp: 'cmm 4/27/2009 20:50'!
serializationStats
	"Statistics related to local serialization and materialization of objects."
	^ { 
		timeToSerializeHistory.
		timeToMaterializeHistory.
		houseCleaningTimeHistory
	 }! !

!MaSerializedGraphBuffer methodsFor: 'private' stamp: 'cmm 8/10/2010 14:03'!
bufferPositionsDo: oneArgBlock 
	"Value oneArgBlock with the value of the starting position of each
	buffer in the receiver."
	| pos end |
	pos _ self headerSize.
	end _ self bufferSize - 1.
	[ pos <= end ] whileTrue:
		[ | physicalSize bufferClass |
		oneArgBlock value: pos.
		bufferClass _ MaObjectBuffer
			bufferClassFor: byteArray
			startPos: pos.
		physicalSize _ byteArray
			maUint: bufferClass sizeOfPhysicalSizeField
			at: pos + bufferClass bufferPositionOfPhysicalSize.
		pos _ pos + physicalSize ]! !

!MaSerializedGraphBuffer methodsFor: 'private' stamp: 'cmm 4/26/2005 07:59'!
bufferTypeAt: startPositionOfObjectBuffer

	^ MaObjectBuffer
		bufferTypeIn: byteArray
		startingAt: startPositionOfObjectBuffer! !

!MaSerializedGraphBuffer methodsFor: 'private' stamp: 'cmm 7/16/2002 21:42'!
headerSize

	^self class headerSize
! !

!MaSerializedGraphBuffer methodsFor: 'accessing' stamp: 'cmm 9/8/2015 15:18'!
bufferSize
	^ byteArray maUnsigned32At: 1! !

!MaSerializedGraphBuffer methodsFor: 'accessing'!
byteArray
	"One ByteArray holds the entire graph of objects."

	^byteArray
! !

!MaSerializedGraphBuffer methodsFor: 'accessing' stamp: 'cmm 2/15/2005 22:18'!
objectCount

	| count |
	count _ 0.
	self buffersDo: [ : each | count _ count + 1 ].
	^ count! !

!MaSerializedGraphBuffer methodsFor: 'accessing' stamp: 'cmm 5/3/2005 12:41'!
rootBuffer

	self buffersDo: [ : each | ^ each ]! !

!MaSerializedGraphBuffer methodsFor: 'accessing' stamp: 'cmm 3/15/2009 21:17'!
sameBuffers
	"Answer an Array of my individual MaObjectBuffers whose byteArray all share mine."
	| arg x |
	arg _ Array new: self objectCount.
	x _ 0.
	self buffersDo: 
		[ : each | 
		arg 
			at: (x _ x + 1)
			put: each copyWithSameBuffer ].
	^ arg! !

!MaSerializedGraphBuffer methodsFor: 'accessing' stamp: 'cmm 1/11/2007 21:34'!
trimByteArray
	byteArray _ self trimmedByteArray! !

!MaSerializedGraphBuffer methodsFor: 'accessing' stamp: 'cmm 4/3/2003 00:11'!
trimmedByteArray

	^byteArray
		copyFrom: 1
		to: self bufferSize! !

!MaSerializedGraphBuffer methodsFor: 'private building' stamp: 'cmm 4/3/2003 00:11'!
bufferSize: anInteger

	byteArray
		maUint: 32
		at: 0
		put: anInteger
! !

!MaSerializedGraphBuffer methodsFor: 'debugging' stamp: 'cmm 6/15/2005 22:53'!
buffers

	| coll |

	coll _ OrderedCollection new.
	self buffersDo: [ :each | coll add: each independentCopy ].
	^coll
! !

!MaSerializedGraphBuffer methodsFor: 'debugging' stamp: 'cmm 5/7/2013 09:48'!
buffersMissingFromWhole
	"Answer whether I have all the object buffers needed to reconstitute my entire graph."
	^ Array streamContents:
		[ : stream | self
			buffersMissingFromWholeWhere:
				[ : each | true ]
			do: [ : eachOid : eachBuffer | stream nextPut: eachOid -> eachBuffer copyWithSameBuffer ] ]! !

!MaSerializedGraphBuffer methodsFor: 'debugging' stamp: 'cmm 5/7/2013 09:48'!
buffersMissingFromWholeWhere: aBlock
	"Answer whether I have all the object buffers needed to reconstitute my entire graph."
	^ Array streamContents:
		[ : stream | self
			buffersMissingFromWholeWhere: aBlock
			do: [ : eachOid : eachBuffer | stream nextPut: eachOid -> eachBuffer copyWithSameBuffer ] ]! !

!MaSerializedGraphBuffer methodsFor: 'debugging' stamp: 'cmm 10/13/2014 21:34'!
buffersMissingFromWholeWhere: conditionBlock do: twoArgBlock 
	"Value twoArgBlock with an Association whose value is a buffer which references an oid for which there is no buffer and whose key is the oid which is unreferenced."
	| oids |
	oids _ PluggableSet integerSet.
	self buffersDo:
		[ : each | oids add: each oid ].
	self buffersDo:
		[ : eachBuffer | eachBuffer isPointers ifTrue:
			[ eachBuffer oids do:
				[ : eachOid | ((MaOidCalculator isOidForOptimizedObject: eachOid) not and:
					[ (oids includes: eachOid) not and: [ conditionBlock value: eachOid ] ]) ifTrue:
					[ twoArgBlock
						value: eachOid
						value: eachBuffer ] ] ] ]! !

!MaSerializedGraphBuffer methodsFor: 'debugging' stamp: 'cmm 2/7/2005 17:29'!
isWhole
	"Answer whether I have all the object buffers needed to reconstitute my entire graph."

	^ self buffersMissingFromWhole isEmpty! !

!MaSerializedGraphBuffer methodsFor: 'actions' stamp: 'cmm 4/3/2003 00:11'!
buffersDo: oneArgBlock
	"Value oneArgBlock with each ObjectBuffer in the
	receiver.  There is one ObjectBuffer for each object in the graph that
	the receiver represents."

	| preMadeBuffers |
	preMadeBuffers _ self newPremadeBuffers.
	self bufferPositionsDo:
		[ :eachPosition | | buffer |
		buffer _ (preMadeBuffers at: (self bufferTypeAt: eachPosition)).
		buffer
			byteArray: byteArray;
			startPos: eachPosition.
		oneArgBlock value: buffer ]! !

!MaSerializedGraphBuffer methodsFor: 'building'!
byteArray: aByteArray

	byteArray _ aByteArray
! !

!MaSerializedGraphBuffer methodsFor: 'building' stamp: 'cmm 3/7/2005 14:37'!
increaseBufferSizeBy: anInteger

	anInteger < self headerSize
		ifTrue:
			[ MaObjectSerializationSoftwareError signal: 'This object being appended is not properly supported.' ].
	self bufferSize: self bufferSize + anInteger
! !

!MaSerializedGraphBuffer methodsFor: 'building'!
resetBufferSize
	"Reset the current pointer (which is the bufferSize) back to the beginning."

	self bufferSize: self headerSize
! !

!MaSerializedGraphBuffer methodsFor: 'building'!
resetByteArray: aByteArray

	self
		byteArray: aByteArray;
		resetBufferSize
! !

!MaSerializedGraphBuffer methodsFor: 'printing' stamp: 'cmm 5/30/2013 17:08'!
maPrintAbbreviatedOn: aStream
	super maPrintAbbreviatedOn: aStream.
	byteArray notNil
		ifTrue:
			[ aStream
				nextPutAll: ' (';
				maPrint: self objectCount;
				nextPutAll: ' objects in ';
				maPrint: self bufferSize asBytesDescription;
				nextPutAll: ' bytes)' ]! !

!MaSerializedGraphBuffer methodsFor: 'private creation' stamp: 'cmm 10/21/2004 12:52'!
newPremadeBuffers

	^MaObjectBuffer bufferClasses collect: [ :each | each new ]
! !

!MaSerializedGraphBuffer class methodsFor: 'creation' stamp: 'cmm 5/1/2005 22:27'!
byteArray: aByteArray

	^ self new
		byteArray: aByteArray ;
		yourself! !

!MaSerializedGraphBuffer class methodsFor: 'creation'!
new: anInteger

	^self new resetByteArray: (ByteArray new: anInteger)
! !

!MaSerializedGraphBuffer class methodsFor: 'accessing' stamp: 'cmm 6/10/2009 11:35'!
doubleSizeWarningThreshold
	self sizeWarningThreshold: self sizeWarningThreshold * 2! !

!MaSerializedGraphBuffer class methodsFor: 'accessing' stamp: 'cmm 9/22/2002 23:52'!
headerSize
	"header only has 32-bit integer representing the physicalSize of my byteArray that holds the entire serialized graph."

	^4! !

!MaSerializedGraphBuffer class methodsFor: 'accessing' stamp: 'cmm 8/8/2011 21:26'!
initialize
	super initialize.
	self sizeWarningThreshold: 100000000! !

!MaSerializedGraphBuffer class methodsFor: 'accessing' stamp: 'cmm 6/10/2009 09:33'!
sizeWarningThreshold
	^ SizeWarningThreshold! !

!MaSerializedGraphBuffer class methodsFor: 'accessing' stamp: 'cmm 6/10/2009 09:34'!
sizeWarningThreshold: anInteger 
	SizeWarningThreshold _ anInteger! !

!MaSerializedGraphBuffer class methodsFor: 'accessing' stamp: 'cmm 9/18/2014 14:46'!
unreasonablePhysicalSize
	"An arbitrary limit at this time, we need *something* to check to prevent unreasonable allocation attempts."
	^ 150000000! !

!MaTraverseProxyNotification methodsFor: 'accessing' stamp: 'cmm 11/20/2016 16:53'!
path
	^ path! !

!MaTraverseProxyNotification methodsFor: 'accessing' stamp: 'cmm 1/30/2005 20:27'!
proxy
	^ proxy! !

!MaTraverseProxyNotification methodsFor: 'initialize-release' stamp: 'cmm 11/22/2016 14:33'!
setPath: anOrderedCollection proxy: aMaMutatingProxy
	path _ anOrderedCollection.
	proxy _ aMaMutatingProxy! !

!MaTraverseProxyNotification class methodsFor: 'create' stamp: 'cmm 11/22/2016 14:37'!
path: anOrderedCollection proxy: aMaMutatingProxy 
	^ self new
		setPath: anOrderedCollection
		proxy: aMaMutatingProxy ;
		yourself! !

!ProtoObject methodsFor: '*ma-serializer-core' stamp: 'cmm 1/16/2005 13:39'!
maAsStorageObject
	"Some objects should be converted to another object before being stored
	in a buffer."

	^self
! !

!ProtoObject methodsFor: '*ma-serializer-core' stamp: 'cmm 1/16/2005 14:26'!
maBufferInstSize
	"Answer the number of pointers to other objects I logically have (which can be fewer than the number of physical pointers due to implementation of extra growth-space)."
	^ self maInstSize! !

!ProtoObject methodsFor: '*ma-serializer-core' stamp: 'cmm 2/17/2014 16:27'!
maGraphDo: threeArgBlock 
	self
		maGraphDo: threeArgBlock
		using: MaObjectGraphTraversalStrategy newTraverseNoBytesNoGlobals! !

!ProtoObject methodsFor: '*ma-serializer-core' stamp: 'cmm 3/22/2010 18:25'!
maGraphDo: threeArgBlock using: anObjectTraversalStrategy
	"Walk the receiver and all of its variables valuing threeArgBlock.  The first argument is an OrderedCollection of the objects leading to the current object, including the current object, the second argument is the parent of the current object (second to last in the path).  The third argument is the index or key object required to send instVarAt: to access the current object (except for Dictionaries, in which the key may not be an Integer.  All arguments are in their substituted form."
	nil
		maValueGraphNode: self 
		index: 0
		using: anObjectTraversalStrategy 
		with: threeArgBlock
		path: OrderedCollection new 
		with: MaIdentitySet new! !

!ProtoObject methodsFor: '*ma-serializer-core' stamp: 'cmm 11/8/2014 12:24'!
maGraphDo: aBlock using: aObjectTraversalStrategy path: path with: alreadyVisitedSet
	"If this implementation changes, be sure to check subclasses below Collection which needed to copy this implementation."
	1
		to: self maInstSize
		do:
			[ :varIndex |
			self
				maValueGraphNode: (self slotAt: varIndex)
				index: varIndex
				using: aObjectTraversalStrategy
				with: aBlock
				path: path
				with: alreadyVisitedSet ]
! !

!ProtoObject methodsFor: '*ma-serializer-core' stamp: 'cmm 1/16/2005 13:56'!
maGraphWhere: threeArgConditionBlock do: threeArgBlock

	| strategy |

	strategy _ MaObjectGraphTraversalStrategy new traverseWhen: threeArgConditionBlock.
	self
		maGraphDo: threeArgBlock
		using: strategy
! !

!ProtoObject methodsFor: '*ma-serializer-core' stamp: 'cmm 1/16/2005 14:03'!
maInstSize
	"Answer the number of named and indexed instance variables referenced by
	the receiver."

	^self class instSize + self basicSize
! !

!ProtoObject methodsFor: '*ma-serializer-core' stamp: 'cmm 1/16/2005 18:07'!
maIsForwardingProxy

	^ false! !

!ProtoObject methodsFor: '*ma-serializer-core' stamp: 'cmm 1/16/2005 14:28'!
maIsHashedCollection

	^false
! !

!ProtoObject methodsFor: '*ma-serializer-core' stamp: 'cmm 1/25/2005 21:54'!
maIsMutatingProxy

	^ false! !

!ProtoObject methodsFor: '*ma-serializer-core' stamp: 'cmm 7/29/2011 09:56'!
maIsTransient: varIndex 
	"Answers whether my object referenced at varIndex should be serialized."
	| transients |
	varIndex = 0 "root object" ifTrue: [ ^ false ].
	varIndex > self class instSize ifTrue: [ ^ false ].
	transients _ self maTransientVariables.
	transients ifEmpty: [ ^ false ].
	^ transients includes: (self class maAllInstVarNamesAt: varIndex)! !

!ProtoObject methodsFor: '*ma-serializer-core' stamp: 'cmm 12/12/2016 22:11'!
maSelectPreMadeObjectBufferFrom: aMaObjectSerializer 
	| cl |
	cl _ self class.
	cl isBytes ifTrue: [ ^ aMaObjectSerializer preMadeByteObjectBuffer ].
	(cl isWords and: [ cl isPointers not ]) ifTrue: [ ^ aMaObjectSerializer preMadeVariableWordBuffer ].
	cl maIsLogicallyVariable ifTrue: [ ^ aMaObjectSerializer preMadeVariableObjectBuffer ].
	^ aMaObjectSerializer preMadeFixedObjectBuffer! !

!ProtoObject methodsFor: '*ma-serializer-core' stamp: 'cmm 4/10/2005 18:00'!
maSerializationClass
	"For WriteBarrier support."

	^self maOriginalClass! !

!ProtoObject methodsFor: '*ma-serializer-core' stamp: 'cmm 1/16/2005 17:58'!
maShouldAppendWithPath: path parent: parent index: indexInteger
	^ parent isNil
	or:
		[ self maRequiresOwnBuffer
		and: [ (parent maIsTransient: indexInteger) not ] ]! !

!ProtoObject methodsFor: '*ma-serializer-core' stamp: 'cmm 12/12/2016 22:18'!
maShouldTraverseWithPath: path parent: parent index: indexInteger
	| cl |
	cl _ self class.
	cl isBytes ifTrue: [ ^ false ].
	(cl isVariable and: [ cl isPointers not ]) ifTrue: [ ^ false ].
	^ self maUsesStandardStorage
	and: [ (parent maIsTransient: indexInteger) not ]! !

!ProtoObject methodsFor: '*ma-serializer-core' stamp: 'cmm 1/16/2005 14:27'!
maSizeIn: aMaObjectBuffer
	"Answer the size of the buffer that contains the object references, excluding the header."

	^ self maBufferInstSize * aMaObjectBuffer slotSize! !

!ProtoObject methodsFor: '*ma-serializer-core' stamp: 'cmm 7/29/2011 09:51'!
maTransientVariables
	^ Array empty! !

!ProtoObject methodsFor: '*ma-serializer-core' stamp: 'cmm 2/3/2005 17:30'!
maUsesStandardStorage
	"Override this method to store a different externalized version of me."

	^ true! !

!ProtoObject methodsFor: '*ma-serializer-core' stamp: 'cmm 11/22/2016 14:37'!
maValueGraphNode: anObject index: anInteger using: aObjectTraversalStrategy with: aBlock path: path with: alreadyVisitedSet 
	| stepInto obj |
	anObject == nil ifTrue: [ ^ anObject ].
	(anObject maIsMutatingProxy and: [ anObject maRealObjectIsReified not ]) ifTrue:
		[ (MaTraverseProxyNotification path: path proxy: anObject) signal.
		^ self ].
	obj _ anObject realObjectIfMutatingProxy.
	(alreadyVisitedSet includes: obj) ifTrue: [ ^ obj ].
	path add: anObject.
	stepInto _ aObjectTraversalStrategy
		shouldTraverseIntoLastOf: path
		from: self
		index: anInteger.
	(aObjectTraversalStrategy
		shouldValueLastOf: path
		from: self
		index: anInteger) ifTrue:
		[ alreadyVisitedSet add: obj.
		"IMPORTANT, this needs to be here and not above.."
		aBlock
			value: path
			value: self
			value: anInteger ].
	stepInto ifTrue:
		[ obj
			maGraphDo: aBlock
			using: aObjectTraversalStrategy
			path: path
			with: alreadyVisitedSet ].
	path removeLast! !

!ProtoObject methodsFor: '*ma-serializer-core' stamp: 'cmm 1/16/2005 18:04'!
maWantsPostMaterialization
	"Most objects do not need any preserialization behavior, therefore this allows the serializer to avoid the overhead of withAllSuperclassesDo:."
	^ false! !

!ProtoObject methodsFor: '*ma-serializer-core' stamp: 'cmm 1/16/2005 18:04'!
maWantsPreSerialization
	"Most objects do not need any preserialization behavior, therefore this allows the serializer to avoid the overhead of withAllSuperclassesDo:."
	^ false! !

!ProtoObject methodsFor: '*ma-serializer-core' stamp: 'cmm 10/25/2010 13:09'!
realObjectIfMutatingProxy
	" If I am a MutatingProxy with a (cached) reified realObject, answer it. If I am a MutatingProxy without a reified realObject, invoke a session to materialize it.  Otherwise, answer myself."
	^ self! !

!ProtoObject methodsFor: '*ma-serializer-core' stamp: 'cmm 1/17/2014 14:03'!
realObjectIfReified
	"Only answer my realObject if its reified, otherwise nil."
	^ self! !

!ProtoObject class methodsFor: '*ma-serializer-core' stamp: 'cmm 7/29/2011 13:02'!
maIsLogicallyVariable
	"Answer whether, for ma serialization purposes, I am stored as a fixed or variable object."
	^ false! !

!Object methodsFor: '*ma-serializer-core' stamp: 'cmm 5/23/2013 21:56'!
as32BitFloatIfFloat
	^ self! !

!Object methodsFor: '*ma-serializer-core' stamp: 'cmm 11/10/2014 10:30'!
maEstablishPointerReferencesFor: aMaVariableObjectBuffer using: aMaObjectSerializer 
	self class isPointers ifFalse: [ "don't need to do this."	^ self ].
	1
		to: aMaVariableObjectBuffer objectInstSize
		do:
			[ : index | self
				slotAt: index
				put: (aMaObjectSerializer objectWithOid: (aMaVariableObjectBuffer maInstVarAt: index)) ]! !

!Object methodsFor: '*ma-serializer-core' stamp: 'cmm 5/28/2014 13:39'!
maIsEnvironment
	^ false! !

!Object methodsFor: '*ma-serializer-core' stamp: 'cmm 1/16/2005 23:51'!
maRequiresOwnBuffer
	"Answers false if the receiver has a special oid to represent it, such as nil, true, false and other immutables do."

	^ self class maInstancesRequireOwnBuffer! !

!Object methodsFor: '*ma-serializer-core' stamp: 'cmm 12/13/2016 17:29'!
maStreamBytesInto: aMaByteObjectBuffer for: aMaObjectSerializer 
	aMaByteObjectBuffer
		replaceFrom: 1
		to: self size
		with: self
		startingAt: 1! !

!Object methodsFor: '*ma-serializer-core' stamp: 'cmm 11/8/2014 12:25'!
maStreamVariablyInto: aMaVariableBuffer for: aMaObjectSerializer 
	"Put the receivers instance variables (both named and indexed) into aMaVariableObjectBuffer."
	1
		to: self maInstSize
		do:
			[ : index | aMaVariableBuffer
				maInstVarAt: index
				put: (aMaObjectSerializer oidFor: (self slotAt: index)) ]! !

!Object methodsFor: '*ma-serializer-core' stamp: 'cmm 11/10/2014 13:22'!
slotAt: anInteger 
	"Answer the object referenced by the receiver at its anInteger'th slot."
	| namedSize |
	^ anInteger > (namedSize_self class instSize)
		ifTrue: [ self basicAt: (anInteger-namedSize) ]
		ifFalse: [ self instVarAt: anInteger ]! !

!Object methodsFor: '*ma-serializer-core' stamp: 'cmm 11/10/2014 13:14'!
slotAt: anInteger put: anObject 
	"Flat slot-access."
	| namedSize |
	^ anInteger > (namedSize_self class instSize)
		ifTrue:
			[ self
				basicAt: anInteger-namedSize
				put: anObject ]
		ifFalse:
			[ self
				instVarAt: anInteger
				put: anObject ]! !

!Object methodsFor: '*ma-serializer-core' stamp: 'cmm 12/31/2015 13:54'!
wordAt: anInteger 
	^ self slotAt: anInteger! !

!Object methodsFor: '*ma-serializer-core' stamp: 'cmm 12/31/2015 13:58'!
wordAt: index put: value 
	^ self
		slotAt: index
		put: value! !

!Object class methodsFor: '*ma-serializer-core' stamp: 'cmm 6/11/2004 13:57'!
maInstancesRequireOwnBuffer
	^ true! !

!Object class methodsFor: '*ma-serializer-core' stamp: 'cmm 11/23/2004 12:47'!
maMaterializeFrom: aMaByteObjectBuffer using: aMaObjectSerializer
	"This is the standard-case for building a skeleton of a variable-byte-sized object."
	^ aMaByteObjectBuffer asByteObject: self! !

!Object class methodsFor: '*ma-serializer-core' stamp: 'cmm 8/1/2011 21:19'!
newSkeletonFor: aMaVariableObjectBuffer 
	"This is the standard-case for building a skeleton of a variably-sized object."
	^ self basicNew: aMaVariableObjectBuffer objectInstSize - self instSize! !

!Boolean class methodsFor: '*ma-serializer-core' stamp: 'cmm 6/11/2004 13:57'!
maInstancesRequireOwnBuffer

	^ false! !

!False methodsFor: '*ma-serializer-core'!
maOid

	^MaOidCalculator oidForFalse
! !

!True methodsFor: '*ma-serializer-core'!
maOid

	^MaOidCalculator oidForTrue
! !

!Color methodsFor: '*ma-serializer-core' stamp: 'cmm 8/29/2011 20:13'!
maTransientVariables
	^ #('cachedDepth' 'cachedBitPattern')! !

!UndefinedObject methodsFor: '*ma-serializer-core' stamp: 'cmm 2/24/2011 20:05'!
fileInMaSerializedObjectFromStream: aReadStream 
	^ MaObjectSerializer objectFromStream: aReadStream! !

!UndefinedObject methodsFor: '*ma-serializer-core' stamp: 'cmm 3/12/2010 17:53'!
maMaterializeFromGraph: aByteArray using: aMaObjectSerializer 
	^ Smalltalk! !

!UndefinedObject methodsFor: '*ma-serializer-core'!
maOid
	^MaOidCalculator oidForNil! !

!UndefinedObject class methodsFor: '*ma-serializer-core' stamp: 'cmm 6/11/2004 13:57'!
maInstancesRequireOwnBuffer

	^ false! !

!Behavior methodsFor: '*ma-serializer-core' stamp: 'cmm 12/2/2004 15:27'!
maAllInstVarNamesAt: anInteger

	| x |
	x _ 0.
	self maAllInstVarNamesDo:
		[ : each | 
		x _ x + 1.
		x = anInteger ifTrue: [ ^ each ] ].
	self error: 'Index out of bounds:  ', anInteger printString! !

!Behavior methodsFor: '*ma-serializer-core' stamp: 'cmm 5/2/2005 15:24'!
maAsStorageObject

	^ MaClassReference className: self theNonMetaClass name! !

!Behavior methodsFor: '*ma-serializer-core' stamp: 'cmm 5/2/2005 15:18'!
maUsesStandardStorage

	^ false! !

!Behavior methodsFor: '*ma-serializer-core' stamp: 'cmm 5/2/2005 15:18'!
maWantsPreSerialization
	^ true! !

!Class methodsFor: '*ma-serializer-core' stamp: 'cmm 10/27/2004 22:53'!
maSerializationClass

	^ Class! !

!Class class methodsFor: '*ma-serializer-core' stamp: 'cmm 5/2/2005 14:21'!
maMaterializeFromGraph: aByteArray using: aMaObjectSerializer

	| classReference |
	classReference _ aMaObjectSerializer materializeGraph: aByteArray.
	^ (aMaObjectSerializer classIdManager classDefinitionsForId: classReference id) last
		ensureClassUsing: aMaObjectSerializer! !

!Metaclass methodsFor: '*ma-serializer-core' stamp: 'cmm 10/27/2004 22:57'!
maInstancesRequireOwnBuffer

	^ true! !

!Metaclass methodsFor: '*ma-serializer-core' stamp: 'cmm 10/27/2004 22:53'!
maSerializationClass

	^ Metaclass! !

!Metaclass class methodsFor: '*ma-serializer-core' stamp: 'cmm 5/2/2005 14:22'!
maMaterializeFromGraph: aByteArray using: aMaObjectSerializer

	^ (Class
		maMaterializeFromGraph: aByteArray
		using: aMaObjectSerializer) class! !

!BasicClassOrganizer methodsFor: '*ma-serializer-core' stamp: 'cmm 2/4/2005 00:19'!
maAsStorageObject 

	^ self maUsesStandardStorage
		ifTrue: [ super maAsStorageObject ]
		ifFalse: [ DiskProxy global: self subject name selector: #organization args: #() ]! !

!BasicClassOrganizer methodsFor: '*ma-serializer-core' stamp: 'cmm 2/4/2005 00:17'!
maUsesStandardStorage 

	^ (self hasSubject and: [ self subject isKindOf: Class ]) not! !

!BasicClassOrganizer class methodsFor: '*ma-serializer-core' stamp: 'cmm 5/2/2005 10:13'!
maMaterializeFromGraph: aByteArray using: aMaObjectSerializer
	"This method exists to mirror the logic in my instance-side #objectForDataStream:, whereby if the organizer being stored has a normal Class subect, a DiskProxy is stored instead.  For Ma object serialization, this was done on my instance-side in #maAsStorageObject.  If I was not stored as the DiskProxy, then I would not get to this method."

	| diskProxy |
	diskProxy _ aMaObjectSerializer materializeGraph: aByteArray.
	^ diskProxy comeFullyUpOnReload: nil! !

!SystemOrganizer methodsFor: '*ma-serializer-core' stamp: 'cmm 3/1/2012 21:32'!
maAsStorageObject 
	^ String empty! !

!SystemOrganizer methodsFor: '*ma-serializer-core' stamp: 'cmm 2/4/2005 17:13'!
maUsesStandardStorage 
	^ false! !

!SystemOrganizer class methodsFor: '*ma-serializer-core' stamp: 'cmm 5/2/2005 10:16'!
maMaterializeFromGraph: aByteArray using: aMaObjectSerializer
	"A simpler, alternative way to store a direct global reference than using DiskProxy."

	^ SystemOrganization! !

!Float methodsFor: '*ma-serializer-core' stamp: 'cmm 6/18/2013 16:31'!
as32BitFloatIfFloat
	^ Float fromIEEE32Bit: self asIEEE32BitWord! !

!Float methodsFor: '*ma-serializer-core' stamp: 'cmm 8/8/2002 23:05'!
maOid

	^MaOidCalculator oidForFloat: self! !

!Float class methodsFor: '*ma-serializer-core' stamp: 'cmm 6/11/2004 13:57'!
maInstancesRequireOwnBuffer

	^ false! !

!LargePositiveInteger class methodsFor: '*ma-serializer-core' stamp: 'cmm 12/14/2016 21:59'!
maMaterializeFrom: aMaByteObjectBuffer using: aMaObjectSerializer 
	^ (aMaByteObjectBuffer asByteObject: self) normalize! !

!SmallInteger methodsFor: '*ma-serializer-core' stamp: 'cmm 12/13/2016 17:43'!
asLegacyLargeInteger
	^ (self
		between: -1073741824
		and: 1073741823)
		ifTrue: [ self ]
		ifFalse:
			[ | number |
			number _ Integer
				new: self digitLength
				neg: self negative.
			1
				to: self digitLength
				do:
					[ : n | number
						digitAt: n
						put: (self digitAt: n) ].
			number ]! !

!SmallInteger methodsFor: '*ma-serializer-core' stamp: 'cmm 12/13/2016 16:54'!
maInstSize
	^ (self between: -1073741824 and: 1073741823)
		ifTrue: [ 0 ]
		ifFalse: [ self digitLength ]! !

!SmallInteger methodsFor: '*ma-serializer-core'!
maOid

	^MaOidCalculator oidForInteger: self
! !

!SmallInteger methodsFor: '*ma-serializer-core' stamp: 'cmm 12/13/2016 17:39'!
maRequiresOwnBuffer
	^ (self
		between: -1073741824
		and: 1073741823) not! !

!SmallInteger methodsFor: '*ma-serializer-core' stamp: 'cmm 12/13/2016 16:55'!
maSelectPreMadeObjectBufferFrom: aMaObjectSerializer 
	^ (self
		between: -1073741824
		and: 1073741823)
		ifTrue: [ aMaObjectSerializer preMadeFixedObjectBuffer ]
		ifFalse: [ "For backward compatibility with legacy Magma from 64-bit images."
			aMaObjectSerializer preMadeByteObjectBuffer ]! !

!SmallInteger methodsFor: '*ma-serializer-core' stamp: 'cmm 12/13/2016 16:49'!
maSerializationClass
	^ self > 1073741823
		ifTrue: [ LargePositiveInteger ]
		ifFalse:
			[ self < -1073741824
				ifTrue: [ LargeNegativeInteger ]
				ifFalse: [ SmallInteger ] ]! !

!SmallInteger methodsFor: '*ma-serializer-core' stamp: 'cmm 12/13/2016 18:06'!
maShouldTraverseWithPath: path parent: parent index: indexInteger
	^ false! !

!SmallInteger methodsFor: '*ma-serializer-core' stamp: 'cmm 12/13/2016 17:49'!
maStreamBytesInto: aMaByteObjectBuffer for: aMaObjectSerializer 
	| legacyRepresentation |
	legacyRepresentation _ self asLegacyLargeInteger.
	aMaByteObjectBuffer
		replaceFrom: 1
		to: legacyRepresentation digitLength
		with: legacyRepresentation
		startingAt: 1! !

!SmallInteger class methodsFor: '*ma-serializer-core' stamp: 'cmm 12/12/2016 22:22'!
legacyMaxVal
	^ 1073741823! !

!SmallInteger class methodsFor: '*ma-serializer-core' stamp: 'cmm 12/13/2016 16:46'!
legacyMinVal
	^ -1073741824! !

!SmallInteger class methodsFor: '*ma-serializer-core' stamp: 'cmm 6/11/2004 13:57'!
maInstancesRequireOwnBuffer

	^ false! !

!SmallInteger class methodsFor: '*ma-serializer-core' stamp: 'cmm 6/2/2004 16:54'!
maMaterializeFrom: aMaByteObjectBuffer using: aMaObjectSerializer

	^MaOidCalculator
		objectWithOid: aMaByteObjectBuffer oid
		ifNone: [ self error: aMaByteObjectBuffer , ' is not a buffer for a SmallInteger.' ]
! !

!Association methodsFor: '*ma-serializer-core' stamp: 'cmm 2/4/2005 00:13'!
maAsStorageObject
	"I am about to be serialized into a ByteArray.  If I am a known global, write a proxy that will hook up with the same resource in the destination system.  This behavior emulates what Association>>#objectForDataStream: does."

	^ self maUsesStandardStorage 
		ifTrue: [ self ]
		ifFalse:
			[ DiskProxy
				global: #Smalltalk selector: #associationOrUndeclaredAt: 
				args: (Array with: key) ]! !

!Association methodsFor: '*ma-serializer-core' stamp: 'cmm 4/22/2018 20:59'!
maUsesStandardStorage

	^ (Smalltalk globals associationAt: key ifAbsent: [nil]) ~~ self! !

!Association class methodsFor: '*ma-serializer-core' stamp: 'cmm 5/2/2005 10:13'!
maMaterializeFromGraph: aByteArray using: aMaObjectSerializer
	"This method exists to mirror the logic in Association>>#objectForDataStream, whereby if the Array being stored is a Smalltalk global, a DiskProxy is stored instead.  For Ma object serialization, this was done on my instance-side in #maAsStorageObject.  If I was not stored as the DiskProxy, then I would not get to this method."

	| diskProxy |
	diskProxy _ aMaObjectSerializer materializeGraph: aByteArray.
	^ diskProxy comeFullyUpOnReload: nil! !

!Character methodsFor: '*ma-serializer-core'!
maOid

	^MaOidCalculator oidForCharacter: self
! !

!Character class methodsFor: '*ma-serializer-core' stamp: 'cmm 6/11/2004 13:57'!
maInstancesRequireOwnBuffer

	^ false! !

!BlockClosure methodsFor: '*ma-serializer-core' stamp: 'cmm 5/28/2014 16:30'!
references
self maMarked: 'delete'.
	^ Array streamContents:
		[ : stream | self referencesDo:
			[ : each | stream nextPut: each ] ]! !

!BlockClosure methodsFor: '*ma-serializer-core' stamp: 'cmm 4/16/2018 20:17'!
referencesDo: aBlock 
	"Traverse my contexts and their blocks and value aBlock their inst-vars."
	self
		maGraphWhere:
			[ : path : parent : index | | node |
			node _ path last.
			node isBlock or:
				[ node isMethodContext or:
					[ parent isMethodContext and: [ index >= 6 "only traverse the receiver and indexed inst-vars" ] ] ] ]
		do:
			[ : path : parent : index | path last == self ifFalse: [ aBlock value: path last ] ]! !

!MethodContext methodsFor: '*ma-serializer-core' stamp: 'jpb 5/7/2021 00:56:28'!
maEquivalentForSerializationTest: aMethodContext using: anIdentityKeyDictionary halt: aBoolean 
	aMethodContext privRefresh.
	^ super
		maEquivalentForSerializationTest: aMethodContext
		using: anIdentityKeyDictionary
		halt: aBoolean! !

!MethodContext methodsFor: '*ma-serializer-core' stamp: 'jpb 5/7/2021 00:56:14'!
maSelectPreMadeObjectBufferFrom: aMaObjectSerializer 
	^ aMaObjectSerializer preMadeMethodContextBuffer! !

!MethodContext methodsFor: '*ma-serializer-core' stamp: 'jpb 5/7/2021 00:56:02'!
maTransientVariables 
	^ super maTransientVariables , #('closureOrNil' 'receiver')! !

!MethodContext methodsFor: '*ma-serializer-core' stamp: 'jpb 5/7/2021 00:55:32'!
maWantsPostMaterialization 
	^ true! !

!MethodContext methodsFor: '*ma-serializer-core' stamp: 'jpb 5/7/2021 00:55:47'!
maWantsPreSerialization 
	^ true! !

!Pragma methodsFor: '*ma-serializer-core' stamp: 'cmm 9/17/2006 12:46'!
maCopyAndDisconnect
	^ self copy
		setMethod: nil ;
		yourself! !

!ProcessorScheduler methodsFor: '*ma-serializer-core' stamp: 'cmm 3/1/2012 21:31'!
maAsStorageObject
	"We don't even need to store the name of the global.  It's class
	gives it away."
	^ String empty! !

!ProcessorScheduler methodsFor: '*ma-serializer-core' stamp: 'cmm 11/29/2004 11:01'!
maUsesStandardStorage

	^ false! !

!ProcessorScheduler class methodsFor: '*ma-serializer-core' stamp: 'cmm 5/2/2005 10:16'!
maMaterializeFromGraph: aByteArray using: aMaObjectSerializer

	^ Processor! !

!String methodsFor: '*ma-serializer-core' stamp: 'cmm 12/1/2004 23:02'!
maInstSize
	"Override from Object because this is many times faster."
	^ self size! !

!Symbol class methodsFor: '*ma-serializer-core' stamp: 'cmm 11/23/2004 12:47'!
maMaterializeFrom: aMaByteObjectBuffer using: aMaObjectSerializer
	"This is the standard-case for building a skeleton of a variable-byte-sized object."
	^ aMaByteObjectBuffer asString asSymbol! !

!Array methodsFor: '*ma-serializer-core' stamp: 'cmm 2/3/2005 23:27'!
maAsStorageObject
	"I am about to be written on an object file.  If I am one of two shared global arrays, write a proxy instead."

	"Note this behavior copied from Array>>#objectForDataStream:."
	self == (TextConstants at: #DefaultTabsArray)
		ifTrue: [ ^ DiskProxy global: #TextConstants selector: #at: args: #(DefaultTabsArray) ].
	self == (TextConstants at: #DefaultMarginTabsArray)
		ifTrue: [ ^ DiskProxy global: #TextConstants selector: #at: args: #(DefaultMarginTabsArray) ].
	^ super maAsStorageObject! !

!Array methodsFor: '*ma-serializer-core' stamp: 'cmm 12/1/2004 23:10'!
maInstSize
	"Override from Object because this is considerably faster."
	^ self size! !

!Array methodsFor: '*ma-serializer-core' stamp: 'cmm 6/27/2005 15:12'!
maUsesStandardStorage

	^ self ~~ (TextConstants at: #DefaultTabsArray)
	and: [ self ~~ (TextConstants at: #DefaultMarginTabsArray) ]! !

!Array methodsFor: '*ma-serializer-core' stamp: 'cmm 11/10/2014 12:42'!
slotAt: index 
	"Clone of Object>>#at: for speed."
	<primitive: 60>
	index isInteger ifTrue:
		[self class isVariable
			ifTrue: [self errorSubscriptBounds: index]
			ifFalse: [self errorNotIndexable]].
	index isNumber
		ifTrue: [^self at: index asInteger]
		ifFalse: [self errorNonIntegerIndex]! !

!Array class methodsFor: '*ma-serializer-core' stamp: 'cmm 5/2/2005 10:13'!
maMaterializeFromGraph: aByteArray using: aMaObjectSerializer
	"This method exists to mirror the logic in Array>>#objectForDataStream, whereby if the Array being stored is one of two special global Array's, a DiskProxy is stored instead.  For Ma object serialization, this was done on my instance-side in #maAsStorageObject.  If I was not stored as the DiskProxy, then I would not get to this method."

	| diskProxy |
	diskProxy _ aMaObjectSerializer materializeGraph: aByteArray.
	^ diskProxy comeFullyUpOnReload: nil! !

!ByteArray methodsFor: '*ma-serializer-core' stamp: 'cmm 12/1/2004 23:02'!
maInstSize
	"Override from Object because this is many times faster."
	^ self size! !

!CompiledMethod methodsFor: '*ma-serializer-core' stamp: 'cmm 4/15/2013 21:08'!
fixForWriteBarrier
	"When using the Compiler to evaluate an expression for an object which is behind write-barrier, be sure the last literal of the CM is the Association for the receiver's *original* class, so that we don't put a class name ending with '*' into the classDefinitions."
	| lit |
	(lit _ self literalAt: self numLiterals) in:
		[ : assoc | (assoc isVariableBinding and: [ assoc value isBehavior ]) ifTrue:
			[ | originalClass |
			originalClass _ assoc value theNonWriteBarrierClass.
			[ lit
				 key: originalClass name ;
				 value: originalClass ]
				on: AttemptToWriteReadOnlyGlobal
				do: [ : err | err resume: true ] ] ]! !

!CompiledMethod methodsFor: '*ma-serializer-core' stamp: 'cmm 7/30/2011 21:50'!
maBytesSize
	"Answer the size of the byte-portion of me, including the trailer bytes.  This is the number that is needed in the first argument of #newMethod:header: to reconstruct a new, CompiledMethod equivalent to me."
	^ self basicSize - self initialPC + 1! !

!CompiledMethod methodsFor: '*ma-serializer-core' stamp: 'cmm 5/1/2014 20:42'!
maEquivalentForSerializationTest: method using: alreadyComparedDictionary halt: shouldHalt 
	^ self = method! !

!CompiledMethod methodsFor: '*ma-serializer-core' stamp: 'cmm 7/30/2011 21:17'!
maGraphDo: aBlock using: aObjectTraversalStrategy path: path with: alreadyVisitedSet
	"If this implementation changes, be sure to check subclasses below Collection which needed to copy this implementation."
	1
		to: self maInstSize
		do:
			[ :varIndex |
			self
				maValueGraphNode: (self literalAt: varIndex)
				index: varIndex
				using: aObjectTraversalStrategy
				with: aBlock
				path: path
				with: alreadyVisitedSet ]
! !

!CompiledMethod methodsFor: '*ma-serializer-core' stamp: 'cmm 7/30/2011 12:24'!
maInstSize
	^ self numLiterals! !

!CompiledMethod methodsFor: '*ma-serializer-core' stamp: 'cmm 12/12/2016 22:09'!
maSelectPreMadeObjectBufferFrom: aMaObjectSerializer 
	^ aMaObjectSerializer preMadeCompiledMethodBuffer! !

!CompiledMethod methodsFor: '*ma-serializer-core' stamp: 'cmm 12/12/2016 22:17'!
maShouldTraverseWithPath: path parent: parent index: indexInteger
	^ true! !

!CompiledMethod methodsFor: '*ma-serializer-core' stamp: 'cmm 7/30/2011 15:53'!
maSizeIn: aMaObjectBuffer 
	^ (super maSizeIn: aMaObjectBuffer) + self maBytesSize! !

!CompiledMethod methodsFor: '*ma-serializer-core' stamp: 'cmm 6/12/2012 22:42'!
maWantsPreSerialization 
	^ true! !

!FloatArray methodsFor: '*ma-serializer-core' stamp: 'cmm 11/11/2014 14:16'!
slotAt: index
	"Clone of #at:.  Overridden for speed."
	<primitive: 'primitiveAt' module: 'FloatArrayPlugin'>
	^Float fromIEEE32Bit: (self basicAt: index)! !

!FloatArray methodsFor: '*ma-serializer-core' stamp: 'cmm 11/10/2014 12:15'!
slotAt: index put: value
	<primitive: 'primitiveAtPut' module: 'FloatArrayPlugin'>
	value isFloat 
		ifTrue:[self basicAt: index put: value asIEEE32BitWord]
		ifFalse:[self at: index put: value asFloat].
	^value! !

!FloatArray methodsFor: '*ma-serializer-core' stamp: 'cmm 12/31/2015 13:54'!
wordAt: anInteger 
	^ (self slotAt: anInteger) asIEEE32BitWord! !

!FloatArray methodsFor: '*ma-serializer-core' stamp: 'cmm 12/31/2015 13:58'!
wordAt: index put: value
	^ self slotAt: index put: (Float fromIEEE32Bit: value)! !

!IntegerArray methodsFor: '*ma-serializer-core' stamp: 'cmm 11/10/2014 12:45'!
slotAt: index
	"clone of #at: for speed and compatibility."
	| word |
	<primitive: 165>
	word _ self basicAt: index.
	word < 16r3FFFFFFF ifTrue:[^word]. "Avoid LargeInteger computations"
	^word >= 16r80000000	"Negative?!!"
		ifTrue:["word - 16r100000000"
				(word bitInvert32 + 1) negated]
		ifFalse:[word]! !

!IntegerArray methodsFor: '*ma-serializer-core' stamp: 'cmm 11/10/2014 12:45'!
slotAt: index put: anInteger
	"Clone of #at:put: for speed and compatibility."
	| word |
	<primitive: 166>
	anInteger < 0
		ifTrue:[anInteger < -16r80000000 ifTrue: [self error: anInteger asString , ' out of range'].
				"word _ 16r100000000 + anInteger"
				word _ (anInteger + 1) negated bitInvert32]
		ifFalse:[anInteger > 16r7FFFFFFF ifTrue: [self error: anInteger asString , ' out of range'].
				word _ anInteger].
	self  basicAt: index put: word.
	^anInteger! !

!Bitmap methodsFor: '*ma-serializer-core' stamp: 'cmm 11/7/2004 22:54'!
maAsStorageObject

	^ self compressToByteArray! !

!Bitmap methodsFor: '*ma-serializer-core' stamp: 'cmm 11/29/2004 11:00'!
maUsesStandardStorage

	^ false! !

!Bitmap class methodsFor: '*ma-serializer-core' stamp: 'cmm 5/3/2005 11:44'!
maMaterializeFromGraph: aByteArray using: aMaObjectSerializer

	| compressedByteArray |
	compressedByteArray _ aMaObjectSerializer materializeGraph: aByteArray.
	^ self decompressFromByteArray: compressedByteArray! !

!Set methodsFor: '*ma-serializer-core' stamp: 'cmm 12/1/2004 22:55'!
maBufferInstSize

	^ self size! !

!Set methodsFor: '*ma-serializer-core' stamp: 'cmm 9/16/2014 18:18'!
maEstablishPointerReferencesFor: aMaVariableObjectBuffer using: aMaObjectSerializer 
	1
		to: aMaVariableObjectBuffer objectInstSize
		do:
			[ : index | self maDirtyAdd: (aMaObjectSerializer objectWithOid: (aMaVariableObjectBuffer maInstVarAt: index)) ]! !

!Set methodsFor: '*ma-serializer-core' stamp: 'cmm 12/2/2004 17:29'!
maGraphDo: aBlock using: aObjectTraversalStrategy path: path with: alreadyVisitedSet
	"Sets and Dictionary's are enumerated logically."
	| varIndex |
	varIndex _ 1.
	self do:
		[ :each |
		self
			maValueGraphNode: each
			index: varIndex
			using: aObjectTraversalStrategy
			with: aBlock
			path: path
			with: alreadyVisitedSet.
		varIndex _ varIndex + 1 ]! !

!Set methodsFor: '*ma-serializer-core'!
maIsHashedCollection

	^true
! !

!Set methodsFor: '*ma-serializer-core' stamp: 'cmm 11/8/2014 12:24'!
maStreamVariablyInto: aMaVariableBuffer for: aMaObjectSerializer
	"Put the receivers instance variables into aMaVariableObjectBuffer as they fit."
	| index |
	index _ 1.
	self do:
		[ : eachLinkedObject |
		aMaVariableBuffer
			maInstVarAt: index
			put:
				(aMaVariableBuffer 
					numberToStoreFor: eachLinkedObject
					using: aMaObjectSerializer).
		index _ index + 1 ].
	Set instSize+1 "skip array and tally, they're taken care of logically, above."
		to: self maInstSize
		do:
			[ : namedIndex |
			aMaVariableBuffer
				maInstVarAt: index+namedIndex
				put: (aMaObjectSerializer oidFor: (self slotAt: namedIndex)) ]! !

!Set class methodsFor: '*ma-serializer-core' stamp: 'cmm 11/22/2004 16:08'!
maIsLogicallyVariable
	"Answer whether, for ma serialization purposes, I am stored as a fixed or variable object."
	^ true! !

!Set class methodsFor: '*ma-serializer-core' stamp: 'cmm 8/1/2011 21:17'!
newSkeletonFor: aMaVariableObjectBuffer 
	^ self new: aMaVariableObjectBuffer objectInstSize! !

!Dictionary methodsFor: '*ma-serializer-core' stamp: 'cmm 10/8/2014 22:47'!
maBufferInstSize
	^ (self size * 2) + "enough for other named instVars" self maInstSize - self class instSize "except tally and array"! !

!Dictionary methodsFor: '*ma-serializer-core' stamp: 'cmm 9/16/2014 15:21'!
maEstablishPointerReferencesFor: aMaVariableObjectBuffer using: aMaObjectSerializer 
	| transformer |
	transformer _ [ : oid | aMaObjectSerializer objectWithOid: oid ].
	1
		to: aMaVariableObjectBuffer objectInstSize
		by: 2
		do:
			[ : index | self maDirtyAdd:
				(self associationClass
					key: (transformer value: (aMaVariableObjectBuffer maInstVarAt: index))
					value: (transformer value: (aMaVariableObjectBuffer maInstVarAt: index + 1))) ]! !

!Dictionary methodsFor: '*ma-serializer-core' stamp: 'cmm 12/2/2004 17:29'!
maGraphDo: aBlock using: aObjectTraversalStrategy path: path with: alreadyVisitedSet

	| varIndex |

	varIndex _ 1.
	self keysAndValuesDo:
		[ : eachKey : eachValue |
		[ : obj |
			self
				maValueGraphNode: obj
				index: varIndex
				using: aObjectTraversalStrategy
				with: aBlock
				path: path
				with: alreadyVisitedSet.
			varIndex _ varIndex + 1 ]
				value: eachKey;
				value: eachValue ]! !

!Dictionary methodsFor: '*ma-serializer-core'!
maIsHashedCollection

	^true
! !

!Dictionary methodsFor: '*ma-serializer-core' stamp: 'cmm 11/10/2014 12:43'!
maStreamVariablyInto: aMaVariableObjectBuffer for: aMaObjectSerializer
	"Put the receivers instance variables into aMaVariableObjectBuffer."
	| index |
	index _ 1.
	self keysAndValuesDo:
		[ : eachKey : eachValue |
		[ : obj |
			aMaVariableObjectBuffer
				maInstVarAt: index
				put: (aMaObjectSerializer oidFor: obj).
			index _ index + 1 ]
				value: eachKey;
				value: eachValue ].
	"Now take care of additional named and/or indexed variables."
	3 "skip array and tally, they're taken care of logically, above."
		to: self maInstSize
		do:
			[ : namedIndex |
			aMaVariableObjectBuffer
				maInstVarAt: index + namedIndex
				put: (aMaObjectSerializer oidFor: (self slotAt: namedIndex)) ]! !

!Dictionary class methodsFor: '*ma-serializer-core' stamp: 'cmm 3/13/2010 16:09'!
maIsLogicallyVariable
	"Answer whether, for ma serialization purposes, I am stored as a fixed or variable object."
	^ true! !

!Dictionary class methodsFor: '*ma-serializer-core' stamp: 'cmm 8/2/2011 20:11'!
newSkeletonFor: aMaVariableObjectBuffer
	^ self new: aMaVariableObjectBuffer objectInstSize / 2 "key + value"! !

!SystemDictionary methodsFor: '*ma-serializer-core' stamp: 'cmm 3/1/2012 21:32'!
maAsStorageObject
	"We don't need to store the name of the global.  It's class gives it away."
	^ String empty! !

!SystemDictionary methodsFor: '*ma-serializer-core' stamp: 'cmm 11/29/2004 11:01'!
maUsesStandardStorage

	^ false! !

!SystemDictionary class methodsFor: '*ma-serializer-core' stamp: 'cmm 3/12/2010 17:55'!
maMaterializeFromGraph: aByteArray using: aMaObjectSerializer 
	"Keeping this as 'Smalltalk' instead of 'Smalltalk globals' for legacy compatibility with existing repositories and images."
	^ Smalltalk! !

!WeakSet methodsFor: '*ma-serializer-core' stamp: 'cmm 12/1/2004 22:55'!
maBufferInstSize

	^ self slowSize! !

!WeakSet methodsFor: '*ma-serializer-core' stamp: 'cmm 3/7/2005 14:43'!
maStreamVariablyInto: aMaVariableObjectBuffer for: aMaObjectSerializer
	"If a GC has happened since we set aMaVariableObjectBuffer's logicalSize then, upon materialization, it may try to load with 'garbage' oids because we load up to the number of logicalSize instVars (and the buffer would have garbage at those places).  Therefore, reset the logicalSize after populating."
	super
		maStreamVariablyInto: aMaVariableObjectBuffer
		for: aMaObjectSerializer.
	aMaVariableObjectBuffer physicalSize: (aMaVariableObjectBuffer physicalSizeFor: self)! !

!PositionableStream methodsFor: '*ma-serializer-core' stamp: 'cmm 4/12/2009 20:15'!
maBuffersDo: aBlock 
	[ self maNextBufferDo: aBlock ] whileTrue! !

!PositionableStream methodsFor: '*ma-serializer-core' stamp: 'cmm 12/24/2015 11:59'!
maNextBufferDo: aBlock 
	| remainingBytes header record recordSize |
	remainingBytes _ self size - self position.
	remainingBytes < 4 ifTrue: [ ^ false ].
	header _ self next: 4.
	self position: self position - 4.
	recordSize _ header 
"		maUint: MaSerializedGraphBuffer headerSize * 8 32"
		maUnsigned32At: 1.
	recordSize = 0 ifTrue: 
		[ "Normally, this shouldn't happen, but when loading from a ZipArchive member, someone changed it to come in from a MultiByteBinaryOrTextStream, which is not 100% compatible with StandardFileStream.  In some cases we end up with zero-bytes on the end of the file.."
		^ false ].
	remainingBytes >= recordSize ifFalse: [ ^ false ].
	record _ self next: recordSize.
	aBlock value: record.
	^ true! !

!Exception methodsFor: '*ma-serializer-core' stamp: 'cmm 12/4/2011 18:42'!
maTransientVariables
	^ #('signalContext' 'handlerContext' 'outerContext' 'signaler' )! !

!Form methodsFor: '*ma-serializer-core' stamp: 'cmm 12/8/2010 21:07'!
maCheckBits
	self unhibernate.
	bits _ bits realObjectIfMutatingProxy ! !

!Form methodsFor: '*ma-serializer-core' stamp: 'cmm 12/12/2010 19:53'!
maWantsPostMaterialization 
	^ true! !

!DisplayScreen methodsFor: '*ma-serializer-core' stamp: 'cmm 2/4/2005 12:42'!
maAsStorageObject
	"Emulate the same behavior as #objectForDataStream:."

	^ DiskProxy global: #Display selector: #yourself args: #()! !

!DisplayScreen methodsFor: '*ma-serializer-core' stamp: 'cmm 2/4/2005 12:42'!
maUsesStandardStorage 
	^ false! !

!DisplayScreen class methodsFor: '*ma-serializer-core' stamp: 'cmm 5/2/2005 10:14'!
maMaterializeFromGraph: aByteArray using: aMaObjectSerializer
	"This method exists to mirror the logic in my instance-side #objectForDataStream, whereby a DiskProxy is stored instead.  For Ma object serialization, this was done on my instance-side in #maAsStorageObject."

	| diskProxy |
	diskProxy _ aMaObjectSerializer materializeGraph: aByteArray.
	^ diskProxy comeFullyUpOnReload: nil! !

!AbstractFont class methodsFor: '*ma-serializer-core' stamp: 'cmm 8/5/2008 12:59'!
maMaterializeFromGraph: aByteArray using: aMaObjectSerializer
	"Materialize the DiskProxy which computes a reference to an appropriate StrikeFont in this materializing system."

	| diskProxy |
	diskProxy _ aMaObjectSerializer materializeGraph: aByteArray.
	^ diskProxy comeFullyUpOnReload: nil! !

!StrikeFont methodsFor: '*ma-serializer-core' stamp: 'cmm 2/4/2005 17:10'!
maAsStorageObject 

	^ DiskProxy
		global: #StrikeFont selector: #familyName:size:emphasized:
		args: { self familyName.  self height.  self emphasis }! !

!StrikeFont methodsFor: '*ma-serializer-core' stamp: 'cmm 2/4/2005 17:05'!
maUsesStandardStorage 

	^ false! !

!Morph methodsFor: '*ma-serializer-core' stamp: 'cmm 8/5/2011 13:30'!
maTransientVariables
	^ (owner == World "If serializing a live Morph in the world." or: [ self transientOwner ])
		ifTrue: [ #('owner') ]
		ifFalse: [ super maTransientVariables ]! !

!Morph methodsFor: '*ma-serializer-core' stamp: 'cmm 2/7/2005 21:55'!
maWantsPreSerialization
	^ true! !

!Morph methodsFor: '*ma-serializer-core' stamp: 'cmm 11/20/2010 17:47'!
transientOwner
	(self hasProperty: #transientOwner) ifFalse: [ ^ false ].
	^ self valueOfProperty: #transientOwner! !

!Morph methodsFor: '*ma-serializer-core' stamp: 'cmm 3/10/2012 17:43'!
transientOwner: aBoolean 
	aBoolean
		ifTrue:
			[ self
				setProperty: #transientOwner
				toValue: aBoolean ]
		ifFalse: [ self removeProperty: #transientOwner ]! !

!HandMorph methodsFor: '*ma-serializer-core' stamp: 'cmm 3/1/2012 21:30'!
maAsStorageObject
	"We don't yet support serialization of individual HandMorphs.  For now, we restore any HandMorph as a logical link to the ActiveHand."
	^ String empty! !

!HandMorph methodsFor: '*ma-serializer-core' stamp: 'cmm 11/29/2004 11:01'!
maUsesStandardStorage

	^ false! !

!HandMorph class methodsFor: '*ma-serializer-core' stamp: 'cmm 5/2/2005 10:15'!
maMaterializeFromGraph: aByteArray using: aMaObjectSerializer

	^ ActiveHand! !

!PasteUpMorph methodsFor: '*ma-serializer-core' stamp: 'cmm 2/22/2005 12:49'!
maTransientVariables

	^ super maTransientVariables, #('worldState')! !

!PasteUpMorph class methodsFor: '*ma-serializer-core' stamp: 'cmm 11/23/2004 12:52'!
maMaterializeFrom: aMaByteObjectBuffer using: aMaObjectSerializer

	^ World! !

!SystemWindow methodsFor: '*ma-serializer-core' stamp: 'cmm 2/22/2005 12:49'!
maTransientVariables

	^ super maTransientVariables, #( 'owner' )! !

!ChangeSet methodsFor: '*ma-serializer-core' stamp: 'cmm 2/3/2005 21:43'!
maAsStorageObject
	"While we can store ChangeSets and their CompiledMethods directly, a logical representation (i.e., my fileOut) is probably better.  Therefore, we file out me to a stream and keep that along with my name.  My code will NOT be automatically filed-in on materialization."

	| stream |
	stream _ ReadWriteStream on: String new.
	self fileOutOn: stream.
	stream position: 0.
	^ self name -> stream! !

!ChangeSet methodsFor: '*ma-serializer-core' stamp: 'cmm 2/3/2005 17:29'!
maUsesStandardStorage
	^ false! !

!ChangeSet class methodsFor: '*ma-serializer-core' stamp: 'cmm 8/22/2005 09:35'!
maMaterializeFromGraph: aByteArray using: aMaObjectSerializer
	"Materialize the association:  change set name -> the stream on which the change set was filed out.
	Signal the incoming chang-set notification and, if the user has written code to override the defaultAction, it will be filed in the name isn't already in use."
	| nameAndChangeSetAssociation changeSetName stream |
	nameAndChangeSetAssociation _ (aMaObjectSerializer materializeGraph: aByteArray).
	changeSetName _ nameAndChangeSetAssociation key.
	stream _ nameAndChangeSetAssociation value.
	^ (MaIncomingChangeSetNotification signal: 'Is it ok to file-in ', changeSetName) == true "default to false if they return with a non-boolean."
		ifTrue:
			[ ChangeSorter
				newChangesFromStream: stream
				named: changeSetName ]
		ifFalse: [ ChangeSorter existingOrNewChangeSetNamed: changeSetName ]! !
MaSerializerConstants initialize!
MaObjectBuffer initialize!
MaSerializedGraphBuffer initialize!
