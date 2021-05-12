'From Cuis 5.0 [latest update: #4579] on 12 May 2021 at 4:37:31 pm'!
'Description Package containing the magma server implementation

License: MIT
Original Author: Chris Muller (cmm)
Author: Josef Philip Bernhart (jpb)'!
!provides: 'Magma-Server' 1 20!
!requires: 'Ma-Client-Server-Core' 1 3 nil!
!requires: 'Ma-Statistics' 1 0 nil!
SystemOrganization addCategory: 'Magma-Server'!


!classDefinition: #MagmaPotentiallyOpenError category: 'Magma-Server'!
MagmaEnvironmentError subclass: #MagmaPotentiallyOpenError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Server'!
!classDefinition: 'MagmaPotentiallyOpenError class' category: 'Magma-Server'!
MagmaPotentiallyOpenError class
	instanceVariableNames: ''!

!classDefinition: #MagmaDeleteWarning category: 'Magma-Server'!
MagmaWarning subclass: #MagmaDeleteWarning
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Server'!
!classDefinition: 'MagmaDeleteWarning class' category: 'Magma-Server'!
MagmaDeleteWarning class
	instanceVariableNames: ''!

!classDefinition: #MagmaForwardRecoveryNeeded category: 'Magma-Server'!
MagmaWarning subclass: #MagmaForwardRecoveryNeeded
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Server'!
!classDefinition: 'MagmaForwardRecoveryNeeded class' category: 'Magma-Server'!
MagmaForwardRecoveryNeeded class
	instanceVariableNames: ''!

!classDefinition: #MagmaMissingCommitLogWarning category: 'Magma-Server'!
MagmaWarning subclass: #MagmaMissingCommitLogWarning
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Server'!
!classDefinition: 'MagmaMissingCommitLogWarning class' category: 'Magma-Server'!
MagmaMissingCommitLogWarning class
	instanceVariableNames: ''!

!classDefinition: #MagmaRollbackRecoveryNeeded category: 'Magma-Server'!
MagmaWarning subclass: #MagmaRollbackRecoveryNeeded
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Server'!
!classDefinition: 'MagmaRollbackRecoveryNeeded class' category: 'Magma-Server'!
MagmaRollbackRecoveryNeeded class
	instanceVariableNames: ''!

!classDefinition: #MagmaRecoveryNotification category: 'Magma-Server'!
MagmaNotification subclass: #MagmaRecoveryNotification
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Server'!
!classDefinition: 'MagmaRecoveryNotification class' category: 'Magma-Server'!
MagmaRecoveryNotification class
	instanceVariableNames: ''!

!classDefinition: #MaApplyRecord category: 'Magma-Server'!
MaRecoveryRecord subclass: #MaApplyRecord
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Server'!
!classDefinition: 'MaApplyRecord class' category: 'Magma-Server'!
MaApplyRecord class
	instanceVariableNames: ''!

!classDefinition: #MaApplyToFileRecord category: 'Magma-Server'!
MaApplyRecord subclass: #MaApplyToFileRecord
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Server'!
!classDefinition: 'MaApplyToFileRecord class' category: 'Magma-Server'!
MaApplyToFileRecord class
	instanceVariableNames: ''!

!classDefinition: #MaBeforeImageRecord category: 'Magma-Server'!
MaApplyToFileRecord subclass: #MaBeforeImageRecord
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Server'!
!classDefinition: 'MaBeforeImageRecord class' category: 'Magma-Server'!
MaBeforeImageRecord class
	instanceVariableNames: ''!

!classDefinition: #MaFileGrowthRecord category: 'Magma-Server'!
MaApplyToFileRecord subclass: #MaFileGrowthRecord
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Server'!
!classDefinition: 'MaFileGrowthRecord class' category: 'Magma-Server'!
MaFileGrowthRecord class
	instanceVariableNames: ''!

!classDefinition: #MaNewFileRecord category: 'Magma-Server'!
MaApplyToFileRecord subclass: #MaNewFileRecord
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Server'!
!classDefinition: 'MaNewFileRecord class' category: 'Magma-Server'!
MaNewFileRecord class
	instanceVariableNames: ''!

!classDefinition: #MaBeginApplyRecord category: 'Magma-Server'!
MaApplyRecord subclass: #MaBeginApplyRecord
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Server'!
!classDefinition: 'MaBeginApplyRecord class' category: 'Magma-Server'!
MaBeginApplyRecord class
	instanceVariableNames: ''!

!classDefinition: #MaEndApplyRecord category: 'Magma-Server'!
MaApplyRecord subclass: #MaEndApplyRecord
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Server'!
!classDefinition: 'MaEndApplyRecord class' category: 'Magma-Server'!
MaEndApplyRecord class
	instanceVariableNames: ''!

!classDefinition: #MaAtomicFileStream category: 'Magma-Server'!
MaObject subclass: #MaAtomicFileStream
	instanceVariableNames: 'filename fileStreams sizes guard uncommittedSize position writers pool'
	classVariableNames: 'MaxPhysicalFileSize'
	poolDictionaries: ''
	category: 'Magma-Server'!
!classDefinition: 'MaAtomicFileStream class' category: 'Magma-Server'!
MaAtomicFileStream class
	instanceVariableNames: ''!

!classDefinition: #MaAtomicFileWriter category: 'Magma-Server'!
MaObject subclass: #MaAtomicFileWriter
	instanceVariableNames: 'file filePos byteArray'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Server'!
!classDefinition: 'MaAtomicFileWriter class' category: 'Magma-Server'!
MaAtomicFileWriter class
	instanceVariableNames: ''!

!classDefinition: #MaFileStreamPool category: 'Magma-Server'!
MaObject subclass: #MaFileStreamPool
	instanceVariableNames: 'guard openStreams maxSize'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Server'!
!classDefinition: 'MaFileStreamPool class' category: 'Magma-Server'!
MaFileStreamPool class
	instanceVariableNames: ''!

!classDefinition: #MaLargeCollectionManager category: 'Magma-Server'!
MaObject subclass: #MaLargeCollectionManager
	instanceVariableNames: 'collection memberIndex repository'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Server'!
!classDefinition: 'MaLargeCollectionManager class' category: 'Magma-Server'!
MaLargeCollectionManager class
	instanceVariableNames: ''!

!classDefinition: #MagmaArrayManager category: 'Magma-Server'!
MaLargeCollectionManager subclass: #MagmaArrayManager
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Server'!
!classDefinition: 'MagmaArrayManager class' category: 'Magma-Server'!
MagmaArrayManager class
	instanceVariableNames: ''!

!classDefinition: #MagmaCollectionManager category: 'Magma-Server'!
MaLargeCollectionManager subclass: #MagmaCollectionManager
	instanceVariableNames: 'oidOfIndexesCollection lockedBy keyIndexesByAttribute oidIndexesByAttribute keyIndexes oidIndexes loadProcess loadExecutor wantsReleased'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Server'!
!classDefinition: 'MagmaCollectionManager class' category: 'Magma-Server'!
MagmaCollectionManager class
	instanceVariableNames: ''!

!classDefinition: #MaObjectFiler category: 'Magma-Server'!
MaObject subclass: #MaObjectFiler
	instanceVariableNames: 'directory file preMadeObjectBuffer filePositionIndex usedByteArrays primitiveAttributeAddressesMap magmaStatClassIds'
	classVariableNames: ''
	poolDictionaries: 'MaSerializerConstants'
	category: 'Magma-Server'!
!classDefinition: 'MaObjectFiler class' category: 'Magma-Server'!
MaObjectFiler class
	instanceVariableNames: ''!

!classDefinition: #MaObjectRepository category: 'Magma-Server'!
MaObject subclass: #MaObjectRepository
	instanceVariableNames: 'transactionLog sessions filer repositoryController largeCollectionManagers systemReadStrategy nextOid recoveryManager commitGuard applyProcess wantsToClose filePool flushGuard restoreMode'
	classVariableNames: 'EmergencyMemory SimulateOutage'
	poolDictionaries: 'MaSerializerConstants'
	category: 'Magma-Server'!
!classDefinition: 'MaObjectRepository class' category: 'Magma-Server'!
MaObjectRepository class
	instanceVariableNames: ''!

!classDefinition: #MaQueryExecutor category: 'Magma-Server'!
MaObject subclass: #MaQueryExecutor
	instanceVariableNames: 'expression collectionManager trunk trunkPosition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Server'!
!classDefinition: 'MaQueryExecutor class' category: 'Magma-Server'!
MaQueryExecutor class
	instanceVariableNames: ''!

!classDefinition: #MaRecoveryManager category: 'Magma-Server'!
MaObject subclass: #MaRecoveryManager
	instanceVariableNames: 'applyFile serializer preMadeRecords groupId commitNumber filesToDelete commitLogFile targetRecoveryTime logStartTime branchCode location repository logArchiveFrequency'
	classVariableNames: 'DefaultRecordSize'
	poolDictionaries: ''
	category: 'Magma-Server'!
!classDefinition: 'MaRecoveryManager class' category: 'Magma-Server'!
MaRecoveryManager class
	instanceVariableNames: ''!

!classDefinition: #MaTransactionLog category: 'Magma-Server'!
MaObject subclass: #MaTransactionLog
	instanceVariableNames: 'entries specialOids'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Server'!
!classDefinition: 'MaTransactionLog class' category: 'Magma-Server'!
MaTransactionLog class
	instanceVariableNames: ''!

!classDefinition: #MagmaCompressor category: 'Magma-Server'!
MaObject subclass: #MagmaCompressor
	instanceVariableNames: 'inputController referencedCollections referencedClasses sourceLocation outputFiler upgradeBlock process'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Server'!
!classDefinition: 'MagmaCompressor class' category: 'Magma-Server'!
MagmaCompressor class
	instanceVariableNames: ''!

!classDefinition: #MagmaFileTraverser category: 'Magma-Server'!
MaObject subclass: #MagmaFileTraverser
	instanceVariableNames: 'repositoryController oidsVisited graphBuffer directory objectCount'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Server'!
!classDefinition: 'MagmaFileTraverser class' category: 'Magma-Server'!
MagmaFileTraverser class
	instanceVariableNames: ''!

!classDefinition: #MagmaRepositoryController category: 'Magma-Server'!
MaObject subclass: #MagmaRepositoryController
	instanceVariableNames: 'repository session serverSerializer requestInterruptGuard localLocation preferences serverStatistics backupProcess'
	classVariableNames: 'ControllersGuard OpenControllers'
	poolDictionaries: ''
	category: 'Magma-Server'!
!classDefinition: 'MagmaRepositoryController class' category: 'Magma-Server'!
MagmaRepositoryController class
	instanceVariableNames: ''!

!classDefinition: #MagmaServerPreferences category: 'Magma-Server'!
MaObject subclass: #MagmaServerPreferences
	instanceVariableNames: 'attributes'
	classVariableNames: 'DebugRecovery'
	poolDictionaries: ''
	category: 'Magma-Server'!
!classDefinition: 'MagmaServerPreferences class' category: 'Magma-Server'!
MagmaServerPreferences class
	instanceVariableNames: ''!

!classDefinition: #MagmaServerConsole category: 'Magma-Server'!
ProtoObject subclass: #MagmaServerConsole
	instanceVariableNames: 'server controller'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Server'!
!classDefinition: 'MagmaServerConsole class' category: 'Magma-Server'!
MagmaServerConsole class
	instanceVariableNames: ''!


!MagmaPotentiallyOpenError commentStamp: 'cmm 1/15/2012 18:30' prior: 0!
A MagmaPotentiallyOpenError is a resumable error.  It does not inherit from Warning because it is too critical to allow a program which wants to resume any Warning automatically, forcing the user to handle MagmaPotentiallyOpenError explicitly.!

!MagmaDeleteWarning commentStamp: 'cmm 7/16/2007 22:07' prior: 0!
A MagmaDeleteWarning is signaled when a repository is about to be deleted.!

!MaApplyRecord commentStamp: 'cmm 7/15/2009 15:38' prior: 0!
I am an abstract class for the types of records that, on recovery, require rollback of some particular file.  My fileId identifies which file it is.

	... see superclass ...
	5 - groupId (3 bytes), a number identifying a group of writes
	... subclasses may add more fields ...
!

!MaApplyToFileRecord commentStamp: 'cmm 7/15/2009 15:38' prior: 0!
I am an abstract class for the types of records that, on recovery, require rollback of some particular file.  My fileId identifies which file it is.

	... see superclass ...
	8 - file-id (8-bytes), identifies which file this record describes
	... subclasses may add more fields ...
!

!MaBeforeImageRecord commentStamp: 'cmm 7/15/2009 15:39' prior: 0!
This type of RecoveryRecord is used to restore any bytes in any file to their state prior to the beginning of the interrupted commit.

My #fileId identifies the file that was updated.

My #location provides information necessary to know *where* in the file I came from.

	... see superclass ...
	16 - file-position
	22 - the record
	... see superclass ...

I should not be created for updates to new files or for writes beyond the end of the file.!

!MaFileGrowthRecord commentStamp: 'cmm 7/15/2009 15:41' prior: 0!
I am used to track files that grow in size while applying a commit.  I record the #originalSize such that, during recovery, the file can be truncated: back to its original size.

I should not be created for new files.

	... see superclass ...
	16 - originalSize (6 bytes)
	... see superclass ...!

!MaNewFileRecord commentStamp: 'cmm 7/15/2009 15:41' prior: 0!
Sometimes new files are created during a commit.  If a disaster happens before that commit finishes then, upon recovery, those files should be deleted.

I record the #filename of the file that should be deleted.

	... see superclass ...
	16 - filename (variable length)
	... see superclass ...!

!MaBeginApplyRecord commentStamp: 'cmm 6/3/2005 15:15' prior: 0!
I am the first record of a group of RecoveryRecords for the same transactionId.  If a disaster happens in the middle of a commit and, during recovery, a valid BeginApply record is found in the apply file *without* a valid EndApply record, then we know the commit did not finish and all of the records must be unapplied.!

!MaEndApplyRecord commentStamp: 'cmm 3/25/2007 12:36' prior: 0!
I am the last record of a group of RecoveryRecords for the same transactionId.  If a disaster happens then, during recovery, I am looked for in the applyFile with the same transactionId as my BeginApply counterpart.  If I'm found, then no were no commits happening at the time of the failure and, thus, no backward recovery is necessary.!

!MaAtomicFileStream commentStamp: 'cmm 3/5/2009 16:44' prior: 0!
This class emulates a StandardFileStream except doesn't actually write contents to disk until you send #maCommit.  Instead, it caches the written contents to a collection of MaAtomicFileWriters.

Also, the latest additional feature is that it can be of unlimited size, it reads and writes its multiple physical 'fileStreams' depending on what the file-position requested is.!

!MaLargeCollectionManager commentStamp: 'cmm 3/16/2005 12:48' prior: 0!
I perform server-side operations for MagmaLargeCollections.  Adding, removing and accessing.!

!MaObjectFiler commentStamp: 'cmm 5/25/2005 14:24' prior: 0!
I am used to cache values committed in the server.  When a value is cached, we must remember from which commitPackage it came from in case the same object is updated again by a subsequent commitPackage, in which case we would not want to uncache the value when the first commitPackage is applied.!

!MaRecoveryManager commentStamp: 'cmm 6/11/2007 22:40' prior: 0!
I am responsible for recovery behaviors.

Commit-packages received into the server are prepared, serialized and flushed, wrapped in MaRecoveryRecord, to a commits file.  A separate process runs repeatedly, Delaying five seconds and then forking an atomic write of the extents.

The atomic write enumerates all of the MaTransactionalFileWriters and captures before-images of the portions of the files about to be overwritten, flushes them to the before-images file.  Then flushes all of the MaTransactionalFileWriters to their respective files.  Finally, an endApply record is flushed to the before-images file.

Reads can be interleaved with the atomic write but not commits because the atomic write does not represent a change in the state of the repository.

Recovery

If an outage occurs, we have, in the worst case:

	1) some data partially applied
	2) some data written to commitPackages, but not yet applied

Recovery addresses these in order.

Read the apply-file and look for an incomplete group, a set of RecoveryRecords that have no EndApplyRecord.  If this condition is discovered, the server was in the middle of an atomic-apply when failure occurred.  A partial apply occurred and we must write all of the before-images back to the various files.  Do that.

Now we know we do not have corrupt files, however we next need to apply all of the commitPackages that were written to the commit.log file but not yet applied.

We just apply the commitPackages whose commitNumber is greater than the commitNumber of the Filer.
!

!MaTransactionLog commentStamp: '<historical>' prior: 0!
This class resides on the server.
!

!MagmaCompressor commentStamp: 'cmm 8/29/2002 22:35' prior: 0!
I garbage collect a Magma repository and output a smaller file by eliminating buffers no longer referenced from the root buffer.

I always create a new object file, but if you use compressAndRename, I'll rename the source files to 'old...' so you can get with using the compressed repository right away.

If you don't want me to rename, just use #compressTo:.

Oh, and I'm not meant to work while the files are on-line.  For that, use:

	yourRepositoryController garbageCollect

(Note:  a potential strategy for on-line GC would be to set a boolean flag indicating to the filer not to reuse buffers made available through grown objects, but rather to always add to the end.  During this time, a background thread can start reading from the root and build a new copy of the 'memory' map (the MaIntervalCollection).  Once it has accounted for every byte in the real memory map, we know the real one can be replaced with this new one.  Do a quick write of the new memory map and you're done!!)!

!MagmaFileTraverser commentStamp: 'cmm 8/5/2002 21:45' prior: 0!
I walk the object buffers of an open Magma file and execute a Block for each buffer.

I'm useful for the Magma garbage collection function, the compression function and for general purpose information gathering about what's in the repository.!

!MagmaRepositoryController commentStamp: 'cmm 7/29/2007 17:46' prior: 0!
A MagmaRepositoryController is the main user interface to a Magma repository.  With this class you create, open and delete repositories.  

Instance Variables
	localLocation:  a MagmaLocalLocation specifying where the repository is opened on.
	preferences:  A MagmaServerPreferences specifying various server-level options.
	repository:  The center of the Magma server universe, manages server operations.  Private from general public use.
	requestInterruptGuard:  Monitor to allow only one request at a time to execute.
	serverSerializer:  The serializer used to send certain whole graph-buffers back to the client.  (My sessions serializer cannot be used because it is optimized for a MagmaSession; i.e., only serializing each object one level deep, etc.).
	session:  My standard session used to perform standard operations on the model, mostly for LargeCollection support.
!

!MaBeforeImageRecord methodsFor: 'testing' stamp: 'cmm 6/3/2005 15:53'!
isFixed
	^ false! !

!MaNewFileRecord methodsFor: 'accessing' stamp: 'cmm 6/3/2005 15:53'!
isFixed
	^ false! !

!MaObjectRepository methodsFor: 'recovery' stamp: 'cmm 6/5/2008 21:08'!
flushCache
	"Flush all caches as an uncorruptible unit-of-work.  If this forked code completes all files are flushed.  Should a power outage occur somewhere in the middle, the recovery will reverse what had been written so far."
	"Define what we're going to do to (flush) into a block, since we have to determine whether to time it."
	| stats |
	stats _ repositoryController serverStatistics.
	stats flushTimeHistory addValue: (Time millisecondsToRun: 
			[ recoveryManager beginApply.
			self
				captureBeforeImages ;
				flushIndividualCaches.
			SimulateOutage ifTrue: [ self simulateOutage ].
			recoveryManager endApply ])! !

!MagmaRepositoryController class methodsFor: 'initializing' stamp: 'cmm 12/27/2004 23:16'!
shutDown: aboutToQuit

	super shutDown: aboutToQuit.
	MagmaSession shutDown: aboutToQuit.
	OpenControllers
		do:
			[ :each | 
			[ MagmaNotification signal: 'closing Magma repository ', each pathName asString, '.  Will reopen on next startup.' ]
				on: MagmaNotification
				do: [ : noti | Transcript cr; show: noti messageText. noti pass ].
			each primClose ]! !

!MagmaRepositoryController class methodsFor: 'initializing' stamp: 'cmm 9/2/2010 19:36'!
startUp: amResuming 
	OpenControllers copy do: 
		[ : each | 
		
		[ [ each ensureOpen ] 
			on: MagmaNotification
			do: 
				[ : noti | 
				Transcript
					cr ;
					show: noti messageText.
				noti resume ] ] 
			on: MagmaEnvironmentError
			do: 
				[ : error | 
				"not present anymore, remove from OpenControllers and resignal."
				each close.
				error pass ] ].
	"Now that we're open, ensure any server-sockets that may need to restart can be."
	MaServerSocket startUp: amResuming! !

!MagmaRepositoryController methodsFor: 'accessing' stamp: 'cmm 9/25/2009 11:31'!
definition
	"Answers a MagmaRepositoryDefinition"
	^ session ifNotNil: [ session definition ]! !

!MagmaServerConsole methodsFor: 'accessing' stamp: 'cmm 9/25/2009 11:31'!
definition
	^ controller ifNotNil: [ controller definition ]! !

!MagmaPotentiallyOpenError methodsFor: 'as yet unclassified' stamp: 'cmm 5/25/2010 23:04'!
isResumable 
	^ true! !

!MagmaForwardRecoveryNeeded methodsFor: 'as yet unclassified' stamp: 'cmm 3/2/2009 19:53'!
defaultAction
	^ self resume: true! !

!MaApplyRecord methodsFor: 'accessing' stamp: 'cmm 7/15/2009 15:37'!
bufferPositionOfGroupId
	"this fields is 3-bytes."
	^ 5! !

!MaApplyRecord methodsFor: 'accessing' stamp: 'cmm 9/8/2015 14:59'!
groupId
	^ byteArray maUnsigned24At: self bufferPositionOfGroupId+1! !

!MaApplyRecord methodsFor: 'accessing' stamp: 'cmm 5/27/2007 20:14'!
groupId: anInteger 
	byteArray 
		maUint: 24
		at: self bufferPositionOfGroupId
		put: anInteger! !

!MaApplyRecord methodsFor: 'accessing' stamp: 'cmm 7/15/2009 15:39'!
headerSize
	"super headerSize + size of groupId field"
	^ 8! !

!MaApplyRecord methodsFor: 'printing' stamp: 'cmm 5/27/2007 20:32'!
maPrintAbbreviatedOn: aStream
	super maPrintAbbreviatedOn: aStream.
	self
		maPrintAttributes: #(groupId)
		on: aStream! !

!MaApplyRecord class methodsFor: 'as yet unclassified' stamp: 'cmm 6/3/2005 17:16'!
filePositionsFileId
	^ 2! !

!MaApplyRecord class methodsFor: 'as yet unclassified' stamp: 'cmm 6/3/2005 17:16'!
objectsFileId
	^ 1! !

!MaApplyToFileRecord methodsFor: 'accessing' stamp: 'cmm 7/15/2009 15:38'!
bufferPositionOfFileId
	"This field is 8-bytes to make it easy for Magma.  6-bytes for the oid, 2-bytes for the index #."
	^ 8! !

!MaApplyToFileRecord methodsFor: 'accessing' stamp: 'cmm 8/10/2007 00:23'!
collectionOid
	"for Magma, the fileId is stored in two parts, the high-order 6 bytes represent the oid of the collection.  The low-order 2 bytes represent the index # for that collection or 0 if it is the memberIndex.  This method answers the oid."

	^ self fileId bitShift: -16! !

!MaApplyToFileRecord methodsFor: 'accessing' stamp: 'cmm 9/8/2015 15:00'!
fileId
	^ byteArray maUnsigned64At: self bufferPositionOfFileId+1! !

!MaApplyToFileRecord methodsFor: 'accessing' stamp: 'cmm 5/27/2007 20:23'!
fileId: anInteger

	byteArray
		maUint: 64
		at: self bufferPositionOfFileId 
		put: anInteger! !

!MaApplyToFileRecord methodsFor: 'accessing' stamp: 'cmm 7/15/2009 15:39'!
headerSize
	"super headerSize + size of fileId field"
	^ 16! !

!MaApplyToFileRecord methodsFor: 'accessing' stamp: 'cmm 8/14/2007 22:31'!
unapplySelf: aStandardFileStream 
	self subclassResponsibility! !

!MaApplyToFileRecord methodsFor: 'testing' stamp: 'cmm 5/27/2007 20:54'!
isApplyToFile
	^ true! !

!MaApplyToFileRecord methodsFor: 'testing' stamp: 'cmm 3/7/2011 18:27'!
isContentRelated
	"Answer whether this type of application changes the contents of a file.  MaNewFileRecord answers false, because it only creates a file, does not affect its content."
	^ true! !

!MaApplyToFileRecord methodsFor: 'testing' stamp: 'cmm 8/10/2007 00:23'!
isForFilePositionsFile
	^ self fileId = self class filePositionsFileId! !

!MaApplyToFileRecord methodsFor: 'testing' stamp: 'cmm 8/10/2007 00:23'!
isForObjectsFile
	^ self fileId = self class objectsFileId! !

!MaApplyToFileRecord methodsFor: 'printing' stamp: 'cmm 5/27/2007 20:32'!
maPrintAbbreviatedOn: aStream
	super maPrintAbbreviatedOn: aStream.
	self
		maPrintAttributes: #(fileId)
		on: aStream! !

!MaBeforeImageRecord methodsFor: 'debugging' stamp: 'cmm 6/2/2005 13:05'!
asMaObjectBuffer

	self fileId = 1 ifFalse: [ self error: 'not a before-image of a MaObjectBuffer.' ].
	^ (MaObjectBuffer
		byteArray: (ByteArray new: MaObjectBuffer oidSize/8), self record
		startPos: 0) asSentientBuffer! !

!MaBeforeImageRecord methodsFor: 'initializing' stamp: 'cmm 6/3/2005 16:18'!
bodySize
	^ 1000  "variable length"! !

!MaBeforeImageRecord methodsFor: 'initializing' stamp: 'cmm 6/1/2005 13:18'!
location: anInteger

	byteArray
		maUint: 48
		at: self bufferPositionOfLocation
		put: anInteger! !

!MaBeforeImageRecord methodsFor: 'private' stamp: 'cmm 7/15/2009 15:39'!
bufferPositionOfLocation
	"this field is 6 bytes"
	^ 16! !

!MaBeforeImageRecord methodsFor: 'private' stamp: 'cmm 7/15/2009 15:39'!
headerSize
	"super headerSize + size of location field."
	^ 22! !

!MaBeforeImageRecord methodsFor: 'accessing' stamp: 'cmm 9/8/2015 15:00'!
location
	^ byteArray maUnsigned48At: self bufferPositionOfLocation + 1! !

!MaBeforeImageRecord methodsFor: 'printing' stamp: 'cmm 6/5/2005 17:09'!
maPrintAbbreviatedOn: aStream
	super maPrintAbbreviatedOn: aStream.
	self
		maPrintAttributes: #(location recordSize)
		on: aStream! !

!MaBeforeImageRecord methodsFor: 'recovery' stamp: 'cmm 4/10/2007 22:36'!
unapplySelf: aMaTransactionalFileStream 
	aMaTransactionalFileStream
		maWrite: self recordSize
			bytesFromPosition: 1
			of: self record
			atFilePosition: self location ;
		maCommit! !

!MaBeforeImageRecord class methodsFor: 'accessing' stamp: 'cmm 6/5/2005 16:38'!
assignedRecordType
	^ 2! !

!MaFileGrowthRecord methodsFor: 'private' stamp: 'cmm 6/3/2005 16:00'!
bodySize  "in bytes"
	^ self sizeOfOriginalSizeField / 8! !

!MaFileGrowthRecord methodsFor: 'private' stamp: 'cmm 6/3/2005 15:59'!
sizeOfOriginalSizeField

	^ 48 "bits"! !

!MaFileGrowthRecord methodsFor: 'printing' stamp: 'cmm 6/5/2005 17:09'!
maPrintAbbreviatedOn: aStream
	super maPrintAbbreviatedOn: aStream.
	self
		maPrintAttributes: #(originalSize)
		on: aStream! !

!MaFileGrowthRecord methodsFor: 'access' stamp: 'cmm 9/8/2015 15:09'!
originalSize
	^ byteArray maUnsigned48At: self headerSize + 1! !

!MaFileGrowthRecord methodsFor: 'access' stamp: 'cmm 6/3/2005 16:01'!
originalSize: anInteger
	^ byteArray
		maUint: self sizeOfOriginalSizeField 
		at: self headerSize
		put: anInteger! !

!MaFileGrowthRecord methodsFor: 'recovery' stamp: 'cmm 4/28/2007 14:30'!
unapplySelf: aMaTransactionalFileStream 
	aMaTransactionalFileStream truncate: self originalSize! !

!MaFileGrowthRecord class methodsFor: 'accessing' stamp: 'cmm 6/5/2005 16:39'!
assignedRecordType
	^ 3! !

!MaNewFileRecord methodsFor: 'accessing' stamp: 'cmm 6/3/2005 16:18'!
bodySize

	^ 300  "variable length"! !

!MaNewFileRecord methodsFor: 'accessing' stamp: 'cmm 9/21/2005 09:54'!
filename
	^ (byteArray
		copyFrom: self headerSize+1
		to: self checkSumPosition-1) asString! !

!MaNewFileRecord methodsFor: 'accessing' stamp: 'cmm 7/4/2005 22:54'!
filename: aString

	self record: aString! !

!MaNewFileRecord methodsFor: 'testing' stamp: 'cmm 3/7/2011 18:27'!
isContentRelated
	"Answer whether this type of application changes the contents of a file.  MaNewFileRecord answers false, because it only creates a file, does not affect its content."
	^ false! !

!MaNewFileRecord methodsFor: 'printing' stamp: 'cmm 6/5/2005 17:10'!
maPrintAbbreviatedOn: aStream
	super maPrintAbbreviatedOn: aStream.
	self
		maPrintAttributes: #(filename)
		on: aStream! !

!MaNewFileRecord methodsFor: 'recovery' stamp: 'cmm 6/4/2007 08:51'!
unapplySelf: anUndefinedObject 
	(MaAtomicFileStream fileNamed: self filename) deletePhysicalFiles! !

!MaNewFileRecord class methodsFor: 'accessing' stamp: 'cmm 6/5/2005 16:39'!
assignedRecordType
	^ 4! !

!MaBeginApplyRecord methodsFor: 'testing' stamp: 'cmm 6/3/2005 16:57'!
isBeginApply
	^ true! !

!MaBeginApplyRecord methodsFor: 'printing' stamp: 'cmm 6/5/2005 17:10'!
maPrintAbbreviatedOn: aStream
	super maPrintAbbreviatedOn: aStream.
	self
		maPrintAttributes: #(isBeginApply)
		on: aStream! !

!MaBeginApplyRecord class methodsFor: 'accessing' stamp: 'cmm 6/5/2005 16:39'!
assignedRecordType
	^ 1! !

!MaEndApplyRecord methodsFor: 'testing' stamp: 'cmm 6/3/2005 16:57'!
isEndApply
	^ true! !

!MaEndApplyRecord methodsFor: 'printing' stamp: 'cmm 6/5/2005 17:10'!
maPrintAbbreviatedOn: aStream
	super maPrintAbbreviatedOn: aStream.
	self
		maPrintAttributes: #(isEndApply)
		on: aStream! !

!MaEndApplyRecord class methodsFor: 'accessing' stamp: 'cmm 6/5/2005 16:39'!
assignedRecordType
	^ 5! !

!MaAtomicFileStream methodsFor: 'private' stamp: 'jpb 5/10/2021 16:58:14'!
addPhysicalFile
	| fileEntry |

	sizes add: 0.
	fileEntry _ self nextName asFileEntry.
	
	^(fileEntry writeStream) in: 
		[ : stream | 
		(stream isNil or: [stream closed]) ifTrue: [ MagmaEnvironmentError signal: 'file did not open' ].
		stream binary.
		fileStreams add: stream ]! !

!MaAtomicFileStream methodsFor: 'private' stamp: 'cmm 3/7/2011 19:51'!
deleteFrom: fileIndex 
	"Delete the particular index of my file numbered fileIndex.  This is used when truncating."
	fileIndex
		to: fileStreams size
		do: [ : n | FileDirectory deleteFilePath: (self nameFor: n) ].
	fileStreams _ fileStreams
		copyFrom: 1
		to: fileIndex - 1! !

!MaAtomicFileStream methodsFor: 'private' stamp: 'cmm 5/23/2007 23:16'!
maxPhysicalFileSize
	^ MaxPhysicalFileSize! !

!MaAtomicFileStream methodsFor: 'private' stamp: 'jpb 5/11/2021 18:00:13'!
nameFor: fileIndex 
	"The name of the file numbered fileIndex."
	| initBlock |
	
	initBlock _ [ : nameNumberAndExtension | 
		String streamContents: 
			[ : stream | 
			stream
				maPrint: nameNumberAndExtension first ;
				nextPut: $. ;
				maPrint: fileIndex.
			nameNumberAndExtension last ifNotEmpty: 
				[ stream
					nextPut: $. ;
					maPrint: nameNumberAndExtension last ] ] ].
		
		^initBlock value: (FileIOAccessor default splitNameVersionExtensionFor: filename).! !

!MaAtomicFileStream methodsFor: 'private' stamp: 'cmm 4/11/2007 23:03'!
nextName
	^ self nameFor: fileStreams size+1! !

!MaAtomicFileStream methodsFor: 'private' stamp: 'cmm 4/11/2007 22:47'!
physicalFlush
	^ fileStreams do: [ : each | each closed ifFalse: [ each flush ] ]! !

!MaAtomicFileStream methodsFor: 'private' stamp: 'cmm 9/11/2010 12:16'!
physicallyWrite: numberOfBytes bytesFromPosition: bufferPosition of: aByteArray atFilePosition: filePosition 
	guard critical: 
		[ self 
			streamAt: filePosition
			withRelativePositionDo: 
				[ : fileStream : relativePos | 
				self renewAccess: fileStream.
				fileStream 
					maWrite: aByteArray size
					bytesFromPosition: 1
					of: aByteArray
					atFilePosition: relativePos ]
			ifNone: 
				[ "filePosition is beyond the end of the last file, so we know we will write either the last file or a new file,"
				| streamToWrite positionOfLastFileStream |
				streamToWrite _ (sizes isEmpty or: [ aByteArray size + sizes last > self maxPhysicalFileSize ]) 
					ifTrue: [ self addPhysicalFile ]
					ifFalse: [ fileStreams last ].
				self renewAccess: streamToWrite.
				positionOfLastFileStream _ self committedSize - sizes last.
				streamToWrite 
					maWrite: numberOfBytes
					bytesFromPosition: 1
					of: aByteArray
					atFilePosition: filePosition - positionOfLastFileStream.
				sizes 
					at: sizes size
					put: fileStreams last size ] ]! !

!MaAtomicFileStream methodsFor: 'private' stamp: 'cmm 4/28/2007 19:08'!
renewAccess: aPhysicalStream
	pool renewAccess: aPhysicalStream! !

!MaAtomicFileStream methodsFor: 'private' stamp: 'cmm 4/20/2007 14:10'!
streamAt: filePosition withRelativePositionDo: twoArgBlock ifNone: aBlock 
	"Value twoArgBlock with the fileStream that contains filePosition, and the relative position within that fileStream that matches filePosition."
	^ self 
		streamIndexAt: filePosition
		withRelativePositionDo: 
			[ : index : relativePosition | 
			twoArgBlock 
				value: (fileStreams at: index)
				value: relativePosition ]
		ifNone: aBlock! !

!MaAtomicFileStream methodsFor: 'private' stamp: 'cmm 4/20/2007 16:07'!
streamIndexAt: filePosition withRelativePositionDo: twoArgBlock ifNone: aBlock
	"Value twoArgBlock with the index of the fileStream that contains filePosition, and the relative position within that fileStream that matches filePosition."
	| runningSize |
	runningSize _ 0.
	sizes withIndexDo: 
		[ : eachSize : index | 
		filePosition < (runningSize + eachSize) ifTrue: 
			[ | relativePosition |
			relativePosition _ filePosition - runningSize.
			^ twoArgBlock 
				value: index
				value: relativePosition ].
		runningSize _ runningSize + eachSize ].
	"filePosition is Beyond end of last fileStream."
	^ aBlock value! !

!MaAtomicFileStream methodsFor: 'private' stamp: 'cmm 3/7/2011 19:52'!
truncateStreams: filePosition 
	| startingFileNumber fileStreamToTruncate |
	guard critical: 
		[ self 
			streamIndexAt: filePosition
			withRelativePositionDo: 
				[ : index : relativePosition | 
				startingFileNumber _ relativePosition = 0
 					ifTrue: [ index ]
					ifFalse: [ index + 1 ].
				fileStreamToTruncate _ fileStreams at: index.
				self renewAccess: fileStreamToTruncate.
				fileStreamToTruncate
					truncate: relativePosition ;
					close ;
					open
				"close and open to get around bug; see http://lists.squeakfoundation.org/pipermail/squeak-dev/2005-June/092041.html" ]
			ifNone: 
				[ "do nothing"
				 ].
		startingFileNumber ifNotNil: [self deleteFrom: startingFileNumber ] ]! !

!MaAtomicFileStream methodsFor: 'private' stamp: 'cmm 6/23/2007 15:57'!
truncateWriters: filePosition 
	| toBeRemoved |
	guard critical: 
		[ uncommittedSize _ uncommittedSize min: filePosition.
		toBeRemoved _ OrderedCollection new.	"Not sure if I can remove from a BTree while enumerating it.."
		writers 
			from: filePosition
			to: 999999999999999999999
			do: 
				[ : each | 
				(each coversFilePosition: filePosition) ifTrue: [ toBeRemoved add: each ] ].
		toBeRemoved do: [ : each | writers removeKey: each endFilePos ] ]! !

!MaAtomicFileStream methodsFor: 'private' stamp: 'cmm 6/22/2009 21:38'!
writerAt: filePosition 
	writers 
		from: filePosition
		do: [ : each | ^ (each coversFilePosition: filePosition) ifTrue: [ each ] ].
	^ nil! !

!MaAtomicFileStream methodsFor: 'accessing' stamp: 'jpb 5/11/2021 17:54:26'!
baseName
	^self localName asFileEntry baseName! !

!MaAtomicFileStream methodsFor: 'accessing' stamp: 'cmm 4/11/2007 23:05'!
committedSize
	^ sizes 
		inject: 0
		into: [ : sum : each | sum + each ]! !

!MaAtomicFileStream methodsFor: 'accessing' stamp: 'cmm 6/4/2007 08:53'!
deletePhysicalFiles
	self directory in: [ : dir | self physicalFilenamesDo: [ : each | dir deleteFileNamed: each ] ]! !

!MaAtomicFileStream methodsFor: 'accessing' stamp: 'jpb 5/11/2021 17:54:46'!
extension
	^ self localName asFileEntry extension! !

!MaAtomicFileStream methodsFor: 'accessing' stamp: 'cmm 12/24/2012 10:47'!
guard: aBlock
	^ guard critical: aBlock! !

!MaAtomicFileStream methodsFor: 'accessing' stamp: 'jpb 5/11/2021 17:54:16'!
localName
	^filename asFileEntry name! !

!MaAtomicFileStream methodsFor: 'accessing' stamp: 'cmm 4/28/2007 18:23'!
numberOfPhysicalFiles
	^ sizes size! !

!MaAtomicFileStream methodsFor: 'accessing' stamp: 'cmm 6/4/2007 08:41'!
physicalFilenamesDo: oneArgBlock 
	"Value oneArgBlock with the names of my physical files."
	self directory in: 
		[ : dir | 
		dir entries do: 
			[ : each | 
			| eachParts |
			eachParts _ dir splitNameVersionExtensionFor: each name.
			each name = (dir localNameFor: (self nameFor: eachParts second)) ifTrue: 
				[ "version"
				oneArgBlock value: each name ] ] ]! !

!MaAtomicFileStream methodsFor: 'accessing' stamp: 'cmm 7/13/2005 15:02'!
writersDo: aBlock

	writers do: aBlock! !

!MaAtomicFileStream methodsFor: 'filestream api' stamp: 'cmm 4/26/2007 22:59'!
close
	self isPhysical ifTrue: 
		[ self maCommit.
		fileStreams copy withIndexDo: 
			[ : each : x | 
			pool close: each.
			"We're going in order, so removeFirst works."
			fileStreams removeFirst.
			sizes removeFirst ] ]! !

!MaAtomicFileStream methodsFor: 'filestream api' stamp: 'cmm 4/28/2007 19:44'!
closed
	"Answer whether I have a file-handle allocated from the operating system."
	^ self isPhysical not or: 
		[ self isPhysical and: [ fileStreams allSatisfy: [ : each | each closed ] ] ]! !

!MaAtomicFileStream methodsFor: 'filestream api' stamp: 'cmm 7/11/2005 22:22'!
directory

	^ FileDirectory forFileName: filename! !

!MaAtomicFileStream methodsFor: 'filestream api' stamp: 'cmm 5/24/2006 21:50'!
filename

	^ filename! !

!MaAtomicFileStream methodsFor: 'filestream api' stamp: 'cmm 4/11/2007 22:44'!
flush
	"API compatibility with StandardFileStream.  Write all of my writers and force an unconditional flush of each file."
	self maCommit.
	guard critical: [ self physicalFlush ]! !

!MaAtomicFileStream methodsFor: 'filestream api' stamp: 'cmm 4/28/2007 19:08'!
maRead: someNumber bytesFromPosition: bufferPosition of: aByteArray atFilePosition: filePosition 
	| writer numberOfBytesRead |
	^ guard critical: 
		[ (writer _ self writerAt: filePosition) 
			ifNil: 
				[ numberOfBytesRead _ self 
					streamAt: filePosition
					withRelativePositionDo: 
						[ : physicalStream : relativePosition | 
						self renewAccess: physicalStream.
						physicalStream 
							maRead: someNumber
							bytesFromPosition: bufferPosition
							of: aByteArray
							atFilePosition: relativePosition ]
					ifNone: [ 0 ].
				position _ filePosition + numberOfBytesRead.
				numberOfBytesRead ]
			ifNotNil: 
				[ numberOfBytesRead _ someNumber min: writer byteArray size.
				aByteArray 
					replaceFrom: bufferPosition
					to: bufferPosition + numberOfBytesRead - 1
					with: writer byteArray
					startingAt: 1.
				position _ filePosition + numberOfBytesRead.
				numberOfBytesRead ] ]! !

!MaAtomicFileStream methodsFor: 'filestream api' stamp: 'cmm 4/29/2007 21:48'!
maWrite: numberOfBytes bytesFromPosition: bufferPosition of: byteArray atFilePosition: filePosition 
	| writer |
	writer _ MaAtomicFileWriter 
		file: self
		filePos: filePosition
		byteArray: (byteArray 
				copyFrom: bufferPosition
				to: bufferPosition + numberOfBytes - 1).
	guard critical: 
		[ writers 
			at: writer endFilePos
			put: writer.
		uncommittedSize _ uncommittedSize max: filePosition + numberOfBytes.
		position _ filePosition + numberOfBytes ]! !

!MaAtomicFileStream methodsFor: 'filestream api' stamp: 'cmm 2/13/2008 17:22'!
next: n into: aByteArray startingAt: startIndex 
	"This method is only called when the initial read of an object did not fit within the #trackSize."
	| writer |
	guard critical: 
		[ (writer _ self writerAt: position) 
			ifNil: 
				[ self 
					streamAt: position
					withRelativePositionDo: 
						[ : physicalStream : relativePosition | 
						self renewAccess: physicalStream.
						physicalStream 
							next: n
							into: aByteArray
							startingAt: startIndex ]
					ifNone: [ MaSoftwareError signal: 'unexpected EOF - ' , position printString ] ]
			ifNotNil: 
				[ aByteArray 
					replaceFrom: startIndex
					to: startIndex + (n min: writer byteArray size) - 1
					with: writer byteArray
					startingAt: position - writer filePos + 1 ].
		position _ position + n ]! !

!MaAtomicFileStream methodsFor: 'filestream api' stamp: 'cmm 7/7/2005 22:17'!
next: numberOfBytes putAll: aByteArray startingAt: startPos

	"This isn't needed for Magma, and I don't feel like implementing it right now.  Better to just give an explicit error than get it wrong."

	self error: 'not supported'! !

!MaAtomicFileStream methodsFor: 'filestream api' stamp: 'cmm 7/7/2005 12:51'!
size

	^ self committedSize max: uncommittedSize! !

!MaAtomicFileStream methodsFor: 'filestream api' stamp: 'cmm 4/10/2007 21:27'!
truncate: filePosition 
	self
		truncateStreams: filePosition ;
		truncateWriters: filePosition! !

!MaAtomicFileStream methodsFor: '*magma-server-file' stamp: 'cmm 6/23/2007 16:01'!
currentRecordFor: aMaAtomicFileWriter 
	| answer |
	answer _ ByteArray new: aMaAtomicFileWriter byteArray size.
	guard critical: 
		[ self 
			streamAt: aMaAtomicFileWriter filePos
			withRelativePositionDo: 
				[ : physicalStream : relativePos | 
				self renewAccess: physicalStream.
				physicalStream 
					maRead: answer size
					bytesFromPosition: 1
					of: answer
					atFilePosition: relativePos ]
			ifNone: 
				[ MagmaSoftwareError signal: 'expected physical data at ' , aMaAtomicFileWriter filePos asString ] ].
	^ answer! !

!MaAtomicFileStream methodsFor: 'testing' stamp: 'cmm 9/28/2008 23:03'!
exists
	| fd |
	fd _ FileDirectory on: (FileDirectory dirPathFor: filename).
	^ fd fileExists: self baseName , '.1.' , self extension! !

!MaAtomicFileStream methodsFor: 'testing' stamp: 'cmm 7/11/2005 22:04'!
isNew

	^ self isPhysical not! !

!MaAtomicFileStream methodsFor: 'testing' stamp: 'cmm 4/9/2007 23:59'!
isPhysical
	^ fileStreams notEmpty! !

!MaAtomicFileStream methodsFor: 'testing' stamp: 'cmm 10/22/2006 15:01'!
maIsTransactional
	^ true! !

!MaAtomicFileStream methodsFor: 'initialize-release' stamp: 'cmm 7/11/2005 22:28'!
filename: aString

	filename _ aString! !

!MaAtomicFileStream methodsFor: 'initialize-release' stamp: 'cmm 9/23/2008 14:26'!
initialize
	super initialize.
	self initializeWriters.
	position _ 0.
	guard _ Mutex new.
	"To make code simple, everyone gets a default pool, which is just a pool of one, me."
	pool _ MaFileStreamPool maxSize: 1.
	fileStreams _ OrderedCollection new.
	sizes _ OrderedCollection new! !

!MaAtomicFileStream methodsFor: 'initialize-release' stamp: 'jpb 5/12/2021 16:36:35'!
initializeStreamsAndSizes
	"Determine which streams are available in the current directory and their sizes."
	| fd baseName extension matchingEntries |

	fd _ filename asDirectoryEntry parent. 
	baseName _ self baseName.
	extension _ self extension.
	
	"Gather up the entries for my filename and extension."
	matchingEntries _ fd files select:
		[ : eachEntry | | eachNameVersionAndExtension |
		eachNameVersionAndExtension _ eachEntry nameVersionExtension.
		eachNameVersionAndExtension first = baseName and: [ eachNameVersionAndExtension last = extension ] ].
	
	"Then sort them by the file-number (second dot-delimited field)"
	matchingEntries _ matchingEntries asSortedCollection:
		[ : a : b | | nameVersionAndExtensionA nameVersionAndExtensionB |
		nameVersionAndExtensionA _ a nameVersionExtension.
		nameVersionAndExtensionB _ b nameVersionExtension.
		(nameVersionAndExtensionA at: 2) < (nameVersionAndExtensionB at: 2) ].
	
	"Now load my fileStreams and sizes with these correctly-ordered entries."
	matchingEntries do: 	[ : eachEntry |
		| physicalStream |
		physicalStream _ eachEntry readStream.
		
		(physicalStream isNil or: [ physicalStream closed ]) 
			ifTrue: [ MagmaEnvironmentError signal: 'file did not open for read-only' ].
			
		fileStreams add: physicalStream.
		physicalStream
			close ;
			readWrite ;
			binary.
			
		sizes add: eachEntry fileSize ]! !

!MaAtomicFileStream methodsFor: 'initialize-release' stamp: 'cmm 7/13/2005 15:04'!
initializeWriters

	writers _ BTree new.
	uncommittedSize _ 0! !

!MaAtomicFileStream methodsFor: 'initialize-release' stamp: 'cmm 10/22/2006 15:00'!
pool: aMaFileStreamPool
	pool _ aMaFileStreamPool! !

!MaAtomicFileStream methodsFor: 'commit' stamp: 'cmm 4/9/2015 21:45'!
maCommit
	"writers, write!!  If shouldFlush is true, only flush if I actually wrote something (if an unconditional flush is needed, use #flush)."
	guard critical:
		[ | needsFlush |
		needsFlush _ false.
		self writersDo:
			[ : each | each write.
			needsFlush _ true ].
		needsFlush ifTrue:
			[ self initializeWriters.
			self physicalFlush ] ]! !

!MaAtomicFileStream methodsFor: 'printing' stamp: 'cmm 4/23/2007 17:37'!
maPrintAbbreviatedOn: aStream
	super maPrintAbbreviatedOn: aStream.
	aStream maPrint: filename! !

!MaAtomicFileStream class methodsFor: 'create' stamp: 'cmm 4/23/2007 00:24'!
fileNamed: filenameString 
	^ self new
		filename: filenameString ;
		initializeStreamsAndSizes ;
		yourself! !

!MaAtomicFileStream class methodsFor: 'class initialization' stamp: 'cmm 5/23/2007 23:18'!
initialize
	super initialize.
	self maxPhysicalFileSize: 1800000000 "1.8 gigabytes"! !

!MaAtomicFileStream class methodsFor: 'class initialization' stamp: 'cmm 5/23/2007 23:18'!
maxPhysicalFileSize: anInteger
	"Do not change this unless you know what you are doing."
	MaxPhysicalFileSize _ anInteger! !

!MaAtomicFileWriter methodsFor: 'accessing' stamp: 'cmm 6/15/2005 10:27'!
byteArray
	^ byteArray! !

!MaAtomicFileWriter methodsFor: 'accessing' stamp: 'cmm 8/13/2007 22:39'!
currentRecord
	^ file currentRecordFor: self! !

!MaAtomicFileWriter methodsFor: 'accessing' stamp: 'cmm 6/15/2005 22:18'!
endFilePos

	^ filePos + byteArray size - 1! !

!MaAtomicFileWriter methodsFor: 'accessing' stamp: 'cmm 6/15/2005 17:27'!
filePos

	^ filePos! !

!MaAtomicFileWriter methodsFor: 'testing' stamp: 'cmm 6/15/2005 17:11'!
coversFilePosition: filePosition

	^ filePosition
		between: filePos
		and: filePos + byteArray size - 1! !

!MaAtomicFileWriter methodsFor: 'testing' stamp: 'cmm 7/12/2005 22:20'!
willCauseGrowth

	^ filePos >= file committedSize! !

!MaAtomicFileWriter methodsFor: 'initialize-release' stamp: 'cmm 10/21/2006 20:06'!
setFile: aMaTransactionalFileStream filePos: anInteger byteArray: aByteArray
	file _ aMaTransactionalFileStream.
	filePos _ anInteger.
	byteArray _ aByteArray! !

!MaAtomicFileWriter methodsFor: 'actions' stamp: 'cmm 4/20/2007 15:28'!
write
	file 
		physicallyWrite: byteArray size
		bytesFromPosition: 1
		of: byteArray
		atFilePosition: filePos! !

!MaAtomicFileWriter class methodsFor: 'as yet unclassified' stamp: 'cmm 10/21/2006 20:05'!
file: aMaTransactionalFileStream filePos: anInteger byteArray: aByteArray
	^ self new
		setFile: aMaTransactionalFileStream
		filePos: anInteger
		byteArray: aByteArray! !

!MaFileStreamPool methodsFor: 'api' stamp: 'cmm 4/20/2007 15:01'!
close: aStandardFileStream 
	| stream |
	guard critical: 
		[ stream _ openStreams 
			remove: aStandardFileStream
			ifAbsent: [ nil ].
		stream ifNotNil: [ stream close ] ]! !

!MaFileStreamPool methodsFor: 'api' stamp: 'cmm 10/22/2006 15:18'!
maxSize
	^maxSize! !

!MaFileStreamPool methodsFor: 'api' stamp: 'cmm 10/22/2006 15:19'!
maxSize: anInteger
	maxSize _ anInteger! !

!MaFileStreamPool methodsFor: 'api' stamp: 'cmm 4/8/2015 15:03'!
renewAccess: aStandardFileStream 
	"Add or move aStandardFileStream to the bottom (most recently accessed), ensuring I do not exceed my limit of simultaneously-allowed open FileStreams."
	guard critical: 
		[ "Performance enhancement:  since many consecutive writes to the same fileStream is common, check if already renewed."
		| existing |
		(openStreams notEmpty and: [ openStreams last == aStandardFileStream ]) ifFalse: 
			[ existing _ openStreams 
				remove: aStandardFileStream
				ifAbsent: [ nil ].
			"If already existing, no need to pop anything off, otherwise make sure we don't exceed.."
			existing ifNil: 
				[ [ openStreams size >= maxSize ] whileTrue: [ self close: openStreams first ].
				aStandardFileStream ensureOpen.
				aStandardFileStream closed ifTrue: 
					[ MagmaEnvironmentError signal: 'Could not open ' , aStandardFileStream name , '.  File in use?' ] ].
			openStreams addLast: aStandardFileStream ] ]! !

!MaFileStreamPool methodsFor: 'initialize' stamp: 'cmm 9/23/2008 14:25'!
initialize
	super initialize.
	openStreams _ OrderedCollection new.
	guard _ Mutex new! !

!MaFileStreamPool methodsFor: 'initialize' stamp: 'cmm 10/22/2006 15:18'!
setMaxPoolSize: anInteger 
	maxSize _ anInteger! !

!MaFileStreamPool class methodsFor: 'create' stamp: 'cmm 10/21/2006 17:42'!
maxSize: anInteger 
	^ (self new)
		setMaxPoolSize: anInteger ;
		yourself! !

!MaLargeCollectionManager methodsFor: 'initializing' stamp: 'cmm 1/5/2010 17:48'!
close
	memberIndex ifNotNil: [ memberIndex close ]! !

!MaLargeCollectionManager methodsFor: 'initializing' stamp: 'cmm 10/22/2006 15:56'!
ensureMemberIndexOpen
	memberIndex ifNil:
		[ memberIndex _ self openIndex: (repository collectionFilenameFor: collection) asString.
		memberIndex filePool: repository filePool ]! !

!MaLargeCollectionManager methodsFor: 'initializing' stamp: 'cmm 10/22/2006 15:09'!
filePool: aMaFileStreamPool
	"Set my pool so that Magma can limit the number simultaneously open files, something required by some ISP's."
	memberIndex filePool: aMaFileStreamPool! !

!MaLargeCollectionManager methodsFor: 'accessing' stamp: 'cmm 6/11/2006 21:57'!
collection
	^ collection! !

!MaLargeCollectionManager methodsFor: 'accessing' stamp: 'cmm 8/22/2002 19:25'!
filename

	^memberIndex filename! !

!MaLargeCollectionManager methodsFor: 'accessing' stamp: 'cmm 6/8/2005 15:13'!
filenames

	^ { repository directory localNameFor: self filename }! !

!MaLargeCollectionManager methodsFor: 'accessing'!
memberIndex

	^memberIndex
! !

!MaLargeCollectionManager methodsFor: 'accessing'!
size

	^memberIndex size
! !

!MaLargeCollectionManager methodsFor: 'private' stamp: 'cmm 3/17/2005 22:23'!
collection: aMagmaLargeCollection

	collection _ aMagmaLargeCollection
! !

!MaLargeCollectionManager methodsFor: 'private' stamp: 'cmm 12/2/2004 13:22'!
collectionOid

	^ repository session oidFor: collection! !

!MaLargeCollectionManager methodsFor: 'private'!
repository: aMaObjectRepository

	repository _ aMaObjectRepository
! !

!MaLargeCollectionManager methodsFor: 'override' stamp: 'cmm 7/12/2005 11:02'!
createNewLargeCollection
	self subclassResponsibility! !

!MaLargeCollectionManager methodsFor: 'override' stamp: 'cmm 3/17/2005 23:14'!
openIndex: filenameString

	self subclassResponsibility! !

!MaLargeCollectionManager methodsFor: 'override' stamp: 'cmm 3/16/2005 22:57'!
process: aMaCollectionChanges recordResultsIn: aMaCommitResult

	self subclassResponsibility! !

!MaLargeCollectionManager methodsFor: 'override' stamp: 'cmm 3/16/2005 14:17'!
processAddsIn: aMaCollectionChanges using: aMaCommitResult

	self subclassResponsibility! !

!MaLargeCollectionManager methodsFor: 'override' stamp: 'cmm 3/16/2005 21:24'!
recordConflictsBetween: aMagmaCollectionChanges and: challengingCommitLogEntry in: myCommitLogEntry
	"If there are any conflicts, record them in myCommitLogEntry."

	self subclassResponsibility! !

!MaLargeCollectionManager methodsFor: 'override' stamp: 'cmm 3/16/2005 21:24'!
recordGeneralConflictsWith: aMagmaLargeCollectionChanges in: aMaCommitLogEntry

	self subclassResponsibility! !

!MaLargeCollectionManager methodsFor: 'override' stamp: 'cmm 4/30/2005 11:16'!
upTo: anInteger inSegmentFromIndex: lowIndex

	self subclassResponsibility! !

!MaLargeCollectionManager methodsFor: 'actions' stamp: 'cmm 7/12/2005 11:18'!
createSupplementaryIndexes
	"Nothing to do by default."! !

!MaLargeCollectionManager methodsFor: 'actions' stamp: 'cmm 3/17/2005 17:22'!
ensureOpen

	^ self 
		ensureMemberIndexOpen ;
		yourself! !

!MaLargeCollectionManager methodsFor: 'recovery' stamp: 'cmm 7/9/2006 17:25'!
fileIdForIndex: anInteger
	"To support recovery, we must populate MaBeforeImageRecords with a fileId, which identifies which file it is a before-image of.  We have eight bytes available for this.  The high-order 6 bytes are my collectionOid, the low-order two bytes indicate which index of the collection it is.  0 is the memberIndex."
	^ (self collectionOid bitShift: 16) + anInteger! !

!MaLargeCollectionManager methodsFor: 'recovery' stamp: 'cmm 7/5/2005 23:43'!
filesDo: twoArgBlock

	memberIndex filesDo: 
		[ : each |
		twoArgBlock
			value: each
			value: (self fileIdForIndex: 0) ]! !

!MaLargeCollectionManager methodsFor: 'recovery' stamp: 'cmm 5/30/2005 21:25'!
indexForFileId: anInteger
	"To support recovery of LargeCollections, we must replace the applied records to their prior-state, which is contained inside MaBeforeImageRecords."

	^ memberIndex "the only possibility"! !

!MaLargeCollectionManager methodsFor: 'testing' stamp: 'cmm 7/9/2006 17:42'!
isLoading
	"Answer whether this collection is being loaded from another collection.  This happens only for MagmaCollections when the client requests they be sorted, it never happens for MagmaArrays."
	^ false! !

!MaLargeCollectionManager class methodsFor: 'creation' stamp: 'cmm 7/18/2005 13:22'!
collection: aMagmaCollection repository: aMaObjectRepository

	^self new
		collection: aMagmaCollection ;
		repository: aMaObjectRepository ;
		yourself! !

!MagmaArrayManager methodsFor: 'overriding' stamp: 'cmm 6/6/2007 00:05'!
createNewLargeCollection
	| fullFilename |
	fullFilename _ repository collectionFilenameFor: collection.
	memberIndex _ MaLargeArrayOfNumbers 
		create: (
			(MaAtomicFileStream fileNamed: fullFilename)
				pool: repository filePool ;
				yourself)
		bitSize: MaObjectFiler maxDbSize! !

!MagmaArrayManager methodsFor: 'overriding' stamp: 'cmm 2/13/2008 13:35'!
recordConflictsBetween: aMagmaArrayChanges and: challengingCommitLogEntry in: myCommitLogEntry 
	"For MagmaArray's, different sessions may update the Array as long as they update different indexes."
	(challengingCommitLogEntry hasChangesToMagmaArray: aMagmaArrayChanges collectionOid) ifTrue: 
		[ | foreignChanges |
		foreignChanges _ challengingCommitLogEntry magmaArrayChangesAt: aMagmaArrayChanges collectionOid.
		aMagmaArrayChanges additionsDo: 
			[ : eachIndex : eachOid | 
			((foreignChanges includesObject: eachIndex) and: [ (foreignChanges added at: eachIndex) ~= eachOid ]) ifTrue: 
				[ "this user tried to put a different oid at the same index, conflict!!"
				myCommitLogEntry 
					failResultWith: challengingCommitLogEntry connection
					on: aMagmaArrayChanges collectionOid ] ] ]! !

!MagmaArrayManager methodsFor: 'overriding' stamp: 'cmm 3/18/2005 13:33'!
recordGeneralConflictsWith: aMagmaLargeCollectionChanges in: aMaCommitLogEntry

	"no general conflicts for MagmaArray's."! !

!MagmaArrayManager methodsFor: 'overriding' stamp: 'cmm 6/5/2006 23:35'!
upTo: anInteger inSegmentFromIndex: lowIndex

	| oids |
	oids _ 
		memberIndex
			upTo: anInteger
			startingAt: lowIndex.
	^ MagmaCollectionSegment new
		lastKnownSize: memberIndex size ;
		startIndex: lowIndex ;
		objects: oids ;
		yourself! !

!MagmaArrayManager methodsFor: 'initializing' stamp: 'cmm 4/29/2007 21:48'!
openIndex: filenameString 
	^ MaLargeArrayOfNumbers open: ((MaAtomicFileStream fileNamed: filenameString)
			pool: repository filePool ;
			yourself)! !

!MagmaArrayManager methodsFor: 'actions' stamp: 'cmm 3/18/2005 10:55'!
process: aMaCollectionChanges recordResultsIn: aMaCommitResult

	self
		processAddsIn: aMaCollectionChanges
		using: aMaCommitResult.! !

!MagmaArrayManager methodsFor: 'private' stamp: 'cmm 2/13/2008 11:58'!
processAddsIn: aMagmaArrayChanges using: aMaCommitResult 
	aMagmaArrayChanges additionsDo: 
		[ : eachIndex : eachOid | 
		memberIndex 
			at: eachIndex
			put: eachOid ]! !

!MagmaCollectionManager methodsFor: 'private' stamp: 'cmm 7/4/2006 15:43'!
addMember: addedObjectOid atHashes: eachHashIndexArrays 
	memberIndex 
		add: self dummyValue
		at: addedObjectOid.
	eachHashIndexArrays withIndexDo: 
		[ : eachHashValues : x | 
		eachHashValues do: 
			[ : eachHashValue | 
			(oidIndexes at: x) 
				add: addedObjectOid
				at: eachHashValue.
			(keyIndexes at: x) 
				add: eachHashValue
				at: addedObjectOid ] ]! !

!MagmaCollectionManager methodsFor: 'private' stamp: 'cmm 7/2/2006 21:22'!
dummyValue
	"For the memberIndex, we only use the keys, answer a dummy value for the values."
	^ 0! !

!MagmaCollectionManager methodsFor: 'private' stamp: 'cmm 7/11/2006 21:38'!
fileIdForOids: aBoolean index: anInteger
	"To support recovery, we must populate MaBeforeImageRecords with a fileId identifying which file it is a before-image of.  We have eight bytes available for this.  The high-order 48-bits are my collectionOid, the low-order 15 bits indicate which index of the collection it is.  0 is the memberIndex.  For the other indexes (where lower-order 15 bits > 0), bit 16 is 1 for keys, 0 for oids."
	| isKeysBit indexId |
	isKeysBit _ 16.
	(anInteger maIsBitSet: isKeysBit) ifTrue: 
		[ MagmaSoftwareError signal: 'Cannot have more than ' , ((0 maBitSet: isKeysBit) - 1) printString , ' indexes for a single collection.' ].
	indexId _ aBoolean 
		ifTrue: [ anInteger ]
		ifFalse: [ anInteger maBitSet: isKeysBit ].
	^ (self collectionOid bitShift: 16) + indexId! !

!MagmaCollectionManager methodsFor: 'private' stamp: 'cmm 5/28/2007 10:28'!
filenameComponentFor: aMagmaIndexDescription 
	^ self collectionOid printString , aMagmaIndexDescription attribute! !

!MagmaCollectionManager methodsFor: 'private' stamp: 'cmm 5/28/2007 10:27'!
filenameFor: keysOrOids of: aMagmaIndexDescription
	^ (String streamContents:
		[ : stream |
		stream
			nextPutAll: (self filenameComponentFor: aMagmaIndexDescription) ;
			nextPut: $- ;
			nextPutAll: keysOrOids ;
			nextPut: $. ;
			nextPutAll: MaHashIndex suggestedFileExtension ])! !

!MagmaCollectionManager methodsFor: 'private' stamp: 'cmm 5/28/2007 10:27'!
fullFileNameStringFor: keysOrOids of: aMagmaIndexDescription 
	^ repository directory fullNameFor: 
		(self 
			filenameFor: keysOrOids
			of: aMagmaIndexDescription)! !

!MagmaCollectionManager methodsFor: 'private' stamp: 'cmm 8/6/2006 21:21'!
load: aMagmaCollectionReaderSegment upTo: anInteger where: aMaExpression withObjects: aBoolean except: removedOids
	(MaQueryExecutor 
		collectionManager: self
		expression: aMaExpression) 
		load: aMagmaCollectionReaderSegment
		upTo: anInteger
		withObjects: aBoolean
		except: removedOids.
	^ aMagmaCollectionReaderSegment! !

!MagmaCollectionManager methodsFor: 'private' stamp: 'cmm 4/13/2006 17:34'!
processAddNewIndexValuesIn: aMagmaCollectionChanges 
	"Serialize the new values for an index that is being built."
	aMagmaCollectionChanges hasNewIndexValues ifFalse: [ ^ self ].
	aMagmaCollectionChanges newIndexValues keysAndValuesDo: 
		[ : eachAttribute : eachValues | 
		| oidsIndex keysIndex |
		oidsIndex _ self oidsIndexForAttribute: eachAttribute.
		keysIndex _ self keysIndexForAttribute: eachAttribute.
		eachValues do: 
			[ : eachAssociation | 
			eachAssociation key do: 
				[ : eachKey | 
				oidsIndex 
					add: eachAssociation value
					at: eachKey.
				keysIndex
					add: eachKey
					at: eachAssociation value ] ] ]! !

!MagmaCollectionManager methodsFor: 'private' stamp: 'cmm 6/11/2006 20:35'!
processAddsIn: aMaCollectionChanges using: aMaCommitResult 
	aMaCollectionChanges additionsDo: 
		[ : eachOid : eachHashIndexArrays | 
		| addedObjectOid |
		addedObjectOid _ (MaOidCalculator isOidForNewObject: eachOid) 
			ifTrue: [ aMaCommitResult permanentOids at: eachOid ]
			ifFalse: [ eachOid ].
		self 
			addMember: addedObjectOid
			atHashes: eachHashIndexArrays ]! !

!MagmaCollectionManager methodsFor: 'private' stamp: 'cmm 8/17/2007 21:59'!
processChangedIndexValuesIn: aMaCollectionChanges 
	aMaCollectionChanges changedKeySpecificationsDo: 
		[ : eachChangedKeySpecification | 
		| oidsIndex keysIndex |
		oidsIndex _ self oidsIndexForAttribute: eachChangedKeySpecification attribute.
		keysIndex _ self keysIndexForAttribute: eachChangedKeySpecification attribute.
		(memberIndex includesKey: eachChangedKeySpecification object) ifTrue: 
			[ eachChangedKeySpecification oldHashValues do: 
				[ : eachChangedKeySpecificationHashKeyValue | 
				oidsIndex 
					remove: eachChangedKeySpecification oid
					at: eachChangedKeySpecificationHashKeyValue.
				keysIndex
					remove: eachChangedKeySpecificationHashKeyValue 
					at: eachChangedKeySpecification oid ].
			eachChangedKeySpecification newHashValues do: 
				[ : eachChangedKeySpecificationHashKeyValue | 
				oidsIndex 
					add: eachChangedKeySpecification oid
					at: eachChangedKeySpecificationHashKeyValue.
				keysIndex
					add: eachChangedKeySpecificationHashKeyValue 
					at: eachChangedKeySpecification oid ] ] ]! !

!MagmaCollectionManager methodsFor: 'private' stamp: 'cmm 3/16/2005 22:58'!
processLockIn: aMaCollectionChanges using: aMagmaConnection

	aMaCollectionChanges hasLockSpecified
		ifTrue:
			[ aMaCollectionChanges isLocked
				ifTrue: [ self beLockedBy: aMagmaConnection ]
				ifFalse: [ self beLockedBy: nil ] ]! !

!MagmaCollectionManager methodsFor: 'private' stamp: 'cmm 6/23/2009 10:33'!
processRemovedIndexesIn: aMaCollectionChanges 
	aMaCollectionChanges removedIndexesDo: 
		[ : eachAttribute | 
		{ 
			(self oidsIndexForAttribute: eachAttribute).
			(self keysIndexForAttribute: eachAttribute)
		 } do: [ : eachHashIndex | self removeIndex: eachHashIndex ].
		keyIndexesByAttribute 
			removeKey: eachAttribute
			ifAbsent: 
				[ "hmmm"
				 ].
		oidIndexesByAttribute 
			removeKey: eachAttribute
			ifAbsent: 
				[ "don't think this should happen, but would hate to blow up when someone is just trying to remove an index."
				 ] ]! !

!MagmaCollectionManager methodsFor: 'private' stamp: 'cmm 7/12/2006 23:29'!
processRemovesIn: aMaLargeCollectionChanges 
	aMaLargeCollectionChanges removedDo: 
		[ : eachOid : eachHashIndexValuesArray | 
		| didRemove |
		didRemove _ memberIndex 
			remove: self dummyValue
			at: eachOid.
		didRemove ifTrue: 
			[ eachHashIndexValuesArray withIndexDo: 
				[ : eachArray : x | 
				eachArray do: 
					[ : eachKeyValue | 
					(oidIndexes at: x) 
						remove: eachOid
						at: eachKeyValue.
					(keyIndexes at: x) 
						remove: eachKeyValue
						at: eachOid ] ] ] ]! !

!MagmaCollectionManager methodsFor: 'private' stamp: 'cmm 8/19/2007 21:00'!
recordConflictsBetween: aMagmaCollectionChanges and: challengingCommitLogEntry in: myCommitLogEntry 
	"Fail my result if any indexes have been added or removed since my last transaction boundary, because any adds or removes will have the wrong number of index values."
	(challengingCommitLogEntry hasCommitted: oidOfIndexesCollection) ifTrue: 
		[ myCommitLogEntry 
			failResultWith: challengingCommitLogEntry connection
			on: oidOfIndexesCollection ].
	"Fail my result if any objects being added or removed have been changed by any other session, because otherwise their index hash calculations may be incorrect."
	aMagmaCollectionChanges additionsDo: 
		[ : eachOid : eachHashIndexValues | 
		(challengingCommitLogEntry hasCommitted: eachOid) ifTrue: 
			[ myCommitLogEntry 
				failResultWith: challengingCommitLogEntry connection
				on: eachOid ] ].
	aMagmaCollectionChanges removedDo: 
		[ : eachOid : eachHashIndexValues | 
		(challengingCommitLogEntry hasCommitted: eachOid) ifTrue: 
			[ myCommitLogEntry 
				failResultWith: challengingCommitLogEntry connection
				on: eachOid ] ].
	"Fail my result if any objects being indexed have been changed by any other session, because otherwise their index hash calculations may be incorrect."
	aMagmaCollectionChanges newIndexValuesDo: 
		[ : eachOrderedCollection | 
		eachOrderedCollection do: 
			[ : eachAssocation | 
			(challengingCommitLogEntry hasCommitted: eachAssocation value) ifTrue: 
				[ myCommitLogEntry 
					failResultWith: challengingCommitLogEntry connection
					on: eachAssocation value ] ] ].
	"Fail my result if object keys being changed have been added or removed by any other session."
	challengingCommitLogEntry commitPackage allLargeCollectionChanges do: 
		[ : eachChallengingChanges | 
		eachChallengingChanges collectionOid = aMagmaCollectionChanges collectionOid ifTrue: 
			[ aMagmaCollectionChanges changedKeySpecificationsDo: 
				[ : eachChangedKeySpecification | 
				{ 
					(eachChallengingChanges added).
					(eachChallengingChanges removed)
				 } do: 
					[ : addedOrRemoved | 
					(addedOrRemoved includesKey: eachChangedKeySpecification oid) ifTrue: 
						[ myCommitLogEntry 
							failResultWith: challengingCommitLogEntry connection
							on: eachChangedKeySpecification oid ] ] ] ] ]! !

!MagmaCollectionManager methodsFor: 'private' stamp: 'cmm 9/28/2008 15:11'!
recordGeneralConflictsWith: aMagmaLargeCollectionChanges in: aMaCommitLogEntry

	"If its locked by someone else, no changes are allowed."
	(self isLocked
	and: [ aMaCommitLogEntry connection sessionId ~= lockedBy sessionId ])
		ifTrue:
			[ aMaCommitLogEntry
				failResultWith: self lockedBy
				on: aMagmaLargeCollectionChanges collectionOid ]! !

!MagmaCollectionManager methodsFor: 'private' stamp: 'cmm 6/23/2009 10:28'!
removeIndex: aMaHashIndex 
	aMaHashIndex
		close ;
		filesDo: [ : each | repository queueForDelete: each ].
	oidIndexes 
		remove: aMaHashIndex
		ifAbsent: 
			[ "normal"
			 ].
	keyIndexes 
		remove: aMaHashIndex
		ifAbsent: 
			[ "normal"
			 ]! !

!MagmaCollectionManager methodsFor: 'private' stamp: 'cmm 6/5/2006 23:34'!
upTo: anInteger inSegmentFromIndex: lowIndex

	| keysAndValues |
	keysAndValues _  
		memberIndex
			upTo: anInteger
			keysAndValuesFromIndex: lowIndex.
	^ MagmaCollectionSegment new
		lastKnownSize: memberIndex size ;
		startIndex: lowIndex ;
		objects: keysAndValues first  "there are no 'values' in the member-index, the keys are the objects." ;
		yourself! !

!MagmaCollectionManager methodsFor: 'initialize-release' stamp: 'cmm 5/28/2007 10:26'!
addNewIndex: aMagmaIndexDescription 
	oidIndexes add: (oidIndexesByAttribute 
			at: aMagmaIndexDescription attribute
			put: (MaHashIndex 
					create: (
						(MaAtomicFileStream fileNamed: (self 
								fullFileNameStringFor: 'oids'
								of: aMagmaIndexDescription))
							pool: repository filePool ;
							yourself)
					keySize: aMagmaIndexDescription keySize
					valueSize: MaObjectBuffer oidSize
					recordSize: aMagmaIndexDescription recordSize)).
	keyIndexes add: (keyIndexesByAttribute 
			at: aMagmaIndexDescription attribute
			put: (MaHashIndex 
					create: (
						(MaAtomicFileStream fileNamed: (self 
								fullFileNameStringFor: 'keys'
								of: aMagmaIndexDescription))
							pool: repository filePool ;
							yourself)
					keySize: MaObjectBuffer oidSize
					valueSize: aMagmaIndexDescription keySize
					recordSize: aMagmaIndexDescription recordSize))! !

!MagmaCollectionManager methodsFor: 'initialize-release' stamp: 'cmm 4/13/2006 14:30'!
close
	super close.
	oidIndexes do: [ : each | each close ].
	keyIndexes do: [ : each | each close ]! !

!MagmaCollectionManager methodsFor: 'initialize-release' stamp: 'cmm 4/13/2006 10:05'!
ensureIndex: aMaIndexDefinition at: indexPosition 
	oidIndexes size < indexPosition ifTrue: [ self addNewIndex: aMaIndexDefinition ]! !

!MagmaCollectionManager methodsFor: 'initialize-release' stamp: 'cmm 5/28/2007 21:21'!
ensureIndexesOpen
	collection descriptionsDo: 
		[ : each | 
		(self hasIndexFor: each attribute) ifFalse: 
			[ oidIndexes add: 
				(oidIndexesByAttribute 
					at: each attribute
					put: 
						(self openIndex: 
							(self 
								fullFileNameStringFor: 'oids'
								of: each))).
			keyIndexes add: 
				(keyIndexesByAttribute 
					at: each attribute
					put: 
						(self openIndex: 
							(self 
								fullFileNameStringFor: 'keys'
								of: each))) ] ]! !

!MagmaCollectionManager methodsFor: 'initialize-release' stamp: 'cmm 10/22/2006 15:10'!
filePool: aMaFileStreamPool
	super filePool: aMaFileStreamPool.
	oidIndexes do: [ : each | each filePool: aMaFileStreamPool ].
	keyIndexes do: [ : each | each filePool: aMaFileStreamPool ]! !

!MagmaCollectionManager methodsFor: 'initialize-release' stamp: 'cmm 8/12/2007 20:22'!
initialize
	super initialize.
	"we need them mapped to the correct attribute."
	oidIndexesByAttribute _ Dictionary new.
	keyIndexesByAttribute _ Dictionary new.
	"and we must know the correct order, as well"
	oidIndexes _ OrderedCollection new.
	keyIndexes _ OrderedCollection new! !

!MagmaCollectionManager methodsFor: 'locking' stamp: 'cmm 3/16/2005 14:13'!
beLockedBy: aMagmaClientConnection

	lockedBy _ aMagmaClientConnection! !

!MagmaCollectionManager methodsFor: 'overriding' stamp: 'cmm 11/17/2010 10:37'!
createNewLargeCollection
	| fullFilename |
	fullFilename _ repository collectionFilenameFor: collection.
	memberIndex _ MaHashIndex 
		create: (
			(MaAtomicFileStream fileNamed: fullFilename)
				pool: repository filePool ;
				yourself)
		keySize: MaObjectBuffer oidSize
		valueSize: 8
		recordSize: 32! !

!MagmaCollectionManager methodsFor: 'overriding' stamp: 'cmm 4/29/2007 21:48'!
openIndex: aString 
	^ MaHashIndex open: ((MaAtomicFileStream fileNamed: aString)
			pool: repository filePool ;
			yourself)! !

!MagmaCollectionManager methodsFor: 'overriding' stamp: 'cmm 3/16/2005 22:57'!
process: aMaCollectionChanges recordResultsIn: aMaCommitResult

	self
		processLockIn: aMaCollectionChanges
		using: aMaCommitResult connection.
	self processRemovedIndexesIn: aMaCollectionChanges.
	self
		processAddsIn: aMaCollectionChanges
		using: aMaCommitResult.
	self
		processRemovesIn: aMaCollectionChanges;
		processChangedIndexValuesIn: aMaCollectionChanges;
		processAddNewIndexValuesIn: aMaCollectionChanges! !

!MagmaCollectionManager methodsFor: 'actions' stamp: 'cmm 5/28/2007 21:21'!
createSupplementaryIndexes
	| position |
	position _ 0.
	collection descriptionsDo:
		[ : each |
		self
			ensureIndex: each
			at: (position _ position + 1) ]! !

!MagmaCollectionManager methodsFor: 'actions' stamp: 'cmm 6/13/2006 00:26'!
delete
	self filesDo: 
		[ : eachFile : eachFileId | 
		eachFile close.
		repository directory deleteFileNamed: eachFile filename ]! !

!MagmaCollectionManager methodsFor: 'actions' stamp: 'cmm 3/17/2005 17:22'!
ensureOpen

	super ensureOpen.
	self ensureIndexesOpen! !

!MagmaCollectionManager methodsFor: 'accessing' stamp: 'cmm 4/13/2006 12:48'!
filenames
	^ super filenames , 
	(oidIndexes, keyIndexes collect: [ : each | repository directory localNameFor: each filename ])! !

!MagmaCollectionManager methodsFor: 'accessing' stamp: 'cmm 7/19/2007 22:26'!
keysIndexForAttribute: aSymbol
	aSymbol isNil ifTrue: [ ^ self memberIndex ].
	^ keyIndexesByAttribute 
		at: aSymbol
		ifAbsent: 
			[ MagmaUserError signal: 'The keys index for ' , aSymbol , ' was not found. ' ]! !

!MagmaCollectionManager methodsFor: 'accessing' stamp: 'cmm 7/26/2006 17:39'!
loadExecutor: aMaQueryExecutor
	loadExecutor _ aMaQueryExecutor! !

!MagmaCollectionManager methodsFor: 'accessing' stamp: 'cmm 7/4/2006 18:33'!
loadProcess
	^loadProcess! !

!MagmaCollectionManager methodsFor: 'accessing' stamp: 'cmm 7/4/2006 18:33'!
loadProcess: aProcess
	loadProcess _ aProcess! !

!MagmaCollectionManager methodsFor: 'accessing' stamp: 'cmm 1/5/2010 14:58'!
loadProgress
	^ loadExecutor 
		ifNil: 
			[ Fraction 
				numerator:
					(self isLoading 
						ifTrue: [ 0 ]
						ifFalse: [ 1 ])
				denominator: 1 ]
		ifNotNil: [ loadExecutor fractionComplete ]! !

!MagmaCollectionManager methodsFor: 'accessing' stamp: 'cmm 3/16/2005 14:22'!
lockedBy
	"Answers a MagmaClientConnection."

	^lockedBy! !

!MagmaCollectionManager methodsFor: 'accessing' stamp: 'cmm 3/16/2005 14:13'!
oidOfIndexesCollection: anInteger

	oidOfIndexesCollection _ anInteger
! !

!MagmaCollectionManager methodsFor: 'accessing' stamp: 'cmm 7/19/2007 22:25'!
oidsIndexForAttribute: aSymbol
	aSymbol isNil ifTrue: [ ^ self memberIndex ].
	^ oidIndexesByAttribute 
		at: aSymbol
		ifAbsent: 
			[ MagmaUserError signal: 'The oids index for ' , aSymbol , ' was not found. ' ]! !

!MagmaCollectionManager methodsFor: 'recovery' stamp: 'cmm 4/14/2006 12:41'!
filesDo: twoArgBlock 
	super filesDo: twoArgBlock.
	oidIndexes withIndexDo: 
		[ : each : x | 
		each filesDo: 
			[ : eachIndexFile | 
			twoArgBlock 
				value: eachIndexFile
				value: 
					(self 
						fileIdForOids: true
						index: x) ] ].
	keyIndexes withIndexDo: 
		[ : each : x | 
		each filesDo: 
			[ : eachIndexFile | 
			twoArgBlock 
				value: eachIndexFile
				value: 
					(self 
						fileIdForOids: false
						index: x) ] ]! !

!MagmaCollectionManager methodsFor: 'recovery' stamp: 'cmm 7/16/2006 22:41'!
indexForFileId: anInteger 
	"To support recovery of LargeCollections, we must replace the applied records to their prior-state, which is contained inside MaBeforeImageRecords."
	| indexId |
	indexId _ 2r111111111111111 bitAnd: anInteger.	"15-bit index #"
	^ indexId = 0 
		ifTrue: [ memberIndex ]
		ifFalse: 
			[ (anInteger maIsBitSet: 16) 
				ifTrue: [ keyIndexes at: indexId ]
				ifFalse: [ oidIndexes at: indexId ] ]! !

!MagmaCollectionManager methodsFor: 'testing' stamp: 'cmm 4/13/2006 10:05'!
hasIndexFor: attributeSymbol 
	^ oidIndexesByAttribute includesKey: attributeSymbol! !

!MagmaCollectionManager methodsFor: 'testing' stamp: 'cmm 11/10/2010 14:21'!
isLoading
	^ loadProcess notNil and:
		[ loadProcess everStarted and: [ loadProcess isTerminated not ] ]! !

!MagmaCollectionManager methodsFor: 'testing' stamp: 'cmm 3/16/2005 14:22'!
isLocked

	^lockedBy ~= nil! !

!MagmaCollectionManager methodsFor: 'testing' stamp: 'cmm 1/5/2010 13:52'!
shouldStopLoading
	^ repository wantsToClose or: [ self wantsReleased ]! !

!MagmaCollectionManager methodsFor: 'testing' stamp: 'cmm 1/5/2010 14:36'!
wantsReleased
	^ wantsReleased ifNil: [ false ]! !

!MagmaCollectionManager methodsFor: 'load' stamp: 'cmm 1/5/2010 13:52'!
wantsReleased: aBoolean 
	wantsReleased _ aBoolean! !

!MaObjectFiler methodsFor: 'accessing' stamp: 'kph 6/18/2007 12:14'!
anchorOid

	^ self primitiveAttributeAt: #anchorOid! !

!MaObjectFiler methodsFor: 'accessing' stamp: 'cmm 10/23/2008 17:58'!
branchCode
	"The branchCode is a randomly-generated number used to prevent accidentally applying the wrong commit-logs to a repository.  When performing a forward recovery, each CommitLogRecord's #branchCode must match mine.  Every time a commitRestore is performed, this branchCode is updated to a new number."
	^ self primitiveAttributeAt: #branchCode
! !

!MaObjectFiler methodsFor: 'accessing' stamp: 'kph 6/18/2007 12:14'!
classDefinitionsOid

	^self primitiveAttributeAt: #classDefinitionsOid
! !

!MaObjectFiler methodsFor: 'accessing' stamp: 'kph 6/18/2007 12:15'!
commitNumber
	^ self primitiveAttributeAt: #commitNumber! !

!MaObjectFiler methodsFor: 'accessing' stamp: 'kph 6/18/2007 12:15'!
definitionOid

	^ self primitiveAttributeAt: #definitionOid! !

!MaObjectFiler methodsFor: 'accessing' stamp: 'cmm 9/26/2004 20:25'!
directory
	^ directory! !

!MaObjectFiler methodsFor: 'accessing' stamp: 'cmm 3/9/2009 22:28'!
filePointerForOid: oidInteger 
	| answer |
	answer _ filePositionIndex 
		at: (MaOidCalculator indexPositionForOid: oidInteger)
		ifAbsent: 
			[ MagmaInvalidOid signal: oidInteger printString , ' is not a valid oid.' ].
	answer = 0 ifTrue: 
		[ MagmaInvalidOid signal: oidInteger printString , ' has been reclaimed.' ].
	^ answer! !

!MaObjectFiler methodsFor: 'accessing' stamp: 'jpb 5/11/2021 18:00:34'!
filePositionIndexFileName

	^ (directory // self class objectPointersFilename) asString! !

!MaObjectFiler methodsFor: 'accessing' stamp: 'cmm 5/27/2007 15:08'!
getNextOid
	^ MaOidCalculator oidForFilePositionIndexPosition: filePositionIndex size! !

!MaObjectFiler methodsFor: 'accessing' stamp: 'cmm 2/24/2009 14:37'!
initializeBranchCode
	| oldBranchCode newBranchCode |
	oldBranchCode _ self branchCode.
	[ (newBranchCode _ (1 to: (1 bitShift: 32) - 1) atRandom) = oldBranchCode ] whileTrue.
	self branchCode: newBranchCode! !

!MaObjectFiler methodsFor: 'accessing' stamp: 'cmm 5/1/2003 17:37'!
isOpen

	^file notNil and: [ file closed not ]! !

!MaObjectFiler methodsFor: 'accessing' stamp: 'cmm 4/21/2003 16:29'!
objectFileSize

	^file size! !

!MaObjectFiler methodsFor: 'accessing' stamp: 'jpb 5/12/2021 15:31:07'!
open
	directory exists ifFalse: [ MagmaEnvironmentError signal: 'Database Directory Not Found' ].
	(directory // self class objectsPhysicalFilename) exists
		ifFalse: [
			 MagmaEnvironmentError signal: (directory // self class objectsPhysicalFilename) asString , ' not found.' ].

	self openObjectsFile.
	[ self
		 validateSignature ;
		 openFilePositionIndex ] ifCurtailed: [ self close ]! !

!MaObjectFiler methodsFor: 'accessing' stamp: 'kph 6/18/2007 12:14'!
primitiveAttributeAt: aSymbol

	| assoc |

	^self
		uint: (assoc _ self primitiveAttributeAddressesMap at: aSymbol) value
		at: assoc key
! !

!MaObjectFiler methodsFor: 'accessing' stamp: 'cmm 1/8/2014 20:55'!
recordSampleAt: filePointer do: oneArgBlock 
	"Value oneArgBlock with the header and enough bytes for the first 8 oid pointers of MaObjectBuffer currently residing at filePointer.  8 because we need up to and including the 'deltaSum' inst-var of MagmaStat."
	preMadeObjectBuffer startPos: 0.
	file 
		maRead: 72 "(MagmaBufferPositionMap headerSize - 7 + 1) + (8*(MaObjectBuffer oidSize/8))"
		bytesFromPosition: preMadeObjectBuffer bufferPositionOfBytesToStore
		of: preMadeObjectBuffer byteArray
		atFilePosition: filePointer.
	^ oneArgBlock value: preMadeObjectBuffer! !

!MaObjectFiler methodsFor: 'accessing' stamp: 'cmm 6/18/2007 23:17'!
restoreMode
	^ self booleanFlags maIsBitSet: 1! !

!MaObjectFiler methodsFor: 'accessing' stamp: 'cmm 6/19/2007 21:53'!
restoreMode: aBoolean 
	^ self booleanFlags: 
		(aBoolean 
			ifTrue: [ self booleanFlags maBitSet: 1 ]
			ifFalse: [ self booleanFlags maBitClear: 1 ])! !

!MaObjectFiler methodsFor: 'accessing' stamp: 'kph 6/18/2007 12:16'!
signature

	^self primitiveAttributeAt: #signature
! !

!MaObjectFiler methodsFor: 'accessing' stamp: 'kph 6/18/2007 12:17'!
version

	^self primitiveAttributeAt: #version! !

!MaObjectFiler methodsFor: 'building' stamp: 'kph 6/18/2007 12:15'!
anchorOid: anInteger

	^ self
		primitiveAttributeAt: #anchorOid
		put: anInteger! !

!MaObjectFiler methodsFor: 'building' stamp: 'kph 6/18/2007 12:15'!
classDefinitionsOid: anInteger

	self
		primitiveAttributeAt: #classDefinitionsOid
		put: anInteger
! !

!MaObjectFiler methodsFor: 'building' stamp: 'kph 6/18/2007 12:15'!
commitNumber: anInteger 
	self 
		primitiveAttributeAt: #commitNumber
		put: anInteger! !

!MaObjectFiler methodsFor: 'building' stamp: 'kph 6/18/2007 12:15'!
definitionOid: anInteger

	^self
		primitiveAttributeAt: #definitionOid
		put: anInteger
! !

!MaObjectFiler methodsFor: 'private' stamp: 'cmm 2/26/2016 16:02'!
append: aMaObjectBuffer to: aMaSerializedGraphBuffer withDataAt: filePositionInteger 
	| startPos |
	startPos _ aMaSerializedGraphBuffer bufferSize.
	startPos > MaSerializedGraphBuffer sizeWarningThreshold ifTrue: [ (MaEnvironmentError messageText: 'Read too big (>' , startPos asBytesDescription , ').  Make a smaller read or increase the MaSerializedGraphBuffer class>>#sizeWarningThreshold on the server.') signal ].
	self
		ensureByteArrayIn: aMaObjectBuffer
		and: aMaSerializedGraphBuffer
		canAccomodate: self trackSize + aMaObjectBuffer bufferPositionOfBytesToStore
		bytesFrom: startPos + 1.
	aMaSerializedGraphBuffer increaseBufferSizeBy:
		(self
			read: self trackSize
			bytesInto: aMaObjectBuffer
			and: aMaSerializedGraphBuffer
			startingAt: startPos
			filePosition: filePositionInteger)! !

!MaObjectFiler methodsFor: 'private' stamp: 'cmm 10/24/2008 00:06'!
booleanFlags
	^ self primitiveAttributeAt: #booleanFlags! !

!MaObjectFiler methodsFor: 'private' stamp: 'cmm 10/24/2008 00:06'!
booleanFlags: anInteger 
	^ self 
		primitiveAttributeAt: #booleanFlags
		put: anInteger! !

!MaObjectFiler methodsFor: 'private' stamp: 'cmm 10/23/2008 17:53'!
branchCode: anInteger 
	^ self 
		primitiveAttributeAt: #branchCode
		put: anInteger! !

!MaObjectFiler methodsFor: 'private' stamp: 'cmm 1/7/2014 22:28'!
canPossiblyConflict: eachObjectBuffer
	^ (eachObjectBuffer classId = MagmaClassIdManager magmaCounterClassId) not and: [ (magmaStatClassIds includes: eachObjectBuffer classId) not ]! !

!MaObjectFiler methodsFor: 'private' stamp: 'cmm 9/24/2004 16:42'!
create: aFileDirectory

	self
		directory: aFileDirectory assureExistence ;
		createDataFile ;
		createFilePositionIndex.
	^ self! !

!MaObjectFiler methodsFor: 'private' stamp: 'jpb 5/11/2021 17:40:16'!
createDataFile
	((directory // self class objectsPhysicalFilename) exists) ifTrue: 
		[ MagmaEnvironmentError signal: directory pathName , ' already exists.' ].
	self openObjectsFile.
	"Write some extra blank space to allow for possible future fields."
	file 
		maWrite: self class sizeOfEmptyRepository
		bytesFromPosition: 1
		of: (ByteArray new: self class sizeOfEmptyRepository)
		atFilePosition: 0; 
		maCommit.
	self
		restoreMode: false ;
		classDefinitionsOid: MaOidCalculator oidForNil ;
		definitionOid: MaOidCalculator oidForNil ;
		signature: MaObjectRepository recognitionSignature ;
		version: MagmaSession magmaVersion ;
		commitNumber: 0 ;
		initializeBranchCode ! !

!MaObjectFiler methodsFor: 'private' stamp: 'cmm 4/29/2007 21:48'!
createFilePositionIndex
	filePositionIndex _ MaLargeArrayOfNumbers 
		create: (MaAtomicFileStream fileNamed: self filePositionIndexFileName)
		bitSize: self class maxDbSize! !

!MaObjectFiler methodsFor: 'private' stamp: 'cmm 9/24/2004 12:55'!
directory: aFileDirectory

	directory _ aFileDirectory! !

!MaObjectFiler methodsFor: 'private' stamp: 'cmm 12/30/2002 17:28'!
ensureByteArrayIn: aMaObjectBuffer and: aMaSerializedGraphBuffer canAccomodate: anInteger bytesFrom: startPos

	(startPos + anInteger) > aMaObjectBuffer byteArray size
		ifTrue:
			[ | bigByteArray beforeSize afterSize |
			beforeSize _ aMaObjectBuffer byteArray size.
			afterSize _ (aMaObjectBuffer byteArray size * 2) max: startPos + anInteger.
			bigByteArray _ ByteArray new: afterSize.
			bigByteArray
				replaceFrom: 1
				to: beforeSize
				with: aMaSerializedGraphBuffer byteArray
				startingAt: 1.
			aMaObjectBuffer byteArray: bigByteArray.
			aMaSerializedGraphBuffer byteArray: bigByteArray ]! !

!MaObjectFiler methodsFor: 'private' stamp: 'cmm 6/1/2005 23:57'!
ensureFilesOpen

	file ifNotNil: [ file closed ifTrue: [ self openObjectsFile ] ].
	filePositionIndex ifNil: [ self openFilePositionIndex ]! !

!MaObjectFiler methodsFor: 'private' stamp: 'cmm 1/8/2014 18:29'!
initialize

	super initialize.
	preMadeObjectBuffer _ MaObjectBuffer new.
	usedByteArrays _ (1 to: 8) collect: [ :each | ByteArray new: each ].
	self initializePrimitiveAttributeAddressesMap.
	magmaStatClassIds _ Set new! !

!MaObjectFiler methodsFor: 'private' stamp: 'cmm 10/23/2008 17:57'!
initializePrimitiveAttributeAddressesMap

	primitiveAttributeAddressesMap _ Dictionary new
		at: #signature put: (Association key: 0 value: 64);
		at: 0 put: #signature ;

		at: #version put: (Association key: 8 value: 16);
		at: 2 put: #version ;

		at: #booleanFlags put: (Association key: 10 value: 8);
		at: 10 put: #booleanFlags ;

		at: #definitionOid put: (Association key: 11 value: 64);
		at: 11 put: #definitionOid ;

		"gap 19-26"
		at: #classDefinitionsOid put: (Association key: 27 value: 64) ;
		at: 27 put: #classDefinitionsOid ;

		at: #anchorOid put: (Association key: 43 value: 64);
		at: 43 put: #anchorOid ;

		at: #commitNumber put: (51 -> 48) ;
		at: 51 put: #commitNumber ;

		at: #branchCode put: (57->32) ;
		at: 57 put: #branchCode ;

		yourself! !

!MaObjectFiler methodsFor: 'private' stamp: 'cmm 1/3/2014 14:41'!
magmaStatClassIds
	^ magmaStatClassIds! !

!MaObjectFiler methodsFor: 'private' stamp: 'jpb 5/11/2021 17:40:39'!
openFile: unqualifiedName 
	^ MaAtomicFileStream fileNamed: (directory // unqualifiedName) asString! !

!MaObjectFiler methodsFor: 'private' stamp: 'cmm 4/29/2007 21:48'!
openFilePositionIndex
	filePositionIndex _ 
	[ MaLargeArrayOfNumbers open: (MaAtomicFileStream fileNamed: self filePositionIndexFileName) ] ifCurtailed: [ self close ]! !

!MaObjectFiler methodsFor: 'private' stamp: 'cmm 5/10/2005 19:08'!
openObjectsFile

	file _ self openFile: self class objectsFilename! !

!MaObjectFiler methodsFor: 'private' stamp: 'cmm 12/13/2016 20:46'!
prewriteAdjustmentTo: bufferToWrite from: persistentBuffer
	bufferToWrite classId = MagmaClassIdManager magmaCounterClassId 
		ifTrue:
			[ | sharedValue delta |
			"These inst-var indices match MagmaCounter; hard-coded for maximum performance."
			sharedValue _ persistentBuffer
				ifNil: [ "A brand new counter" 0 ]
				ifNotNil: [ MaOidCalculator integerFromOid: (persistentBuffer maInstVarAt: 1) ].
			delta _ MaOidCalculator integerFromOid: (bufferToWrite maInstVarAt: 2).
			(sharedValue+delta) > 1073741823 ifTrue: [ MagmaStatOverflowCommitError signal ].
			bufferToWrite

				maInstVarAt: 1
				put: (MaOidCalculator oidForInteger: sharedValue + delta) ;

				maInstVarAt: 2
				put: (MaOidCalculator oidForInteger: 0) ]
		ifFalse:
			[ (magmaStatClassIds includes: bufferToWrite classId) ifTrue:
				[ | sharedCount deltaCount sharedSum deltaSum sharedMin sharedMax |
				"These inst-var indices match MagmaStat; hard-coded for maximum performance."
				persistentBuffer
					ifNil: 
						[ "A brand new stat" 
						sharedCount _ 0.
						sharedSum _ 0.0.
						sharedMin _ Float infinity.
						sharedMax _ Float infinity negated ]
					ifNotNil: 
						[ sharedCount _ MaOidCalculator integerFromOid: (persistentBuffer maInstVarAt: 2).
						sharedSum _ MaOidCalculator floatFromOid: (persistentBuffer maInstVarAt: 3).
						sharedMin _ MaOidCalculator floatFromOid: (persistentBuffer maInstVarAt: 4).
						sharedMax _ MaOidCalculator floatFromOid: (persistentBuffer maInstVarAt: 5) ].
				deltaCount _ MaOidCalculator integerFromOid: (bufferToWrite maInstVarAt: 7).
				sharedCount + deltaCount >  1073741823 "SmallInteger maxVal" ifTrue: [ MagmaStatOverflowCommitError signal ].
				deltaSum _ MaOidCalculator floatFromOid: (bufferToWrite maInstVarAt: 8).
				bufferToWrite

					maInstVarAt: 2 "count"
					put: (MaOidCalculator oidForInteger: (sharedCount+deltaCount)) ;

					maInstVarAt: 3 "sum"
					put: (MaOidCalculator oidForFloat: sharedSum + deltaSum) ;

					maInstVarAt: 4 "min"
					put: (MaOidCalculator oidForFloat: (sharedMin min: (MaOidCalculator floatFromOid: (bufferToWrite maInstVarAt: 4)))) ;

					maInstVarAt: 5 "max"
					put: (MaOidCalculator oidForFloat: (sharedMax max: (MaOidCalculator floatFromOid: (bufferToWrite maInstVarAt: 5)))) ;

					"The 'last' variable in bufferToWrite wins over the one in persistentBuffer."

					maInstVarAt: 7  "deltaCount -- make it 0 so that's how it'll be read by clients."
					put: (MaOidCalculator oidForInteger: 0) ;

					maInstVarAt: 8  "deltaSum -- make it 0 so that's how it'll be read by clients."
					put: (MaOidCalculator oidForFloat: 0.0) ] ]! !

!MaObjectFiler methodsFor: 'private' stamp: 'cmm 12/30/2002 21:15'!
primitiveAttributeAddressesMap

	^primitiveAttributeAddressesMap! !

!MaObjectFiler methodsFor: 'private' stamp: 'kph 6/18/2007 12:13'!
primitiveAttributeAt: aSymbol put: anInteger

	| assoc |

	self
		uint: (assoc _ self primitiveAttributeAddressesMap at: aSymbol) value
		at: assoc key
		put: anInteger
! !

!MaObjectFiler methodsFor: 'private' stamp: 'cmm 12/24/2012 10:48'!
read: numberOfBytes bytesInto: aMaObjectBuffer and: aMaSerializedGraphBuffer startingAt: startPos filePosition: anInteger 
	"startPos is 0-based, answer the physicalSize of the buffer read."
	^ file guard:
		[ | physicalSize numberOfBytesRead numberOfBytesStored |
		numberOfBytesRead _ file
			maRead: numberOfBytes
			bytesFromPosition: startPos + aMaObjectBuffer bufferPositionOfBytesToStore
			of: aMaObjectBuffer byteArray
			atFilePosition: anInteger.
		"See if we have read enough, if not read the rest of the buffer."
		numberOfBytesStored _ aMaObjectBuffer numberOfBytesToStore.
		physicalSize _ aMaObjectBuffer physicalSize.
		numberOfBytesStored > numberOfBytesRead ifTrue:
			[ | resumePosition |
			resumePosition _ startPos + numberOfBytesRead + aMaObjectBuffer bufferPositionOfBytesToStore.
			self
				ensureByteArrayIn: aMaObjectBuffer
				and: aMaSerializedGraphBuffer
				canAccomodate: physicalSize
				bytesFrom: resumePosition.
			file
				next: numberOfBytesStored - numberOfBytesRead
				into: aMaSerializedGraphBuffer byteArray
				startingAt: resumePosition ].
		physicalSize ]! !

!MaObjectFiler methodsFor: 'private' stamp: 'kph 6/18/2007 12:17'!
signature: anInteger

	self
		primitiveAttributeAt: #signature
		put: anInteger
! !

!MaObjectFiler methodsFor: 'private' stamp: 'cmm 8/12/2002 23:48'!
trackSize
	"This is the minimum number of bytes to read from disk for any object.
	This particular value allows up to 32 instVars to be read at once."

	"^MaAbstractObjectBuffer addressSize * 32 + MaNormalObjectBuffer headerSize"
	^280 "same as above, but faster.."! !

!MaObjectFiler methodsFor: 'private' stamp: 'cmm 9/24/2004 13:22'!
uint: bits at: anInteger

	| address bytes |

	address _ self usedByteArray: (bytes _ bits / 8).
	file
		maRead: bytes
		bytesFromPosition: 1
		of: address
		atFilePosition: anInteger.
	^address
		maUint: bits
		at: 0
! !

!MaObjectFiler methodsFor: 'private' stamp: 'cmm 5/16/2007 10:19'!
uint: bits at: filePointer put: anInteger 
	| ba bytes |
	ba _ self usedByteArray: (bytes _ bits / 8).
	ba 
		maUint: bits
		at: 0
		put: anInteger.
	file 
		maWrite: bytes
		bytesFromPosition: 1
		of: ba
		atFilePosition: filePointer! !

!MaObjectFiler methodsFor: 'private' stamp: 'cmm 7/16/2002 00:08'!
usedByteArray: size

	^usedByteArrays at: size
! !

!MaObjectFiler methodsFor: 'private' stamp: 'kph 6/18/2007 12:17'!
version: anInteger

	self
		primitiveAttributeAt: #version
		put: anInteger
! !

!MaObjectFiler methodsFor: 'private' stamp: 'cmm 1/19/2005 15:40'!
write: aMaObjectBuffer at: filePosition
	"Note that the oid is stored in the filePositionsIndex, so there is no need to store it in the data file too.  The oid is the first 8-bytes of the buffer."

	file
		maWrite: aMaObjectBuffer numberOfBytesToStore
		bytesFromPosition:
			aMaObjectBuffer startPos + aMaObjectBuffer bufferPositionOfBytesToStore
		of: aMaObjectBuffer byteArray
		atFilePosition: filePosition! !

!MaObjectFiler methodsFor: 'actions' stamp: 'cmm 1/25/2005 14:10'!
appendObject: oidInteger into: aMaSerializedGraphBuffer
	"Read a single object into aMaSerializedGraphBuffer and adjust its bufferSize accordingly."

	| buffer |
	preMadeObjectBuffer
		byteArray: aMaSerializedGraphBuffer byteArray;
		startPos: aMaSerializedGraphBuffer bufferSize.
	self
		append: preMadeObjectBuffer
		to: aMaSerializedGraphBuffer
		withDataAt: (self filePointerForOid: oidInteger).
	buffer _ preMadeObjectBuffer asSentientBuffer.
	"Set oid only after append because that is where the need for growth is checked."
	buffer oid: oidInteger.
	^buffer
! !

!MaObjectFiler methodsFor: 'actions' stamp: 'cmm 9/24/2004 13:22'!
close

	file ifNotNil:
		[ file closed ifFalse: [ file close ].
		file _ nil ].
	filePositionIndex ifNotNil:
		[ filePositionIndex close.
		filePositionIndex _ nil ]! !

!MaObjectFiler methodsFor: 'actions' stamp: 'cmm 12/2/2004 13:45'!
index: oidInteger at: filePositionInteger

	^filePositionIndex
		at: (MaOidCalculator indexPositionForOid: oidInteger)
		put: filePositionInteger! !

!MaObjectFiler methodsFor: 'actions' stamp: 'cmm 2/21/2008 12:04'!
validateSignature
	self signature = MaObjectRepository recognitionSignature ifFalse: 
		[ MagmaUserError signal: 'This does not appear to be a Magma database.' ]! !

!MaObjectFiler methodsFor: 'actions' stamp: 'cmm 1/25/2013 09:55'!
validateVersion
	"14 requires an upgrade using the Magma upgrader package."
	self version = 14 ifFalse:
		[ | msg |
		msg _ 'This database requires Magma version ' , self version printString , '.  You are running version ' , MagmaSession magmaVersion printString.
		({12. 
		13} includes: self version)
			ifTrue: 
			[ "This warning is handled by the MagmaUpgrader, so the user should not see it.  If they do, the message is correct."
			MagmaWarning signal: msg , '  You are not running the Magma Upgrader, so you must select Abandon.' ]
			ifFalse:
				[ ({MagmaSession magmaVersion. 16} includes: self version) ifFalse: [ MagmaUserError signal: msg ] ] ]! !

!MaObjectFiler methodsFor: 'actions' stamp: 'cmm 1/16/2014 16:54'!
write: aMaObjectBuffer index: aBoolean 
	"write a single object encapsulated by aMaObjectBuffer."
	| filePosition |
	filePosition _ aBoolean
		ifTrue:
			[ self
				
				prewriteAdjustmentTo: aMaObjectBuffer
				from: nil ;
				
				index: aMaObjectBuffer oid
				at: file size ]
		ifFalse:
			[ | pos |
			pos _ self filePointerForOid: aMaObjectBuffer oid.
			aMaObjectBuffer canGrow
				ifTrue:
					[ self
						recordSampleAt: pos
						do:
							[ : existingBuffer | self
								prewriteAdjustmentTo: aMaObjectBuffer
								from: existingBuffer.
							existingBuffer physicalSize = aMaObjectBuffer physicalSize
								ifTrue: [ pos ]
								ifFalse:
									[ self
										index: aMaObjectBuffer oid
										at: file size ] ] ]
				ifFalse: [ pos ] ].
	self
		write: aMaObjectBuffer
		at: filePosition! !

!MaObjectFiler methodsFor: 'debugging' stamp: 'cmm 3/26/2007 23:09'!
bufferFor: oidInteger 
	| buffer |
	buffer _ MaSerializedGraphBuffer new: 400.
	self 
		appendObject: oidInteger
		into: buffer.
	^ buffer rootBuffer trimByteArray! !

!MaObjectFiler methodsFor: 'debugging' stamp: 'cmm 12/3/2014 10:44'!
validateSpecialOid: selectorSymbol 
	((self perform: selectorSymbol) 
		between: FirstUserObjectOid
		and: FirstUserObjectOid + 10000) ifFalse: 
		[ MagmaCorruptionError signal: 'The ' , selectorSymbol , ' does not appear valid' ]! !

!MaObjectFiler methodsFor: 'recovery' stamp: 'cmm 7/5/2005 23:39'!
filesDo: twoArgBlock

	twoArgBlock
		value: file 
		value: MaApplyRecord objectsFileId.
	filePositionIndex filesDo:
		[ : each |
		twoArgBlock
			value: each
			value: MaApplyRecord filePositionsFileId ]! !

!MaObjectFiler methodsFor: 'recovery' stamp: 'cmm 6/5/2005 18:24'!
unapplyFilePositionsFileUsing: aMaApplyRecord

	filePositionIndex unapplyUsing: aMaApplyRecord! !

!MaObjectFiler methodsFor: 'recovery' stamp: 'cmm 4/10/2007 22:35'!
unapplyObjectsFileUsing: aMaApplyRecord 
	aMaApplyRecord unapplySelf: file! !

!MaObjectFiler methodsFor: 'recovery' stamp: 'cmm 6/13/2005 21:50'!
unapplyUsing: aMaApplyRecord
	"Reapply the contents of aMaBeforeImageRecord to the file it came from."

	aMaApplyRecord fileId
		caseOf:
			{ [ MaApplyRecord objectsFileId ] -> [ self unapplyObjectsFileUsing: aMaApplyRecord ].
			[ MaApplyRecord filePositionsFileId ] -> [ self unapplyFilePositionsFileUsing: aMaApplyRecord ] }
		otherwise:
			[ MagmaSoftwareError signal: 'unknown fileId' ]! !

!MaObjectFiler methodsFor: 'utilities' stamp: 'cmm 12/3/2014 10:43'!
objectBuffersDo: oneArgBlock 
	FirstUserObjectOid 
		to: self getNextOid
		do: 
			[ : eachOid | 
			| buffer |
			[ buffer _ self bufferFor: eachOid.
			oneArgBlock value: buffer ] 
				on: MagmaInvalidOid
				do: [ : err |  ] ]! !

!MaObjectFiler methodsFor: 'utilities' stamp: 'cmm 8/10/2010 20:52'!
objectFileOnlyBuffersDo: oneArgBlock 
	| graphBuffer nextStart oidSize |
	oidSize _ MaObjectBuffer oidSize / 8.
	nextStart _ self class sizeOfEmptyRepository.
	[ nextStart < file size ] whileTrue:
		[ graphBuffer _ MaSerializedGraphBuffer new: 400.
		preMadeObjectBuffer
			 byteArray: graphBuffer byteArray ;
			 startPos: graphBuffer headerSize.
		self
			append: preMadeObjectBuffer
			to: graphBuffer
			withDataAt: nextStart.
		oneArgBlock value: graphBuffer.
		nextStart _ nextStart + preMadeObjectBuffer physicalSize - oidSize ]! !

!MaObjectFiler class methodsFor: 'creation' stamp: 'cmm 9/24/2004 12:52'!
create: aFileDirectory

	^ self new create: aFileDirectory! !

!MaObjectFiler class methodsFor: 'creation' stamp: 'cmm 7/18/2005 13:23'!
open: aFileDirectory

	^ self new
		directory: aFileDirectory ;
		open ;
		yourself! !

!MaObjectFiler class methodsFor: 'accessing' stamp: 'cmm 4/28/2005 11:36'!
maxDbSize
	"Answers the maximum size of a Magma database as a power of 2.  Hmm, wow, 281 Terabytes huh..  This seems to be beyond any practical limits for a single repository; at least in year 2005, so we'll go with this for now."

	^ 48! !

!MaObjectFiler class methodsFor: 'accessing' stamp: 'cmm 5/10/2005 19:04'!
objectPointersFilename

	^ 'objects.idx'! !

!MaObjectFiler class methodsFor: 'accessing' stamp: 'cmm 4/23/2007 00:49'!
objectsFilename
	^ 'objects.dat'! !

!MaObjectFiler class methodsFor: 'accessing' stamp: 'cmm 4/23/2007 15:08'!
objectsPhysicalFilename
	"Since we're using MaTransactionalFileStreams, they also save multiple numbered files, so that unlimited repository sizes are possible."
	^ 'objects.1.dat'! !

!MaObjectFiler class methodsFor: 'accessing'!
sizeOfEmptyRepository
	"Answer in bytes."

	^1024
! !

!MaObjectRepository methodsFor: 'recovery' stamp: 'cmm 8/13/2007 22:22'!
captureBeforeImages
	"Capture a current description of the actual files in the places where we intend to change them.  We capture whether a file is new, whether it will be extended in length, and what file positions will be overwritten and what contents are there presently."
	self openDbFilesDo: 
		[ : eachAtomicFileStream : eachFileId | 
		recoveryManager 
			writeRollbackRecordsFor: eachAtomicFileStream
			fileId: eachFileId ].
	recoveryManager flush! !

!MaObjectRepository methodsFor: 'recovery' stamp: 'cmm 6/16/2005 11:04'!
fileManagerFor: aMaApplyRecord ifPresent: oneArgBlock ifAbsent: aBlock

	| fileManager |
	fileManager _ aMaApplyRecord fileId
		caseOf:
			{ [ MaApplyRecord objectsFileId ] -> [ filer ].
			[ MaApplyRecord filePositionsFileId ] -> [ filer ] }
		otherwise:
			[ (self 
				collectionManagerFor: aMaApplyRecord collectionOid
				ifAbsent: [ ^ aBlock value ]) indexForFileId: aMaApplyRecord fileId ].
	^ oneArgBlock value: fileManager! !

!MaObjectRepository methodsFor: 'recovery' stamp: 'jpb 5/12/2021 15:06:09'!
flushCacheSoon
	"Flushing is horribly expensive, but essential to ensure we can survive a power-outage without corruption.  To balance these opposing forces, we apply and flush only at certain interval, only in the background, only the files that needed flushed, and each file only flushed once."
	applyProcess ifNil: [
		applyProcess _ 	[
			 | startTime |
			startTime _ Time millisecondClockValue.
		
			[ (MaRegistry findMillisecondsSince: startTime) > (repositoryController cacheFlushFrequency * 1000) 
				or: [ wantsToClose ] ] 
					whileFalse: [ (Delay forSeconds: 1) wait ].
		
			self flushCritical: [self commitCritical: [ self flushCache. applyProcess _ nil ] ]
		]
		forkAt: (Processor userInterruptPriority max: Processor activeProcess priority + 1)
		named: 'flush Magma cache'
	]! !

!MaObjectRepository methodsFor: 'recovery' stamp: 'cmm 1/2/2009 20:50'!
flushIndividualCaches
	self openDbFilesDo: [ : eachFile : eachFileId | eachFile maCommit ]! !

!MaObjectRepository methodsFor: 'recovery' stamp: 'cmm 10/26/2006 18:43'!
openDbFilesDo: twoArgBlock 
	"Value twoArgBlock with each database file and its fileId."
	filer filesDo: twoArgBlock.
	largeCollectionManagers do: [ : each | each filesDo: twoArgBlock ]! !

!MaObjectRepository methodsFor: 'recovery' stamp: 'cmm 6/1/2005 23:56'!
primitiveRecover
	"This is needed in very rare, dire circumstances where the server was actually writing its own system-definition when an outage occurred.  In that case the repository will not even be able to open normally to get to the normal recovery.  That condition is trapped for any Error and sent here to try opening all files in the directory and then doing a normal unapply (rollback).  Theoretically, that should work."

	filer ensureFilesOpen.
	recoveryManager primitiveRecoverUsing: self! !

!MaObjectRepository methodsFor: 'recovery' stamp: 'cmm 10/28/2008 11:27'!
recoveryManager
	^ recoveryManager ! !

!MaObjectRepository methodsFor: 'recovery' stamp: 'cmm 3/2/2009 15:44'!
rollbackIfNecessary
	recoveryManager isRollbackNeeded ifTrue: 
		[ MagmaRepositoryDefinition runningTestCases ifFalse: 
			[ MagmaRollbackRecoveryNeeded signal: 'A partially flushed cache has been detected!!  This repository will now be recovered.' ].
		recoveryManager rollbackUsing: self	"NOTE:  This replaces me in my repositoryController." ]! !

!MaObjectRepository methodsFor: 'recovery' stamp: 'cmm 3/6/2009 15:52'!
rollforwardIfPossible
	^ recoveryManager isRollbackNeeded 
		ifTrue: 
			[ MagmaUserError signal: 'A rollback of the last incomplete commit is still needed.  Cannot roll forward until this is done.' ]
		ifFalse: 
			[ recoveryManager
				reapplyCommitPackagesUsing: self ;
				resetApplyFile ]! !

!MaObjectRepository methodsFor: 'recovery' stamp: 'cmm 3/7/2011 18:47'!
unapply: aMaApplyRecord 
	"Reapply the contents of aMaApplyRecord to the file it came from."
	aMaApplyRecord isContentRelated
		ifTrue:
			[ self
				fileManagerFor: aMaApplyRecord
				ifPresent:
					[ : fileManager | fileManager unapplyUsing: aMaApplyRecord ]
				ifAbsent: [ "I don't think we should ever get here now thanks to the new ifFalse: path just recently added.  Before, we could get here if a new file was created (i.e., a new large-collection) but the vm crashed before the writes of the definition occurred; in which case the largeCollectionManager would not be able to be opened."
					"It should only be a MaNewFileRecord in that case, so we don't even need to pass a fileStream of any kind.."
					aMaApplyRecord unapplySelf: nil ] ]
		ifFalse: [ aMaApplyRecord unapplySelf: nil ]! !

!MaObjectRepository methodsFor: 'client-requests' stamp: 'cmm 1/18/2005 22:39'!
abortTransactionFor: sessionId

	^ transactionLog 
		abortTransactionEntryFor: sessionId
		repository: self! !

!MaObjectRepository methodsFor: 'client-requests' stamp: 'cmm 3/14/2009 17:17'!
commitRecordAt: startNumber 
	"Answer the CommitLogRecord for startNumber."
	^ (self 
		commitRecordsFrom: startNumber
		to: startNumber) ifNotEmptyDo: [ : arr | arr first ]! !

!MaObjectRepository methodsFor: 'client-requests' stamp: 'cmm 3/14/2009 16:41'!
commitRecordsFrom: startNumber 
	"Answer a collection of MaCommitLogEntry which clients use to advance their image."
	^ self 
		commitRecordsFrom: startNumber
		to: 281474976710655	"The maximum possible commitNumber."! !

!MaObjectRepository methodsFor: 'client-requests' stamp: 'cmm 2/27/2016 23:01'!
commitRecordsFrom: startNumber to: endNumber 
	"Answer a collection of MaCommitLogEntry which clients use to advance their image."
	| startTime size answer |
	answer _ OrderedCollection new.
	startTime _ Time millisecondClockValue.
	size _ 0.
	recoveryManager
		commitLogRecordsFrom: startNumber
		do:
			[ : each | size _ size + each record size.
			answer add: each independentCopy ]
		until:
			[ : each | answer notEmpty and:
				[ (Time millisecondsSince: startTime) > 3000 or: [ each commitNumber >= endNumber or: [ size > 50000000 "50MB worth of updates at a time should be enough!!" ] ] ] ].
	^ answer asArray! !

!MaObjectRepository methodsFor: 'client-requests' stamp: 'cmm 7/31/2013 18:22'!
connectionsList
	^ Array streamContents:
		[ : stream | self sessions do:
			[ : each | each isSystem ifFalse:
				[ stream
					 nextPut: each informationalCopy ;
					 yourself ] ] ]! !

!MaObjectRepository methodsFor: 'client-requests' stamp: 'cmm 8/6/2006 18:32'!
getTrunkFor: collectionOid expression: aMaTerm 
	| executor |
	executor _ MaQueryExecutor 
		collectionManager: (self collectionManagerFor: collectionOid)
		expression: aMaTerm.
	^ executor trunk! !

!MaObjectRepository methodsFor: 'client-requests' stamp: 'cmm 4/13/2006 17:11'!
numberOfEntriesFrom: lowKeyInteger to: highKeyInteger inLargeCollection: collectionOid on: attributeSymbol 
	| index |
	index _ (self collectionManagerFor: collectionOid) 
		oidsIndexForAttribute: attributeSymbol.
	^ index 
		numberOfEntriesFrom: lowKeyInteger
		to: highKeyInteger! !

!MaObjectRepository methodsFor: 'client-requests' stamp: 'cmm 7/6/2007 01:28'!
read: oidInteger for: sessionId using: aMaReadStrategy 
	| result |
	self commitCritical: 
		[ result _ MaReadResult byteArray: 
			(self 
				byteArrayAt: oidInteger
				using: (self 
						ensureReadStrategy: aMaReadStrategy
						forSession: sessionId)).
		self 
			renewServerNotificationsIn: result
			for: sessionId ].
	^ result! !

!MaObjectRepository methodsFor: 'client-requests' stamp: 'cmm 2/16/2015 21:39'!
readAnchorFor: sessionId using: aMaReadStrategy 
	^ self
		read: filer anchorOid
		for: sessionId
		using: aMaReadStrategy! !

!MaObjectRepository methodsFor: 'client-requests' stamp: 'cmm 7/10/2009 16:33'!
refreshAll: oidsCollection for: sessionId 
	"We will use a minimal strategy because we really just want exactly the buffers requested.  So save whatever the sessions current strategy."
	| answer sessionReadStrategy minimalStrategy |
	sessionReadStrategy _ (self sessionWithId: sessionId) currentReadStrategy.
	minimalStrategy _ MaBasicReadStrategy minimumDepth: 0.
	answer _ Array streamContents: 
		[ : stream | 
		oidsCollection do: 
			[ : eachRequestedOid | 
			(MaOidCalculator isOidForUserObject: eachRequestedOid) ifTrue: 
				[ stream nextPut: 
					(MaSerializedGraphBuffer byteArray: 
						(self 
							read: eachRequestedOid
							for: sessionId
							using: minimalStrategy) byteArray) ] ] ].
	"Now restore the readStrategy to whatever it was."
	(self sessionWithId: sessionId) currentReadStrategy: sessionReadStrategy.
	^ answer! !

!MaObjectRepository methodsFor: 'client-requests' stamp: 'cmm 11/12/2007 22:28'!
refreshSegmentIn: aMaRefreshSegmentRequest 
	(self collectionManagerFor: aMaRefreshSegmentRequest collectionOid) 
		load: aMaRefreshSegmentRequest segment
		upTo: (aMaRefreshSegmentRequest quantity min: 10000)
		where: aMaRefreshSegmentRequest expression
		withObjects: aMaRefreshSegmentRequest loadObjects
		except: aMaRefreshSegmentRequest exceptions.
	aMaRefreshSegmentRequest segment 
		collectBuffers: aMaRefreshSegmentRequest sessionId
		from: self
		using: aMaRefreshSegmentRequest readStrategy.
	self 
		renewServerNotificationsIn: aMaRefreshSegmentRequest segment
		for: aMaRefreshSegmentRequest sessionId.
	^ aMaRefreshSegmentRequest segment! !

!MaObjectRepository methodsFor: 'client-requests' stamp: 'jpb 5/12/2021 11:32:25'!
removeSessionFor: sessionId 
	| clientConnection |
	clientConnection _ sessions 
		removeKey: sessionId
		ifAbsent: 
			[ "Perhaps the other session suddenly disconnected..?"
			 ].
	clientConnection ifNotNil: 
		[ clientConnection maClientConnection ifNotNil: [ : cc | cc shouldContinue: false ] ].
	transactionLog 
		removeEntryForSessionId: sessionId
		ifAbsent: 
			[ "Perhaps the other session suddenly disconnected..?"
			 ]! !

!MaObjectRepository methodsFor: 'client-requests' stamp: 'cmm 1/8/2009 19:02'!
renewTransactionEntryFor: sessionId 
	^ transactionLog 
		renewTransactionEntryFor: sessionId
		repository: self! !

!MaObjectRepository methodsFor: 'client-requests' stamp: 'cmm 6/14/2005 17:30'!
sizeOfLargeCollection: oidInteger

	^ (self collectionManagerFor: oidInteger) size! !

!MaObjectRepository methodsFor: 'client-requests' stamp: 'cmm 1/17/2014 16:15'!
submitAll: aMaCommitPackage for: sessionId beginAnother: aBoolean 
	"Save all of the serialized objects in aMaCommitPackage to the repository.
	If any of the objects in aMaCommitPackage have been changed by other transactions, signal a commit failure."
	| entry |
	self restoreMode ifTrue: 
		[ MagmaUserError signal: 'Commits are not allowed because this repository is in restoreMode.' ].
	entry _ transactionLog 
		renewEntryFor: sessionId
		withNew: (aBoolean 
				ifTrue: [ MaCommitLogEntry ]
				ifFalse: [ MaTransactionLogEntry ])
		for: self.
	entry isCommitEntry ifFalse: 
		[ (MagmaNoTransactionError result: entry result) signal: 'No commit-entry on server.' ].
	entry
		determineResultFor: aMaCommitPackage
			using: self ;
		initializeChallengers.
	"No need for these challengers anymore, delete them, save memory."
	entry result hasConflicts 
		ifTrue: 
			[ (MagmaCommitConflictError result: entry result ) signal ]
		ifFalse: 
			[ entry commitPackage: aMaCommitPackage.
			self write: entry ].
	(sessionId ~= repositoryController sessionId and: [ transactionLog isFirstEntryFor: repositoryController sessionId ]) ifTrue: [ repositoryController refreshView ].
	^ entry result! !

!MaObjectRepository methodsFor: 'client-requests' stamp: 'cmm 4/12/2006 21:14'!
upTo: anInteger oidsFromIndex: startIndex inLargeCollection: collectionOid using: aMaReadStrategy forSession: sessionId 
	| segmentResult |
	segmentResult _ (self collectionManagerFor: collectionOid) 
		upTo: anInteger
		inSegmentFromIndex: (startIndex max: 1).
	segmentResult 
		collectBuffers: sessionId
		from: self
		using: aMaReadStrategy.
	self 
		renewServerNotificationsIn: segmentResult
		for: sessionId.
	^ segmentResult! !

!MaObjectRepository methodsFor: 'high-availability' stamp: 'cmm 3/3/2009 16:53'!
applyCommitRecords: commitRecords 
	"Private - apply commitRecords to this repository."
	| branchCode |
	branchCode _ self branchCode.
	self flushCritical: 
		[ commitRecords do: 
			[ : each | 
			| commitLogEntry |
			commitLogEntry _ self recoveryManager materializeCommitLogEntryIn: each.
			"Note, we've already validated our branchCode (the sender of this method), so if we notice a change in the branchCode in a commit-log, we can safely assume the repository branched at that point, therefore we can update our branchCode."
			branchCode = each branchCode ifFalse: 
				[ branchCode _ each branchCode.
				self branchCode: branchCode ].
			self 
				write: commitLogEntry
				logged: true
				commitLogRecord: each.
			self session advanceWith: commitLogEntry ] ].
	^ branchCode! !

!MaObjectRepository methodsFor: 'high-availability' stamp: 'cmm 11/15/2008 11:34'!
beginRestore
	"Set my restoreMode bit, indicating I can only receive commitLogRecords in order from the primary.  This should only be done in conjunction with a corresponding change in the Node."
	self restoreMode 
		ifTrue: [ MagmaUserError signal: 'Already in restoreMode' ]
		ifFalse: [ self restoreMode: true ]! !

!MaObjectRepository methodsFor: 'high-availability' stamp: 'cmm 2/7/2013 19:36'!
catch: thisBackupLocation upTo: primaryLocation 
	"Request batches of commit-log records and apply them to my repository.  When this method finishes successfully I will be caught up and the primary will be sending me the updates automatically."
	| session |
	session _ primaryLocation newAdminSession.
	
	[ 
	[ 
	[ | serverResponse commitRecords done cn |
	repositoryController requestCritical: 
		[ serverResponse _ session 
			warmBackupUpdatesFrom: (cn _ self commitNumber + 1)
			for: thisBackupLocation.
		done _ serverResponse value.
		commitRecords _ serverResponse key.
		MagmaNotification signal: 'Catching up from primary, commitNumber:  ', cn asString.
		self applyCommitRecords: commitRecords.
		done ] ] whileFalse ] 
		on: MagmaUnavailableCommitRecord
		do: 
			[ : err | 
			"The warm backup must be re-established, page the DBA?"
			"pass the buck for now"
			err pass ] ] ensure: [ session ifNotNil: [ session disconnect ] ]! !

!MaObjectRepository methodsFor: 'high-availability' stamp: 'cmm 3/3/2009 21:12'!
commitRestore
	"Do NOT use this unless you know what you are doing, use the public API only.  Set whether the receiver is operating in restoreMode.  Warm backups operate in restoreMode, taking commits broadcasted to them from the 'primary' and applying them."
	self restoreMode 
		ifTrue: 
			[ self
				restoreMode: false ;
				initializeBranchCode ]
		ifFalse: [ MagmaUserError signal: 'Not in restore mode!!' ]! !

!MaObjectRepository methodsFor: 'high-availability' stamp: 'cmm 11/23/2008 12:38'!
initializeBranchCode
	filer initializeBranchCode.
	recoveryManager ifNotNil: [ recoveryManager branchCode: filer branchCode ]! !

!MaObjectRepository methodsFor: 'high-availability' stamp: 'cmm 11/14/2008 13:18'!
restoreMode: aBoolean 
	filer restoreMode: aBoolean.
	restoreMode _ aBoolean! !

!MaObjectRepository methodsFor: 'high-availability' stamp: 'cmm 11/13/2008 20:57'!
sendToWarmBackups: aMaCommitLogRecord 
	"Update my warmBackups with aMaCommitLogEntry."
	repositoryController node secondaryLocationsDo: 
		[ : each | 
		"Asynchronous request!!  Only a send error will detect a problem."
		[ (self node sessionFor: each) write: aMaCommitLogRecord ] 
			on: NetworkError "this is a send-only request, there will be no response and no server-generated error (i.e., we can't handle MagmaWrongCommitNumber)."
			do: [ : err | MagmaNodeUpdate signalRemove: each ] ]! !

!MaObjectRepository methodsFor: 'actions' stamp: 'jpb 5/12/2021 11:50:09'!
applyToCache: trimmedCommitLogEntry 
	| newObjects buffersToRefresh |
	newObjects _ trimmedCommitLogEntry result newObjectBuffers.
	trimmedCommitLogEntry commitPackage objectsDo:
		[ : eachBuffer | filer
			write: eachBuffer
			index: (newObjects includesKey: eachBuffer oid) ].
	"If writing regular objects caused any new LargeCollections we need to refresh my sessions view of the repository so I know about those collections because I'm about to update them, except of course unless trimmedCommitLogEntry is for the servers session."
	(trimmedCommitLogEntry isSystem not and: [ trimmedCommitLogEntry shouldServerRefresh ]) ifTrue:
		[ repositoryController refreshView.
		buffersToRefresh _ self postWriteAdjustmentFor: trimmedCommitLogEntry ].
	self
		updateLargeCollectionsIn: trimmedCommitLogEntry commitPackage
		recordResultsIn: trimmedCommitLogEntry result.
	filer commitNumber: recoveryManager commitNumber.
	^ buffersToRefresh ifNil: [ #() ]! !

!MaObjectRepository methodsFor: 'actions' stamp: 'cmm 7/8/2009 21:07'!
challengeOthersWith: aMaCommitLogEntry 
	| entriesToRemove |
	entriesToRemove _ transactionLog 
		challenge: self restoreMode not
		entriesWith: aMaCommitLogEntry.
	entriesToRemove ifNotNil: 
		[ entriesToRemove do: 
			[ : each | 
			each isSystem 
				ifTrue: [ repositoryController refreshView ]
				ifFalse: [ self removeSessionFor: each sessionId ] ] ]! !

!MaObjectRepository methodsFor: 'actions' stamp: 'cmm 7/5/2005 12:36'!
commitCritical: aBlock

	^ commitGuard critical: aBlock! !

!MaObjectRepository methodsFor: 'actions' stamp: 'cmm 5/21/2007 00:08'!
create: aFileDirectory 
	filer _ MaObjectFiler create: aFileDirectory.
	self postOpenInitialize! !

!MaObjectRepository methodsFor: 'actions' stamp: 'cmm 9/25/2014 15:59'!
freeSomeSpace
	self class freeSomeSpace! !

!MaObjectRepository methodsFor: 'actions' stamp: 'cmm 1/31/2017 19:33'!
freeSomeSpaceIfNecessary: sessionId 
	| totalFreed count |
	totalFreed _ count _ 0.
	"Free SockeStream buffers first, then, only if enough could not be retcovered, start terminating sessions.."
	(EmergencyMemory isEmpty or: [ self isLowOnMemory ]) ifTrue:
		[ transactionLog entriesDo:
			[ : each | each connection isRemote ifTrue: [ each resetSocketStreamBuffer ].
			Smalltalk garbageCollect.
			self isLowOnMemory ifFalse: [ ^ self ] ] ].
	[ (EmergencyMemory isEmpty or: [ self isLowOnMemory ]) and: [ transactionLog numberOfEntries > 1 ] ] whileTrue:
		[ | oldestEntry |
		oldestEntry _ transactionLog removeOldestEntryExceptFrom: sessionId.
		oldestEntry notNil and:
			[ totalFreed _ totalFreed + oldestEntry bytesConsumed.
			count _ count + 1 ].
		Smalltalk garbageCollect.
		(totalFreed > 50 million and: [ EmergencyMemory isEmpty ]) ifTrue: [ self reserveEmergencySpace ] ].
	count > 0 ifTrue:
		[ MagmaServerLowOnMemoryNotification signal: count asString , ' sessions terminated to recover ' , totalFreed asBytesDescription , ' of server memory.'.
		self isOpen ifFalse: [ self unregisterAsMemoryHog ] ]! !

!MaObjectRepository methodsFor: 'actions' stamp: 'cmm 5/27/2007 15:19'!
initializeNextOid
	"Initialize it to the current-highest oid, because we always incrmement it when getting it."
	nextOid _ filer getNextOid - 1! !

!MaObjectRepository methodsFor: 'actions' stamp: 'cmm 8/30/2010 17:17'!
open: aFileDirectory 
	[ filer _ MaObjectFiler open: aFileDirectory.
	filer validateVersion ] ifCurtailed:
		[ self close.
		^ self ].
	self postOpenInitialize! !

!MaObjectRepository methodsFor: 'actions' stamp: 'cmm 8/3/2007 13:00'!
postOpenInitializeRecoveryManager
	recoveryManager
		commitNumber: filer commitNumber ;
		branchCode: filer branchCode! !

!MaObjectRepository methodsFor: 'actions' stamp: 'cmm 1/14/2014 11:16'!
postWriteAdjustmentFor: trimmedCommitLogEntry 
	"Adding the very first MagmaStat to a repository, that class will not have been known until AFTER the normal write, but that means we won't have performed the prewriteAdjustmentTo:from: on it!!  So, we have to go back to write it one more time to capture that adjustment and write the object properly."
	^ self initializeMagmaStatClassIds ifNotEmpty:
		[ : classIdsOfBuffersNeedingRewritten | Array streamContents: [ : stream | trimmedCommitLogEntry commitPackage objectsDo:
			[ : eachBuffer | (classIdsOfBuffersNeedingRewritten includes: eachBuffer classId) ifTrue:
				[ filer
					write: (stream nextPut: eachBuffer copyWithSameBuffer)
					index: false] ] ] ]! !

!MaObjectRepository methodsFor: 'actions' stamp: 'cmm 6/1/2007 14:13'!
queueForDelete: aMaAtomicFileStream 
	"When removing indexees, we actually remove the supporting file.  However, we don't want to do that until the commit actually succeeds.  Therefore, we a queue the files to deleted until the commit succeeds, then we delete it."
	recoveryManager queueForDelete: aMaAtomicFileStream! !

!MaObjectRepository methodsFor: 'actions' stamp: 'cmm 4/28/2003 23:51'!
renewCurrentReadStrategy: aMaReadStrategy for: sessionId

	| session |
	session _ self sessionWithId: sessionId.
	aMaReadStrategy ifNotNil: [ session currentReadStrategy: aMaReadStrategy ].
	^session currentReadStrategy! !

!MaObjectRepository methodsFor: 'actions' stamp: 'cmm 11/5/2008 15:51'!
renewServerNotificationsIn: aMagmaServerResult for: sessionId 
	self 
		renewServerNotificationsIn: aMagmaServerResult
		from: (transactionLog entryFor: sessionId)! !

!MaObjectRepository methodsFor: 'actions' stamp: 'cmm 6/28/2009 19:33'!
renewServerNotificationsIn: aMagmaServerResult from: aMaTransactionLogEntry 
	aMagmaServerResult serverNotifications: aMaTransactionLogEntry renewServerNotifications.
	aMagmaServerResult serverNotifications keysAndValuesDo: 
		[ : eachKey : eachSet | 
		aMagmaServerResult serverNotifications 
			at: eachKey
			put: (eachSet asArray collect: 
				[ : eachOid | 
				self 
					byteArrayAt: eachOid
					using: MaReadStrategy deep ]) ]! !

!MaObjectRepository methodsFor: 'actions' stamp: 'cmm 2/25/2013 10:25'!
validate: aMaCommitLogRecord with: aMaCommitLogEntry 
	aMaCommitLogRecord ifNotNil: [ recoveryManager validateRecord: aMaCommitLogRecord ].
	self
		validateCommitNumber: aMaCommitLogRecord
		with: aMaCommitLogEntry.
	self validateMagmaArrayChangesIn: aMaCommitLogEntry! !

!MaObjectRepository methodsFor: 'actions' stamp: 'cmm 9/24/2009 10:28'!
validateCommitNumber: aMaCommitLogRecord with: aMaCommitLogEntry 
	aMaCommitLogRecord ifNotNil: 
		[ "I could be a warm backup receiving previously-written commit-log entries.  Be absolutely positive it is the correct one!!"
		aMaCommitLogEntry result commitNumber = (self commitNumber + 1) ifFalse: 
			[ MagmaWrongCommitNumber new
				expectedCommitNumber: self commitNumber + 1 ;
				signal ].
		aMaCommitLogRecord branchCode ~= filer branchCode ifTrue: [ MagmaDifferentBranch signal ] ]! !

!MaObjectRepository methodsFor: 'actions' stamp: 'cmm 1/8/2014 21:54'!
write: aMaCommitLogEntry 
	self commitCritical: 
		[ aMaCommitLogEntry
			registerUsing: self ;
			link ;
			recordUsing: self.
		self 
			write: aMaCommitLogEntry
			logged: true
			commitLogRecord: nil ]! !

!MaObjectRepository methodsFor: 'actions' stamp: 'cmm 4/8/2015 20:06'!
write: aMaCommitLogEntry logged: shouldLog commitLogRecord: aMaCommitLogRecord 
	"This is the main 'write' logic for Magma.  It is used for 1) regular commits, 2) recovering from records in the commits.log file and, 3) updating warm backups.  Case 1 will pass a non-trimmed aMaCommitLogEntry and NO aMaCommitLogRecord (nil).  Cases 2 and 3 will pass a trimmed MaCommitLogEntry and the MaCommitLogRecord it was materialized from."
	| trimmedEntry commitLogRecord extraBuffersToRefresh |
	self 
		validate: aMaCommitLogRecord
		with: aMaCommitLogEntry.	"I could be a warm backup receiving previously-written commit-log entries.  Be absolutely positive it is the correct one!!"
	recoveryManager nextCommitNumber.
	self challengeOthersWith: aMaCommitLogEntry.
	"If aMaCommitLogRecord is specified (notNil), then we know aMaCommitLogEntry is already a trimmedCopy, otherwise aMaCommitLogEntry is for a new commit."
	trimmedEntry _ aMaCommitLogRecord 
		ifNil: 
			[ aMaCommitLogEntry commitNumber: recoveryManager commitNumber.
			aMaCommitLogEntry trimmedCopy ]
		ifNotNil: [ aMaCommitLogEntry ].
	commitLogRecord _ aMaCommitLogRecord ifNil: [ recoveryManager newCommitLogRecordFor: trimmedEntry ].
	"Don't log when we're *reading* from the log file to recover!!  Nor should we send anything off to warm-backups.  Those will be caught up afterward."
	shouldLog ifTrue: 
		[ "To test rollback-recovery, we cannot log the commits because, even though the files are rolled back, they would then be forward-recovered to include the commitDisaster commit!!  We cannot allow this because we compare the file hashes after the rollback."
		SimulateOutage ifFalse: 
			[ self restoreMode ifFalse: 
				[ "The recovery in an on-line system will be from the warm-backups.  Therefore send off to the warmBackups first so they have the best chance of being up to date."
				self sendToWarmBackups: commitLogRecord ].
			recoveryManager log: commitLogRecord ] ].
	extraBuffersToRefresh _ self applyToCache: trimmedEntry.
	extraBuffersToRefresh do: [ : each | aMaCommitLogEntry refreshIfCountersOrStat: each using: self ].
	self
		initializeNextOid ;
		flushCacheSoon	"needed after recovery, doesn't hurt regular commits"! !

!MaObjectRepository methodsFor: 'backup / restore' stamp: 'cmm 8/1/2007 22:16'!
archiveCommitLog
	recoveryManager archiveCommitLog! !

!MaObjectRepository methodsFor: 'backup / restore' stamp: 'cmm 8/3/2007 11:02'!
deleteUnnecessaryCommitLogs
	recoveryManager deleteUnnecessaryCommitLogFiles ! !

!MaObjectRepository methodsFor: 'backup / restore' stamp: 'cmm 6/6/2007 22:46'!
flushCritical: aBlock
	^ flushGuard critical: aBlock! !

!MaObjectRepository methodsFor: 'backup / restore' stamp: 'cmm 8/2/2007 00:16'!
logArchiveFrequency
	"Answer the frequency which commit.log files are closed and a new one started.  Commit log files are used to apply to a backup to bring it up to date."
	^ recoveryManager logArchiveFrequency! !

!MaObjectRepository methodsFor: 'backup / restore' stamp: 'cmm 8/2/2007 00:16'!
logArchiveFrequency: aDuration 
	"Override the default frequency which commit.log files are closed and a new one started.  Commit log files are used to apply to a backup to bring it up to date with the latest commits since that backup."
	recoveryManager logArchiveFrequency: aDuration! !

!MaObjectRepository methodsFor: 'accessing' stamp: 'cmm 11/18/2008 12:54'!
branchCode
	"The branchCode is a randomly-generated number used to prevent accidentally applying the wrong commit-logs to a repository.  When performing a forward recovery, each CommitLogRecord's #branchCode must match mine.  Every time a commitRestore is performed, this branchCode is updated to a new number."
	^ filer branchCode! !

!MaObjectRepository methodsFor: 'accessing' stamp: 'cmm 2/27/2009 15:31'!
branchCode: anInteger 
	"Private - Do not update the branchCode from outside!!"
	filer branchCode: anInteger.
	recoveryManager ifNotNil: [ recoveryManager branchCode: anInteger ]! !

!MaObjectRepository methodsFor: 'accessing' stamp: 'cmm 3/19/2005 10:59'!
byteArrayAt: oidInteger using: aMaReadStrategy

	^ (MaOidCalculator isOidForUserObject: oidInteger)
		ifTrue:
			[ (self
				graphBufferAt: oidInteger
				using: aMaReadStrategy) trimmedByteArray ]
		ifFalse:
			[ "When could this happen?  (Sigh), when they put an atomic in a MagmaLargeCollection."
			(self session serializer serializeGraph:
				(MaOidCalculator
					objectWithOid: oidInteger
					ifNone: [ MagmaSoftwareError signal: 'unknown oid' ])) trimmedByteArray ]! !

!MaObjectRepository methodsFor: 'accessing' stamp: 'jpb 5/12/2021 13:49:03'!
classDefinitionsByteArray
	"When initially creating the repository, before even the system root is
	written, the classDefinitionsOid will be a new-object oid."

	| loid |

	^MaOidCalculator oidForNil = (loid _ filer classDefinitionsOid)
		ifTrue:
			[ (self serverSerializer serializeGraph: repositoryController definition classDefinitions) trimmedByteArray ]
		ifFalse:
			[ self
				byteArrayAt: loid
				using: MaBasicReadStrategy deep "we need it all" ]! !

!MaObjectRepository methodsFor: 'accessing' stamp: 'cmm 4/26/2007 23:38'!
collectionFilenameFor: aMaLargeCollection
	^ self directory fullNameFor:
		(String streamContents:
			[ : stream |
			stream
				print: (self session oidFor: aMaLargeCollection) ;
				nextPutAll: '-members.' ;
				nextPutAll: aMaLargeCollection implementationClass suggestedFileExtension ])! !

!MaObjectRepository methodsFor: 'accessing' stamp: 'cmm 7/15/2008 14:52'!
commitNumber
	^ filer commitNumber! !

!MaObjectRepository methodsFor: 'accessing' stamp: 'cmm 3/18/2011 12:34'!
definitionByteArray
	| oid |
	^ MaOidCalculator oidForNil = (oid _ filer definitionOid)
		ifTrue:
			[ (self serverSerializer serializeGraph: repositoryController definition) trimmedByteArray ]
		ifFalse:
			[ self
				byteArrayAt: oid
				using: systemReadStrategy ]! !

!MaObjectRepository methodsFor: 'accessing' stamp: 'cmm 9/24/2004 15:42'!
directory

	^ filer directory! !

!MaObjectRepository methodsFor: 'accessing' stamp: 'cmm 10/22/2006 15:39'!
filePool
	^ filePool! !

!MaObjectRepository methodsFor: 'accessing' stamp: 'cmm 10/22/2006 21:39'!
filePoolSize: anInteger 
	"Set the maximum number of simultaneously-open files that Magma will have."
	anInteger < 4 ifTrue: [ MagmaUserError signal: 'Magma requires at least 4 open files.' ].
	filePool maxSize: anInteger - 4	"-4 : 1 for objects file, 1 for file-positions index, 2 for recovery files."! !

!MaObjectRepository methodsFor: 'accessing'!
filer

	^filer
! !

!MaObjectRepository methodsFor: 'accessing' stamp: 'cmm 12/2/2004 13:25'!
getNextOid

	^nextOid _ nextOid + 1! !

!MaObjectRepository methodsFor: 'accessing' stamp: 'cmm 10/8/2014 19:42'!
graphBufferAt: oidInteger using: aMaReadStrategy 
	"Answers a MaSerializedGraphBuffer."
	| answer rootBuffer |
	answer _ MaSerializedGraphBuffer new: 400.
	rootBuffer _ filer
		appendObject: oidInteger
		into: answer.
	rootBuffer
		appendGraphUsing: aMaReadStrategy
		into: answer
		currentDepth: 1
		minDepth: aMaReadStrategy minimumDepth
		with: (PluggableSet integerSet add: oidInteger; yourself)
		filer: filer.
	^ answer! !

!MaObjectRepository methodsFor: 'accessing' stamp: 'cmm 5/30/2007 21:38'!
initializeSystemReadStrategyUsing: aMaClassIdManager 
	"The object and its immediate variables"
	systemReadStrategy _ MaReadStrategy minimumDepth: 1.
	systemReadStrategy makeReadyForUseUsing: aMaClassIdManager! !

!MaObjectRepository methodsFor: 'accessing' stamp: 'cmm 11/1/2004 10:23'!
isOpen

	^ filer notNil and: [ filer isOpen ]! !

!MaObjectRepository methodsFor: 'accessing' stamp: 'cmm 11/13/2008 10:33'!
node
	^ repositoryController node! !

!MaObjectRepository methodsFor: 'accessing' stamp: 'cmm 4/21/2003 16:29'!
objectFileSize

	^filer objectFileSize! !

!MaObjectRepository methodsFor: 'accessing' stamp: 'cmm 12/3/2014 10:45'!
oidCount
	"The number of oids allocated by this repository.  The total number of objects ever committed, even if some have since been garbage-collected."
	^ nextOid - FirstUserObjectOid! !

!MaObjectRepository methodsFor: 'accessing' stamp: 'cmm 3/17/2010 21:22'!
primitiveAttributes
	"Answer a Dictionary of the primitiveAttributes of my filer (with special logic for exploding the single #booleanFlags attribute to all of its logical boolean attributes we really care about)."
	| answer |
	answer _ Dictionary new.
	filer primitiveAttributeAddressesMap keysDo: 
		[ : key | 
		key isSymbol ifTrue: 
			[ | desiredKeys |
			desiredKeys _ key = #booleanFlags 
				ifTrue: 
					[ {  #restoreMode  } ]
				ifFalse: 
					[ {  key  } ].
			desiredKeys do: 
				[ : eachDesiredKey | 
				answer 
					at: eachDesiredKey
					put: (filer perform: eachDesiredKey) ] ] ].
	^ answer! !

!MaObjectRepository methodsFor: 'accessing' stamp: 'cmm 7/8/2005 17:16'!
repositoryController
	^ repositoryController! !

!MaObjectRepository methodsFor: 'accessing' stamp: 'cmm 12/31/2002 12:56'!
serverSerializer

	^repositoryController serverSerializer! !

!MaObjectRepository methodsFor: 'accessing' stamp: 'cmm 12/31/2002 12:55'!
session

	^repositoryController session! !

!MaObjectRepository methodsFor: 'accessing' stamp: 'cmm 2/8/2009 19:22'!
sessionWithId: aUuid 
	^ self 
		sessionWithId: aUuid
		ifAbsent: [ MagmaSessionLost signal ]! !

!MaObjectRepository methodsFor: 'accessing' stamp: 'cmm 2/8/2009 19:22'!
sessionWithId: aUuid ifAbsent: aBlock 
	^ sessions 
		at: aUuid
		ifAbsent: aBlock! !

!MaObjectRepository methodsFor: 'accessing' stamp: 'cmm 5/2/2003 15:05'!
sessions

	^sessions! !

!MaObjectRepository methodsFor: 'accessing' stamp: 'cmm 2/8/2009 19:26'!
systemReadStrategy: aMaReadStrategy
	systemReadStrategy _ aMaReadStrategy! !

!MaObjectRepository methodsFor: 'accessing' stamp: 'cmm 4/21/2003 16:02'!
version

	^filer version! !

!MaObjectRepository methodsFor: 'accessing' stamp: 'cmm 7/4/2006 16:20'!
wantsToClose
	^ wantsToClose ! !

!MaObjectRepository methodsFor: 'initialize-release' stamp: 'cmm 8/22/2011 22:35'!
close
	self isOpen ifFalse: [ ^ self ].
	wantsToClose _ true.
	[ applyProcess notNil and: [ applyProcess isTerminated not ] ] whileTrue: [ (Delay forSeconds: 1) wait ].
	[ largeCollectionManagers anySatisfy: [ : each | each isLoading ] ] whileTrue: [ (Delay forMilliseconds: 500) wait ].
	self commitCritical: 
		[ (self isOpen and: [recoveryManager notNil and: [ self restoreMode not ] ]) ifTrue: [ self flushCritical: [ self flushCache	"just to be sure" ] ] ].
	filer ifNotNil: [ filer close ].
	largeCollectionManagers do: [ : each | each close ].
	recoveryManager ifNotNil: [ recoveryManager close ].
	self unregisterAsMemoryHog! !

!MaObjectRepository methodsFor: 'initialize-release' stamp: 'cmm 8/12/2014 12:03'!
initialize
	super initialize.
	transactionLog _ MaTransactionLog new.
	largeCollectionManagers _ Dictionary new.
	sessions _ Dictionary new.
	commitGuard _ Mutex new.
	flushGuard _ Mutex new.
	filePool _ MaFileStreamPool maxSize: 180.
	wantsToClose _ false.
	self reserveEmergencySpace! !

!MaObjectRepository methodsFor: 'initialize-release' stamp: 'cmm 1/20/2014 20:18'!
initializeMagmaStatClassIds
	"The filer must know what the classId for MagmaStat and all subclasses are, so it can properly do prewriteAdjustmentTo: bufferBeingCommitted from: thePersistentBuffer."
	| ids mustRewrite |
	ids _ repositoryController session magmaStatClassIds.
	mustRewrite _ ids difference: filer magmaStatClassIds.
	filer magmaStatClassIds addAll: ids.
	^ mustRewrite! !

!MaObjectRepository methodsFor: 'initialize-release' stamp: 'cmm 11/26/2011 16:25'!
initializeSpecialOidsList
	"See MagmaSession>>#handleSpecialOidNotifications:"
	| classDefinitions session |
	classDefinitions _ repositoryController definition classDefinitions.
	session _ self session.
	(session isPersistent: classDefinitions) ifTrue: 
		[ transactionLog
			onChangeOf: (self session oidFor: repositoryController definition classDefinitions)
				clientsShould: #refreshClassDefinitions ;
			onChangeOf: (self session oidFor: self node)
				clientsShould: #refreshNode ]! !

!MaObjectRepository methodsFor: 'initialize-release' stamp: 'cmm 9/24/2009 18:07'!
postOpenInitialize
	self initializeNextOid.
	recoveryManager _ (MaRecoveryManager repository: self)
		open: self repositoryController localLocation ;
		yourself.
	self postOpenInitializeRecoveryManager.
	self registerAsMemoryHog! !

!MaObjectRepository methodsFor: 'initialize-release' stamp: 'jpb 5/11/2021 16:17:33'!
registerAsMemoryHog
	MaRegistry registerMemoryHog: self.! !

!MaObjectRepository methodsFor: 'initialize-release' stamp: 'cmm 9/25/2014 16:00'!
reserveEmergencySpace
	EmergencyMemory isEmptyOrNil ifTrue: [ EmergencyMemory _ String new: 50 million ]! !

!MaObjectRepository methodsFor: 'initialize-release' stamp: 'jpb 5/12/2021 15:28:41'!
unregisterAsMemoryHog
	MaRegistry unregisterMemoryHog: self! !

!MaObjectRepository methodsFor: 'magma-collections' stamp: 'cmm 6/16/2005 10:53'!
collectionManagerFor: oidInteger

	^ self
		collectionManagerFor: oidInteger
		ifAbsent:
			[ MagmaSoftwareError signal:
				'MagmaCollection ' , oidInteger printString ,
					' not found.  MaObjectRepository>>collectionManagerFor:' ]! !

!MaObjectRepository methodsFor: 'magma-collections' stamp: 'cmm 10/25/2006 23:29'!
collectionManagerFor: oidInteger ifAbsent: aBlock 
	^ largeCollectionManagers 
		at: oidInteger
		ifAbsent: 
			[ | mc |
			mc _ self session 
				objectWithOid: oidInteger
				ifAbsent: [ ^ aBlock value ].
			self openLargeCollectionIfNecessary: mc ]! !

!MaObjectRepository methodsFor: 'magma-collections' stamp: 'cmm 5/28/2007 21:21'!
hashKeysReferencing: eachOid inIndexesOf: sourceManager using: aMagmaCollectionManager 
	| hashesByIndex |
	hashesByIndex _ OrderedCollection new.
	"Normally there will be just one index at this time (building a sort result), but be generic anyway.."
	aMagmaCollectionManager collection descriptionsDo:  
		[ : each | 
		| eachKeysHdx eachHashes |
		eachHashes _ OrderedCollection new.
		eachKeysHdx _ sourceManager keysIndexForAttribute: each attribute.
		eachKeysHdx 
			keysAndValuesFrom: eachOid
			startingAt: 1
			do: [ : eachOidAgain : eachKeyLocation | eachHashes add: eachKeyLocation ]
			until: [ : eachOidAgain : eachKeyLocation | eachOidAgain > eachOid ].
		hashesByIndex add: eachHashes ].
	^ hashesByIndex! !

!MaObjectRepository methodsFor: 'magma-collections' stamp: 'cmm 1/6/2010 09:30'!
loadMemberIndexOf: aMagmaCollectionManager using: aMaTerm from: oidInteger distinct: wantsDistinct 
	"Load memberIndex from the results expression aMaTerm."
	| executor sourceManager x mcChanges stillDoing nextWriteStop |
	sourceManager _ self collectionManagerFor: oidInteger.
	[ sourceManager isLoading ] whileTrue: [ (Delay forMilliseconds: 500) wait ].
	executor _ MaQueryExecutor 
		collectionManager: sourceManager
		expression: aMaTerm.
	aMagmaCollectionManager loadExecutor: executor.
	x _ 1.
	nextWriteStop _ 50.
	
	[ stillDoing _ false.
	mcChanges _ (MagmaCollectionChanges collection: aMagmaCollectionManager collection)
		collectionOid: aMagmaCollectionManager collectionOid ;
		yourself.
	executor 
		trunkFrom: x
		do: 
			[ : eachKey : eachOid | 
			| canPossiblyAdd |
			stillDoing _ true.
			canPossiblyAdd _ (wantsDistinct and: 
				[ (mcChanges added includesKey: eachOid) or: [ aMagmaCollectionManager memberIndex includesKey: eachOid ] ]) not.
			(canPossiblyAdd and: 
				[ aMaTerm 
					shouldInclude: eachOid
					using: sourceManager ]) ifTrue: 
				[ | hashesByIndex |
				hashesByIndex _ self 
					hashKeysReferencing: eachOid
					inIndexesOf: sourceManager
					using: aMagmaCollectionManager.
				mcChanges added 
					at: eachOid
					put: hashesByIndex ].
			x _ x + 1 ]
		until: [ aMagmaCollectionManager shouldStopLoading or: [ x = nextWriteStop ] ].
	stillDoing ] whileTrue: 
		[ | commitPackage |
		commitPackage _ MaCommitPackage new
			objects: (MaSerializedGraphBuffer new: 4) ;
			yourself.
		commitPackage addLargeCollectionChanges: mcChanges.
		"Spare a potentially skewed read with requestCritical, not just commitCritical"
		repositoryController requestCritical: 
			[ self session begin.
			repositoryController forceWritePackage: commitPackage ].
		self flushCacheSoon.
		nextWriteStop _ nextWriteStop + 50 ].
	"Fork the removeManager: to only do it *after* the flush of the transient MaHashIndex file.  That way, the manager will be able to be handled if a request come in before the flush writes out the file."
	[ (Delay forMilliseconds: (repositoryController cacheFlushFrequency*1000) + 1000) wait.
	self removeManager: aMagmaCollectionManager ] fork! !

!MaObjectRepository methodsFor: 'magma-collections' stamp: 'cmm 10/26/2006 15:09'!
registerAndLoad: aMaCommitPackage using: aMaTerm from: oidInteger forSession: sessionId distinct: aBoolean 
	| newManager result |
	result _ self 
		registerResultSet: aMaCommitPackage
		forSession: sessionId.
	newManager _ self collectionManagerFor: aMaCommitPackage allLargeCollectionChanges anyOne collectionOid.
	newManager loadProcess: (
		[ self 
			loadMemberIndexOf: newManager
			using: aMaTerm
			from: oidInteger
			distinct: aBoolean ] forkAt: Processor userBackgroundPriority).
	newManager loadProcess name: 'loading ' , newManager collectionOid printString.
	^ result! !

!MaObjectRepository methodsFor: 'magma-collections' stamp: 'cmm 10/30/2006 11:58'!
registerResultSet: aMaCommitPackage forSession: sessionId 
	"Write buffers for aMaCommitPackage and its indexes collection so that, in case it becomes persistently referenced."
	self session begin.	"Begin a tran to allow the submitAll:for:.."
	^ repositoryController forceWritePackage: aMaCommitPackage! !

!MaObjectRepository methodsFor: 'magma-collections' stamp: 'cmm 10/30/2014 10:57'!
updateLargeCollectionsIn: aMaCommitPackage recordResultsIn: aMaCommitResult
	"The repositoryControllers sessions view of the repository must be completely refreshed, it must know about all new collections."

	aMaCommitPackage allLargeCollectionChangesDo:
		[ : each |
		each isNewCollection
			ifTrue:
				[ | mc |
				mc _ 
					self session 
						objectWithOid: each collectionOid 
						ifAbsent:
							[ MagmaSoftwareError signal: 'expected to know about MagmaCollection ', each collectionOid, ' here.' ].
				(self ensureManagerCreatedFor: mc) createNewLargeCollection ].
		each hasAddedIndexes 
			ifTrue:
				[ (self collectionManagerFor: each collectionOid) createSupplementaryIndexes ] ].
	aMaCommitPackage allLargeCollectionChangesDo:
		[ :each |
		(self collectionManagerFor: each collectionOid)
			process: each
			recordResultsIn: aMaCommitResult ]! !

!MaObjectRepository methodsFor: 'magma-collections' stamp: 'cmm 9/24/2009 10:35'!
validateMagmaArrayChangesIn: aMaCommitLogEntry 
	aMaCommitLogEntry commitPackage allLargeCollectionChanges do: [ : each | each validate ]! !

!MaObjectRepository methodsFor: 'building' stamp: 'cmm 6/11/2006 21:30'!
ensureManagerCreatedFor: aMagmaLargeCollection 
	^ largeCollectionManagers 
		at: (self session oidFor: aMagmaLargeCollection)
		ifAbsentPut: [ aMagmaLargeCollection newManagerUsing: self ]! !

!MaObjectRepository methodsFor: 'building' stamp: 'cmm 5/14/2005 18:08'!
ensureReadStrategy: aMaReadStrategy forSession: sessionId

	| strategy |
	^(strategy _
		self
			renewCurrentReadStrategy: aMaReadStrategy
			for: sessionId)

				ifNil: [ self systemReadStrategy ] 
				ifNotNil: [ strategy ]! !

!MaObjectRepository methodsFor: 'building' stamp: 'cmm 5/24/2010 16:33'!
newSessionFor: userIdString sessionId: aUuid numberOfChallengers: anInteger clientConnection: aMaClientConnection 
	"Answer an Array whose first element is the sessionId, second is the classDefinitionsByteArray, third is the RepositoryDefinition byteArray, fourth is a boolean, true if single-user, false if listening on a port."
	| connection |
	aUuid class = UUID ifFalse: 
		[ MagmaSoftwareError signal: 'sessionId is ' , aUuid printString , ' but must be a UUID.' ].
	userIdString isString ifFalse: 
		[ MagmaSoftwareError signal: 'userId must be a String but is ' , userIdString printString ].
	(userIdString = MagmaRepositoryController systemSessionUserId and: [ transactionLog hasAnyEntries ]) ifTrue: 
		[ MagmaUserError signal: MagmaRepositoryController systemSessionUserId, ' id is reserved.  Please choose a different connection id.' ].
	anInteger isInteger ifFalse: 
		[ MagmaSoftwareError signal: 'numberOfChallengers must be an Integer but is ' , anInteger printString ].
	aMaClientConnection ifNotNil: 
		[ aMaClientConnection class = MaClientConnection ifFalse: 
			[ MagmaSoftwareError signal: 'clientConnection must be a MaClientConnection but is ' , aMaClientConnection printString ] ].
	(transactionLog hasEntryFor: aUuid) 
		ifTrue: 
			[ "Be extra safe for now, only a notification."
			MagmaNotification signal: 'Potential software error:  Client ' , aUuid asString , ' attempted to connect to the same server even though it was already connected.' ]
		ifFalse: 
			[ connection _ transactionLog 
				newSessionFor: userIdString
				sessionId: aUuid
				numberOfChallengers: anInteger
				clientConnection: aMaClientConnection.
			sessions 
				at: aUuid
				put: connection ].
	^ (Array new: 4)
		at: 1
			put: self classDefinitionsByteArray ;
		at: 2
			put: self definitionByteArray ;
		at: 3
			put: self commitNumber ;
		at: 4
			put: self restoreMode not ;
		yourself! !

!MaObjectRepository methodsFor: 'building' stamp: 'cmm 12/18/2008 19:32'!
newTransactionFor: sessionUuid 
	(transactionLog entryFor: sessionUuid) isCommitEntry ifTrue: [ MagmaAlreadyInTransaction signal: 'Already in a transaction.' ].
	^ transactionLog 
		newTransactionFor: sessionUuid
		repository: self! !

!MaObjectRepository methodsFor: 'building' stamp: 'cmm 4/17/2010 15:05'!
openLargeCollectionIfNecessary: aMagmaLargeCollection 
	"Must commit-guard this because I witnessed the flushCache process jumping in between when creating the manager and ensuring it open; the flush process absolutely requires all large-collection managers to be open."
	^ self commitCritical: 
		[ (self ensureManagerCreatedFor: aMagmaLargeCollection) ensureOpen ]! !

!MaObjectRepository methodsFor: 'building' stamp: 'jpb 5/12/2021 11:32:21'!
removeManager: aMagmaCollectionManager 
	self flushCritical: 
		[ self commitCritical: 
			[ (largeCollectionManagers 
				removeKey: aMagmaCollectionManager collectionOid
				ifAbsent: [ nil ]) ifNotNil: [ : removed | removed close ] ] ]! !

!MaObjectRepository methodsFor: 'building'!
repositoryController: aMaRepositoryController

	repositoryController _ aMaRepositoryController.
	aMaRepositoryController repository == self ifFalse: [ aMaRepositoryController repository: self ]
! !

!MaObjectRepository methodsFor: 'notifications' stamp: 'cmm 11/2/2008 09:39'!
informDba: aString 
	"Signal DBA notification.."
	self halt: 'For informational purposes.  Does not page.'! !

!MaObjectRepository methodsFor: 'notifications' stamp: 'cmm 11/2/2008 09:39'!
pageDba: aString 
	"Signal DBA notification.."
	self halt: 'System needs help from the DBA'! !

!MaObjectRepository methodsFor: 'notifications' stamp: 'cmm 11/2/2008 09:39'!
warnDba: aString 
	"Signal DBA notification.."
	self halt: 'Warn the DBA of potential trouble'! !

!MaObjectRepository methodsFor: 'capacity management' stamp: 'jpb 5/12/2021 14:05:11'!
isLowOnMemory
	^ MaRegistry maMemoryAvailable < (MaSerializedGraphBuffer unreasonablePhysicalSize + EmergencyMemory size)! !

!MaObjectRepository methodsFor: 'testing' stamp: 'jpb 5/12/2021 15:47:08'!
restoreMode
	^ restoreMode ifNil: [ restoreMode _ filer ifNil: [ false ] ifNotNil: [ filer restoreMode ] ]! !

!MaObjectRepository methodsFor: 'read strategies' stamp: 'cmm 9/1/2003 19:11'!
systemReadStrategy

	^systemReadStrategy! !

!MaObjectRepository class methodsFor: 'creation' stamp: 'cmm 9/24/2004 12:50'!
create: aFileDirectory controller: aMaRepositoryController

	^ (self new repositoryController: aMaRepositoryController) create: aFileDirectory! !

!MaObjectRepository class methodsFor: 'creation' stamp: 'cmm 7/18/2005 13:23'!
open: aFileDirectory controller: aMaRepositoryController

	^self new
		repositoryController: aMaRepositoryController ;
		open: aFileDirectory ;
		yourself! !

!MaObjectRepository class methodsFor: 'private' stamp: 'jpb 5/12/2021 11:50:01'!
freeSomeSpace
	"Called by LowSpaceWatcher.  See #lowSpaceWatcher."
	"lowSpaceWatcher requires SOME space to be freed to avoid the debugger on LowSpaceSignal.  So we free 'someSpace' for now, and I will then see it is empty and free space myself at next opportunity."
	EmergencyMemory _ ''.  "<--- This is the 'request' to free some space, it can only be done *between* requests."! !

!MaObjectRepository class methodsFor: 'class initialization' stamp: 'cmm 11/7/2008 16:01'!
initialize
	super initialize.
	SimulateOutage _ false! !

!MaObjectRepository class methodsFor: 'accessing' stamp: 'cmm 5/29/2007 22:35'!
oldRecognitionSignature
	^ 5191969! !

!MaObjectRepository class methodsFor: 'accessing' stamp: 'cmm 4/2/2007 17:38'!
recognitionSignature
	"('cmmuller' asArray collect: [ : e | e asciiValue * 2 ]) asByteArray maUint: 64 at: 0"
	^ 16486227812107868870! !

!MaQueryExecutor methodsFor: 'accessing' stamp: 'cmm 12/26/2009 13:20'!
fractionComplete
	^ trunkPosition 
		ifNil: [ 0 ]
		ifNotNil: 
			[ | trunkSize |
			trunkSize _ self trunk trunkSize.
			trunkSize = 0 
				ifTrue: [ 1 ]
				ifFalse: 
					[ Fraction 
						numerator: trunkPosition
						denominator: self trunk trunkSize ] ]! !

!MaQueryExecutor methodsFor: 'private' stamp: 'cmm 2/19/2008 22:27'!
load: aMagmaCollectionSegment upTo: anInteger withObjects: aBoolean except: removedSet 
	"Load my segment with up to anInteger oids.  Since we load segments in succession, only capture the answer oids for the page that surrounds targetIndexInteger."
	| trunkEndPosition hitCount highestKey endIndex lowestKey |
	lowestKey _ 1 bitShift: 4096.
	highestKey _ hitCount _ 0.
	trunkEndPosition _ self 
		trunkFrom: aMagmaCollectionSegment trunkStart
		do: 
			[ : eachKey : eachOid | 
			(expression isClause or: 
				[ expression 
					shouldInclude: eachOid
					using: collectionManager ]) ifTrue: 
				[ highestKey _ eachKey max: highestKey.
				lowestKey _ eachKey min: lowestKey.
				(removedSet includes: eachOid) ifFalse: 
					[ hitCount _ hitCount + 1.
					aBoolean ifTrue: [ aMagmaCollectionSegment addObject: eachKey -> eachOid ] ] ] ]
		until: [ hitCount = anInteger ].
	endIndex _ aMagmaCollectionSegment startIndex + hitCount - 1.
	aMagmaCollectionSegment
		trunk: self trunk ;
		lowestKey: lowestKey ;
		highestKey: highestKey ;
		trunkEnd: trunkEndPosition.
	aMagmaCollectionSegment endIndex: endIndex.
	expression isClause 
		ifTrue: 
			[ aMagmaCollectionSegment lastKnownSize: trunk trunkSize ]
		ifFalse: 
			[ self 
				recordLastKnownSizeOn: aMagmaCollectionSegment
				to: endIndex
				ifBeyond: trunkEndPosition ]! !

!MaQueryExecutor methodsFor: 'private' stamp: 'cmm 7/28/2006 14:57'!
recordLastKnownSizeOn: aMagmaCollectionReaderSegment to: endIndex ifBeyond: trunkEndPosition 
	trunk trunkSize = 0 
		ifTrue: 
			[ "empty, no possible results"
			aMagmaCollectionReaderSegment lastKnownSize: 0 ]
		ifFalse: 
			[ trunkEndPosition ifNotNil: 
				[ aMagmaCollectionReaderSegment lastKnownSize: (trunkEndPosition >= trunk trunkSize ifTrue: [ endIndex ]) ] ]! !

!MaQueryExecutor methodsFor: 'private' stamp: 'cmm 6/13/2006 13:27'!
trunk
	^ trunk ifNil: 
		[ trunk _ MaQueryTrunk new.
		expression 
			addMinimumEnumerationsTo: trunk
			using: collectionManager.
		trunk ]! !

!MaQueryExecutor methodsFor: 'private' stamp: 'cmm 7/26/2006 17:36'!
trunkFrom: startPosition do: twoArgBlock until:  conditionBlock
	"Enumerate my query-trunk from a particular starting point."
	| trunkSearchPosition |
	trunkSearchPosition _ 1.
	trunkPosition _ nil.
	self trunk trunkDo: 
		[ : eachTrunkClause | 
		| hdx rangeSize |
		hdx _ collectionManager oidsIndexForAttribute: eachTrunkClause attribute.
		rangeSize _ hdx 
			numberOfEntriesFrom: eachTrunkClause lowKey
			to: eachTrunkClause highKey.
		eachTrunkClause lastKnownSize: rangeSize.
		"is this NOT the trunk-clause which will contain trunk-position startPosition?"
		trunkSearchPosition + rangeSize - 1 < startPosition 
			ifTrue: [ trunkSearchPosition _ trunkSearchPosition + rangeSize ]
			ifFalse: 
				[ "trunkSearchPosition is only set to position of the beginning of this clause of the trunk, trunkPosition keeps the actual trunkPosition."
				trunkPosition ifNil: [ trunkPosition _ startPosition - 1 "start one-back since we pre-increment (because post-increment leaves it advanced one too far)" ].
				conditionBlock value ifFalse:
					[ hdx 
						keysAndValuesFrom: eachTrunkClause lowKey
						startingAt: (startPosition - trunkSearchPosition + 1 max: 1)
						do: 
							[ : eachKey : eachOid | 
							trunkPosition _ trunkPosition + 1.
							twoArgBlock value: eachKey value: eachOid  ]
						until: 
							[ : eachKey : eachOid | 
							conditionBlock value 
							or: [ eachKey > eachTrunkClause highKey ] ].
					trunkSearchPosition _ trunkPosition ] ]. 
].
	^ trunkPosition! !

!MaQueryExecutor methodsFor: 'initializing' stamp: 'cmm 6/11/2006 20:06'!
setCollectionManager: aMagmaCollectionManager expression: aMaExpression 
	collectionManager _ aMagmaCollectionManager.
	expression _ aMaExpression! !

!MaQueryExecutor class methodsFor: 'create' stamp: 'cmm 6/11/2006 20:06'!
collectionManager: aMagmaCollectionManager expression: aMaExpression 
	^ self new 
		setCollectionManager: aMagmaCollectionManager
		expression: aMaExpression! !

!MaRecoveryManager methodsFor: 'file' stamp: 'cmm 6/13/2007 20:53'!
activeCommitLogFilename
	^ 'commits.log'! !

!MaRecoveryManager methodsFor: 'file' stamp: 'cmm 8/1/2007 22:16'!
archiveCommitLog
	repository commitCritical: 
		[ commitLogFile ifNotNil: 
			[ commitLogFile close.
			commitLogFile _ nil.
			self renameActiveCommitLog ] ]! !

!MaRecoveryManager methodsFor: 'file' stamp: 'cmm 6/13/2007 20:55'!
archiveCommitLogFilename
	"Answer the proper name for the archive commits file to become a recovery file.  The filename is commits.123.log, where 123 is commitNumber of the last CommitRecord in the file."
	^ String streamContents: 
		[ : stream | 
		stream
			maPrint: self class commitLogFilename ;
			maPrint: $. ;
			maPrint: commitNumber ;
			maPrint: $. ;
			maPrint: self class commitLogExtension ]! !

!MaRecoveryManager methodsFor: 'file' stamp: 'cmm 8/3/2007 12:56'!
close
	applyFile close.
	applyFile _ nil.
	self archiveCommitLog! !

!MaRecoveryManager methodsFor: 'file' stamp: 'cmm 7/8/2009 15:19'!
commitLogRecordsFrom: startCommitNumber do: aBlock until: untilBlock 
	"Enumerate my MaCommitLogRecords beyond my commitNumber.  Value aBlock with the first-class instance of MaCommitLogRecord."
	| untilReached |
	untilReached _ false.
	repository flushCritical: 
		[ self 
			commitLogFileStreamsFrom: startCommitNumber
			do: 
				[ : eachStream | 
				untilReached ifFalse: 
					[ untilReached _ untilReached or: 
						[ self 
							commitLogRecordsFrom: startCommitNumber
							in: eachStream
							do: aBlock
							until: untilBlock ] ] ]
			unless: [ untilReached ] ]! !

!MaRecoveryManager methodsFor: 'file' stamp: 'cmm 5/23/2007 23:27'!
defaultRecordSize
	^ DefaultRecordSize! !

!MaRecoveryManager methodsFor: 'file' stamp: 'cmm 6/1/2007 14:16'!
deleteFilesQueuedForDelete
	filesToDelete do: 
		[ : eachAtomicFileStream | 
		| fd |
		eachAtomicFileStream deletePhysicalFiles ].
	self initializeFilesToDelete! !

!MaRecoveryManager methodsFor: 'file' stamp: 'cmm 8/2/2007 22:14'!
deleteUnnecessaryCommitLogFiles
	"Value oneArgBlock for each commit-log file in my commitsDirectory that is no longer needed for recovery of my repository."
	self unnecessaryCommitLogFileNamesDo: 
		[ : each | 
		self commitLogDirectory deleteFileNamed: each ]! !

!MaRecoveryManager methodsFor: 'file' stamp: 'cmm 5/31/2005 17:36'!
ensureByteArray: aByteArray canHold: anInteger

	| newAnswer |
	^aByteArray size < anInteger
		ifTrue:
			[ newAnswer _ ByteArray new: anInteger.
			newAnswer
				replaceFrom: 1
				to: aByteArray size
				with: aByteArray
				startingAt: 1.
			newAnswer ]
		ifFalse: [ aByteArray ]! !

!MaRecoveryManager methodsFor: 'file' stamp: 'cmm 6/7/2005 22:58'!
flush
	applyFile flush! !

!MaRecoveryManager methodsFor: 'file' stamp: 'cmm 7/1/2007 13:48'!
open: aMagmaLocalLocation 
	location _ aMagmaLocalLocation.
	self openApplyFile.
	self commitLogDirectory assureExistence! !

!MaRecoveryManager methodsFor: 'file' stamp: 'jpb 5/11/2021 03:41:12'!
openApplyFile
	applyFile ifNil: [ applyFile _ (self directory pathName asDirectoryEntry // self class applyFilename) writeStream ].
	applyFile
		binary ;
		position: 0! !

!MaRecoveryManager methodsFor: 'file' stamp: 'jpb 5/12/2021 14:42:48'!
openCommitLog
	logStartTime _ Time millisecondClockValue.
	^ commitLogFile _ (self directory // self activeCommitLogFilename) writeStream
		binary ;
		setToEnd ;
		yourself	"just to be safe"! !

!MaRecoveryManager methodsFor: 'file' stamp: 'cmm 6/1/2007 14:13'!
queueForDelete: aMaAtomicFileStream 
	filesToDelete add: aMaAtomicFileStream! !

!MaRecoveryManager methodsFor: 'file' stamp: 'cmm 9/21/2014 18:14'!
readRecoveryFile: aStandardFileStream at: filePosition 
	| messagePrefix bytesRead inputRecord |
	messagePrefix _ 'Ungraceful end of commit-group:  '.
	inputRecord _ MaRecoveryRecord new: self defaultRecordSize.
	bytesRead _ aStandardFileStream 
		maRead: inputRecord bufferSize
		bytesFromPosition: 1
		of: inputRecord byteArray
		atFilePosition: filePosition.
	(bytesRead 
		between: 1
		and: MaRecoveryRecord sizeOfPhysicalSizeField) ifTrue: 
		[ MaUnreadableRecoveryRecord signal: messagePrefix , 'no forward-recovery records found' ].
	inputRecord physicalSize = 0 ifTrue: [ MaUnreadableRecoveryRecord signal: 'End of recovery group' ].
	inputRecord physicalSize > MaSerializedGraphBuffer unreasonablePhysicalSize ifTrue: 
		[ MaUnreadableRecoveryRecord signal: messagePrefix , 'unreasonable physicalSize found' ].
	"check physicalSize to see if we've read enough."
	inputRecord physicalSize > bytesRead ifTrue: 
		[ "We haven't read enough, read the rest, ensuring we get as much as we should."
		inputRecord byteArray: (self 
				ensureByteArray: inputRecord byteArray
				canHold: inputRecord physicalSize).
		bytesRead _ aStandardFileStream 
			maRead: inputRecord physicalSize - bytesRead
			bytesFromPosition: bytesRead + 1
			of: inputRecord byteArray
			atFilePosition: filePosition + bytesRead.
		bytesRead = (inputRecord physicalSize - self defaultRecordSize) ifFalse: [ MaUnreadableRecoveryRecord signal: messagePrefix , 'end of file' ] ].
	self validateRecord: inputRecord.
	^ self selectPreMadeRecord: inputRecord! !

!MaRecoveryManager methodsFor: 'file' stamp: 'jpb 5/12/2021 15:27:32'!
renameActiveCommitLog
	"To support one or more warm backups, a staging directory should be used in conjunction with Banyan (or any external copy script) to copy the files to the remote directories.  To make this easier, the current file is written in the repository directory and, when later closed, moved to the separate staging directory (commits) when it is safe to be copied to the warm backup's commitLogs.
	If the image crashes, the active commit.log file is still in the repository directory."
	commitLogFile ifNotNil: 
		[ MagmaSoftwareError signal: 'expected the active-commits file to be closed.' ].
		
	self hasActiveCommitLog ifTrue: [ 
		| oldFileEntry |
		oldFileEntry _ (self directory // self activeCommitLogFilename).
		oldFileEntry copyTo: (self commitLogDirectory // self archiveCommitLogFilename) asString.
		oldFileEntry delete ]! !

!MaRecoveryManager methodsFor: 'file' stamp: 'cmm 8/6/2007 21:29'!
resetApplyFile
	"Done with a recovery, now we should truncate the applyFile so future sessions have no chance to encounter the data think recovery operations are needed."
	applyFile
		truncate ;
		close ;
		open! !

!MaRecoveryManager methodsFor: 'file' stamp: 'cmm 7/10/2007 20:46'!
selectPreMadeRecord: aMaRecoveryRecord 
	^ (preMadeRecords 
		at: aMaRecoveryRecord recordType
		ifAbsent: 
			[ MaUnreadableRecoveryRecord signal: 'Ungraceful end of commit-group:  invalid recordType found (' , aMaRecoveryRecord recordType printString , ').' ])
		byteArray: aMaRecoveryRecord byteArray ;
		yourself! !

!MaRecoveryManager methodsFor: 'file' stamp: 'cmm 2/24/2013 19:22'!
unnecessaryCommitLogFileNamesDo: oneArgBlock 
	"Value oneArgBlock for each commit-log file in my commitsDirectory that is no longer needed for recovery of my repository."
	self commitLogDirectory in:
		[ : dir | dir exists ifTrue:
			[ dir entries do:
				[ : each | | nameParts |
				nameParts _ dir splitNameVersionExtensionFor: each name.
				(nameParts at: 2) <= commitNumber ifTrue: [ oneArgBlock value: (self commitLogDirectory fullNameFor: each name) ] ] ] ]! !

!MaRecoveryManager methodsFor: 'debugging' stamp: 'cmm 7/16/2005 17:58'!
applyRecords

	| answer |
	answer _ OrderedCollection new.
	[ self applyRecordsDo:
		[ : each |
		answer add: each independentCopy ] ]

		on: MaUnreadableRecoveryRecord
		do: [ : err | answer add: err messageText ].
	^ answer! !

!MaRecoveryManager methodsFor: 'recover' stamp: 'cmm 7/15/2005 16:25'!
applyRecordsDo: aBlock
	"Enumerate the block of RecoveryRecords for a single groupId in my applyFile."

	| currentPosition selectedRecord |
	currentPosition _ 0.
	[ selectedRecord _ 
		self 
			readRecoveryFile: applyFile
			at: currentPosition.
	selectedRecord isBeginApply
		ifTrue: [ groupId _ selectedRecord groupId ]
		ifFalse: 
			[ selectedRecord groupId = groupId
				ifFalse:
					[ MaUnreadableRecoveryRecord signal: 'expected groupId ', groupId printString, ' but encountered record with ', selectedRecord groupId printString. ] ].
	aBlock value: selectedRecord.
	selectedRecord isEndApply ]
		whileFalse:
			[ currentPosition _ currentPosition + selectedRecord physicalSize ]! !

!MaRecoveryManager methodsFor: 'recover' stamp: 'jpb 5/12/2021 15:21:32'!
hasActiveCommitLog
	^ commitLogFile notNil or: [ (self directory // self activeCommitLogFilename) exists ]! !

!MaRecoveryManager methodsFor: 'recover' stamp: 'cmm 7/15/2005 16:25'!
isRollbackNeeded

	| hasRecords hasValidEndApplyIndicator |
	hasRecords _ false.
	hasValidEndApplyIndicator _ false.
	[ self applyRecordsDo:
		[ : each |
		each isBeginApply ifTrue: [ hasRecords _ true ].
		each isEndApply
			ifTrue:
				[ hasValidEndApplyIndicator _ true ] ] ]
		on: MaUnreadableRecoveryRecord
		do: 
			[ : error |
			"An incomplete set of records for a single transactionId was found."
			MagmaNotification signal: error messageText.
			error return ].
	^ hasRecords and: [ hasValidEndApplyIndicator not ]! !

!MaRecoveryManager methodsFor: 'recover' stamp: 'cmm 10/28/2008 11:26'!
materializeCommitLogEntryIn: aMaCommitLogRecord 
	^ serializer resetOidManager materializeGraph: aMaCommitLogRecord record! !

!MaRecoveryManager methodsFor: 'recover' stamp: 'cmm 6/11/2007 22:19'!
primitiveRecoverUsing: aMaObjectRepository 
	"This recovery only happens if there was an outage exactly at the moment where the system was writing its own definition.  In that case, it would not even be able to open properly to perform a normal recovery; therefore we do this initial recovyer which should then *allow* it to materialize its definition so that it can then perform a normal recovery which will get the large-collections.  Whew!!"
	MagmaRecoveryNotification signal: 'System recovery needed!!'.
	[ self applyRecordsDo: 
		[ : eachRecoveryRecord | 
		(eachRecoveryRecord isApplyToFile and: 
			[ eachRecoveryRecord isForObjectsFile or: [ eachRecoveryRecord isForFilePositionsFile ] ]) ifTrue: [ aMaObjectRepository unapply: eachRecoveryRecord ] ] ] 
		on: MaUnreadableRecoveryRecord
		do: 
			[ : error | 
			MagmaRecoveryNotification signal: error messageText , '.  System recovery complete.' ].
	^ true! !

!MaRecoveryManager methodsFor: 'recover' stamp: 'cmm 6/20/2016 15:07'!
reapplyCommitPackagesUsing: aMaObjectRepository 
	| count continue onTrack applyCommitRecord |
	count _ 0.
	continue _ true.
	onTrack _ false.
	applyCommitRecord _ [ : recoveryRecord | | eachCommitLogEntry |
	count _ count + 1.
	eachCommitLogEntry _ self materializeCommitLogEntryIn: recoveryRecord.
	aMaObjectRepository commitCritical:
		[ aMaObjectRepository
			write: eachCommitLogEntry
			logged: false
			commitLogRecord: recoveryRecord.
		repository session advanceWith: eachCommitLogEntry ] ].
	"Branch code is allowed to change as long as we establish that we are 'onTrack' first.  branchCode can change when a backup is moved somewhere else and used as a primary."
	[ self
		commitLogRecordsFrom: commitNumber
		do:
			[ : each | continue = true ifTrue:
				[ "Apply ONLY if we have the exact next commit."
				(branchCode = each branchCode and: [ each commitNumber = (commitNumber + 1) ])
					ifTrue:
						[ count = 0 ifTrue:
							[ continue _ MagmaForwardRecoveryNeeded signal: 'A forward recovery from ' , each timestamp printString , ' is necessary.  If you wish to recover to a point-in-time, press Debug and save the desired target DateAndTime in my ''targetRecoveryTime''.'.
							self validateTargetRecoveryTime ].
						applyCommitRecord value: each ]
					ifFalse:
						[ each branchCode = branchCode
							ifTrue:
								[ each commitNumber > (commitNumber + 1)
									ifTrue:
										[ MagmaMissingCommitLogWarning signal: 'Looking for commit record ' , (commitNumber + 1) asString , ' but the oldest commit record found was ' , each commitNumber printString.
										^ self ]
									ifFalse:
										[ onTrack _ each commitNumber = commitNumber and: [ "{ branchCode. repository previousBranchCode} includes: each branchCode"
											true ] ] ]
							ifFalse:
								[ each commitNumber = (commitNumber + 1) ifTrue:
									[ onTrack
										ifTrue:
											[ repository branchCode: each branchCode.
											applyCommitRecord value: each ]
										ifFalse: [ MagmaDifferentBranch signal ] ] ] ] ] ]
		until: [ : each | continue = false or: [ targetRecoveryTime notNil and: [ each timestamp >= targetRecoveryTime ] ] ] ]

		on: MaUnreadableRecoveryRecord
		do:
			[ : error | MagmaWarning signal: count printString , ' reapply''s completed before encountering an error in the commit-log:  ' , error messageText , '.  ' ]! !

!MaRecoveryManager methodsFor: 'recover' stamp: 'cmm 8/6/2007 21:08'!
rollbackUsing: aMaObjectRepository 
	"If a beginApply record with a valid checkSum is found, then we must find a corresponding endApply record also with a valid checkSum.  If we don't, then we must reverse the entire transaction by starting back at the beginning and applying all of the beforeImage records with valid checkSums back to their files."
	MagmaServerPreferences debugRecovery ifTrue: [ self halt: 'about to rollback' ].
	[ self applyRecordsDo: 
		[ : each | 
		each isApplyToFile ifTrue: [ aMaObjectRepository unapply: each ] ] ] 
		on: MaUnreadableRecoveryRecord
		do: 
			[ : error | 
			MagmaRecoveryNotification signal: error messageText , '.  Rollback complete.' ].
	aMaObjectRepository repositoryController close.	"because class-definitions or largeCollections may have even needed rolled-back; refreshView will not refresh them."
	self deleteApplyFile.	"so we don't try to recover again on the next open.."
	aMaObjectRepository repositoryController open! !

!MaRecoveryManager methodsFor: 'record' stamp: 'cmm 7/12/2005 14:28'!
beginApply

	self preMadeBeginApplyRecord
		groupId: self getNextGroupId ;
		writeTo: applyFile  "no need to flush until the first ApplyRecord is written."! !

!MaRecoveryManager methodsFor: 'record' stamp: 'cmm 5/15/2007 00:12'!
endApply
	self preMadeEndApplyRecord
		groupId: groupId ;
		writeTo: applyFile.
	applyFile flush.
	self deleteFilesQueuedForDelete.
	"Ok, this group is a wrap.  We can now start back at the beginning."
	applyFile position: 0.
	serializer resetOidManager! !

!MaRecoveryManager methodsFor: 'record' stamp: 'cmm 6/5/2005 21:40'!
getNextGroupId 

	^ groupId _ groupId + 1! !

!MaRecoveryManager methodsFor: 'record' stamp: 'cmm 8/13/2007 22:23'!
writeBeforeImageRecordsFrom: aMaAtomicFileStream fileId: fileId 
	| hasWrittenFileGrowth |
	hasWrittenFileGrowth _ false.
	aMaAtomicFileStream writersDo: 
		[ : each | 
		each willCauseGrowth 
			ifTrue: 
				[ "Only need to write one of these."
				hasWrittenFileGrowth ifFalse: 
					[ self preMadeFileGrowthRecord
						originalSize: aMaAtomicFileStream committedSize ;
						fileId: fileId ;
						groupId: groupId ;
						writeTo: applyFile.
					hasWrittenFileGrowth _ true ] ]
			ifFalse: 
				[ self preMadeBeforeImageRecord
					location: each filePos ;
					record: each currentRecord ;
					fileId: fileId ;
					groupId: groupId ;
					writeTo: applyFile ] ]! !

!MaRecoveryManager methodsFor: 'record' stamp: 'cmm 5/24/2006 22:21'!
writeNewFileRecordFrom: aMaTransactionalFileStream fileId: fileId

	self preMadeNewFileRecord
		filename: aMaTransactionalFileStream filename ;
		fileId: fileId ;
		groupId: groupId ;
		writeTo: applyFile! !

!MaRecoveryManager methodsFor: 'record' stamp: 'cmm 8/13/2007 22:23'!
writeRollbackRecordsFor: aMaAtomicFileStream fileId: fileId 
	aMaAtomicFileStream isNew 
		ifTrue: 
			[ self 
				writeNewFileRecordFrom: aMaAtomicFileStream
				fileId: fileId ]
		ifFalse: 
			[ self 
				writeBeforeImageRecordsFrom: aMaAtomicFileStream
				fileId: fileId ]! !

!MaRecoveryManager methodsFor: 'accessing' stamp: 'cmm 6/19/2007 23:21'!
branchCode
	^branchCode! !

!MaRecoveryManager methodsFor: 'accessing' stamp: 'cmm 6/19/2007 23:21'!
branchCode: anInteger
	branchCode _ anInteger! !

!MaRecoveryManager methodsFor: 'accessing' stamp: 'cmm 7/1/2007 11:47'!
commitLogDirectory
	^ location commitLogDirectory! !

!MaRecoveryManager methodsFor: 'accessing' stamp: 'cmm 6/11/2007 22:29'!
commitLogFile
	^ commitLogFile ifNil: [ self openCommitLog ]! !

!MaRecoveryManager methodsFor: 'accessing' stamp: 'cmm 5/24/2007 22:37'!
commitNumber
	^ commitNumber! !

!MaRecoveryManager methodsFor: 'accessing' stamp: 'cmm 7/1/2007 14:00'!
directory
	^location directory ! !

!MaRecoveryManager methodsFor: 'accessing' stamp: 'jpb 5/12/2021 15:00:54'!
logArchiveFrequency
	^ logArchiveFrequency ifNil: [ logArchiveFrequency _ 5 minutes totalMilliseconds ]! !

!MaRecoveryManager methodsFor: 'accessing' stamp: 'cmm 12/19/2008 14:42'!
logArchiveFrequency: aDuration 
	"Set the frequency Magma should create new commit.n.log files.  "
	logArchiveFrequency _ aDuration asMilliSeconds! !

!MaRecoveryManager methodsFor: 'accessing' stamp: 'cmm 8/15/2008 14:43'!
serializer
	^ serializer! !

!MaRecoveryManager methodsFor: 'private' stamp: 'jpb 5/12/2021 11:49:42'!
commitLogFileNamesFrom: startNumber do: oneArgBlock 
	"Create a SortedCollection of the entries by the commitLogNumber.  Attach the original names so we don't have to reconstruct them after the sort."
	| selectedEntries sortedEntries dir |
	selectedEntries _ OrderedCollection new.
	dir _ self commitLogDirectory.
	dir exists ifFalse: [ ^ #() ].
	dir entries do:
		[ : each | | nameParts |
		nameParts _ dir splitNameVersionExtensionFor: each name.
		(nameParts at: 2) >= startNumber ifTrue: [ selectedEntries add: {each name. nameParts} ] ].
	sortedEntries _ selectedEntries asSortedCollection:
		[ : a : b | a second second < b second second ].
	sortedEntries do:
		[ : each | oneArgBlock value: (self commitLogDirectory fullNameFor: each first) ]! !

!MaRecoveryManager methodsFor: 'private' stamp: 'cmm 7/8/2009 15:19'!
commitLogFileStreamsFrom: startCommitNumber do: aBlock unless: dontDoItBlock 
	"Value aBlock with each appropriate StandardFileStream instance for reading a chunk of records from startCommitNumber."
	self 
		commitLogFileNamesFrom: startCommitNumber
		do: 
			[ : eachFilename | 
			dontDoItBlock value ifFalse: 
				[ (FileStream readOnlyFileNamed: eachFilename) in: [ : stream | [ aBlock value: stream ] ensure: [ stream close ] ] ] ].
	dontDoItBlock value ifFalse: 
		[ self hasActiveCommitLog ifTrue: 
			[ self commitLogFile reset.
			aBlock value: self commitLogFile ] ]! !

!MaRecoveryManager methodsFor: 'private' stamp: 'cmm 7/8/2009 15:08'!
commitLogRecordsFrom: anInteger in: aStandardFileStream do: oneArgBlock until: untilBlock 
	| currentPosition selectedRecord untilReached |
	untilReached _ false.
	currentPosition _ 0.
	[ aStandardFileStream atEnd or: [ untilReached ] ] whileFalse: 
		[ selectedRecord _ self 
			readRecoveryFile: aStandardFileStream
			at: currentPosition.
		(selectedRecord commitNumber >= anInteger and: [ (untilReached _ untilBlock value: selectedRecord) not ]) ifTrue: [ oneArgBlock value: selectedRecord ].
		currentPosition _ currentPosition + selectedRecord physicalSize ].
	^ untilReached! !

!MaRecoveryManager methodsFor: 'private' stamp: 'cmm 8/6/2007 21:19'!
deleteApplyFile
	applyFile ifNotNil: [ applyFile close ].
	self directory deleteFileNamed: self class applyFilename! !

!MaRecoveryManager methodsFor: 'private' stamp: 'cmm 7/16/2008 20:04'!
validateRecord: inputRecord 
	inputRecord hasValidCheckSum ifFalse: 
		[ MaUnreadableRecoveryRecord signal: 'record could not validate its checkSum.' ]! !

!MaRecoveryManager methodsFor: 'private' stamp: 'cmm 6/11/2007 21:22'!
validateTargetRecoveryTime
	targetRecoveryTime ifNotNil: 
		[ targetRecoveryTime class name = DateAndTime ifFalse: 
			[ MagmaUserError signal: 'targetRecoveryTime should be a kind of DateAndTime.' ] ]! !

!MaRecoveryManager methodsFor: 'initialize' stamp: 'cmm 5/24/2007 22:36'!
commitNumber: anInteger
	commitNumber _ anInteger! !

!MaRecoveryManager methodsFor: 'initialize' stamp: 'cmm 7/8/2007 17:41'!
initialize
	super initialize.
	groupId _ 0.
	self 
		initializePreMadeRecords ;
		initializeFilesToDelete ;
		initializeSerializer! !

!MaRecoveryManager methodsFor: 'initialize' stamp: 'cmm 6/6/2005 12:37'!
initializeFilesToDelete

	filesToDelete _ OrderedCollection new! !

!MaRecoveryManager methodsFor: 'initialize' stamp: 'cmm 6/11/2007 19:54'!
initializePreMadeRecords
	preMadeRecords _ { 
		(MaBeginApplyRecord new).
		(MaBeforeImageRecord new).
		(MaFileGrowthRecord new).
		(MaNewFileRecord new).
		(MaEndApplyRecord new).
		(MaCommitLogRecord new)
	 }! !

!MaRecoveryManager methodsFor: 'initialize' stamp: 'cmm 8/15/2008 12:20'!
initializeSerializer
	serializer _ MagmaSession newCommitLogSerializer! !

!MaRecoveryManager methodsFor: 'initialize' stamp: 'cmm 7/8/2007 17:34'!
setRepository: aMaObjectRepository
	repository _ aMaObjectRepository! !

!MaRecoveryManager methodsFor: 'commit-packages' stamp: 'cmm 4/8/2015 20:05'!
log: aMaCommitLogRecord 
	"In case a MaCommitLogRecordRequest had come in and repositioned the file-pointer of the commitLogFile, just ensure it is setToEnd before appending the next commit.  This does *not* belong in #writeTo: because that would cause the applied.images file to grow endlessly."
	self commitLogFile setToEnd.
	aMaCommitLogRecord writeTo: self commitLogFile.
	self commitLogFile flush.
	self timeToStartNewCommitLog ifTrue: [ self archiveCommitLog ]! !

!MaRecoveryManager methodsFor: 'commit-packages' stamp: 'cmm 12/26/2009 15:21'!
log: aMaCommitLogRecord flush: aBoolean 
	"In case a MaCommitLogRecordRequest had come in and repositioned the file-pointer of the commitLogFile, just ensure it is setToEnd before appending the next commit.  This does *not* belong in #writeTo: because that would cause the applied.images file to grow endlessly."
	self commitLogFile setToEnd.
	aMaCommitLogRecord writeTo: self commitLogFile.
	aBoolean ifTrue: [ self commitLogFile flush ].
	self timeToStartNewCommitLog ifTrue: [ self archiveCommitLog ]! !

!MaRecoveryManager methodsFor: 'commit-packages' stamp: 'cmm 7/14/2009 19:36'!
newCommitLogRecordFor: aMaCommitLogEntry 
	| commitPackageRecord |
	commitPackageRecord _ self preMadeCommitPackageRecord.
	commitPackageRecord
		record: (serializer resetOidManager serializeGraph: aMaCommitLogEntry) trimmedByteArray ;
		commitNumber: commitNumber ;
		timestamp: DateAndTime now ;
		branchCode: branchCode.
	^ commitPackageRecord independentCopy! !

!MaRecoveryManager methodsFor: 'commit-packages' stamp: 'cmm 5/23/2007 22:40'!
nextCommitNumber
	^ commitNumber _ commitNumber + 1! !

!MaRecoveryManager methodsFor: 'commit-packages' stamp: 'jpb 5/12/2021 14:59:38'!
timeToStartNewCommitLog
	^ (MaRegistry findMillisecondsSince: logStartTime) > self logArchiveFrequency! !

!MaRecoveryManager methodsFor: 'preMadeRecords' stamp: 'cmm 6/5/2005 16:40'!
preMadeBeforeImageRecord
	^ preMadeRecords at: MaBeforeImageRecord assignedRecordType! !

!MaRecoveryManager methodsFor: 'preMadeRecords' stamp: 'cmm 6/5/2005 16:41'!
preMadeBeginApplyRecord 
	^ preMadeRecords at: MaBeginApplyRecord assignedRecordType! !

!MaRecoveryManager methodsFor: 'preMadeRecords' stamp: 'cmm 6/11/2007 19:55'!
preMadeCommitPackageRecord 
	^ preMadeRecords at: MaCommitLogRecord assignedRecordType! !

!MaRecoveryManager methodsFor: 'preMadeRecords' stamp: 'cmm 6/5/2005 16:41'!
preMadeEndApplyRecord 
	^ preMadeRecords at: MaEndApplyRecord assignedRecordType! !

!MaRecoveryManager methodsFor: 'preMadeRecords' stamp: 'cmm 6/5/2005 16:41'!
preMadeFileGrowthRecord
	^ preMadeRecords at: MaFileGrowthRecord assignedRecordType! !

!MaRecoveryManager methodsFor: 'preMadeRecords' stamp: 'cmm 6/5/2005 16:41'!
preMadeNewFileRecord
	^ preMadeRecords at: MaNewFileRecord assignedRecordType! !

!MaRecoveryManager class methodsFor: 'accessing' stamp: 'cmm 6/9/2005 15:55'!
applyFilename
	^ 'applied.images'! !

!MaRecoveryManager class methodsFor: 'accessing' stamp: 'cmm 7/1/2007 13:52'!
commitLogDirectoryName
	^ 'commits'! !

!MaRecoveryManager class methodsFor: 'accessing' stamp: 'cmm 6/6/2007 23:22'!
commitLogExtension
	^ 'log'! !

!MaRecoveryManager class methodsFor: 'accessing' stamp: 'cmm 6/6/2007 23:22'!
commitLogFilename
	^ 'commits'! !

!MaRecoveryManager class methodsFor: 'class initialization' stamp: 'cmm 5/23/2007 23:27'!
defaultRecordSize: anInteger 
	DefaultRecordSize _ anInteger! !

!MaRecoveryManager class methodsFor: 'class initialization' stamp: 'cmm 5/23/2007 23:27'!
initialize
	super initialize.
	self defaultRecordSize: 300! !

!MaRecoveryManager class methodsFor: 'create' stamp: 'cmm 7/8/2007 17:33'!
repository: aMaObjectRepository 
	^ self new
		setRepository: aMaObjectRepository ;
		yourself! !

!MaTransactionLog methodsFor: 'actions' stamp: 'cmm 1/8/2009 18:52'!
abortTransactionEntryFor: sessionIdInteger repository: aMaObjectRepository 
	^ (self 
		renewEntryFor: sessionIdInteger
		withNew: MaTransactionLogEntry
		for: aMaObjectRepository) result! !

!MaTransactionLog methodsFor: 'actions' stamp: 'cmm 7/11/2005 15:07'!
entriesDo: aBlock

	entries do: aBlock! !

!MaTransactionLog methodsFor: 'actions' stamp: 'cmm 1/8/2009 18:51'!
renewEntryFor: sessionUuid withNew: entryClass for: aMaObjectRepository 
	"Gives the session identified by sessionUuid a new TranslactionLogEntry, where its challengers will be accumulated.  The entry prior to replacement is answered."
	| entry |
	entry _ self 
		renewEntryFor: sessionUuid
		withNew: entryClass
		ifAbsent: [ MagmaSessionLost signal ].
	aMaObjectRepository 
		renewServerNotificationsIn: entry result
		from: entry.
	entry result
		commitNumber: aMaObjectRepository commitNumber ;
		oidCount: aMaObjectRepository oidCount.
	^ entry! !

!MaTransactionLog methodsFor: 'actions' stamp: 'cmm 1/8/2009 18:57'!
renewTransactionEntryFor: sessionUuid repository: aMaObjectRepository 
	^ (self 
		renewEntryFor: sessionUuid
		withNew: (self entryFor: sessionUuid) class
		for: aMaObjectRepository) result! !

!MaTransactionLog methodsFor: 'private' stamp: 'cmm 7/15/2009 11:59'!
challenge: aBoolean entriesWith: aMaCommitLogEntry 
	"We record all objects that were committed to all the entries in the receiver.  Some of the entries are in transaction, some are not.  The ones that are will use aMaCommitLogEntry to verify their commit has no conflicts with this entry.  The ones that are not will use the result of the receiver to know which objects need refreshed."
	| entriesToRemove |
	entriesToRemove _ nil.
	self entriesDo: 
		[ : each | 
		(each isForSameSessionAs: aMaCommitLogEntry) ifFalse: 
			[ each hasExcessiveChallengers 
				ifTrue: 
					[ entriesToRemove ifNil: [ entriesToRemove _ OrderedCollection new ].
					entriesToRemove add: each ]
				ifFalse: 
					[ (aBoolean or: [ each isSystem ]) ifTrue: [ each addChallengingEntry: aMaCommitLogEntry ].
					each 
						recordChangesToSpecialObjectsIn: aMaCommitLogEntry
						using: self ] ] ].
	^ entriesToRemove! !

!MaTransactionLog methodsFor: 'private' stamp: 'cmm 9/5/2014 10:36'!
removeOldestEntryExceptFrom: sessionId 
	"Remove the oldest entry, but not the system session, of course."
	^ entries
		detect:
			[ : each | each isSystem not and: [ each id ~= sessionId ] ]
		ifFound:
			[ : foundEntry | entries remove: foundEntry ]
		ifNone: [  ]! !

!MaTransactionLog methodsFor: 'private' stamp: 'cmm 11/5/2008 15:55'!
renewEntryFor: sessionUuid withNew: aClass ifAbsent: aBlock
	"aClass should be either MaTransactionLogEntry or MaCommitLogEntry"

	| entry |
	entry _
		(self
			removeEntryForSessionId: sessionUuid
			ifAbsent: [ ^ aBlock value ]).
	entry recordAllChangedObjects.
	entries add: 
		(aClass
			id: sessionUuid
			connection: entry result connection).
	^ entry! !

!MaTransactionLog methodsFor: 'accessing' stamp: 'cmm 1/8/2009 18:43'!
entryFor: sessionId 
	^ self 
		entryFor: sessionId
		ifAbsent: [ MagmaSessionLost signal ]! !

!MaTransactionLog methodsFor: 'accessing' stamp: 'cmm 1/8/2009 18:42'!
entryFor: sessionId ifAbsent: aBlock 
	^ entries 
		detect: [ : each | each sessionId = sessionId ]
		ifNone: aBlock! !

!MaTransactionLog methodsFor: 'accessing' stamp: 'cmm 9/25/2014 13:37'!
numberOfEntries
	^ entries size! !

!MaTransactionLog methodsFor: 'testing' stamp: 'cmm 11/18/2009 14:20'!
hasAnyEntries
	^ entries notNil and: [ entries notEmpty ]! !

!MaTransactionLog methodsFor: 'testing' stamp: 'cmm 1/8/2009 18:44'!
hasEntryFor: sessionUuid 
	self 
		entryFor: sessionUuid
		ifAbsent: [ ^ false ].
	^ true! !

!MaTransactionLog methodsFor: 'testing' stamp: 'cmm 12/31/2002 12:31'!
isFirstEntryFor: sessionId

	^entries notEmpty and: [ entries first connection sessionId = sessionId ]
! !

!MaTransactionLog methodsFor: 'initialize-release' stamp: 'cmm 3/9/2009 17:33'!
initialize
	super initialize.
	"An OrderedCollection of MaCommitLogEntrys and MaTransactionLogEntrys.."
	entries _ OrderedCollection new.
	specialOids _ Dictionary new! !

!MaTransactionLog methodsFor: 'building' stamp: 'cmm 3/6/2009 16:27'!
newSessionFor: userIdString sessionId: aUuid numberOfChallengers: anInteger clientConnection: aMaClientConnection 
	| connection |
	connection _ MagmaClientConnection 
		userId: userIdString
		sessionId: aUuid
		maximumNumberOfChallengers: anInteger
		clientConnection: aMaClientConnection
		isSystem: entries isEmpty.
	entries add: (MaTransactionLogEntry 
			id: aUuid
			connection: connection).
	aMaClientConnection ifNotNil: [ aMaClientConnection info: userIdString , ' - ' , aUuid asString ].
	^ connection! !

!MaTransactionLog methodsFor: 'building' stamp: 'cmm 1/8/2009 18:53'!
newTransactionFor: sessionUuid repository: aMaObjectRepository 
	^ (self 
		renewEntryFor: sessionUuid
		withNew: MaCommitLogEntry
		for: aMaObjectRepository) result! !

!MaTransactionLog methodsFor: 'building' stamp: 'cmm 6/12/2006 23:50'!
removeEntryForSessionId: sessionId ifAbsent: aBlock 
	^ entries 
		maDetect: [ : each | each sessionId = sessionId ]
		ifFound: [ : foundTransactionLogEntry | entries remove: foundTransactionLogEntry ]
		ifNone: aBlock! !

!MaTransactionLog methodsFor: 'special oids' stamp: 'cmm 5/19/2004 22:24'!
onChangeOf: anInteger clientsShould: aSymbol

	specialOids
		at: anInteger
		put: aSymbol! !

!MaTransactionLog methodsFor: 'special oids' stamp: 'cmm 5/19/2004 00:10'!
specialOidsDo: twoArgBlock

	specialOids keysAndValuesDo: twoArgBlock! !

!MagmaCompressor methodsFor: 'compress' stamp: 'cmm 2/9/2013 16:52'!
close
	inputController ifNotNil: [ inputController close ]! !

!MagmaCompressor methodsFor: 'compress' stamp: 'cmm 5/2/2013 14:51'!
compressTo: outputLocation 
	| shouldCloseInput location objectCount sizeMsg |
	location _ outputLocation asMagmaLocalLocation.
	shouldCloseInput _ inputController isNil.
	inputController ifNil: [ self openInput ].
	objectCount _ self
		 createOutput: location ;
		 copyPrimitiveAttributes ;
		 writeGraphs.
	self
		 ensureNoOidReuse ;
		 copyMagmaCollections.
	self postCompress.
	outputFiler close.
	sizeMsg _ objectCount asString , ' objects transferred to the compressed repository.'.
	process description:
		(shouldCloseInput
			ifTrue:
				[ self close.
				'Done.  ' , sizeMsg , '  All repositories closed.' ]
			ifFalse: [ 'Done.  ' , sizeMsg , '  Input repository left open.' ])! !

!MagmaCompressor methodsFor: 'compress' stamp: 'cmm 10/20/2014 20:30'!
forkCanoncalizeSymbolsAndCompressTo: outputLocation 
	process _ MaClientProcess doBlock:
		[ | traverser oidsBySymbol oidConversions |
		process
			 name: 'canoncalizeSymbolsAndCompressTo: ' , outputLocation ;
			 unitsVerbPhrase: ' objects traversed' ;
			 description: 'Collecting oid-collections by Symbol...' ;
			 priority: Processor userSchedulingPriority.
		self guessTaskSize.
		traverser _ MagmaFileTraverser for: sourceLocation.
		oidsBySymbol _ Dictionary new.
		traverser anchorGraphDo:
			[ : eachBuffer | process advance.
			(eachBuffer classId = 11 and: [ (MaOidCalculator isOidForNewObject: eachBuffer oid) not ]) ifTrue:
				[ (oidsBySymbol
					at: eachBuffer asString
					ifAbsentPut: [ OrderedCollection new ]) add: eachBuffer oid ] ].
		process
			 description: traverser objectCount asString , ' objects in the database.' ;
			 unitsCompleted: 0 ;
			 taskSize: traverser objectCount.
		"Interesting to see all the Symbols in the db and how many occurrences of each we had."
		oidsBySymbol _ oidsBySymbol reject:
			[ : eachColl | eachColl size = 1 or:
				[ eachColl anySatisfy:
					[ : eachOid | MaOidCalculator isOidForNewObject: eachOid ] ] ].
		oidsBySymbol do:
			[ : each | each sort ].
		oidsBySymbol explore.
		oidConversions _ Dictionary new.
		oidsBySymbol keysAndValuesDo:
			[ : eachSymbol : eachOids | eachOids size > 1 ifTrue:
				[ eachOids withIndexDo:
					[ : oid : index | index > 1 ifTrue:
						[ oidConversions
							at: oid
							put: eachOids first ] ] ] ].
"I'm not sure why we need this.  Try removing it?"
		sourceLocation detachFromNode.
		"Now do a second pass where we replace all references to the Symbols to the canonicalized one."
		self upgradeBlock:
			[ : eachBuffer | eachBuffer isPointers
				ifTrue:
					[ eachBuffer instVarsDoWithIndex:
						[ : eachReferencedOid : index | oidConversions
							at: eachReferencedOid
							ifPresent:
								[ : canonicalizedOid | eachBuffer
									maInstVarAt: index
									put: canonicalizedOid ]
							ifAbsent: [  ] ] ]
				ifFalse: [ eachBuffer ] ].
		self compressTo: outputLocation ].
	process
		 resume ;
		 yourself! !

!MagmaCompressor methodsFor: 'compress' stamp: 'cmm 9/14/2016 16:54'!
forkCompressTo: outputLocation 
	^ process _ (MaClientProcess doBlock: [ self compressTo: outputLocation ])
		 priority: Processor userBackgroundPriority ;
		 resume! !

!MagmaCompressor methodsFor: 'private' stamp: 'cmm 5/2/2013 14:37'!
copyMagmaCollections
	process
		 description: 'Copying MagmaCollection files...' ;
		 unitsVerbPhrase: 'files copied' ;
		 unitsCompleted: 0 ;
		 taskSize: referencedCollections size.
	referencedCollections do:
		[ : eachOid | | sourceManager |
		process advance.
		sourceManager _ inputController repository collectionManagerFor: eachOid.
		sourceManager filenames do:
			[ : eachMcFilename | (MaAtomicFileStream fileNamed: (inputController directory fullNameFor: eachMcFilename)) physicalFilenamesDo:
				[ : eachPhysicalName | inputController directory
					maCopyFileNamed: eachPhysicalName
					toDirectory: outputFiler directory ] ] ]! !

!MagmaCompressor methodsFor: 'private' stamp: 'cmm 3/4/2009 12:45'!
copyPrimitiveAttributes
	| inputFiler |
	inputFiler _ inputController repository filer.
	inputController requestCritical: 
		[ outputFiler primitiveAttributeAddressesMap keysAndValuesDo: 
			[ : eachKey : eachValue | 
			eachKey isSymbol ifTrue: 
				[ outputFiler 
					perform: (eachKey , ':') asSymbol
					with: (inputFiler perform: eachKey) ] ] ]! !

!MagmaCompressor methodsFor: 'private' stamp: 'cmm 5/2/2013 14:20'!
createOutput: aMagmaLocalLocation 
	process description: 'Creating output repository at ' , aMagmaLocalLocation pathName.
	outputFiler _ MaObjectFiler create: aMagmaLocalLocation directory! !

!MagmaCompressor methodsFor: 'private' stamp: 'cmm 5/27/2007 16:36'!
ensureNoOidReuse
	"We can never allow an oid to be reused.  Once an object is created and persisted, its oid must be forever consumed.  Even if that object is later dereferenced, its oid will never be reused.  This is necessary to properly support universal-identity which is essential for MagmaForwardingProxys."
	"determine the next oid to be used in our inputController."
	| nextOid |
	nextOid _ inputController repository filer getNextOid.
	"Force our output controller to allocate up to the current oid."
	outputFiler getNextOid < nextOid ifTrue: 
		[ outputFiler 
			index: nextOid - 1
			at: 0 ]! !

!MagmaCompressor methodsFor: 'private' stamp: 'cmm 5/2/2013 14:36'!
guessTaskSize
	process
		 unitsCompleted: 0 ;
		 taskSize: sourceLocation oidCount! !

!MagmaCompressor methodsFor: 'private' stamp: 'cmm 3/29/2007 16:30'!
markClassReferenced: aMaObjectBuffer 
	| classIdManager |
	classIdManager _ inputController session serializer classIdManager.
	(classIdManager 
		definitionForClassId: aMaObjectBuffer classId
		version: aMaObjectBuffer classVersion) 
		withAllSuperclassDefinitionsDo: 
			[ : eachClassDefinition | 
			referencedClasses add: eachClassDefinition id ].
	"If a class-reference, be sure to get the referenced class itself."
	(aMaObjectBuffer classId = (classIdManager idForClass: MaClassReference))
		ifTrue:
			[ | indexOfId classReferenceDefinition |
			classReferenceDefinition _
				classIdManager
					definitionForClassId: aMaObjectBuffer classId
					version: aMaObjectBuffer classVersion.
			"Get the index of the 'id' variable."
			indexOfId _ classReferenceDefinition allInstVarNames indexOf: 'id'.
			indexOfId = 0 ifTrue: [ MagmaSoftwareError signal: 'Expected ''id'' variable.' ].
			(classIdManager 
				definitionForClassId:
					(inputController session
						objectWithOid: (aMaObjectBuffer maInstVarAt: indexOfId)
						ifAbsent: [ MagmaSoftwareError signal: 'Expected an to find an id' ])
				version: 1) 

				withAllSuperclassDefinitionsDo: 
					[ : eachClassDefinition | 
					referencedClasses add: eachClassDefinition id ] ]! !

!MagmaCompressor methodsFor: 'private' stamp: 'cmm 8/22/2002 21:09'!
markCollectionReferenced: oidInteger

	referencedCollections add: oidInteger! !

!MagmaCompressor methodsFor: 'private' stamp: 'cmm 8/7/2011 21:27'!
openInput

	inputController _ MagmaRepositoryController openedOn: sourceLocation ! !

!MagmaCompressor methodsFor: 'private' stamp: 'cmm 8/12/2010 22:27'!
postCompress
	"Overridable by upgrading subclasses like MagmaUpgrader."! !

!MagmaCompressor methodsFor: 'private' stamp: 'cmm 5/4/2013 15:02'!
writeGraphs
	| inputTraverser |
	inputTraverser _ MagmaFileTraverser repositoryController: inputController.
	process knowsTaskSize ifFalse: [ self guessTaskSize ].
	process
		 description: 'Copying object graph...' ;
		 unitsVerbPhrase: 'objects traversed'.
	inputTraverser anchorGraphDo:
		[ : eachBuffer | process advance.
		process stopped ifFalse:
			[ self markClassReferenced: eachBuffer.
			(inputController isClassIdForLargeCollection: eachBuffer classId) ifTrue: [ self markCollectionReferenced: eachBuffer oid ].
			(MaOidCalculator isOidForUserObject: eachBuffer oid) ifTrue:
				[ outputFiler
					
					write: (self upgrade: eachBuffer)
					index: true ;
					 filesDo: [ : eachFile : eachFileId | eachFile maCommit ] ] ] ].
	^ inputTraverser objectCount! !

!MagmaCompressor methodsFor: 'initialize-release' stamp: 'cmm 5/4/2013 15:02'!
initialize
	super initialize.
	referencedClasses _ Set new.
	referencedCollections _ Set new.
	upgradeBlock _ [ : eachBuffer | eachBuffer ].
	process _ MaClientProcess new! !

!MagmaCompressor methodsFor: 'initialize-release' stamp: 'kph 10/5/2006 06:36'!
sourceLocation: location

	sourceLocation _ location! !

!MagmaCompressor methodsFor: 'initialize-release' stamp: 'cmm 8/5/2011 16:08'!
upgradeBlock: oneArgBlock 
	"Specify a block which accepts each MaObjectBuffer in the repository as an argument.  The value of the block will be written to the new compressed repository.  Useful for upgrading to new buffer-formats."
	upgradeBlock _ oneArgBlock! !

!MagmaCompressor methodsFor: 'printing' stamp: 'cmm 2/9/2013 16:49'!
maPrintAbbreviatedOn: aStream
	sourceLocation maPrintAbbreviatedOn: aStream! !

!MagmaCompressor methodsFor: 'override' stamp: 'cmm 3/2/2013 11:15'!
mauiDefaultView 
	^ 'Main'! !

!MagmaCompressor methodsFor: 'override' stamp: 'cmm 8/6/2011 17:18'!
upgrade: aMaObjectBuffer 
	^ upgradeBlock value: aMaObjectBuffer ! !

!MagmaCompressor class methodsFor: 'creation' stamp: 'cmm 1/18/2007 23:58'!
source: pathStringOrMagmaLocalLocation
	^ self new sourceLocation: pathStringOrMagmaLocalLocation asMagmaLocalLocation! !

!MagmaFileTraverser methodsFor: 'actions' stamp: 'cmm 4/30/2013 21:56'!
anchorGraphDo: aBlock 
	| shouldClose |
	objectCount _ 0.
	shouldClose _ false.
	repositoryController ifNil:
		[ shouldClose _ true.
		self open ].
	[ self
		graphFrom: (repositoryController requestCritical: [ self repository filer anchorOid ])
		do: aBlock ] ensure:
		[ shouldClose ifTrue: [ self close ] ]! !

!MagmaFileTraverser methodsFor: 'actions' stamp: 'cmm 4/30/2013 21:57'!
graphFrom: oid do: aBlock
	"Value aBlock against every buffer in the receivers file."
	| readStrategy shouldClose |
	shouldClose _ false.
	objectCount _ 0.
	repositoryController ifNil: [ shouldClose _ true. self open ].
	readStrategy _ MaBasicReadStrategy minimumDepth: 0.
	MagmaNotification signal: 'Beginning traversal of ', oid printString, ' of ', directory pathName.
	graphBuffer _ MaSerializedGraphBuffer new: 1000.
	[ self initializeOidsVisited.
	self
		graphFrom: oid
		do: aBlock
		using: readStrategy ]

		ensure:
			[ shouldClose ifTrue: [ self close ].
			self deleteOidsVisited ].
	MagmaNotification signal: 'Traversal of ', oid printString, ' of ', directory pathName, ' complete.'! !

!MagmaFileTraverser methodsFor: 'actions' stamp: 'cmm 3/8/2014 11:42'!
traceAllPathsToAllOf: collectionOfOids
	"Answer a collection of Array's, where each Array is the path of oids, from the root, to each object in collectionOfOids."
	| set | set _ collectionOfOids asSet.
	^ self traceAllWhere: [ : each | set includes: each oid]! !

!MagmaFileTraverser methodsFor: 'actions' stamp: 'cmm 3/8/2014 11:35'!
traceAllWhere: aBlock 
	"Answer a the paths of buffers that value true for aBlock.  Each element is an ordered-collection of buffers where the last one satisfies aBlock."
	^ Array streamContents:
		[ : stream | self anchorGraphDo:
			[ : each | (aBlock value: each) ifTrue: [ stream nextPut: graphBuffer buffers ] ] ]! !

!MagmaFileTraverser methodsFor: 'actions' stamp: 'cmm 5/3/2014 14:38'!
traceAnyPathTo: oidInteger
	"Answer a collection of MaObjectBuffers representing the path to oidInteger."
	^ self traceAnyWhere: [ : each | each oid = oidInteger ]! !

!MagmaFileTraverser methodsFor: 'actions' stamp: 'cmm 3/8/2014 11:39'!
traceAnyWhere: aBlock 
	"Answer a path of buffers from the root to the buffer that values true for aBlock. The path is an ordered-collection of buffers where the last one satisfies aBlock."
	self anchorGraphDo:
		[ : each | (aBlock value: each) ifTrue: [ ^ graphBuffer buffers ] ]! !

!MagmaFileTraverser methodsFor: 'private' stamp: 'cmm 8/21/2002 00:24'!
close

	repositoryController ifNotNil:
		[ repositoryController requestCritical: [ repositoryController close ] ]! !

!MagmaFileTraverser methodsFor: 'private' stamp: 'cmm 9/24/2004 16:15'!
deleteOidsVisited

	oidsVisited ifNotNil: [ oidsVisited close ].
	directory deleteFileNamed: self tempOidsVisitedFilename! !

!MagmaFileTraverser methodsFor: 'private' stamp: 'cmm 4/11/2009 17:07'!
directory: aFileDirectory
	directory _ aFileDirectory! !

!MagmaFileTraverser methodsFor: 'private' stamp: 'cmm 8/7/2011 16:31'!
graphBuffer
	^ graphBuffer! !

!MagmaFileTraverser methodsFor: 'private' stamp: 'cmm 4/30/2013 21:57'!
graphFrom: oidInteger do: oneArgBlock using: aMaReadStrategy 
	| buffer indexPosition |
	(MaOidCalculator isOidForUserObject: oidInteger) ifFalse: [ ^ self ].
	indexPosition _ MaOidCalculator indexPositionForOid: oidInteger.
	(oidsVisited 
		at: indexPosition
		ifAbsent: [ 0 ]) = 0 ifFalse: [ ^ self ].
	objectCount _ objectCount + 1.
	oidsVisited 
		at: indexPosition
		put: oidInteger.
	repositoryController requestCritical: 
		[ buffer _ self repository filer 
			appendObject: oidInteger
			into: graphBuffer ].
	oneArgBlock value: buffer.
	buffer 
		graphDo: oneArgBlock
		using: aMaReadStrategy
		for: self.
	graphBuffer decreaseBufferSizeBy: buffer physicalSize! !

!MagmaFileTraverser methodsFor: 'private' stamp: 'cmm 10/26/2006 14:43'!
graphFromLargeCollection: oidInteger do: oneArgBlock using: aMaReadStrategy
	| fileIndex |
	fileIndex _ (repositoryController 
		requestCritical: 
			[ repositoryController repository collectionManagerFor: oidInteger ]) memberIndex.
	MagmaNotification signal: 'beginning enumeration of ', fileIndex size printString, ' objects in MagmaCollection ', oidInteger printString.
	fileIndex
		do: oneArgBlock
		for: self
		using: aMaReadStrategy.
	MagmaNotification signal: 'MagmaCollection enumeration complete:  ', oidInteger printString! !

!MagmaFileTraverser methodsFor: 'private' stamp: 'cmm 5/2/2005 12:04'!
graphFromPointers: aMaObjectBuffer do: oneArgBlock using: aMaReadStrategy
	"aMaObjectBuffer isPointers must be true to get here."

	aMaObjectBuffer instVarsDoWithIndex:
		[ :eachOid :index |
		self
			graphFrom: eachOid
			do: oneArgBlock
			using: aMaReadStrategy ]! !

!MagmaFileTraverser methodsFor: 'private' stamp: 'cmm 7/12/2005 23:43'!
initializeOidsVisited

	oidsVisited ifNotNil: [ self deleteOidsVisited ].
	oidsVisited _ 
		MaLargeArrayOfNumbers
			createNamed: self tempOidsVisitedFilename
			bitSize: MaObjectFiler maxDbSize! !

!MagmaFileTraverser methodsFor: 'private' stamp: 'cmm 10/26/2006 18:40'!
isForLargeCollection: aMaFixedObjectBuffer
	^ repositoryController isClassIdForLargeCollection: aMaFixedObjectBuffer classId! !

!MagmaFileTraverser methodsFor: 'private' stamp: 'cmm 4/11/2009 17:05'!
open
	repositoryController _ MagmaRepositoryController openedOn: (MagmaLocalLocation path: directory pathName)! !

!MagmaFileTraverser methodsFor: 'private' stamp: 'cmm 8/13/2002 23:29'!
repository

	^repositoryController repository! !

!MagmaFileTraverser methodsFor: 'private' stamp: 'cmm 9/24/2004 15:54'!
repositoryController: aMagmaRepositoryController

	repositoryController _ aMagmaRepositoryController.
	directory _ aMagmaRepositoryController directory! !

!MagmaFileTraverser methodsFor: 'private' stamp: 'cmm 9/26/2004 21:30'!
tempOidsVisitedFilename

	^ repositoryController directory fullNameFor: 'oidsVisited.tmp'! !

!MagmaFileTraverser methodsFor: 'initialize-release' stamp: 'cmm 4/30/2013 21:56'!
initialize
	super initialize.
	objectCount _ 0! !

!MagmaFileTraverser methodsFor: 'accessing' stamp: 'cmm 4/30/2013 21:58'!
objectCount
	"The number of objects traversed by the receiver during the last graph traversal operation."
	^ objectCount! !

!MagmaFileTraverser class methodsFor: 'creation' stamp: 'cmm 4/11/2009 17:07'!
for: pathStringOrMagmaLocalLocation
	^ self new 
		directory: (pathStringOrMagmaLocalLocation asMagmaLocalLocation directory)
		yourself! !

!MagmaFileTraverser class methodsFor: 'creation' stamp: 'cmm 8/15/2002 22:52'!
repositoryController: aMagmaRepositoryController

	^self new repositoryController: aMagmaRepositoryController! !

!MagmaRepositoryController methodsFor: 'accessing' stamp: 'cmm 11/18/2008 12:54'!
branchCode
	"The branchCode is a randomly-generated number used to prevent accidentally applying the wrong commit-logs to a repository.  When performing a forward recovery, each CommitLogRecord's #branchCode must match mine.  Every time a commitRestore is performed, this branchCode is updated to a new number."
	^ repository branchCode! !

!MagmaRepositoryController methodsFor: 'accessing' stamp: 'cmm 6/2/2008 22:08'!
close
	"requestCritical: in case an extractProcess managed to queue one last request in at the last second.."
	self requestCritical: 
		[ self class controllersGuard: 
			[ OpenControllers 
				remove: self
				ifAbsent: 
					[ "do nothing"
					 ] ].
		self primClose ]! !

!MagmaRepositoryController methodsFor: 'accessing' stamp: 'cmm 7/15/2008 14:52'!
commitNumber
	"Answer the number of commits ever applied to this repository.  This is useful for determining which commit.n.log files are no longer needed (all which are lower than this number are no longer needed)."
	^ repository commitNumber! !

!MagmaRepositoryController methodsFor: 'accessing' stamp: 'cmm 3/29/2010 21:20'!
defaultBackupDirectory
	"Answer the default backup directory, which is a sibling directory to mine, but named with an extension of my commitNumber."
	| myDir parentDir newDirName |
	myDir _ self directory.
	parentDir _ myDir containingDirectory.
	newDirName _ myDir pathParts last , '.' , self commitNumber asString.
	^ parentDir / newDirName! !

!MagmaRepositoryController methodsFor: 'accessing' stamp: 'cmm 5/11/2007 12:37'!
directory
	"Answer the directory in which my files reside."
	"Note, this is the same FileDirectory that MaObjectFiler has.  It was necessary to duplicate this here to support the auto-reopen feature upon image restart."
	^ localLocation directory! !

!MagmaRepositoryController methodsFor: 'accessing' stamp: 'kph 4/27/2007 02:53'!
filenames
	^ localLocation fileNames! !

!MagmaRepositoryController methodsFor: 'accessing' stamp: 'kph 4/27/2007 02:56'!
localLocation
	"Answer the localLocation where my files reside."
	 
	^ localLocation! !

!MagmaRepositoryController methodsFor: 'accessing' stamp: 'jpb 5/12/2021 11:39:09'!
magmaId
	^ self definition ifNotNil: [ : definition | definition magmaId ]! !

!MagmaRepositoryController methodsFor: 'accessing' stamp: 'cmm 5/11/2007 12:36'!
pathName
	^ localLocation pathName! !

!MagmaRepositoryController methodsFor: 'accessing' stamp: 'cmm 5/7/2008 17:23'!
serverStatistics
	^ serverStatistics! !

!MagmaRepositoryController methodsFor: 'accessing' stamp: 'cmm 4/3/2003 22:59'!
sessionId

	^session id
! !

!MagmaRepositoryController methodsFor: 'backup / restore' stamp: 'cmm 8/1/2007 22:16'!
archiveCommitLog
	repository archiveCommitLog! !

!MagmaRepositoryController methodsFor: 'backup / restore' stamp: 'cmm 3/4/2009 15:00'!
backupProcess
	^ backupProcess! !

!MagmaRepositoryController methodsFor: 'backup / restore' stamp: 'cmm 7/1/2007 11:23'!
commitLogDirectory
	^ self localLocation commitLogDirectory! !

!MagmaRepositoryController methodsFor: 'backup / restore' stamp: 'cmm 8/3/2007 11:02'!
deleteUnnecessaryCommitLogs
	"Delete all commit log files from my 'commits' subdirectory that have already been written to my repository files and, therefore, are no longer needed by this repository.  This is not performed automatically because the files might be needed for one or more warm backups."
	repository deleteUnnecessaryCommitLogs! !

!MagmaRepositoryController methodsFor: 'backup / restore' stamp: 'cmm 3/29/2010 21:27'!
fullBackup
	"Backup the repository to the defaultBackupDirectory while the repository is open.  If there is a Magma repository at pathString, an environment error is signaled."
	| dir |
	dir _ self defaultBackupDirectory.
	[ self fullBackupTo: dir ] 
		on: MagmaDeleteWarning
		do: 
			[ : warn | 
			MagmaEnvironmentError signal: 'Did not expect backup-dir to already exist.  No action taken.' ].
	^ 'A new backup is being created at ' , dir fullName! !

!MagmaRepositoryController methodsFor: 'backup / restore' stamp: 'cmm 12/7/2015 13:31'!
fullBackupTo: aFileDirectory 
	"Backup the repository to aFileDirectory while the repository is open.  Files in the aFileDirectory will be overwritten."
	self isFullBackupRunning ifTrue: [ MagmaUserError signal: 'Model backup is already running.' ].
	aFileDirectory fullName = self directory fullName ifTrue: [ MagmaUserError signal: 'Must not back up to running server''s directory!!' ].
	aFileDirectory exists ifTrue: [ MagmaEnvironmentError signal: aFileDirectory fullName , ' already exists??!!' ].
	aFileDirectory assureExistence.
	self requestCritical:
		[ "start new commit log that begins with the very next transaction after this backup."
		self archiveCommitLog; copyMostRecentCommitLogFileTo: aFileDirectory / MaRecoveryManager commitLogDirectoryName.
		backupProcess _ MaClientProcess doBlock:
			[ | filenames filesNotToCopy | [ repository flushCritical:
				[ "Flush now so we minimize the amount kept in RAM, and to ensure the backup is at the most current state."
				repository flushCache.
				filenames _ self filenames.
				filesNotToCopy _ 
					{MaRecoveryManager applyFilename. 
					self class openIndicatorFilename. 
					repository recoveryManager activeCommitLogFilename}.
				backupProcess
					 taskSize: filenames size - filesNotToCopy size ;
					 unitsVerbPhrase: 'files copied'.
				backupProcess advance.
				filenames do:
					[ : each | (filesNotToCopy includes: each) ifFalse:
						[ backupProcess shouldStop ifFalse:
							[ backupProcess description: 'Copying ' , each.
							[repository directory
								maCopyFileNamed: each
								toDirectory: aFileDirectory] on: FileExistsException do: [ : exc | backupProcess description: 'Backup FAILED!!'.  MagmaSoftwareError signal: 'File should not possibly exist at this point.  Aborted.' ].
							backupProcess advance ] ] ].
				aFileDirectory fileNamed: 'about.txt' do: [ : stream | stream setToEnd; ascii; lf; maPrint: aFileDirectory localName; space; maPrint: DateAndTime now ] ].
			backupProcess shouldStop not ifTrue:
				[ (MaObjectFiler open: aFileDirectory)
					 restoreMode: true ;
					 close.
				backupProcess advance ] ] ensure:
				[ backupProcess stopped ifFalse: [ backupProcess description: 'Backup complete.' ] ] ].
		backupProcess
			 name: 'backing up to ' , aFileDirectory fullName ;
			 start ]! !

!MagmaRepositoryController methodsFor: 'backup / restore' stamp: 'cmm 3/7/2009 14:22'!
fullBackupToServerPath: pathString 
	"Backup the repository to the directory identified by pathString while the repository is open.  If there is a Magma repository at pathString, all files will be deleted ahead of time, otherwise none will."
	| didDelete |
	didDelete _ false.
	[ self fullBackupTo: (MagmaLocalLocation path: pathString) directory ] 
		on: MagmaDeleteWarning
		do: 
			[ : warn | 
			didDelete _ true.
			warn resume ].
	^ didDelete 
		ifTrue: [ 'Backup at ' , pathString , ' is being replaced with a new backup.' ]
		ifFalse: [ 'A new backup is being created at ' , pathString ]! !

!MagmaRepositoryController methodsFor: 'backup / restore' stamp: 'cmm 9/10/2010 13:51'!
isFullBackupRunning
	^ self requestCritical: 
		[ backupProcess notNil and: [ backupProcess everStarted not or: [ backupProcess isRunning ] ] ]! !

!MagmaRepositoryController methodsFor: 'backup / restore' stamp: 'cmm 8/2/2007 00:16'!
logArchiveFrequency
	"Answer the frequency which commit.log files are closed and a new one started.  Commit log files are used to apply to a backup to bring it up to date."
	^ repository logArchiveFrequency! !

!MagmaRepositoryController methodsFor: 'backup / restore' stamp: 'cmm 8/2/2007 00:16'!
logArchiveFrequency: aDuration 
	"Override the default frequency which commit.log files are closed and a new one started.  Commit log files are used to apply to a backup to bring it up to date.

	Example:  myRepositoryController logArchiveFrequency: 15 minutes."
	repository logArchiveFrequency: aDuration! !

!MagmaRepositoryController methodsFor: 'backup / restore' stamp: 'cmm 3/2/2009 15:49'!
replayCommitLogs
	"Search my 'commits' subdirectory for the proper commit log file to begin replaying from.  Replay it and any subsequent commit log files as far forward possible."
	repository rollforwardIfPossible! !

!MagmaRepositoryController methodsFor: 'backup / restore' stamp: 'cmm 10/22/2008 15:29'!
restoreMode
	"Answer whether the receiver is operating in restoreMode.  Warm backups operate in restoreMode, taking commits broadcasted to them from the 'primary' and applying them."
	^ repository restoreMode! !

!MagmaRepositoryController methodsFor: 'unsupported' stamp: 'cmm 6/6/2005 13:35'!
beReadOnly

	self requestCritical: [ preferences beReadOnly ]! !

!MagmaRepositoryController methodsFor: 'unsupported' stamp: 'cmm 6/6/2005 13:35'!
beReadWrite

	self requestCritical: [ preferences beReadWrite ]! !

!MagmaRepositoryController methodsFor: 'unsupported' stamp: 'cmm 6/23/2002 10:48'!
connections
	"Used for monitoring server status via some console gui."

	self maMarked: 'dev'.! !

!MagmaRepositoryController methodsFor: 'unsupported' stamp: 'cmm 5/2/2004 20:40'!
maximumNumberOfChallengers: anInteger 
	self session 
		commit: [ self definition maximumNumberOfChallengers: anInteger ]! !

!MagmaRepositoryController methodsFor: 'private' stamp: 'cmm 10/25/2008 15:05'!
branchCode: anInteger 
	"Private - Do not update the branchCode from outside!!"
	repository branchCode: anInteger! !

!MagmaRepositoryController methodsFor: 'private' stamp: 'cmm 10/26/2004 21:54'!
codeBaseByteArray

	^Array
		with: repository classDefinitionsByteArray
		with: (serverSerializer serializeGraph: self definition codeBase) trimmedByteArray! !

!MagmaRepositoryController methodsFor: 'private' stamp: 'cmm 12/7/2015 13:38'!
copyMostRecentCommitLogFileTo: commitLogOfBackup
	commitLogOfBackup assureExistence.
	(self commitLogDirectory entries detectMax: [ : each | each modificationTime ]) ifNotNil: [ : entry | entry copyTo: commitLogOfBackup ]! !

!MagmaRepositoryController methodsFor: 'private' stamp: 'cmm 9/16/2008 22:21'!
createRepositoryAt: aMagmaLocalLocation 
	| anchor |
	self initializeSession.
	self session initializeDefinition.
	self session definition addMinimumClassesForOdbmsUsing: self serverSerializer.
	localLocation _ aMagmaLocalLocation.
	self
		repository: (MaObjectRepository 
				create: localLocation directory
				controller: self) ;
		connect ;
		forceWrite: (anchor _ MaRootAnchor new
				definition: self definition ;
				yourself).
	repository filer
		anchorOid: (self session oidFor: anchor) ;
		classDefinitionsOid: (self session oidFor: self definition classDefinitions) ;
		definitionOid: (self session oidFor: self definition).
	self close! !

!MagmaRepositoryController methodsFor: 'private' stamp: 'cmm 2/20/2005 16:31'!
ensureOpen

	self isOpen ifFalse: [ self open ]! !

!MagmaRepositoryController methodsFor: 'private' stamp: 'cmm 3/5/2009 23:39'!
executeSwapWith: aMagmaRemoteLocation commitNumber: commitNumber branchCode: branchCode 
	"I am the primary.  aMagmaRemoteLocation wants to be the primary now."
	| commitLogRecords currentCommitNumber |
	self branchCode = branchCode ifFalse: [ MagmaDifferentBranch signal: 'Branch codes don''t match?!!' ].
	currentCommitNumber _ self commitNumber.
	commitLogRecords _ repository commitRecordsFrom: commitNumber.
	commitLogRecords notEmpty and: 
		[ commitLogRecords last commitNumber = currentCommitNumber ifFalse: 
			[ MagmaEnvironmentError signal: 'Warm backup is too far behind at this time!!' ] ].
	"We will just manually update the node rather than use MagmaNodeUpdate so its simpler and more explicit.  Using MagmaNodeUpdate *may* work, I'm not sure.."
	self session commit: [ self node swapWithPrimary: aMagmaRemoteLocation ].
	repository beginRestore.
	"Now, capture that last commit!!"
	commitLogRecords _ commitLogRecords , (repository commitRecordsFrom: currentCommitNumber + 1).
	^ commitLogRecords! !

!MagmaRepositoryController methodsFor: 'private' stamp: 'cmm 2/10/2009 14:04'!
forceWrite: anObject 
	"This is somewhat of a hacking method to enable us to write objects needed
	for the repository to operate (i.e., commit transactions) during initial creation."
	| commitPackage answer |
	commitPackage _ MaCommitPackage new.
	anObject maIsLargeCollection ifTrue: [ commitPackage addLargeCollectionChanges: anObject changes ].
	session serializer 
		serializeGraph: anObject
		do: [ : eachObject | commitPackage addObject: eachObject ].
	"Prime the serializer."
	session begin.
	commitPackage copy serializeObjectsUsing: session.
	commitPackage serializeObjectsUsing: session.
	answer _ self forceWritePackage: commitPackage.
	session 
		refreshViewUsing: answer
		includingLocal: false.
	^ answer! !

!MagmaRepositoryController methodsFor: 'private' stamp: 'cmm 2/10/2009 14:04'!
forceWritePackage: aMaCommitPackage 
	"This is somewhat of a hacking method to enable us to write objects needed
	for the repository to operate (i.e., commit transactions) during initial creation."
	^ 
	[ repository 
		submitAll: aMaCommitPackage
		for: session id
		beginAnother: false ] ensure: [ session decrementTransactionLevel ]! !

!MagmaRepositoryController methodsFor: 'private' stamp: 'cmm 9/1/2003 19:40'!
initializeSystemReadStrategy

	repository initializeSystemReadStrategyUsing: self serverSerializer classIdManager! !

!MagmaRepositoryController methodsFor: 'private' stamp: 'cmm 6/10/2005 10:59'!
materializeClassDefinitions
	"This is needed because, when opening the repository, the default classes do not include MagmaRepositoryDefinition, which is delivered as part of any session-connection.  When the system-session attempts to connect, it tries to read the repository-definition but can't because it can't get a proper read-strategy for it."

	[ session loadClassDefinitionsFrom: repository classDefinitionsByteArray ]
		on: Error
		do:
			[ : err | MagmaCorruptionError signal: err messageText ]! !

!MagmaRepositoryController methodsFor: 'private' stamp: 'cmm 11/7/2008 14:32'!
newSessionFor: aMaRepositoryConnectionRequest sessionId: aUuid 
	^ self repository 
		newSessionFor: aMaRepositoryConnectionRequest userId
		sessionId: aUuid
		numberOfChallengers: MagmaRepositoryDefinition defaultMaximumNumberOfChallengers
		clientConnection: aMaRepositoryConnectionRequest clientConnection! !

!MagmaRepositoryController methodsFor: 'private' stamp: 'cmm 10/22/2008 16:53'!
newTransactionFor: sessionId 
	preferences isReadOnly ifTrue: 
		[ MagmaUserError signal: 'This repository is set to read-only, commits are prohibited.' ].
	self restoreMode ifTrue: 
		[ MagmaUserError signal: 'Transactions are prohibited because this repository is in restore mode.' ].
	^ repository newTransactionFor: sessionId! !

!MagmaRepositoryController methodsFor: 'private' stamp: 'jpb 5/12/2021 15:29:56'!
open
	"This is called when restarting controllers during image restart."
	| tried |
	tried _ false.
	localLocation isPotentiallyOpen ifTrue: [ MagmaPotentiallyOpenError signal: 'found ' , self class openIndicatorFilename , ' file, indicating this repository may currently be open.  If it is not, you may proceed.' ].
	(self pathName asDirectoryEntry) exists ifFalse: [ MagmaUserError signal: self pathName , ' not found.' ].
	[ self privateOpen: localLocation ]
		on: MagmaCorruptionError
		do:
			[ : err | 
			tried
				ifTrue: [ err pass ]
				ifFalse:
					[ MagmaRollbackRecoveryNeeded signal: 'Outage occurred while writing system-definitions!!  Will now attempt to repair.'.
					repository primitiveRecover.
					self close.
					tried _ true.
					err retry ] ].
	"Do NOT cascade the following messages.  rollbackIfNecessary may replace my repository with a new one."
	repository rollbackIfNecessary.
	repository rollforwardIfPossible! !

!MagmaRepositoryController methodsFor: 'private' stamp: 'cmm 11/18/2009 14:05'!
open: aMagmaLocalLocation 
	localLocation _ aMagmaLocalLocation.
	self class controllersGuard: [ self open ].
	self updatePrimaryLocation: aMagmaLocalLocation! !

!MagmaRepositoryController methodsFor: 'private' stamp: 'cmm 1/2/2014 17:57'!
postOpenInitialize
	self
		initializeSystemReadStrategy ;
		materializeClassDefinitions ;
		connect ;
		refreshView "so more classes will be pulled from unusedDepths of the SystemReadStrategy".
	repository initializeMagmaStatClassIds.
	OpenControllers add: self! !

!MagmaRepositoryController methodsFor: 'private' stamp: 'cmm 5/25/2010 14:10'!
primClose
	self requestCritical:
		[ session ifNotNil:
			[ session disconnect.
			session linksDo:
				[ : each | each localRequestServer shutdown ] ].
		self serverStatistics release.
		repository close.
		self removeOpenIndicator ]! !

!MagmaRepositoryController methodsFor: 'private' stamp: 'jpb 5/12/2021 15:44:06'!
privateOpen: aMagmaLocalLocation 
	self isOpen ifTrue: 
		[ MagmaUserError signal: 'Repository ' , aMagmaLocalLocation asString , ' is already open.' ].
	MagmaNotification signal: 'opening Magma repository ' , self pathName.
	
	self
		initializeSession ;
		repository: 
			(MaObjectRepository 
				open: aMagmaLocalLocation directory
				controller: self).
				
	self restoreMode ifFalse: [ self ensurePotentiallyOpenIndicator ].
	self postOpenInitialize! !

!MagmaRepositoryController methodsFor: 'private' stamp: 'cmm 12/19/2008 14:02'!
refreshView
	self session refresh.
	repository systemReadStrategy makeReadyForUseUsing: self session serializer classIdManager! !

!MagmaRepositoryController methodsFor: 'private' stamp: 'jpb 5/12/2021 15:29:15'!
removeOpenIndicator
	(self directory // self class openIndicatorFilename) delete! !

!MagmaRepositoryController methodsFor: 'private'!
repository

	^repository
! !

!MagmaRepositoryController methodsFor: 'private' stamp: 'cmm 12/31/2002 12:54'!
repository: aMaObjectRepository

	repository _ aMaObjectRepository.
	aMaObjectRepository repositoryController: self! !

!MagmaRepositoryController methodsFor: 'private' stamp: 'cmm 12/27/2002 15:55'!
requestCritical: aBlock
	"Coordinate access to all server elements."

	^requestInterruptGuard critical: aBlock! !

!MagmaRepositoryController methodsFor: 'private' stamp: 'cmm 7/14/2008 16:21'!
serverReadStrategy
	"Make sure the indexes stays a proxy because the server will not necessarily have the full MagmaCollectionIndex hierarchy."
	^ (MaReadStrategy minimumDepth: 1)
		forVariableNamed: 'changes'
			onAny: MagmaCollection
			readToDepth: 99999 ;
		forVariableNamed: 'indexes'
			onAny: MagmaCollection
			readToDepth: -1 ;
		forVariableNamed: 'descriptions'
			onAny: MagmaCollection
			readToDepth: 99999 ;
		"For MagmaIdRequest"
		onAny: MagmaId
			readToDepth: 99999 ;
		yourself
! !

!MagmaRepositoryController methodsFor: 'private' stamp: 'jpb 5/12/2021 11:42:01'!
serverSave: saveOption andExit: exitOption 
	"Wait one second to give time for the response to be sent out so the client doesn't get a NetworkError."
	MaRegistry serverSave: saveOption andExit: exitOption! !

!MagmaRepositoryController methodsFor: 'private' stamp: 'jpb 5/12/2021 11:42:31'!
serverSaveAndExit
	"Wait one second to give time for the response to be sent out so the client doesn't get a NetworkError."
	MaRegistry serverSave: true andExit: true! !

!MagmaRepositoryController methodsFor: 'private'!
serverSerializer
	"The serverSerializer is used for processing client requests.  It is also
	used during administration and possibly needed during initial creation of a
	repository."

	^serverSerializer
! !

!MagmaRepositoryController methodsFor: 'private' stamp: 'cmm 10/30/2008 16:53'!
session
	^ session! !

!MagmaRepositoryController methodsFor: 'private' stamp: 'cmm 6/1/2010 16:09'!
softBranch
	"A softBranch is one in which only the branchCode changes, not the MagmaId.   A a soft-branch is automatically performed when the user opens locally for safety from hurting themself by otherwise accidently branching a Magma repository without detection, if they did the following steps:
	- Bring primary off-line.
	- Make a file-system copy of the primary.
	- Start original primary back up, further commits are made.
	- Open copied primary up locally, do some commits.
	- Replace primary with copied primary!!  It would send further commits to secondary that never got those other local-commits, but such branch in this case is not detected!!
Solution:
	- Opening a repository locally forces a 'soft-branch'.  You will still be able to reattach the original warm-backup as long as its branchCode of its last commitRecord matches the commitNumber of that same record in the primary."
	repository initializeBranchCode! !

!MagmaRepositoryController methodsFor: 'private' stamp: 'cmm 12/4/2009 11:50'!
updatePrimaryLocation: aMagmaLocalLocation 
	"When a repository is opened locally, if it's location has never been set or was a different *local* location, then update it to the new aMagmaLocalLocation.  If it was formerly a hosted server, do not update since we could be here simply just for re-opening that repository.  So, to go from a remote repository to a local one, you have to manually update the node's primaryLocation."
	| priorLoc |
	priorLoc _ self definition node primaryLocation.
	(priorLoc isNil or: 
		[ priorLoc isLocal and: [ priorLoc ~= aMagmaLocalLocation and: [ self restoreMode not ] ] ]) ifTrue: 
		[ self session commit: [ self definition node primaryLocation: aMagmaLocalLocation ] ]! !

!MagmaRepositoryController methodsFor: 'preferences' stamp: 'cmm 7/5/2005 20:16'!
cacheFlushFrequency

	^ preferences cacheFlushFrequency! !

!MagmaRepositoryController methodsFor: 'preferences' stamp: 'cmm 9/12/2007 21:52'!
cacheFlushFrequency: numberOfSeconds 
	^ self requestCritical: [ preferences cacheFlushFrequency: numberOfSeconds ]! !

!MagmaRepositoryController methodsFor: 'preferences' stamp: 'cmm 10/22/2006 21:38'!
filePoolSize: anInteger 
	"Set the maximum number of simultaneously-open files that Magma will have."
	repository filePoolSize: anInteger! !

!MagmaRepositoryController methodsFor: 'preferences' stamp: 'cmm 6/6/2005 13:38'!
isReadOnly

	^ preferences isReadOnly! !

!MagmaRepositoryController methodsFor: 'high-availability' stamp: 'cmm 10/23/2008 10:50'!
catch: thisLocation upTo: aMagmaRemoteLocation 
	"I am open on a full-backup of the repository at aMagmaRemoteLocation.  Download commit-log records until I am caught up and then I will begin receiving real-time updates from the server at aMagmaRemoteLocation."
	repository 
		catch: thisLocation
		upTo: aMagmaRemoteLocation! !

!MagmaRepositoryController methodsFor: 'high-availability' stamp: 'cmm 7/9/2007 09:27'!
commitRestore
	"Bring the repository out of restore mode and update my branchCode.  No more commit logs with the old branchCode may be applied."
	repository commitRestore! !

!MagmaRepositoryController methodsFor: 'high-availability' stamp: 'cmm 11/18/2008 12:44'!
ensureInRestoreMode
	repository restoreMode ifFalse: [ repository beginRestore ].
	^ nil! !

!MagmaRepositoryController methodsFor: 'high-availability' stamp: 'cmm 10/30/2008 16:33'!
node
	^ self definition node! !

!MagmaRepositoryController methodsFor: 'initializing' stamp: 'cmm 1/16/2005 21:54'!
connect

	session connect: (MagmaUser id: self class systemSessionUserId).
	repository initializeSpecialOidsList! !

!MagmaRepositoryController methodsFor: 'initializing' stamp: 'cmm 12/17/2008 17:14'!
initialize
	super initialize.
	requestInterruptGuard _ Mutex new.
	preferences _ MagmaServerPreferences new.
	self serverStatistics: MagmaServerStatistics new! !

!MagmaRepositoryController methodsFor: 'initializing' stamp: 'cmm 3/27/2002 22:00'!
initializeServerSerializer
	"Why is this separate, 'serverSerializer' needed?  Because the session serializer requires a different traversalStrategy.  The serverSerializer needs to be able to fully serialize, to the ends of the graphs, the 'response' objects of various requests."

	serverSerializer _ self session serializer copyWithNewBuffer initializeTraversalStrategy
! !

!MagmaRepositoryController methodsFor: 'initializing' stamp: 'cmm 2/25/2013 20:42'!
initializeSession
	session _ (MagmaSession repositoryController: self)
		 allowWriteBarrier: false ;
		 readStrategy: self serverReadStrategy ;
		 yourself.
	self initializeServerSerializer! !

!MagmaRepositoryController methodsFor: 'initializing' stamp: 'cmm 9/29/2008 23:09'!
serverStatistics: aMagmaServerStatistics 
	serverStatistics _ aMagmaServerStatistics! !

!MagmaRepositoryController methodsFor: 'testing' stamp: 'cmm 6/24/2015 14:06'!
ensurePotentiallyOpenIndicator
	localLocation isPotentiallyOpen ifFalse:
		[ self directory
			maFileNamed: self class openIndicatorFilename
			do:
				[ : stream | "nothing, just create it" ] ]! !

!MagmaRepositoryController methodsFor: 'testing' stamp: 'cmm 10/26/2006 14:55'!
isClassIdForLargeCollection: anInteger 
	session serializer classIdManager largeCollectionIdsDo: [ : each | each = anInteger ifTrue: [ ^ true ] ].
	^ false! !

!MagmaRepositoryController methodsFor: 'testing' stamp: 'cmm 6/2/2008 13:31'!
isOpen
	^ repository notNil and: [ repository isOpen ]! !

!MagmaRepositoryController methodsFor: 'statistics' stamp: 'cmm 3/24/2013 15:17'!
numberOfConnectedClients
self maMarked: 'delete'.
	^repository sessions size - 1! !

!MagmaRepositoryController methodsFor: 'statistics' stamp: 'cmm 12/22/2008 13:16'!
oidCount
	"The number of oids allocated by this repository.  The total number of objects ever committed, even if some have since been garbage-collected."
	^ repository oidCount! !

!MagmaRepositoryController methodsFor: 'statistics' stamp: 'cmm 2/22/2011 13:26'!
spaceTally
	"Warning!!  Use of this message could cause a pause in server operations."
	SpaceTally new printSpaceAnalysis! !

!MagmaRepositoryController methodsFor: 'statistics' stamp: 'cmm 4/21/2003 16:02'!
version

	^repository version! !

!MagmaRepositoryController methodsFor: 'client/server required methods' stamp: 'jpb 5/12/2021 14:56:27'!
processRequest: aMagmaRepositoryRequest 
	aMagmaRepositoryRequest repositoryController: self.
	^ [ self requestCritical:
		[ | result |
			
		result _ aMagmaRepositoryRequest process.
		repository freeSomeSpaceIfNecessary: aMagmaRepositoryRequest sessionId.
		result ] ]
		on: Error
		do:
			[ : anError | self maMarked: 'dev'.
			"This error routine must be improved.  It needs to log and notify for unhandled errors!!"
			(MagmaPreferences debug and:
				[ ({MagmaCommitConflictError. 
				MagmaSessionLost. 
				MagmaWrongCommitNumber. 
				MagmaWrongServerError. 
				MagmaAlreadyInTransaction} includes: anError maOriginalClass) not and:
					[ anError isMaUserError not and: [ Smalltalk isHeadless not ] ] ]) ifTrue: [ anError pass ].
			anError ]! !

!MagmaRepositoryController methodsFor: 'client/server required methods' stamp: 'cmm 9/19/2004 22:08'!
value: aMagmaRepositoryRequest

	^ self processRequest: aMagmaRepositoryRequest! !

!MagmaRepositoryController class methodsFor: 'initializing' stamp: 'jpb 5/11/2021 17:04:23'!
initialize
	OpenControllers ifNotNil: [ OpenControllers do: [ : each | each close ] ].
	OpenControllers _ Set new.
	self initializeControllersGuard.
	
	"Smalltalk
		addToStartUpList: self ;
		addToShutDownList: self.
	Smalltalk 
		addToStartUpList: MaServerSocket
		after: self
	"! !

!MagmaRepositoryController class methodsFor: 'initializing' stamp: 'cmm 9/23/2008 14:26'!
initializeControllersGuard
	^ ControllersGuard _ Mutex new! !

!MagmaRepositoryController class methodsFor: 'utilities' stamp: 'cmm 9/17/2011 22:35'!
commitRestore: pathOrMagmaLocalLocation 
	| rep |
	rep _ self open: pathOrMagmaLocalLocation asMagmaLocalLocation.
	[ rep commitRestore ] ensure: [ rep close ]! !

!MagmaRepositoryController class methodsFor: 'utilities' stamp: 'cmm 1/18/2007 21:29'!
compress: sourceLocation to: targetLocation
	"sourceLocation and targetLocation may be either a String (relative or fully-qualified path) or a MagmaLocalLocation."
	(MagmaCompressor source: sourceLocation) compressTo: targetLocation! !

!MagmaRepositoryController class methodsFor: 'utilities' stamp: 'cmm 3/10/2009 20:12'!
create: pathStringOrMagmaLocalLocation 
	"Creates a repository with an initial root of nil.  I #assureExistence of the location."
	| location |
	location _ pathStringOrMagmaLocalLocation asMagmaLocalLocation.
	self validateCanCreateIn: location.
	self new createRepositoryAt: location.
	(self openedOn: location) in: 
		[ : rp | 
		
		[ rp fullBackupTo: location seedDirectory.
		[ rp isFullBackupRunning ] whileTrue: [ (Delay forSeconds: 1) wait ] ] ensure: [ rp close ] ]! !

!MagmaRepositoryController class methodsFor: 'utilities' stamp: 'cmm 1/18/2007 21:21'!
create: pathStringOrMagmaLocalLocation root: anObject
	| session location |
	location _ pathStringOrMagmaLocalLocation asMagmaLocalLocation.
	self create: location.
	session _ MagmaSession openLocal: location.
	session
		connect: (MagmaUser id: 'system create:root:') ;
		commit: [ session root: anObject ] ;
		disconnect ;
		closeRepository! !

!MagmaRepositoryController class methodsFor: 'utilities' stamp: 'cmm 7/1/2007 12:32'!
delete: pathStringOrMagmaLocalLocation 
	"Delete the just the files in fullyQualifiedPathString that are part of the Magma repository that resides there."
	pathStringOrMagmaLocalLocation asMagmaLocalLocation delete! !

!MagmaRepositoryController class methodsFor: 'accessing' stamp: 'cmm 7/15/2008 14:27'!
controllerOpenedOn: aMagmaLocalLocation 
	"Answer the RepositoryController already opened on aMagmaLocalLocation.  If no existing controller is already open, answer nil."
	^ self controllersGuard: 
		[ OpenControllers 
			maDetect: [ : each | each localLocation = aMagmaLocalLocation ]
			ifFound: [ : foundController | foundController ensureOpen ]
			ifNone: [ nil ] ]! !

!MagmaRepositoryController class methodsFor: 'accessing' stamp: 'cmm 6/25/2008 10:57'!
openControllers
	"The collection of repository's that are opened by this image, not necessarily serving, however."
	^ OpenControllers! !

!MagmaRepositoryController class methodsFor: 'accessing' stamp: 'cmm 7/15/2008 14:25'!
openedOn: aMagmaLocalLocation 
	"Answer the RepositoryController already opened on aMagmaLocalLocation.  If no existing controller is already open, open a new one and answer it."
	| existingController |
	^ self controllersGuard: 
		[ (existingController _ self controllerOpenedOn: aMagmaLocalLocation) 
			ifNil: [ self open: aMagmaLocalLocation ]
			ifNotNil: [ existingController ] ]! !

!MagmaRepositoryController class methodsFor: 'private' stamp: 'cmm 8/8/2007 23:58'!
controllersGuard: aBlock 
	^ (ControllersGuard ifNil: [ self initializeControllersGuard ]) critical: aBlock! !

!MagmaRepositoryController class methodsFor: 'private' stamp: 'cmm 3/5/2009 10:05'!
open: aMagmaLocalLocation
	^ self new open: aMagmaLocalLocation asMagmaLocalLocation! !

!MagmaRepositoryController class methodsFor: 'private' stamp: 'cmm 5/25/2010 18:35'!
openIndicatorFilename
	^ '_open'! !

!MagmaRepositoryController class methodsFor: 'private' stamp: 'cmm 5/1/2003 00:24'!
systemSessionUserId

	^'__system'! !

!MagmaRepositoryController class methodsFor: 'validation' stamp: 'cmm 7/3/2012 20:16'!
validateCanCreateIn: aMagmaLocalLocation
	"Magma databases do not share the same directory.  Not only would it be hard to identify which files go with which repository, some of the filenames are based on oids, which would not always be unique across repositories."
	(aMagmaLocalLocation isMagmaRepository)
		ifTrue:
			[ MagmaUserError signal: aMagmaLocalLocation pathName, ' is already a Magma repository.' ]! !

!MagmaServerPreferences methodsFor: 'security' stamp: 'cmm 6/6/2005 13:35'!
beReadOnly

	self 
		setAttribute: #isReadOnly
		to: true! !

!MagmaServerPreferences methodsFor: 'security' stamp: 'cmm 6/6/2005 13:35'!
beReadWrite

	self 
		setAttribute: #isReadOnly
		to: false! !

!MagmaServerPreferences methodsFor: 'security' stamp: 'cmm 6/6/2005 13:44'!
isReadOnly

	^ self 
		valueOfAttribute: #isReadOnly
		ifAbsent: [ false ]! !

!MagmaServerPreferences methodsFor: 'recovery' stamp: 'cmm 7/18/2005 12:48'!
cacheFlushFrequency

	^ self
		valueOfAttribute: #cacheFlushFrequency
		ifAbsent: [ 5 "seconds" ]! !

!MagmaServerPreferences methodsFor: 'recovery' stamp: 'cmm 7/5/2005 20:18'!
cacheFlushFrequency: anInteger

	self
		setAttribute: #cacheFlushFrequency
		to: anInteger! !

!MagmaServerPreferences methodsFor: 'initialize' stamp: 'cmm 6/6/2005 13:05'!
initialize
	super initialize.
	attributes _ Dictionary new! !

!MagmaServerPreferences methodsFor: 'private' stamp: 'cmm 6/6/2005 13:07'!
setAttribute: attributeSymbol to: value

	attributes
		at: attributeSymbol
		put: value! !

!MagmaServerPreferences methodsFor: 'private' stamp: 'cmm 6/6/2005 13:09'!
valueOfAttribute: attributeSymbol ifAbsent: aBlock
	^ attributes 
		at: attributeSymbol
		ifAbsent: aBlock! !

!MagmaServerPreferences class methodsFor: 'debugging' stamp: 'cmm 6/9/2005 21:42'!
debugRecovery

	^ DebugRecovery! !

!MagmaServerPreferences class methodsFor: 'debugging' stamp: 'cmm 6/9/2005 21:42'!
debugRecovery: aBoolean

	DebugRecovery _ aBoolean! !

!MagmaServerPreferences class methodsFor: 'debugging' stamp: 'cmm 6/9/2005 22:06'!
initialize

	self debugRecovery: false! !

!MagmaServerConsole methodsFor: 'accessing' stamp: 'cmm 9/5/2009 11:25'!
compressThreshold
	"Compressing large responses can make a significant performance improvement on slow networks.  Compression makes things worse with small responses or on really fast networks.  Answer the number of bytes a response needs for compression to occur."
	^ server ifNotNil: [ server compressThreshold ]! !

!MagmaServerConsole methodsFor: 'accessing' stamp: 'cmm 7/15/2008 22:14'!
compressThreshold: anInteger
	"Compressing large responses can make a significant performance improvement on slow networks.  Compression makes things worse with small responses or on really fast networks.  Answer the number of bytes a response needs for compression to occur."
	server compressThreshold: anInteger! !

!MagmaServerConsole methodsFor: 'accessing' stamp: 'cmm 12/18/2002 21:52'!
controller

	^controller! !

!MagmaServerConsole methodsFor: 'accessing' stamp: 'cmm 7/24/2018 15:40'!
hostname
	^ NetNameResolver maLocalHostName ! !

!MagmaServerConsole methodsFor: 'accessing' stamp: 'jpb 5/12/2021 11:39:09'!
node
	^ self definition ifNotNil: [ : def | def node ]! !

!MagmaServerConsole methodsFor: 'accessing' stamp: 'cmm 10/14/2008 14:31'!
port
	^ server ifNotNil: [ server port ]! !

!MagmaServerConsole methodsFor: 'accessing' stamp: 'cmm 3/3/2005 10:10'!
server

	^ server! !

!MagmaServerConsole methodsFor: 'accessing' stamp: 'cmm 11/15/2008 16:03'!
serverSession
	^ controller session ! !

!MagmaServerConsole methodsFor: 'accessing' stamp: 'cmm 8/18/2009 14:30'!
useCompression: aBoolean 
	self compressThreshold: 
		(aBoolean 
			ifTrue: [ MaClientSocket mtuSize ]
			ifFalse: [ MaSerializedGraphBuffer unreasonablePhysicalSize * 2 ])! !

!MagmaServerConsole methodsFor: 'high-availability' stamp: 'cmm 10/14/2010 11:33'!
beWarmBackup
	self beWarmBackupFor: self node primaryLocation! !

!MagmaServerConsole methodsFor: 'high-availability' stamp: 'jpb 5/12/2021 11:42:51'!
beWarmBackupFor: primaryLocation 
	"If I am currently started on backup files created from my primary having had sent #fullBackupTo:, which means I should be in restoreMode, then establish a session to primaryLocation and bring my copy of the repository up to date.  Once up to date, the primary server will then broadcast further updates to me in real-time, and instruct clients that I am a warm backup for that primary.  If they detect the primary server is down they will start sending requests to me, at which point I will verify the server availability myself and will, if the connection is refused, #takeOverAsPrimary."
	self isRunning ifFalse: [ MagmaUserError signal: 'Must be running to be a warm backup.' ].
	primaryLocation = self thisLocation ifTrue: [ MagmaUserError signal: 'Please don''t try to be a warm-backup of myself!!' ].
	[ | primarySession | [ primarySession _ primaryLocation newAdminSession.
	primarySession connectAs: '_beWarmBackupFor'.
	primarySession remoteMagmaId = controller magmaId ifFalse: [ MagmaUserError signal: 'Cannot be a warm backup of ' , primaryLocation printString , ' because I am a totally different repository!!' ].
	primarySession inRestoreMode ifTrue: [ MagmaUserError signal: 'Don''t want to be a warm backup of another warm backup.' ].
	primarySession remoteCommitNumber < controller commitNumber ifTrue: [ MagmaUserError signal: 'Cannot be a warm backup of ' , primaryLocation printString , ' because it is behind this repository!!' ].
	controller ensureInRestoreMode.
	controller
		catch: self thisLocation
		upTo: primaryLocation.
	primarySession node addLocation: self thisLocation ] ensure:
		[ primarySession ifNotNil: [ primarySession disconnect ] ] ]
		on: MaNetworkError
		do:
			[ : err | "Don't do anything.  This server couldn't connect to the primary, but it will sit and wait patiently for the primary to come up.  When it does, it will seek out this server and link up.  If, before then, a client requests this to be the primary, I will become so."
			err ]! !

!MagmaServerConsole methodsFor: 'high-availability' stamp: 'jpb 5/12/2021 11:29:55'!
isPrimary
	^ self node primaryLocation 
		ifNil: [ false ]
		ifNotNil: [ : loc | loc = self thisLocation ]! !

!MagmaServerConsole methodsFor: 'high-availability' stamp: 'cmm 12/4/2015 16:53'!
isSecondary
	^ self restoreMode "and: 
		[ self node notNil and: [ self node secondaryLocations includes: self thisLocation ] ]"! !

!MagmaServerConsole methodsFor: 'high-availability' stamp: 'cmm 3/4/2009 15:45'!
removeSecondaryLocation: aMagmaRemoteLocation 
	MagmaNodeUpdate new
		remove: aMagmaRemoteLocation ;
		processUsing: self! !

!MagmaServerConsole methodsFor: 'high-availability' stamp: 'cmm 10/27/2008 09:52'!
restoreMode
	"Answer whether I am running in restoreMode.  restoreMode only allows commits from a primary to be applied in sequence."
	^ controller restoreMode! !

!MagmaServerConsole methodsFor: 'high-availability' stamp: 'cmm 7/24/2018 15:40'!
thisLocation
	"Answer the MagmaRemoteLocation in the node that represents this running server."
	^ MagmaRemoteLocation 
		host: NetNameResolver maLocalHostName
		port: self port! !

!MagmaServerConsole methodsFor: 'private' stamp: 'jpb 5/12/2021 11:43:01'!
ensureCorrectNodeConfiguration
	"Ensure I am performing the duty my MagmaNode says I should be performing, either as the primary or one of the warmBackups.  I am read-only on the node, I do not modify it.  The intended usage of this method is, you update the node to what you want it to be, then I 'make it so'."
	self isPrimary 
		ifTrue: 
			[ "To be extra conservative, configure all other nodes to restoreMode (before coming out of restoreMode myself)."
			self sessionsForOtherLocationsDo: 
				[ : each | 
				"Warning:  this is a sync request, no secondary should cause this method to be called on the primary.  Perhaps it should be async?"
				[each ensureInRestoreMode] on: MaNetworkError do: [ : err | "oh well" ] ].
			self restoreMode ifTrue: 
				[ "I need to become the primary, make it so."
				controller commitRestore ].	"Now the others can become warm backups."
			self sessionsForOtherLocationsDo: [ : each | [each ensureCorrectNodeConfiguration] on: MaNetworkError do: [ : err | ] ] ]
		ifFalse: 
			[ self node primaryLocation ifNotNil: [ : pl | pl isLocal ifFalse: [ self beWarmBackupFor: pl ] ] ]! !

!MagmaServerConsole methodsFor: 'private' stamp: 'jpb 5/12/2021 11:43:07'!
findCorrectNodeConfiguration
	"I'm just starting up, interrogate the other servers in my node to see what the current state of the party is:  who is the primary now?"
	| nodes |
	nodes _ Array streamContents:
		[ : stream | self sessionsForOtherLocationsDo:
			[ : each | [ each ensureConnected.
			stream nextPut: each node ]
				on: MaNetworkError
				do:
					[ : err | "That server not up or not reachable."
					err ] ] ].
	"Do all the other nodes agree about who is primary?"
	(nodes size <= 1 or:
		[ (nodes collect:
			[ : each | each primaryLocation ]) asSet size = 1 ]) ifTrue:
		[ | primaryLoc |
		primaryLoc _ nodes isEmpty ifFalse: [ nodes anyOne primaryLocation ].
		"Is the agreed-upon primary thisLocation?"
		(primaryLoc notNil and: [ primaryLoc = self thisLocation ])
			ifTrue: [ self ensureCorrectNodeConfiguration ]
			ifFalse:
				[ primaryLoc ifNotNil: [ self beWarmBackupFor: primaryLoc ] ] ]! !

!MagmaServerConsole methodsFor: 'private' stamp: 'cmm 12/21/2012 13:01'!
postIgnitionSequence
	self findCorrectNodeConfiguration! !

!MagmaServerConsole methodsFor: 'private' stamp: 'cmm 12/21/2012 15:56'!
preIgnitionSequence: portInteger 
	self updatePrimaryLocation: portInteger.
	self statistics transition! !

!MagmaServerConsole methodsFor: 'private' stamp: 'cmm 11/13/2008 20:57'!
sessionsForOtherLocationsDo: oneArgBlock 
	"For the other locations in the Node other than thisLocation, value oneArgBlock."
	self node locationsDo: 
		[ : each | 
		each = self thisLocation ifFalse: [ oneArgBlock value: (self node sessionFor: each) ] ]! !

!MagmaServerConsole methodsFor: 'private' stamp: 'cmm 8/7/2018 20:33'!
updatePrimaryLocation: portInteger 
	"When I'm started up, update the primaryLocation to this location, if it has changed."
	self restoreMode ifFalse:
		[ | primaryLoc thisLoc |
		"We can't simply use #thisLocation because we aren't running yet (so no port)!!"
		"Not sure why some Linux installations report 0.0.0.0 as their maLocalHostName, but if it happens, use a back up method."
		thisLoc _ MagmaRemoteLocation
			host: NetNameResolver maLocalHostName
			port: portInteger.
		primaryLoc _ self node primaryLocation.
		(primaryLoc isNil or:
			[ primaryLoc isLocal or:
				[ primaryLoc isLocalHost not or: [ primaryLoc ~= thisLoc ] ] ]) ifTrue: [ controller session commit: [ self node primaryLocation: thisLoc ] ] ]! !

!MagmaServerConsole methodsFor: 'private' stamp: 'cmm 11/13/2013 20:40'!
value: aMagmaRepositoryRequest 
	"Make the console available too for network-serving repositories."
	^ 
	[ aMagmaRepositoryRequest
		console: self ;
		nodeCheck.
	controller value: aMagmaRepositoryRequest ] 
		on: Error
		do: 
			[ : anError | 
			self maMarked: 'dev'.	"This error routine must be improved.  It needs to log and notify for unhandled errors!!"
			(MagmaPreferences debug and: 
				[ ({ 
					MagmaCommitConflictError.
					MagmaSessionLost.
					MagmaWrongServerError.
					MagmaWrongCommitNumber
				 } includes: anError maOriginalClass) not and: 
					[ anError isMaUserError not and: [ Smalltalk isHeadless not ] ] ]) ifTrue: [ self halt: anError messageText ].
			anError ]! !

!MagmaServerConsole methodsFor: 'initialize-release' stamp: 'cmm 9/29/2008 16:11'!
initializeStatistics
	statistics _ MagmaServerStatistics new! !

!MagmaServerConsole methodsFor: 'start / stop' stamp: 'cmm 7/16/2008 10:20'!
isRunning
	^ server notNil and: [ server isRunning ]! !

!MagmaServerConsole methodsFor: 'start / stop' stamp: 'cmm 9/29/2008 23:12'!
open: pathOrMagmaLocalLocation 
	"As indicated, pathOrMagmaLocalLocation may be either the String path (relative or fully-qualified) or a MagmaLocalLocation."
	controller 
		ifNil: 
			[ controller _ (MagmaRepositoryController open: pathOrMagmaLocalLocation asMagmaLocalLocation)
				serverStatistics: statistics ;
				yourself ]
		ifNotNil: 
			[ "Reopen existing controller rather than replacing it with a new construction so prior preferences and statistics are preserved."
			controller open: pathOrMagmaLocalLocation asMagmaLocalLocation ]! !

!MagmaServerConsole methodsFor: 'start / stop' stamp: 'cmm 1/1/2009 17:22'!
processOn: portInteger 
	"Start the Magma server listening on port portInteger."
	(controller isNil or: [ controller isOpen not ]) ifTrue: 
		[ MagmaUserError signal: 'The repository must be opened before the server can be started.' ].
	server _ (MaNetworkRequestServer protocol: MagmaSession protocol) console: self.
	server 
		processOn: portInteger
		using: self! !

!MagmaServerConsole methodsFor: 'start / stop' stamp: 'jpb 5/12/2021 11:43:11'!
shutdown
	controller ifNotNil: 
		[ controller requestCritical: 
			[ self isSecondary ifTrue: 
				[ self node primarySession ifNotNil: 
					[ : sess | 
					[ sess removeWarmBackup: self thisLocation ] 
						on: MaNetworkError
						do: 
							[ : err | 
							"don't worry about it"
							 ] ] ].
			server ifNotNil: [ server shutdown ].
			self node ifNotNil: [ : node | node sessions do: [ : each | each disconnect ] ].
			self statistics ifNotNil: [ : stat | stat release ] ] ]! !

!MagmaServerConsole methodsFor: 'notifications' stamp: 'cmm 12/17/2008 17:35'!
noteAboutToStart
	super noteAboutToStart.
	self preIgnitionSequence: self port! !

!MagmaServerConsole methodsFor: 'notifications' stamp: 'cmm 12/17/2008 17:35'!
noteJustStarted
	super noteJustStarted.
	self postIgnitionSequence ! !

!MagmaServerConsole methodsFor: 'notifications' stamp: 'cmm 10/27/2014 17:27'!
noteResponseSerializationError: anException lifecycle: aMaServerRequestLifecycle 
	(anException isKindOf: OutOfMemory) ifTrue: [ MaObjectRepository freeSomeSpace ].
	^ super noteResponseSerializationError: anException lifecycle: aMaServerRequestLifecycle! !

!MagmaServerConsole methodsFor: 'notifications' stamp: 'cmm 9/29/2008 16:17'!
noteServerShutdown
	super noteServerShutdown.
	controller close.
	self note: controller printString , ' closed.'! !

!MagmaServerConsole class methodsFor: 'linux-scripts' stamp: 'cmm 7/30/2015 11:24'!
configdbservice
	"One time setup for a particular DB as a daemontools service.  If this is the first Magma service to run on this server, then configsys should be run first."
	^ '#!!/bin/bash
echo ensure group magma access to model/commits directory
mkdir -p model/commits
sudo chgrp magma model/commits
sudo setuidgid magma chmod 770 model/commits

APPNAME="`basename $PWD`"

echo creating log/main directory
mkdir -p log/main
chmod o-rwx log/main
sudo chgrp magma log/main

echo installing daemon, it will start

sudo ln -s $PWD /etc/service/$APPNAME'
 ->
		[]! !

!MagmaServerConsole class methodsFor: 'linux-scripts' stamp: 'cmm 7/30/2015 14:52'!
configsys
	"Part of initial set up of a new server to handle Magma."
	^ super configsys key ,
	'
# magma servers run under user magma which only has access to its own files.
echo creating magma user
sudo adduser --disabled-login --gecos "" magma

# but primary user (ubuntu) must have access to magma files
echo granting the primary user access to magma files
sudo usermod -aG magma `whoami`

echo ensure no public access to anything in work
sudo chmod o-rwx ~/work ~/work/magma
sudo chgrp magma ~/work ~/work/magma

echo installing daemontools...
sudo apt-get -qqy install daemontools daemontools-run
sudo mkdir -p /etc/service
sudo ln -s /etc/service /service'
		-> [ ]! !

!MagmaServerConsole class methodsFor: 'linux-scripts' stamp: 'cmm 7/28/2015 17:07'!
detach
	^ 'sudo setuidgid magma spur -vm display=none server-spur.image detach.st'
		-> [Smalltalk runAndQuit: ['model' asMagmaLocalLocation detachFromNode]]! !

!MagmaServerConsole class methodsFor: 'linux-scripts' stamp: 'cmm 8/16/2016 21:49'!
run
	"deamontools run script.  put this in /mnt/work/magma/dbdir"
	^ '#!!/bin/bash
exec 2>&1
# ensure _open file not present, otherwise DB will not open
# -- this bypasses Magma internal safety check.
# -- Should be fine, as long as starting and stopping
# -- is done ONLY through daemontools (e.g., svc -u and svc -d).
sudo setuidgid magma rm -f ./model/' , MagmaRepositoryController openIndicatorFilename ,
'
echo ensure model/commits dir owned by magma:magma
setuidgid magma mkdir -p model/commits
chgrp magma model/commits

# permission for root to run the HT version of the vm (thanks Levente Uzonyi)
ulimit -r 2
exec setuidgid magma spur -vm display=none server-spur.image run.st `cat port`' ->
		[ Smalltalk run:
			[ : portString |
			Smalltalk mitigateIfHeadless.
			(MagmaServerConsole new
				 open: 'model' ;
				 processOn: portString asInteger ;
				 yourself) explore ] ]! !

!MagmaServerConsole class methodsFor: 'linux-scripts' stamp: 'cmm 8/3/2015 13:07'!
status
	"Report the pid, svstat, commitNumber and last access of this repository."
	^ '#!!/bin/bash
APPNAME=`basename $PWD`
echo Status of $APPNAME
echo ---------------
ps -ef | grep $APPNAME
sudo svstat /service/$APPNAME
sudo setuidgid magma spur -vm display=none server-spur.image status.st' ->
		[ Smalltalk runAndQuit:
			[ : host : portString | (MagmaLocalLocation
				host: host
				port: portString asInteger) printStatusOn: FileStream stdout ] ]! !

!MagmaServerConsole class methodsFor: 'linux-scripts' stamp: 'cmm 7/30/2015 23:03'!
view
	"View the contents of Squeak's internal RFB server."
	^ 'xtightvncviewer ::"$[`cat port`+5900]"'
		-> [ ]! !

!MagmaServerConsole class methodsFor: 'private' stamp: 'cmm 7/2/2015 16:10'!
magmaDir
	^ '/mnt/work/magma'! !

!MagmaServerConsole class methodsFor: 'private' stamp: 'cmm 7/31/2015 14:08'!
retrieveCommitLogFiles
	"Script which (employs Banyan to?) copy files from one (remote? ssh?) directory to another.  A roll-forward script could then be used to simply #open: the Repository (which will invoke an automatic roll-foward) and then immediately #close (without ever processing on a port, so no attempt to hook up an HA connection)."! !

!Object methodsFor: '*magma-server' stamp: 'cmm 10/22/2006 15:01'!
maIsTransactional
	^ false! !

!ReadWriteStream methodsFor: '*magma-server' stamp: 'cmm 5/31/2005 17:53'!
maRead: someNumber bytesFromPosition: bufferPosition of: aByteArray atFilePosition: filePosition

	^ self
		position: filePosition ;
		readInto: aByteArray
		startingAt: bufferPosition
		count: someNumber! !

!ReadWriteStream methodsFor: '*magma-server' stamp: 'cmm 5/7/2005 22:55'!
maWrite: numberOfBytes bytesFromPosition: bufferPosition of: byteArray atFilePosition: filePosition

	self position: filePosition.
	self
		next: numberOfBytes
		putAll: byteArray
		startingAt: bufferPosition! !

!ReadWriteStream methodsFor: '*magma-server' stamp: 'cmm 6/15/2005 15:15'!
readInto: aByteArray startingAt: startIndex count: numberOfBytes
	"Read n objects into the given collection.  Return the number of bytes read."

	| count |
	count _ 0.
	[ count < numberOfBytes ]
		whileTrue:
			[ | byte |
			byte _ self next.
			byte
				ifNil: [ ^ count ]
				ifNotNil:
					[ aByteArray
						at: startIndex+count
						put: byte ].
			count _ count + 1 ].
	^ count! !

!MaObjectBuffer methodsFor: '*magma-server' stamp: 'jpb 5/12/2021 14:35:32'!
appendGraphNode: oid into: aMaSerializedGraphBuffer using: aMaReadStrategy currentDepth: anInteger minDepth: minDepth with: alreadyAppendedSet filer: aMaObjectFiler
	| buffer |
	(alreadyAppendedSet maIfAbsentAdd: oid) ifFalse: [ ^ self ].
	buffer _ aMaObjectFiler
		appendObject: oid
		into: aMaSerializedGraphBuffer.
	buffer
		appendGraphUsing: aMaReadStrategy
		into: aMaSerializedGraphBuffer
		currentDepth: anInteger + 1
		minDepth: minDepth
		with: alreadyAppendedSet
		filer: aMaObjectFiler! !

!MaObjectBuffer methodsFor: '*magma-server' stamp: 'cmm 1/25/2005 14:01'!
appendGraphUsing: aMaReadStrategy into: aMaSerializedGraphBuffer currentDepth: currentDepth minDepth: minDepth with: alreadyAppendedSet filer: aMaObjectFiler

	1
		to: self objectInstSize
		do:
			[ :varIndex | | oid |
			(MaOidCalculator isOidForOptimizedObject: (oid _ self maInstVarAt: varIndex))
				ifFalse:
					[ | newMinDepth |
					currentDepth < (
						newMinDepth _
							(aMaReadStrategy
								depthOfAttribute: varIndex
								onClassWithId: self classId
								version: self classVersion) + currentDepth
									max: minDepth)
										ifTrue:
											[ self
												appendGraphNode: oid
												into: aMaSerializedGraphBuffer
												using: aMaReadStrategy
												currentDepth: currentDepth
												minDepth: newMinDepth
												with: alreadyAppendedSet
												filer: aMaObjectFiler ] ] ]
! !

!MaObjectBuffer methodsFor: '*magma-server' stamp: 'cmm 3/26/2007 22:40'!
asSentientBuffer
	"Convert me to a buffer of the correct type."
	^ self species 
		createFromByteArray: byteArray
		startPos: startPos! !

!MaObjectBuffer methodsFor: '*magma-server' stamp: 'cmm 5/24/2005 17:20'!
bufferPositionOfBytesToStore
	"Default 1-based position of the byte within each byteArray that we start storing to disk at."

	^ 7! !

!MaObjectBuffer methodsFor: '*magma-server' stamp: 'cmm 7/20/2007 11:11'!
canConflict
	^ true! !

!MaObjectBuffer methodsFor: '*magma-server' stamp: 'cmm 1/8/2014 20:38'!
canGrow
	"Answer whether my buffer can grow.  3=MaFixedObjectBuffer, 2=MaVariableObjectBuffer, 5=MaStorageObjectBuffer."
	^ self type = 3 or: [ self type = 2 or: [ self type = 5 ] ]! !

!MaObjectBuffer methodsFor: '*magma-server' stamp: 'cmm 3/8/2007 12:58'!
graphDo: oneArgBlock using: aMaReadStrategy for: aMagmaFileTraverser

	self subclassResponsibility! !

!MaObjectBuffer methodsFor: '*magma-server' stamp: 'cmm 11/24/2004 13:35'!
numberOfBytesToStore
	"Answer the number of bytes that should be stored for this buffer.  This is used by Magma, which doesn't need to store the oid since that is kept in the oid table."

	^self physicalSize - self bufferPositionOfBytesToStore + 1! !

!MaFixedObjectBuffer methodsFor: '*magma-server' stamp: 'cmm 7/20/2007 11:16'!
canConflict
	^ self classId ~= MagmaClassIdManager magmaCounterClassId! !

!MaFixedObjectBuffer methodsFor: '*magma-server' stamp: 'cmm 3/8/2007 12:58'!
graphDo: oneArgBlock using: aMaReadStrategy for: aMagmaFileTraverser
	aMagmaFileTraverser
		graphFromPointers: self
		do: oneArgBlock
		using: aMaReadStrategy.
	(aMagmaFileTraverser isForLargeCollection: self)
		ifTrue:
			[ aMagmaFileTraverser
				graphFromLargeCollection: self oid
				do: oneArgBlock
				using: aMaReadStrategy ]! !

!MaVariableBuffer methodsFor: '*magma-server' stamp: 'cmm 3/8/2007 12:59'!
graphDo: oneArgBlock using: aMaReadStrategy for: aMagmaFileTraverser
	aMagmaFileTraverser
		graphFromPointers: self
		do: oneArgBlock
		using: aMaReadStrategy! !

!MaByteObjectBuffer methodsFor: '*magma-server' stamp: 'cmm 1/25/2005 14:07'!
appendGraphUsing: aMaReadStrategy into: aMaSerializedGraphBuffer currentDepth: currentDepth minDepth: minDepth with: alreadyAppendedSet filer: aMaObjectFiler

	"Nothing to do for a byte-object."
! !

!MaByteObjectBuffer methodsFor: '*magma-server' stamp: 'cmm 3/8/2007 12:58'!
graphDo: oneArgBlock using: aMaReadStrategy for: aMagmaFileTraverser

	"nothing to do for a Byte-object buffer."! !

!MaStorageObjectBuffer methodsFor: '*magma-server' stamp: 'cmm 3/8/2007 13:00'!
graphDo: oneArgBlock using: aMaReadStrategy for: aMagmaFileTraverser
	"Though I am an object stored in a different representation, that representation is fully part of the repository, so enumerate the buffers my MaSerializedGraphBuffers buffers."
	oneArgBlock value: self.
	self buffersDo:
		[ : eachBuffer |
		"The buffers of a storage-object are never assigned permanent oids.  But if already-persistent objects are referenced from the storage-object, they will be and should be traversed normally."
		(MaOidCalculator isOidForUserObject: eachBuffer oid)
			ifTrue:
				[ eachBuffer
					graphDo: oneArgBlock
					using: aMaReadStrategy
					for: aMagmaFileTraverser ]
			ifFalse:
				[ oneArgBlock value: eachBuffer ] ]! !

!MaVariableWordBuffer methodsFor: '*magma-server' stamp: 'cmm 1/25/2005 14:07'!
appendGraphUsing: aMaReadStrategy into: aMaSerializedGraphBuffer currentDepth: currentDepth minDepth: minDepth with: alreadyAppendedSet filer: aMaObjectFiler

	"Nothing to do for a variable-word object."! !

!MaVariableWordBuffer methodsFor: '*magma-server' stamp: 'cmm 3/8/2007 12:59'!
graphDo: oneArgBlock using: aMaReadStrategy for: aMagmaFileTraverser
	"nothing to do for a word-object buffer."! !

!MaSerializedGraphBuffer methodsFor: '*magma-server' stamp: 'cmm 8/13/2002 21:27'!
decreaseBufferSizeBy: anInteger

	self bufferSize: self bufferSize - anInteger
! !

!MaLargeArrayOfNumbers methodsFor: '*magma-server' stamp: 'cmm 3/22/2005 18:07'!
do: aBlock for: aMagmaFileTraverser using: aMaReadStrategy

	1 to: self size do:
		[ : x |  | oid |
		(oid _ self at: x) ~= 0
			ifTrue:
				[ aMagmaFileTraverser
					graphFrom: oid
					do: aBlock
					using: aMaReadStrategy ] ]! !

!MaFileRecordBroker methodsFor: '*magma-server' stamp: 'jpb 5/12/2021 15:17:07'!
filesDo: aBlockClosure 
	aBlockClosure value: file! !

!MagmaClientConnection methodsFor: '*magma-server' stamp: 'cmm 2/21/2015 16:59'!
isRemote
	^ maClientConnection notNil! !

!MagmaClientConnection methodsFor: '*magma-server' stamp: 'cmm 12/29/2014 18:08'!
requestLifecycle
	^ maClientConnection ifNotNil: [ maClientConnection lifecycle ]! !

!MagmaLocalLocation methodsFor: '*magma-server-private' stamp: 'cmm 7/10/2015 15:46'!
addLogDaemonTo: aZipArchive as: appDbDirName
	aZipArchive
		addDeflateString: '#!!/bin/bash
exec 2>&1
exec setuidgid magma multilog t ./main' squeakToLinux
		as: appDbDirName! !

!MagmaLocalLocation methodsFor: '*magma-server-private' stamp: 'cmm 7/16/2015 19:37'!
addReadMeTo: aZipArchive as: appDbDirName 
	aZipArchive
		addDeflateString: 'To access the unzipped scripts, execute permissions must be granted.  In a terminal:

	chmod u+x setPerms
	./setPerms

If this server has not been configured to run Magma, run configsys:

	./configsys

The system must be rebooted so that svscan will be started.  After rebooting, return to the ~/work/magma/myDb directory

If the model is the output of a backup, then it is a warm-backup of the original.  If you want it to run the copy independently of the original, you need to run detach:

	./detach

Finally, install this Magma DB as a daemontools service:

	./configdbservice

The DB will start immediately and stay running, and restart automatically after server reboots or even if the VM or system crashes.

To stop the database gracefully, use daemontools svc command:

	sudo svc -d /service/myDb
.' squeakToLinux
		as: appDbDirName! !

!MagmaLocalLocation methodsFor: '*magma-server-accessing' stamp: 'jpb 5/11/2021 18:04:14'!
commitLogDirectory
	^ self directory / MaRecoveryManager commitLogDirectoryName! !

!MagmaLocalLocation methodsFor: '*magma-server-actions' stamp: 'cmm 7/10/2013 20:45'!
commitRestore
	| cont |
	[ cont _ MagmaRepositoryController open: self.
	cont restoreMode ifTrue: [ cont commitRestore ] ] ensure:
		[ cont ifNotNil: [ cont close ] ]! !

!MagmaLocalLocation methodsFor: '*magma-server-actions' stamp: 'cmm 5/2/2013 14:08'!
controllerDo: oneArgBlock 
	| controller |
	^ [ controller _ MagmaRepositoryController open: self.
	oneArgBlock value: controller ] ensure:
		[ controller ifNotNil: [ controller close ] ]! !

!MagmaLocalLocation methodsFor: '*magma-server-actions' stamp: 'cmm 11/22/2010 20:41'!
delete
	"Delete the files at my location."
	self isMagmaRepository 
		ifTrue: 
			[ MagmaDeleteWarning signal: 'The Magma database at ' , self pathName , ' is about to be deleted.'.
			self directory recursiveDelete ]
		ifFalse: 
			[ MagmaNotification signal: 'There is no Magma repository at ' , self pathName ]! !

!MagmaLocalLocation methodsFor: '*magma-server-actions' stamp: 'cmm 7/8/2015 12:53'!
deploy
	self deployExcluding: #('commits' 'seed' 'supervise')! !

!MagmaLocalLocation methodsFor: '*magma-server-actions' stamp: 'cmm 7/14/2018 18:02'!
deployExcluding: toExclude
	"I am the 'model' directory of some app dir in 'magma'.  Create a zip file of the app dir and its model, and all necessary scripts to start and manage the server under daemontools."
	| archive appDbDir appName | appDbDir _ self directory containingDirectory.
	appName _ appDbDir localName.
	self isMagmaRepository ifFalse: [ MagmaUserError signal: self asString , ' does not appear to be a Magma repository.' ].
	self isPotentiallyOpen ifTrue: [ MagmaUserError signal: 'Will not create a deployment archive on potentially-open DB.' ].
	"Remove public rw access from files in zip."
	ZipFileConstants classPool at: #DefaultFilePermissions put: 2r1000000110110000.
	archive _ ZipArchive new.
	Cursor write showWhile:
		[ | archiveFilename appDbDirName |
		appDbDirName _ 'work/magma/', appDbDir localName, '/'.
		MagmaServerConsole exportLinuxScripts.
		self writeSetPermsScript.  
		archive 
			addFile: 'setPerms' as: appDbDirName, 'setPerms' ;
			addFile: 'squeak.conf' as: appDbDirName, 'squeak.conf'.
		(appDbDir fileExists: 'port')
			ifTrue: [archive addFile: (appDbDir fullNameFor: 'port') as: 'port' ]
			ifFalse: [archive addString: (UIManager default request: 'What port # do you want for the port file?')  as: appDbDirName, 'port'].
		self addReadMeTo: archive as: appDbDirName, 'README'; addLogDaemonTo: archive as: appDbDirName, 'log/run'.
		"Zip linux scripts (w/ corresponding .st files), server image and changes, port file."
		MagmaServerConsole linuxScriptSelectors , MagmaServerConsole stScriptNames , #('server.image' 'server.changes') do:
			[ : each | (FileDirectory default fileExists: each asString)
				ifTrue:
					[ archive
						addFile: each asString
						as:
							appDbDirName,
								(appDbDir
									maNameFor: each asString
									relativeTo: appDbDir) ]
				ifFalse: [ MaSoftwareError signal ] ].
		"Zip the Spur VM"
		{'cogspurlinuxht'. Smalltalk sourcesName asDirectoryEntry name. 'SqueakSSL'} do:
			[ : each | archive
				addDirectoryTree: FileDirectory default / each
				relativeTo: FileDirectory default
				as: appDbDirName ].
		"Zip this model directory."
		archive
			addDirectoryTree: self directory
			relativeTo: appDbDir
			as: appDbDirName
			if: [ : entriesArray | entriesArray noneSatisfy: [ : eachEntry | toExclude includes: eachEntry name ] ].
		"Actually write the zip."
		archive writeToFileNamed: (archiveFilename _ appName , '.zip') ]! !

!MagmaLocalLocation methodsFor: '*magma-server-actions' stamp: 'cmm 7/16/2015 22:00'!
detachFromNode
	"Normally sent to location of a local backup.  Resets it's node so it can be used independently."
	| sess |
	sess _ self newSession
		 connectAs: 'resetNode' ;
		 yourself.
	sess repositoryController restoreMode ifTrue: [ sess repositoryController commitRestore ].
	[ sess resetNode ] ensure: [ sess disconnectAndClose ].
	MagmaNotification signal: self maAbbreviatedString , ' is now detached.  Commit-log files from the original repository can no longer be used to roll it forward.'! !

!MagmaLocalLocation methodsFor: '*magma-server-actions' stamp: 'cmm 5/2/2013 14:06'!
filerDo: oneArgBlock 
	| filer |
	^ [ filer _ MaObjectFiler open: self directory.
	oneArgBlock value: filer ] ensure:
		[ filer ifNotNil: [ filer close ] ]! !

!MagmaLocalLocation methodsFor: '*magma-server-testing' stamp: 'jpb 5/11/2021 17:22:49'!
isMagmaRepository
	^ self directory exists and: [ (self directory // MaObjectFiler objectsPhysicalFilename) exists ]! !

!MagmaLocalLocation methodsFor: '*magma-server-testing' stamp: 'jpb 5/12/2021 15:29:30'!
isPotentiallyOpen
	^ (self directory // MagmaRepositoryController openIndicatorFilename) exists! !

!MagmaLocalLocation methodsFor: '*magma-server-accessing' stamp: 'cmm 5/2/2013 13:30'!
newCompressor
	^ MagmaCompressor source: self! !

!MagmaLocalLocation methodsFor: '*magma-server-accessing' stamp: 'cmm 11/5/2008 21:36'!
newServerLink
	^ MagmaSession newLocalLinkFor: (MagmaRepositoryController openedOn: self)! !

!MagmaLocalLocation methodsFor: '*magma-server-accessing' stamp: 'cmm 5/2/2013 14:08'!
oidCount
	^ self controllerDo:
		[ : controller | controller oidCount ]! !

!MagmaLocalLocation methodsFor: '*magma-server-private' stamp: 'cmm 8/3/2015 13:06'!
printStatusOn: aStream 
	^ [ 'Connection successful, commit #:  ' , self newAdminSession remoteCommitNumber asString ]
		on: Error
		do: [ : err | 'FAILED:  ' , err messageText ]! !

!MagmaLocalLocation methodsFor: '*magma-server-accessing' stamp: 'cmm 5/2/2013 10:26'!
repositoryVersion
	| filer |
	^ [ filer _ MaObjectFiler open: self directory.
	filer version ] ensure:
		[ filer ifNotNil: [ filer close ] ]! !

!MagmaLocalLocation methodsFor: '*magma-server-accessing' stamp: 'cmm 3/10/2009 19:59'!
seedDirectory
	"The initial copy of the repository, to which commit.n.log files may be loaded to advance it forward."
	^ FileDirectory on: (self directory fullNameFor: 'seed')! !

!MagmaLocalLocation methodsFor: '*magma-server-private' stamp: 'cmm 7/16/2015 21:52'!
writeSetPermsScript
	FileStream
		fileNamed: 'setPerms'
		do:
			[ : stream | stream
				 lineEndConvention: #lf ;
				truncate: 0 ;
				 maPrint: '#!!/bin/bash
APPNAME=`basename $PWD`
echo strip public access from the entire directory
chmod -R o-rwx ../$APPNAME

echo grant access to user magma if this is not the first db on this instance
sudo chgrp -R --quiet magma ../$APPNAME

echo grant rwx permission to the linux scripts' ;
				 lf ; maPrint: 'chmod 770'.
			MagmaServerConsole linuxScriptSelectors , {'log/run'} do:
				[ : each | stream
					 space ;
					 maPrint: each ] ]! !

!MagmaSession methodsFor: '*magma-server' stamp: 'cmm 8/23/2007 12:27'!
cacheAt: nameString 
	"Answer the object cached at nameString."
	^ cache at: nameString! !

!MagmaSession methodsFor: '*magma-server' stamp: 'cmm 3/8/2008 18:05'!
cacheAt: nameString put: anObject 
	"Reference anObject at nameString to prevent it from being garbage-collected.  This is used for remote-performing on the server."
	^ cache 
		at: nameString
		put: anObject! !

!MagmaSession methodsFor: '*magma-server' stamp: 'cmm 2/10/2009 10:56'!
ensureOpen
	self repositoryController ifNil: [ MagmaEnvironmentError signal: 'local repository not open.' ].
	self isLocal ifFalse: [ MagmaUserError signal: 'Only available for local connections.' ].
	self isOpen ifFalse: [ self repositoryController ensureOpen ]! !

!MagmaSession methodsFor: '*magma-server' stamp: 'cmm 1/16/2005 19:02'!
initializeDefinition

	definition _ MagmaRepositoryDefinition new! !

!MagmaSession methodsFor: '*magma-server' stamp: 'cmm 1/13/2005 18:01'!
isOpen
	^ self isRemote 
	or: [ "local" self repositoryController isOpen ]! !

!MagmaSession methodsFor: '*magma-server' stamp: 'cmm 11/5/2008 10:09'!
repositoryController
	^ primaryLink localRequestServer processor! !

!MagmaSession class methodsFor: '*magma-server' stamp: 'jpb 5/12/2021 11:39:09'!
cleanUp
	"References to MagmaSessions get stuck in old MethodContext's, preventing garbage-collection.  Run this method and these instances will be cleaned."
	| before after proxies reals |
"	MagmaCollectionReader allSubInstances do:
		[ : each | each magmaSession ifNotNil:
			[ : sess | sess isConnected ifTrue: [ each release ] ] ].
"	self disconnectAndCloseAllConnectedSessions.
	WBMethodBuilder initialize.
	MagmaRepositoryController initialize.
	MCMagmaRepository allSubInstances do:
		[ : each | each cleanUp ].
	MaObjectRepository allInstances do:
		[ : each | each unregisterAsMemoryHog ].
	World cleanseStepList.
	WorldState cleanUp.
	Smalltalk garbageCollect.
	before _ self allSubInstances size.
	Smalltalk hasMaui ifTrue:
		[ (Smalltalk classNamed: #MauiWorld) current
			 clipboard: nil ;
			 rehashPlayers.
		(Smalltalk classNamed: #MauiBlockMorph) allInstances do:
			[ : each | each receiver isMauiPrototype ifTrue: [ each resetReceiver ] ] ].
	(Smalltalk classNamed: #TeCellAddress) ifNotNil:
		[ : teCellAddress | teCellAddress initializeReusableAddress ].
	proxies _ MagmaMutatingProxy allInstances select:
		[ : each | each maRealObjectIsReified ].
	reals _ proxies collect:
		[ : each | each realObjectIfMutatingProxy ].
	proxies
		elementsForwardIdentityTo: reals
		copyHash: false.
	Smalltalk garbageCollect.
	self allSubInstances do:
		[ : each | (PointerFinder pointersTo: each) do:
			[ : referencer | (referencer class = Context and: [referencer isMethodContext]) ifTrue: [ referencer receiver: nil ] ] ].
	Smalltalk garbageCollect.
	after _ self allSubInstances size.
	(after > 0 and: [ Smalltalk hasMaui ]) ifTrue:
		[ (Smalltalk classNamed: #MauiMorph) allSubInstances do:
			[ : each | each object isMauiPrototype ifTrue: [ each resetObject ] ].
		Smalltalk garbageCollect.
		after _ self allSubInstances size ].
	SystemNavigation default allObjectsDo:
		[ : e | ((e class inheritsFrom: Object) and: [ e isBehindWriteBarrier ]) ifTrue:
			[ [ e primitiveChangeClassTo: e class superclass basicNew ]
				on: Error
				do:
					[ : err | err ] ] ].
	MaStatHistory cleanUp.
	^ 'MagmaSession instances (before->after):  ' , (before -> after) printString! !

!MagmaSession class methodsFor: '*magma-server-private' stamp: 'cmm 2/8/2005 21:44'!
newLocalLinkFor: aMagmaRepositoryController

	^ MaLocalServerLink localRequestServer: (MaLocalRequestServer processor: aMagmaRepositoryController)! !

!MagmaSession class methodsFor: '*magma-server' stamp: 'cmm 6/1/2010 15:41'!
openLocal: pathStringOrMagmaLocalLocation 
	| controller |
	controller _ MagmaRepositoryController openedOn: pathStringOrMagmaLocalLocation asMagmaLocalLocation.
	controller restoreMode ifFalse: [ controller softBranch ].
	^ self repositoryController: controller! !

!MagmaSession class methodsFor: '*magma-server' stamp: 'cmm 12/26/2004 23:21'!
repositoryController: aMagmaRepositoryController
	"Use this constructor only for *additional* local connections, i.e., two or more sessions connected to the same local repository.  Use the same MagmaRepositoryController you used to create the original."

	^ self link: (self newLocalLinkFor: aMagmaRepositoryController)! !

!MagmaSession class methodsFor: '*magma-server' stamp: 'cmm 1/24/2013 20:27'!
upgradeTo17At: aMagmaLocation 
	"Upgrade the model for the changes in -cmm.63.  MaClause was renamed to MagmaClause."
	| session |
	aMagmaLocation isLocal ifTrue:
		[ (MagmaRepositoryController open: aMagmaLocation) in:
			[ : cont | cont restoreMode ifTrue: [ cont commitRestore ].
			cont close ] ].
	session _ aMagmaLocation newSession
		 allowWriteBarrier: false ;
		 connectAs: 'upgrade to 17' ;
		 yourself.
	[ (session definition classDefinitions anySatisfy:
		[ : each | each anyOne name = #MaClause ]) ifTrue:
		[ session commit:
			[ session
				mapLegacyInstancesOf: #MaClause
				to: MagmaClause ] ].
	session repositoryController repository filer version: 17 ] ensure: [ session disconnectAndClose ]! !

!MagmaSession class methodsFor: '*magma-server' stamp: 'jpb 5/10/2021 16:43:50'!
upgradeTo18At: aMagmaLocalLocation 
	| location traverser compressor session oidsBySymbol oidConversions |
self maMarked: 'delete'.  "Decided not to automatically canoncicalize all Symbols into the RepositoryDefinition because, especially after having run a #codeBackup, it bloats the Symbols up to over 42K.  Otherwise there were just 109.
	So then I thought about making it a settable option, but if the user is going to set the option they can just pre-commit their Symbols themself!!"
location _ aMagmaLocalLocation asMagmaLocalLocation.
	self verifyRepositoryAt: location isVersion: 17.
	traverser _ MagmaFileTraverser for: location.
	oidsBySymbol _ Dictionary new.
	traverser anchorGraphDo:
		[ : eachBuffer | eachBuffer classId = 11 ifTrue:
			[ (oidsBySymbol
				at: eachBuffer asString
				ifAbsentPut: [ OrderedCollection new ]) add: eachBuffer oid ] ].
	"Interesting to see all the Symbols in the db and how many occurrences of each we had."
oidsBySymbol do: [ : each | each sort ].
oidsBySymbol explore.
	oidConversions _ Dictionary new.
	oidsBySymbol keysAndValuesDo:
		[ : eachSymbol : eachOids | eachOids size > 1 ifTrue:
			[ eachOids withIndexDo:
				[ : oid : index | index > 1 ifTrue:
					[ oidConversions
						at: oid
						put: eachOids first ] ] ] ].

	"commitRestore if necessary."
	location isLocal ifTrue:
		[ (MagmaRepositoryController open: location) in:
			[ : cont | cont restoreMode ifTrue: [ cont commitRestore ].
			cont close ] ].
	"Now do a second pass where we replace all references to the Symbols to the canonicalized one."
	compressor _ (MagmaCompressor source: location) upgradeBlock:
		[ : eachBuffer | eachBuffer isPointers ifTrue:
			[ eachBuffer instVarsDoWithIndex:
				[ : eachReferencedOid : index | oidConversions
					at: eachReferencedOid
					ifPresent:
						[ : canonicalizedOid | eachBuffer
							maInstVarAt: index
							put: canonicalizedOid ]
					ifAbsent: [  ] ] ] ].
	compressor compressTo: location pathName, '-ver.18'.
	session _ location newSession
		 allowWriteBarrier: false ;
		 connectAs: 'upgrade to 18' ;
		 yourself.
	[ "Finally, populate the found Symbols into the RepositoryDefinition."
	session definition symbols: oidsBySymbol keys asSet.
	session repositoryController repository filer version: 18 ] ensure: [ session disconnectAndClose ]! !

!MagmaCoreLargeCollection methodsFor: '*magma-server' stamp: 'cmm 8/12/2007 20:43'!
implementationClass
	self subclassResponsibility! !

!MagmaCoreLargeCollection methodsFor: '*magma-server' stamp: 'cmm 3/16/2005 12:53'!
newManagerUsing: aMagmaSession

	self subclassResponsibility! !

!MagmaArray methodsFor: '*magma-server' stamp: 'cmm 7/12/2005 12:52'!
implementationClass

	^ MaLargeArrayOfNumbers! !

!MagmaArray methodsFor: '*magma-server' stamp: 'cmm 3/17/2005 21:33'!
newManagerUsing: aMaObjectRepository

	^ MagmaArrayManager
		collection: self
		repository: aMaObjectRepository! !

!MagmaCollection methodsFor: '*magma-server' stamp: 'cmm 7/12/2005 12:52'!
implementationClass

	^ MaHashIndex! !

!MagmaCollection methodsFor: '*magma-server' stamp: 'cmm 3/17/2005 21:31'!
newManagerUsing: aMaObjectRepository

	^ (MagmaCollectionManager
		collection: self
		repository: aMaObjectRepository)
			oidOfIndexesCollection: (aMaObjectRepository session oidFor: self indexes) ;
			yourself! !

!MaBasicReadStrategy methodsFor: '*magma-server' stamp: 'cmm 1/26/2005 17:28'!
depthOfAttribute: attributeIndex onClassWithId: classId version: versionNumber
	"Answer the delta-depth from the current depth to read.  This is distinct from my minimumDepth, which was used at the start of this graph-read."

	^ 0! !

!MaReadStrategy methodsFor: '*magma-server' stamp: 'cmm 10/28/2011 15:39'!
depthOfAttribute: attributeIndex onClassWithId: classId version: versionNumber
	"Answer the depth that the attribute at attributeIndex should be traversed into *from the current depth*."

	^depths
		at: { classId. versionNumber }
		ifPresent:
			[ :depth |
			depth isInteger
				ifTrue: [ depth ]
				ifFalse: [ depth at: attributeIndex ifAbsent: [ 0 ] ] ]
		ifAbsent: [ 0 ]! !

!MaCommitPackage methodsFor: '*magma-server' stamp: 'cmm 3/2/2013 11:29'!
bytesConsumed
	"This only works on the server when my objects are serialized CommitPackages."
	^ objects bufferSize! !

!MaCommitPackage methodsFor: '*magma-server' stamp: 'cmm 4/5/2005 21:34'!
shouldServerRefresh
	"Anytime a largeCollection domain object changes, the server should
	refresh so we process all of the new large collections or their new
	indexes."

	^ allLargeCollectionChanges notNil
	and: [ allLargeCollectionChanges anySatisfy: [ :each | each requiresServerRefresh ] ]! !

!MaRecoveryRecord methodsFor: '*magma-server' stamp: 'cmm 12/26/2009 13:16'!
writeTo: applyFile 
	self resetChecksum.
	applyFile
		next: self physicalSize
			putAll: byteArray
			startingAt: 1! !

!MaTerm methodsFor: '*magma-server-private' stamp: 'cmm 8/12/2007 20:41'!
shouldInclude: oid using: aMagmaCollectionManager 
	self subclassResponsibility ! !

!MagmaTerm methodsFor: '*magma-server-private' stamp: 'cmm 8/12/2007 20:39'!
addMinimumEnumerationsTo: aMaQueryTrunk using: aMagmaLargeCollectionManager 
	self subclassResponsibility! !

!MagmaTerm methodsFor: '*magma-server-private' stamp: 'cmm 8/12/2007 20:40'!
minimumSearchSpaceSizeUsing: aMagmaCollectionManager
	self subclassResponsibility! !

!MagmaClause methodsFor: '*magma-server-private' stamp: 'cmm 7/5/2008 21:31'!
addMinimumEnumerationsTo: aMaQueryTrunk using: aMagmaLargeCollectionManager 
	aMaQueryTrunk addClause: (self asTrunkClause lastKnownSize: (self isAlwaysFalse 
				ifTrue: [ 0 ]
				ifFalse: 
					[ (aMagmaLargeCollectionManager oidsIndexForAttribute: attribute) 
						numberOfEntriesFrom: lowKey
						to: highKey ]))! !

!MagmaClause methodsFor: '*magma-server-private' stamp: 'cmm 7/5/2008 21:31'!
minimumSearchSpaceSizeUsing: aMagmaCollectionManager 
	^ self isAlwaysFalse 
		ifTrue: [ 0 ]
		ifFalse: 
			[ (aMagmaCollectionManager oidsIndexForAttribute: attribute) 
				numberOfEntriesFrom: lowKey
				to: highKey ]! !

!MagmaClause methodsFor: '*magma-server-private' stamp: 'cmm 7/5/2008 21:31'!
shouldInclude: oid using: aMagmaCollectionManager 
	"in the keys indexes, the oid is the key, the key is the value."
	self isAlwaysFalse ifTrue: [ ^ false ].
	(aMagmaCollectionManager keysIndexForAttribute: attribute) 
		entriesFrom: oid
		do: 
			[ : eachRecord : bax : level | 
			((eachRecord valueAtByteArrayIndex: bax) 
				between: lowKey
				and: highKey) ifTrue: 
				[ "key"
				^ true ] ]
		until: [ : eachRecord : bax : level | (eachRecord keyAtByteArrayIndex: bax) > oid ].
	^ false! !

!MagmaExpression methodsFor: '*magma-server-private' stamp: 'cmm 5/31/2006 20:23'!
addMinimumEnumerationsTo: aMaQueryTrunk using: aMagmaLargeCollectionManager 
	"For each OR'd condition, we must add a new range to aMaQueryTrunk.  Within each OR, we select the shortest ANDed condition to add to aMaQueryTrunk."
	self isConjunction 
		ifTrue: 
			[ | smallest smallestSize |
			smallest _ smallestSize _ nil.
			self terms do: 
				[ : each | 
				| eachSize |
				eachSize _ each minimumSearchSpaceSizeUsing: aMagmaLargeCollectionManager.
				(smallest isNil or: [ eachSize < smallestSize ]) ifTrue: 
					[ smallest _ each.
					smallestSize _ eachSize ] ].
			smallest 
				addMinimumEnumerationsTo: aMaQueryTrunk
				using: aMagmaLargeCollectionManager ]
		ifFalse: 
			[ self terms do: 
				[ : each | 
				each 
					addMinimumEnumerationsTo: aMaQueryTrunk
					using: aMagmaLargeCollectionManager ] ]! !

!MagmaExpression methodsFor: '*magma-server-private' stamp: 'cmm 10/8/2006 21:04'!
minimumSearchSpaceSizeUsing: aMaLargeCollectionManager 
	| calculateSizeBlock |
	calculateSizeBlock _ 
	[ : each | 
	each minimumSearchSpaceSizeUsing: aMaLargeCollectionManager ].
	^ self isConjunction 
		ifTrue: [ (self terms collect: calculateSizeBlock) min ]
		ifFalse: [ self terms detectSum: calculateSizeBlock ]! !

!MagmaExpression methodsFor: '*magma-server-private' stamp: 'cmm 4/12/2006 00:22'!
shouldInclude: oid using: aMagmaCollectionManager 
	^ self isConjunction 
		ifTrue: 
			[ self terms allSatisfy: 
				[ : each | 
				each 
					shouldInclude: oid
					using: aMagmaCollectionManager ] ]
		ifFalse: 
			[ self terms anySatisfy: 
				[ : each | 
				each 
					shouldInclude: oid
					using: aMagmaCollectionManager ] ]! !

!MaTransactionLogEntry methodsFor: '*magma-server' stamp: 'cmm 3/25/2013 20:41'!
addChallengingEntry: aMaCommitLogEntry
	challengingEntries add: aMaCommitLogEntry.
	self connection addChallengingBytes: aMaCommitLogEntry bytesConsumed! !

!MaTransactionLogEntry methodsFor: '*magma-server' stamp: 'cmm 9/27/2014 10:02'!
bytesConsumed
	"When I'm removed from the TransactionLog, how many bytes will be recovered from my 'commitPackage'.  Since only MaCommitLogEntry's have them, 0."
	^ challengingEntries
		ifNil: [ 0 ]
		ifNotNil:
			[ challengingEntries
				inject: 0
				into:
					[ : sum : each | sum + each bytesConsumed ] ]! !

!MaTransactionLogEntry methodsFor: '*magma-server' stamp: 'cmm 3/6/2013 10:44'!
challengingBytes
	^ challengingEntries
		inject: 0
		into: [ : sum : each | sum + each bytesConsumed ]! !

!MaTransactionLogEntry methodsFor: '*magma-server' stamp: 'cmm 10/15/2004 16:58'!
connection: aMagmaClientConnection

	result connection: aMagmaClientConnection
! !

!MaTransactionLogEntry methodsFor: '*magma-server' stamp: 'cmm 7/11/2005 15:40'!
ensureWillCall: specialOidsName at: oidInteger

	(serverNotifications
		at: specialOidsName  "see MaObjectRepository>>#initializeSpecialOidsList"
		ifAbsentPut: [ Set new ]) add: oidInteger! !

!MaTransactionLogEntry methodsFor: '*magma-server' stamp: 'cmm 8/12/2014 19:08'!
hasExcessiveChallengers
	^ challengingEntries size >= self connection maximumNumberOfChallengers or:
		[ | lastAccess |
		lastAccess _ self connection lastAccess.
		lastAccess notNil and: [ (Time millisecondsSince: lastAccess) > 1800000 "30 minutes" ] ]! !

!MaTransactionLogEntry methodsFor: '*magma-server' stamp: 'cmm 10/15/2004 16:56'!
recordAllChangedObjects
	"Record all of the objects that the client will need to refresh."

	challengingEntries do: [ :each | result addToBeRefreshed: each committed ]
! !

!MaTransactionLogEntry methodsFor: '*magma-server' stamp: 'cmm 7/11/2005 15:40'!
recordChangesToSpecialObjectsIn: aMaCommitLogEntry using: aMaTransactionLog

	aMaTransactionLog specialOidsDo:
		[ : eachOid : eachKey |
		(aMaCommitLogEntry hasCommitted: eachOid)
			ifTrue:
				[ aMaCommitLogEntry noteDidCommitSpecialOid.
				self
					ensureWillCall: eachKey
					at: eachOid ] ]! !

!MaTransactionLogEntry methodsFor: '*magma-server' stamp: 'cmm 5/19/2004 22:43'!
renewServerNotifications

	| answer |
	answer _ serverNotifications.
	serverNotifications notEmpty ifTrue: [ self initializeServerNotifications ].
	^ answer! !

!MaTransactionLogEntry methodsFor: '*magma-server' stamp: 'cmm 3/23/2015 14:24'!
resetSocketStreamBuffer
	| lifecycle |
	result connection maClientConnection ifNil: [ ^ self ].
	lifecycle _ result connection requestLifecycle.
	lifecycle ifNotNil: [ lifecycle critical: [ lifecycle socketStream resetBuffers ] ]! !

!MaCommitLogEntry methodsFor: '*magma-server' stamp: 'cmm 9/26/2014 17:59'!
bytesConsumed
	^ super bytesConsumed +
		(commitPackage
			ifNil: [ 0 ]
			ifNotNil: [ commitPackage bytesConsumed ])! !

!MaCommitLogEntry methodsFor: '*magma-server' stamp: 'cmm 8/27/2008 20:29'!
commitNumber: anInteger 
	commitPackage objectsDo: [ : each | each commitNumber: anInteger ].
	result commitNumber: anInteger! !

!MaCommitLogEntry methodsFor: '*magma-server' stamp: 'cmm 5/9/2005 21:24'!
commitPackage: aMaCommitPackage
	commitPackage _ aMaCommitPackage! !

!MaCommitLogEntry methodsFor: '*magma-server' stamp: 'cmm 1/3/2014 14:44'!
determineResultFor: aMaCommitPackage using: aMaObjectRepository 
	self
		
		recordLargeCollectionConflictsWith: aMaCommitPackage
		using: aMaObjectRepository ;
		
		recordObjectConflictsIn: aMaCommitPackage
		using: aMaObjectRepository.
	^ result! !

!MaCommitLogEntry methodsFor: '*magma-server' stamp: 'cmm 5/20/2004 21:39'!
didCommitSpecialOid

	^ didCommitSpecialOid! !

!MaCommitLogEntry methodsFor: '*magma-server' stamp: 'cmm 10/15/2004 16:57'!
failResultWith: aMagmaClientConnection on: oidInteger

	result _
		result asFailedResult
			recordObjectConflictWith: aMagmaClientConnection
			on: oidInteger! !

!MaCommitLogEntry methodsFor: '*magma-server-MagmaArray-support' stamp: 'cmm 2/13/2008 13:32'!
hasChangesToMagmaArray: oidInteger 
	^ (self magmaArrayChangesAt: oidInteger) notNil! !

!MaCommitLogEntry methodsFor: '*magma-server' stamp: 'cmm 10/15/2004 16:52'!
hasCommitted: oidInteger

	^ committed includesKey: oidInteger
! !

!MaCommitLogEntry methodsFor: '*magma-server' stamp: 'cmm 10/8/2012 14:32'!
hasDifferentRepresentationOf: aMaObjectBuffer 
	| myBuffer |
	myBuffer _ committed
		at: aMaObjectBuffer oid
		ifAbsent: [ ^ false ].
	^ (myBuffer equivalentTo: aMaObjectBuffer) not! !

!MaCommitLogEntry methodsFor: '*magma-server'!
isCommitEntry

	^true
! !

!MaCommitLogEntry methodsFor: '*magma-server' stamp: 'cmm 2/13/2008 11:58'!
link
	self
		linkObjectModel ;
		linkMagmaArrays! !

!MaCommitLogEntry methodsFor: '*magma-server' stamp: 'cmm 5/6/2013 12:32'!
linkMagmaArrays
	| oidMap |
	oidMap _ result permanentOids.
	commitPackage allLargeCollectionChangesDo:
		[ : eachChanges | eachChanges isForMagmaArray ifTrue:
			[ eachChanges additionsDo:
				[ : eachIndex : eachOid | (MaOidCalculator isOidForNewObject: eachOid) ifTrue:
					[ "replace the temp oid with the permanent one."
					eachChanges
						add:
							(oidMap
								at: eachOid
								ifAbsent: [ MagmaInvalidReference signal: 'Invalid reference, an object may not change during serialization.' ])
						at: eachIndex ] ] ] ]! !

!MaCommitLogEntry methodsFor: '*magma-server' stamp: 'cmm 10/30/2014 10:56'!
linkObjectModel
	| oidMap |
	oidMap _ result permanentOids.
	commitPackage objectsDo:
		[ : eachBuffer | eachBuffer isPointers ifTrue:
			[ eachBuffer instVarsDoWithIndex:
				[ : oid : index | (MaOidCalculator isOidForNewObject: oid) ifTrue:
					[ "replace the temp oid with the permanent one."
					eachBuffer
						maInstVarAt: index
						put:
							(oidMap
								at: oid
								ifAbsent:
									[ MagmaInvalidReference
										referencingBuffer: eachBuffer
										oidOfMissingBuffer: oid
										signal: 'Invalid reference, an object may not change during serialization.' ]) ] ] ] ].
	commitPackage allLargeCollectionChangesDo:
		[ : each | each isNewCollection ifTrue:
			[ | permanentOid |
			permanentOid _ oidMap
				at: each collectionOid
				ifAbsent: [ MagmaSoftwareError signal: 'expected to find permanent oid for new collection ' , each collectionOid printString ].
			each collectionOid: permanentOid ] ]! !

!MaCommitLogEntry methodsFor: '*magma-server-MagmaArray-support' stamp: 'cmm 2/13/2008 13:32'!
magmaArrayChangesAt: oidInteger 
	commitPackage allLargeCollectionChangesDo: 
		[ : each | 
		each collectionOid = oidInteger ifTrue: [ ^ each ] ].
	^ nil! !

!MaCommitLogEntry methodsFor: '*magma-server' stamp: 'cmm 5/20/2004 21:38'!
noteDidCommitSpecialOid

	didCommitSpecialOid _ true! !

!MaCommitLogEntry methodsFor: '*magma-server' stamp: 'cmm 10/26/2006 15:10'!
recordLargeCollectionConflictsWith: aMaCommitPackage using: aMaObjectRepository 
	aMaCommitPackage allLargeCollectionChangesDo: 
		[ : eachChanges | 
		eachChanges isNewCollection ifFalse: 
			[ | collectionManager |
			collectionManager _ aMaObjectRepository collectionManagerFor: eachChanges collectionOid.
			collectionManager 
				recordGeneralConflictsWith: eachChanges
				in: self.
			challengingEntries do: 
				[ : eachEntry | 
				collectionManager 
					recordConflictsBetween: eachChanges
					and: eachEntry
					in: self ] ] ]! !

!MaCommitLogEntry methodsFor: '*magma-server' stamp: 'cmm 1/7/2014 22:18'!
recordObjectConflictsIn: aMaCommitPackage using: aMaObjectRepository
	"Go through everyone who has challenged me.  Determine if they have a same changed oid that I have.  Also fail if a new instance of a class is being added and shouldn't be."
	aMaCommitPackage persistentObjectsDo:
		[ : eachObjectBuffer | challengingEntries do:
			[ : eachEntry | ((aMaObjectRepository filer canPossiblyConflict: eachObjectBuffer) and: [ eachEntry hasDifferentRepresentationOf: eachObjectBuffer ]) ifTrue:
				[ self
					failResultWith: eachEntry connection
					on: eachObjectBuffer oid ] ] ]! !

!MaCommitLogEntry methodsFor: '*magma-server' stamp: 'cmm 1/9/2014 14:59'!
recordUsing: aMaObjectRepository 
	"Record my successful commit in the places that need to know."
	commitPackage objectsDo:
		[ : eachBuffer | (result newObjectBuffers includesKey: eachBuffer oid) ifFalse:
			[ committed
				at: eachBuffer oid
				put: eachBuffer copyWithSameBuffer ].
		self
			refreshIfCountersOrStat: eachBuffer
			using: aMaObjectRepository ].
	result changedObjectBuffers: committed! !

!MaCommitLogEntry methodsFor: '*magma-server' stamp: 'cmm 1/9/2014 14:58'!
refreshIfCountersOrStat: aMaObjectBuffer using: aMaObjectRepository 
	(aMaObjectBuffer classId = MagmaClassIdManager magmaCounterClassId or: [ aMaObjectRepository filer magmaStatClassIds includes: aMaObjectBuffer classId ]) ifTrue:
		[ result toBeRefreshed
			at: aMaObjectBuffer oid
			put: aMaObjectBuffer copyWithSameBuffer ]! !

!MaCommitLogEntry methodsFor: '*magma-server' stamp: 'cmm 5/30/2005 22:19'!
registerUsing: aMaObjectRepository
	"Register all new objects by assigning them their permanentOids."

	| map |
	map _ Dictionary new: 100.
	commitPackage newObjectsDo:
		[ : eachBuffer |
		eachBuffer oid: 
			(map
				at: eachBuffer oid
				put: aMaObjectRepository getNextOid).
		result recordNewObjectBuffer: eachBuffer copyWithSameBuffer ].
	result permanentOids: map! !

!MaCommitLogEntry methodsFor: '*magma-server' stamp: 'cmm 1/8/2014 17:43'!
shouldServerRefresh
	^ didCommitSpecialOid or: [ commitPackage shouldServerRefresh ]! !

!MagmaLargeCollectionChanges methodsFor: '*magma-server' stamp: 'cmm 10/26/2006 17:02'!
requiresServerRefresh
	^ false! !

!MagmaCollectionChanges methodsFor: '*magma-server' stamp: 'cmm 11/6/2006 22:39'!
requiresServerRefresh
	^ self hasAddedIndexes or: [ self hasRemovedIndexes ]! !

!MaRefreshViewResult methodsFor: '*magma-server' stamp: 'cmm 7/24/2007 11:59'!
addToBeRefreshed: aDictionary 
	"aDictionary the containing the MaObjectBuffers that were committed by other sessions, keyed by their oid."
	"We use addAll: so that oids are replaced by subsequent updates."
	toBeRefreshed addAll: aDictionary! !

!MaRefreshViewResult methodsFor: '*magma-server' stamp: 'cmm 7/11/2014 14:06'!
addToBeRefreshedWithoutOverwriting: anArray 
	"anArray of MaSerializedGraphBuffers was read from the repository files, but we want to keep the recent updates already in 'toBeRefreshed', which were from other user updates.
	Also, the toBeRefreshed is expected to be a Dictionary of MaObjectBuffers, make it so."
	anArray do: 
		[ : eachSerializedGraphBuffer | 
		eachSerializedGraphBuffer buffersDo: 
			[ : eachBuffer | 
			(toBeRefreshed includesKey: eachBuffer oid) ifFalse: 
				[ toBeRefreshed 
					at: eachBuffer oid
					put: eachBuffer independentCopy ] ] ]! !

!MaRefreshViewResult methodsFor: '*magma-server' stamp: 'cmm 12/30/2013 21:06'!
toBeRefreshed
	^ toBeRefreshed! !

!MagmaLargeCollectionSegment methodsFor: '*magma-server-private' stamp: 'cmm 2/18/2008 21:33'!
collectBuffers: sessionId from: aMaObjectRepository using: aMaReadStrategy 
	| readStrategy |
	readStrategy _ aMaObjectRepository 
		ensureReadStrategy: aMaReadStrategy
		forSession: sessionId.
	self objects withIndexDo: 
		[ : eachHashAndOid : n | 
		eachHashAndOid isVariableBinding 
			ifTrue: 
				[ eachHashAndOid value: (aMaObjectRepository 
						byteArrayAt: eachHashAndOid value
						using: readStrategy) ]
			ifFalse: 
				[ "For member index accesses, there are no extra hash keys, so don't waste the bandwidth."
				self objects 
					at: n
					put: 
						(aMaObjectRepository 
							byteArrayAt: eachHashAndOid "really just the oid"
							using: readStrategy) ] ]! !

!MagmaRepositoryRequest methodsFor: '*magma-server' stamp: 'cmm 11/13/2008 20:38'!
console
	^ console! !

!MagmaRepositoryRequest methodsFor: '*magma-server' stamp: 'cmm 11/14/2008 13:27'!
console: aMagmaServerConsole 
	console _ aMagmaServerConsole.
	repositoryController _ aMagmaServerConsole controller! !

!MagmaRepositoryRequest methodsFor: '*magma-server' stamp: 'cmm 12/30/2008 12:27'!
isPrimary
	"Answer whether I thisLocation is the primary server of a multi-server node.  If a single-server, answer false."
	^ self restoreMode not and: [ self node isBackedUp ]! !

!MagmaRepositoryRequest methodsFor: '*magma-server' stamp: 'cmm 3/4/2009 15:31'!
isSecondary
	^ console isSecondary! !

!MagmaRepositoryRequest methodsFor: '*magma-server' stamp: 'cmm 11/14/2008 13:32'!
node
	^ repositoryController node! !

!MagmaRepositoryRequest methodsFor: '*magma-server' stamp: 'cmm 11/14/2008 13:24'!
nodeCheck
	"If I am a read-request sent to a primary, or a commit-request sent to a secondary, it's a red-flag to check on node-availability.  Check the node it *should* be going to.  If it is truly unavailable then update my MagmaNode accordingly and then #ensureCorrectNodeConfiguration.  If it is still available, then perhaps it is a client-issue, signal a MagmaWrongServerError to cause the client to reset its own configuration."

	"Optional subclass override."
	! !

!MagmaRepositoryRequest methodsFor: '*magma-server'!
process
	"Any persistent objects returned by this should be materialized only by the sessions
	serializer, not the repositoryLink's serializer because the sessions serializer is what
	works with the transaction to mark it read so changes can be detected."

	self subclassResponsibility
! !

!MagmaRepositoryRequest methodsFor: '*magma-server' stamp: 'cmm 10/28/2008 11:28'!
recoveryManager
	^ self repository recoveryManager ! !

!MagmaRepositoryRequest methodsFor: '*magma-server' stamp: 'cmm 5/14/2005 18:07'!
repository

	^ repositoryController repository! !

!MagmaRepositoryRequest methodsFor: '*magma-server' stamp: 'cmm 7/5/2004 11:57'!
repositoryController: aMagmaRepositoryController

	repositoryController _ aMagmaRepositoryController
! !

!MagmaRepositoryRequest methodsFor: '*magma-server' stamp: 'cmm 11/14/2008 13:33'!
restoreMode
	^ repositoryController restoreMode! !

!MagmaRepositoryRequest methodsFor: '*magma-server' stamp: 'cmm 11/14/2008 13:30'!
session
	^ repositoryController session! !

!MagmaRepositoryRequest methodsFor: '*magma-server' stamp: 'jpb 5/12/2021 11:42:40'!
shouldBePrimary
	"This request should only run on the primary server.  If I am in restoreMode (not the primary) then ping the primary to see whether it is still there.  If it isn't, take over, otherwise signal a MagmaWrongServerError back to the client."
	self isSecondary ifTrue: 
		[ 
		[ self node pingPrimary.
		MagmaWrongServerError new
			correctServer: self node primaryLocation ;
			signal ] 
			on: MaNetworkError
			do: 
				[ : netErr | 
				console ifNotNil: 
					[ "Wait briefly for any further MaWriteRequests to arrive over the network, THEY must be processed before the NodeUpdate if they are present."
					
					[ | writeRequests serverSocket |
					(Delay forMilliseconds: 1800) wait.
					writeRequests _ OrderedCollection new.
					serverSocket _ self serverSocket.
					serverSocket requestQueue removeAllSuchThat: 
						[ : eachLifecycle | 
						| requestObject |
						requestObject _ console server materializeRequest: eachLifecycle requestByteArray.
						requestObject isWriteRequest 
							ifTrue: 
								[ MagmaNotification signal: 'Found a WriteRequest in teh queue!!'.
								eachLifecycle requestObject: requestObject.
								serverSocket dequeueRequest: eachLifecycle.
								writeRequests add: eachLifecycle.
								true ]
							ifFalse: [ false ] ].
					writeRequests _ writeRequests asSortedCollection: 
						[ : a : b | 
						a commitLogRecord commitNumber < b commitLogRecord commitNumber ].
					writeRequests do: [ : each | serverSocket processRequest: each ] ] 
						on: Error
						do: 
							[ : err | 
							MaClientServerPreferences debug 
								ifTrue: [ err pass ]
								ifFalse: 
									[ "Ok, let's be extra aggressive in not letting server crash.  If one request generates an unexpected error, just log it and discard, but still process subsequent requests."
									Smalltalk 
										logError: err description
										inContext: err signalerContext
										to: 'SqueakDebug.log' ] ] ].
				MagmaNodeUpdate new
					remove: self node primaryLocation ;
					setPrimary: console thisLocation ;
					processUsing: console ] ]! !

!MagmaRepositoryRequest methodsFor: '*magma-server' stamp: 'jpb 5/12/2021 11:42:47'!
shouldBeSecondary
	"This request should only run on the secondary server.  If I am not in restoreMode (the primary) then ping the primary to see whether it is still there.  If it isn't, take over, otherwise signal a MagmaWrongServerError back to the client."
	| session |
	self isPrimary ifTrue: 
		[ (failedLocation isNil or: [ (self node secondaryLocations includes: failedLocation) not ]) ifTrue: 
			[ MagmaWrongServerError new
				correctServer: self node anySecondaryLocation ;
				signal ].
		session _ self node sessionFor: failedLocation.
		console removeSecondaryLocation: failedLocation.
		[ session beWarmBackupFor: self thisLocation ] 
			on: MaNetworkError
			do: 
				[ : err | 
				"It really is down, don't do anything."
				 ] ]! !

!MagmaRepositoryRequest methodsFor: '*magma-server' stamp: 'cmm 11/14/2008 13:34'!
thisLocation
	^ console ifNotNil: [ console thisLocation ]! !

!MaAbortTransactionRequest methodsFor: '*magma-server' stamp: 'cmm 11/15/2008 14:07'!
nodeCheck
	self shouldBePrimary! !

!MaAbortTransactionRequest methodsFor: '*magma-server' stamp: 'cmm 7/10/2009 14:55'!
process
	| refreshViewResult |
	refreshViewResult _ self repository abortTransactionFor: sessionId.
	refreshViewResult addToBeRefreshedWithoutOverwriting: 
		(self repository 
			refreshAll: additionalBuffers
			for: sessionId).
	^ refreshViewResult! !

!MaAbstractReadRequest methodsFor: '*magma-server' stamp: 'cmm 3/8/2009 15:10'!
nodeCheck
	requiredProgress isInteger ifFalse: 
		[ MagmaSoftwareError signal: 'requiredProgress must be an Integer, not a ' , requiredProgress class name ].
	repositoryController commitNumber < requiredProgress ifTrue: [ MagmaReadServerTooFarBehind signal ].
	self shouldBeSecondary! !

!MaAnchorRequest methodsFor: '*magma-server' stamp: 'cmm 5/14/2005 18:09'!
process

	^ self repository
		readAnchorFor: sessionId
		using: readStrategy! !

!MaRefreshSegmentRequest methodsFor: '*magma-server' stamp: 'cmm 6/4/2006 20:12'!
process
	^ self repository refreshSegmentIn: self! !

!MaSegmentByIndexRequest methodsFor: '*magma-server' stamp: 'brp 6/14/2006 10:50'!
process

	^ self repository
		upTo: quantity
		oidsFromIndex: lowIndex
		inLargeCollection: collectionOid
		using: readStrategy
		forSession: sessionId! !

!MaReadMultipleRequest methodsFor: '*magma-server' stamp: 'cmm 8/21/2014 15:41'!
nodeCheck
	"This request is used to catch-up clients which have been disconnected.  If, while disconnected, the Node configuration changed, they will have an outdated view of the node until they can get reconnected and caught up.
	Therefore, allow this request to be issued by the primary servers.
	This fixes the stack-overflow issue which could occur under that circumstance."! !

!MaReadMultipleRequest methodsFor: '*magma-server' stamp: 'cmm 2/11/2008 17:23'!
process
	^ self repository 
		refreshAll: oids
		for: sessionId! !

!MaReadRequest methodsFor: '*magma-server' stamp: 'cmm 5/14/2005 18:11'!
process

	^ self repository
		read: oid
		for: sessionId
		using: readStrategy! !

!MaCommitLogRecordRequest methodsFor: '*magma-server' stamp: 'cmm 3/15/2009 19:37'!
process
	^ endingCommitNumber 
		ifNil: [ self repository commitRecordsFrom: startingCommitNumber ]
		ifNotNil: 
			[ self repository 
				commitRecordsFrom: startingCommitNumber
				to: endingCommitNumber ]! !

!MaWarmBackupUpdateRequest methodsFor: '*magma-server' stamp: 'cmm 12/29/2008 13:50'!
ensureNoWarmBackupNode
	^ (repositoryController node locations includes: requestingLocation) ifTrue: 
		[ repositoryController session commit: [ repositoryController node removeLocation: requestingLocation ] ]! !

!MaWarmBackupUpdateRequest methodsFor: '*magma-server' stamp: 'cmm 8/18/2009 12:44'!
ensureWarmBackupNode
	requestingLocation isReachable ifFalse: 
		[ MagmaEnvironmentError signal: requestingLocation asString , ' could not be made a warm backup because it is not reachable from ' , self thisLocation asString ].
	(repositoryController node locations includes: requestingLocation) ifFalse: 
		[ "Note, the following commit also fires-off an (async) WriteRequest to this newly-joined secondary."
		repositoryController session commit: [ repositoryController node addLocation: requestingLocation ] ]! !

!MaWarmBackupUpdateRequest methodsFor: '*magma-server' stamp: 'cmm 12/29/2008 13:54'!
process
	| answer doneIndicator |
	doneIndicator _ true.
	answer _ super process.
	answer 
		ifEmpty: [ self ensureWarmBackupNode ]
		ifNotEmpty: 
			[ "Sending back some commit-records, but did we make it to the end?  If so, we can add as a warm-backup right now."
			answer last commitNumber = repositoryController commitNumber 
				ifTrue: [ self ensureWarmBackupNode ]
				ifFalse: 
					[ self ensureNoWarmBackupNode.
					doneIndicator _ false ] ].
	^ answer -> doneIndicator! !

!MaCommitRequest methodsFor: '*magma-server' stamp: 'cmm 11/16/2008 19:12'!
nodeCheck
	self shouldBePrimary ! !

!MaCommitRequest methodsFor: '*magma-server' stamp: 'cmm 11/16/2008 19:22'!
process
	| nodeUpdates answer |
	answer _ 
	[ self repository 
		submitAll: package
		for: sessionId
		beginAnother: beginAnother ] 
		on: MagmaNodeUpdate
		do: 
			[ : update | 
			nodeUpdates _ nodeUpdates ifNil: [ OrderedCollection new ].
			nodeUpdates add: update.
			update resume ].
	nodeUpdates ifNotNil: 
		[ "this commit refreshes my sessions view"
		self session commit: [ nodeUpdates do: [ : each | each applyTo: repositoryController node ] ] ].
	^ answer! !

!MaDownloadCodeRequest methodsFor: '*magma-server' stamp: 'cmm 11/16/2008 19:24'!
nodeCheck
	self shouldBeSecondary! !

!MaDownloadCodeRequest methodsFor: '*magma-server' stamp: 'cmm 10/26/2004 21:54'!
process

	^ repositoryController codeBaseByteArray! !

!MaGetMcLockerRequest methodsFor: '*magma-server' stamp: 'cmm 11/16/2008 19:33'!
nodeCheck
	self shouldBePrimary ! !

!MaGetMcLockerRequest methodsFor: '*magma-server' stamp: 'cmm 6/23/2009 10:15'!
process
	^ (self repository 
		collectionManagerFor: mcOid
		ifAbsent: 
			[ MagmaEnvironmentError signal: 'Error, no largeCollectoinManager for that collection found.' ]) lockedBy! !

!MaLargeCollectionSizeRequest methodsFor: '*magma-server' stamp: 'cmm 11/16/2008 23:30'!
nodeCheck
	self shouldBeSecondary! !

!MaLargeCollectionSizeRequest methodsFor: '*magma-server' stamp: 'cmm 5/14/2005 18:29'!
process

	^ self repository sizeOfLargeCollection: collectionOid! !

!MaKeyIntervalInfoRequest methodsFor: '*magma-server' stamp: 'cmm 5/14/2005 18:31'!
process

	^ self repository
		numberOfEntriesFrom: lowKey
		to: highKey
		inLargeCollection: collectionOid
		on: attribute! !

!MaLoadFromReaderRequest methodsFor: '*magma-server' stamp: 'cmm 11/16/2008 23:31'!
nodeCheck
	self shouldBePrimary! !

!MaLoadFromReaderRequest methodsFor: '*magma-server' stamp: 'cmm 10/16/2006 21:01'!
process
	^ self repository 
		registerAndLoad: commitPackage 
		using: expression
		from: sourceCollectionOid
		forSession: sessionId
		distinct: distinct! !

!MaLoadProgressRequest methodsFor: '*magma-server' stamp: 'cmm 11/16/2008 23:31'!
nodeCheck
	self shouldBePrimary ! !

!MaLoadProgressRequest methodsFor: '*magma-server' stamp: 'cmm 11/16/2008 23:32'!
process
	^ (self repository collectionManagerFor: collectionOid) loadProgress! !

!MaPrimitiveAttributesRequest methodsFor: '*magma-server' stamp: 'cmm 6/30/2009 16:56'!
process
	^ self repository primitiveAttributes
		at: #oidCount
			put: repositoryController oidCount ;
		at: #isFullBackupRunning
			put: repositoryController isFullBackupRunning ;
		yourself! !

!MaRawBufferRequest methodsFor: '*magma-server' stamp: 'cmm 12/30/2015 23:49'!
process
	(MaOidCalculator isOidForUserObject: oid) ifFalse: [ MagmaUserError signal: oid asString, ' is not an oid of a persistent user-object.' ].
	repositoryController ensureOpen.
	^ self repository filer bufferFor: oid! !

!MaReaderTrunkRequest methodsFor: '*magma-server' stamp: 'cmm 11/17/2008 09:32'!
nodeCheck
	self shouldBeSecondary! !

!MaReaderTrunkRequest methodsFor: '*magma-server' stamp: 'cmm 8/6/2006 18:29'!
process
	^ self repository 
		getTrunkFor: collectionOid
		expression: expression! !

!MaRefreshRequest methodsFor: '*magma-server' stamp: 'cmm 1/8/2009 19:02'!
process
	^ self repository renewTransactionEntryFor: sessionId! !

!MaRemoveSecondaryLocationRequest methodsFor: '*magma-server' stamp: 'cmm 3/4/2009 15:49'!
nodeCheck
	self isPrimary ifFalse: 
		[ MagmaUserError signal: 'This request may only be sent to the primary server.' ]! !

!MaRemoveSecondaryLocationRequest methodsFor: '*magma-server' stamp: 'cmm 3/4/2009 15:48'!
process
	console ifNil: 
		[ MagmaUserError signal: 'This operation is only applicable to secondary servers in a multi-server HA Node configuration.' ].
	console removeSecondaryLocation: locationToRemove.
	^ true! !

!MaRepositoryConnectionRequest methodsFor: '*magma-server' stamp: 'cmm 12/29/2012 11:35'!
nodeCheck
	failedLocation ifNotNil: [ console removeSecondaryLocation: failedLocation ]! !

!MaRepositoryConnectionRequest methodsFor: '*magma-server' stamp: 'cmm 2/18/2012 12:10'!
process
	MagmaSession magmaVersion = magmaVersion ifFalse: 
		[ MagmaUserError signal: 'This server is running Magma version ' , MagmaSession magmaVersion printString , '.  You may not connect with version ' , magmaVersion printString , ' of the client code.  You may be able to install the code using browseCode.' ].
	uuid ifNotNil: 
		[ repositoryController magmaId uuid = uuid ifFalse: 
			[ MagmaUnconnectableSessionError signal: 'Cannot connect because the repository has been replaced.  Please connect a new session.' ] ].
	commitNumber > 0 ifTrue: 
		[ repositoryController commitNumber < commitNumber ifTrue: 
			[ MagmaWrongCommitNumber signal: 'Cannot connect this session because the repository has been restored to an earlier state.  Please connect a new session.' ] ].
	^ repositoryController 
		newSessionFor: self
		sessionId: sessionId! !

!MaRepositoryConnectionRequest methodsFor: '*magma-server' stamp: 'cmm 9/21/2008 15:24'!
userId
	^ userId! !

!MaRepositoryDisconnectRequest methodsFor: '*magma-server' stamp: 'cmm 5/14/2005 18:15'!
process

	self repository removeSessionFor: sessionId.
	^ nil! !

!MaSaveAndExitImageRequest methodsFor: '*magma-server' stamp: 'cmm 3/12/2009 22:03'!
process
	"Just like selecting it from the World menu.  shutdown process has responsibility to do it cleanly."
	repositoryController 
		serverSave: save
		andExit: exit.
	^ true! !

!MaServerPerformRequest methodsFor: '*magma-server' stamp: 'cmm 9/6/2007 21:33'!
process
	^ repositoryController 
		perform: selector
		withArguments: arguments! !

!MaTransactionRequest methodsFor: '*magma-server' stamp: 'cmm 11/17/2008 09:33'!
nodeCheck
	self shouldBePrimary! !

!MaTransactionRequest methodsFor: '*magma-server' stamp: 'cmm 12/17/2002 11:13'!
process
	^repositoryController newTransactionFor: sessionId! !

!MaWriteRequest methodsFor: '*magma-server' stamp: 'cmm 9/24/2014 10:54'!
process
	| commitLogEntry |
	self restoreMode ifFalse: [ " MagmaEnvironmentError signal: 'Only repositories in restoreMode are updated in this way.' "
		"Not signaling an error because, after a #takeOverAsPrimary, there will be unavoidable extranneous WriteRequests left-over in the queue.  It's easier just to ignore them for the test cases.  Also, WriteRequests are never checked for a response anyway, the sender of a WriteREquest would never know there was an error."
		^ nil ].
	commitLogEntry _ self recoveryManager materializeCommitLogEntryIn: commitLogRecord.
	[ "Fix:  #write:logged:commitLogRecord: can lead to #applyCommitRecords:, which must be flush-atomic.  Must not use commitCritical except inside a flushCritical to avoid potential deadlocks with #flushCacheSoon."
	self repository flushCritical: 
		[ self repository commitCritical:
			[ self repository
				write: commitLogEntry
				logged: true
				commitLogRecord: commitLogRecord ] ].
	self session advanceWith: commitLogEntry ]
		on: MagmaWrongCommitNumber
		do:
			[ : err | "console ensureCorrectNodeConfiguration"  "<-- probably overkill"
			err expectedCommitNumber < commitLogRecord commitNumber
				ifTrue:
					[ "Gap fill"
					repositoryController
						catch: console thisLocation
						upTo: repositoryController node primaryLocation ]
				ifFalse: [ MagmaNotification signal: 'Received commitNumber ' , commitLogRecord commitNumber asString , ' but need ' , err expectedCommitNumber asString ] ]! !

!MagmaBeWarmBackupRequest methodsFor: '*magma-server' stamp: 'cmm 2/27/2009 15:35'!
nodeCheck
	self shouldBeSecondary ! !

!MagmaBeWarmBackupRequest methodsFor: '*magma-server' stamp: 'cmm 12/4/2009 15:05'!
process
	console ifNil: 
		[ MagmaEnvironmentError signal: 'MagmaServerConsole required for ' , self class name ].
	primaryLocation isLocal ifTrue: 
		[ MagmaUserError signal: 'Warm-backup of a locally-used repository is not supported.' ].
	console beWarmBackupFor: primaryLocation! !

!MagmaEnsureCorrectNodeConfiguration methodsFor: '*magma-server' stamp: 'cmm 11/14/2008 14:38'!
process
	console ensureCorrectNodeConfiguration.
	^ nil! !

!MagmaFullBackupRequest methodsFor: '*magma-server' stamp: 'cmm 3/31/2010 17:53'!
process
	^ serverPath 
		ifNil: [ repositoryController fullBackup ]
		ifNotNil: [ repositoryController fullBackupToServerPath: serverPath ]! !

!MagmaIdRequest methodsFor: '*magma-server' stamp: 'cmm 1/14/2005 16:05'!
process

	^ repositoryController magmaId! !

!MagmaNoteUnreachableServer methodsFor: '*magma-server' stamp: 'cmm 11/22/2008 17:44'!
nodeCheck
	self shouldBePrimary! !

!MagmaNoteUnreachableServer methodsFor: '*magma-server' stamp: 'cmm 3/1/2009 17:30'!
process
	"My #shouldBePrimary method has already ensured I'm the primary."
	^ nil! !

!MagmaPathNameRequest methodsFor: '*magma-server' stamp: 'cmm 9/24/2004 15:13'!
process

	^ repositoryController pathName! !

!MagmaReleaseReaderRequest methodsFor: '*magma-server' stamp: 'jpb 5/12/2021 11:39:09'!
process
	(self repository 
		collectionManagerFor: collectionOid
		ifAbsent: [ nil ]) ifNotNil: [ : aMagmaCollectionManager | aMagmaCollectionManager wantsReleased: true ]! !

!MagmaRequestSwapPrimaryDutyRequest methodsFor: '*magma-server' stamp: 'cmm 11/23/2009 13:04'!
nodeCheck
	console ifNil: 
		[ MagmaUserError signal: self class name , ' only applies when the repository is deployed on-line, with at least two servers forming a HA node.' ].
	console restoreMode ifFalse: [ MagmaUserError signal: 'Repository is not a warm-backup.' ].
	"Obtain the latest-possible view of the node."
	repositoryController session abort.
	(self node includesServerAt: self thisLocation) ifFalse: 
		[ MagmaEnvironmentError signal: 'Node should include the secondary requesting primary duty.' ].
	self shouldBeSecondary! !

!MagmaRequestSwapPrimaryDutyRequest methodsFor: '*magma-server' stamp: 'cmm 3/8/2009 17:58'!
process
	| lastCommits sess |
	sess _ self node primarySession disconnect.
	lastCommits _ sess 
		relinquishPrimaryDutyTo: self thisLocation
		atCommitNumber: repositoryController commitNumber + 1
		branchCode: repositoryController branchCode.
	"Not using #commitRestore because I don't see that we need a new branchCode."
	self repository
		applyCommitRecords: lastCommits ;
		restoreMode: false.
	^ true! !

!MagmaRequestSwapPrimaryDutyRequest methodsFor: '*magma-server' stamp: 'cmm 3/3/2009 20:32'!
shouldBeSecondary
	"Never ping anything else when receiving a swap request, if the administrator has the wrong server, the jig is up."
	self isSecondary not ifTrue: 
		[ MagmaWrongServerError new
			correctServer: self node primaryLocation ;
			signal: self printString , ' should be sent to a secondary server of multi-server nodes.' ]! !

!MagmaServerStatisticsRequest methodsFor: '*magma-server' stamp: 'cmm 5/7/2008 17:22'!
process
	^ repositoryController serverStatistics! !

!MagmaSwapPrimaryDutyRequest methodsFor: '*magma-server' stamp: 'cmm 3/3/2009 21:38'!
nodeCheck
	self shouldBePrimary! !

!MagmaSwapPrimaryDutyRequest methodsFor: '*magma-server' stamp: 'cmm 12/29/2008 16:41'!
process
	^ repositoryController 
		executeSwapWith: newPrimary
		commitNumber: commitNumber
		branchCode: branchCode! !

!MagmaSwapPrimaryDutyRequest methodsFor: '*magma-server' stamp: 'cmm 3/3/2009 21:38'!
requiresConnection
	^ false! !
MaAtomicFileStream initialize!
MaObjectRepository initialize!
MaRecoveryManager initialize!
MagmaRepositoryController initialize!
MagmaServerPreferences initialize!
