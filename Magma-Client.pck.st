'From Cuis 5.0 [latest update: #4588] on 11 May 2021 at 4:34:21 pm'!
'Description Package containing the magma client implementation

License: MIT
Original Author: Chris Muller (cmm)
Author: Josef Philip Bernhart (jpb)'!
!provides: 'Magma-Client' 1 2!
SystemOrganization addCategory: 'Magma-Client'!
SystemOrganization addCategory: 'Magma-Client-Exceptions'!
SystemOrganization addCategory: 'Magma-Client-MagmaCollections'!
SystemOrganization addCategory: 'Magma-Client-Backend'!


!classDefinition: #MagmaDictionaryAssociation category: 'Magma-Client-Backend'!
Association subclass: #MagmaDictionaryAssociation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaDictionaryAssociation class' category: 'Magma-Client-Backend'!
MagmaDictionaryAssociation class
	instanceVariableNames: ''!

!classDefinition: #MagmaCorruptionError category: 'Magma-Client-Exceptions'!
MaCorruptionError subclass: #MagmaCorruptionError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaCorruptionError class' category: 'Magma-Client-Exceptions'!
MagmaCorruptionError class
	instanceVariableNames: ''!

!classDefinition: #MagmaEnvironmentError category: 'Magma-Client-Exceptions'!
MaClientServerEnvironmentError subclass: #MagmaEnvironmentError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaEnvironmentError class' category: 'Magma-Client-Exceptions'!
MagmaEnvironmentError class
	instanceVariableNames: ''!

!classDefinition: #MagmaDifferentBranch category: 'Magma-Client-Exceptions'!
MagmaEnvironmentError subclass: #MagmaDifferentBranch
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaDifferentBranch class' category: 'Magma-Client-Exceptions'!
MagmaDifferentBranch class
	instanceVariableNames: ''!

!classDefinition: #MagmaGarbageCollectedObject category: 'Magma-Client-Exceptions'!
MagmaEnvironmentError subclass: #MagmaGarbageCollectedObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaGarbageCollectedObject class' category: 'Magma-Client-Exceptions'!
MagmaGarbageCollectedObject class
	instanceVariableNames: ''!

!classDefinition: #MagmaReadServerTooFarBehind category: 'Magma-Client-Exceptions'!
MagmaEnvironmentError subclass: #MagmaReadServerTooFarBehind
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaReadServerTooFarBehind class' category: 'Magma-Client-Exceptions'!
MagmaReadServerTooFarBehind class
	instanceVariableNames: ''!

!classDefinition: #MagmaTooFarBehindError category: 'Magma-Client-Exceptions'!
MagmaEnvironmentError subclass: #MagmaTooFarBehindError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaTooFarBehindError class' category: 'Magma-Client-Exceptions'!
MagmaTooFarBehindError class
	instanceVariableNames: ''!

!classDefinition: #MagmaUnavailableCommitRecord category: 'Magma-Client-Exceptions'!
MagmaEnvironmentError subclass: #MagmaUnavailableCommitRecord
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaUnavailableCommitRecord class' category: 'Magma-Client-Exceptions'!
MagmaUnavailableCommitRecord class
	instanceVariableNames: ''!

!classDefinition: #MagmaUnconnectableSessionError category: 'Magma-Client-Exceptions'!
MagmaEnvironmentError subclass: #MagmaUnconnectableSessionError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaUnconnectableSessionError class' category: 'Magma-Client-Exceptions'!
MagmaUnconnectableSessionError class
	instanceVariableNames: ''!

!classDefinition: #MagmaWrongCommitNumber category: 'Magma-Client-Exceptions'!
MagmaUnconnectableSessionError subclass: #MagmaWrongCommitNumber
	instanceVariableNames: 'expectedCommitNumber'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaWrongCommitNumber class' category: 'Magma-Client-Exceptions'!
MagmaWrongCommitNumber class
	instanceVariableNames: ''!

!classDefinition: #MagmaWrongServerError category: 'Magma-Client-Exceptions'!
MagmaEnvironmentError subclass: #MagmaWrongServerError
	instanceVariableNames: 'correctServer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaWrongServerError class' category: 'Magma-Client-Exceptions'!
MagmaWrongServerError class
	instanceVariableNames: ''!

!classDefinition: #MagmaSessionLost category: 'Magma-Client-Exceptions'!
MaEnvironmentError subclass: #MagmaSessionLost
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaSessionLost class' category: 'Magma-Client-Exceptions'!
MagmaSessionLost class
	instanceVariableNames: ''!

!classDefinition: #MagmaSoftwareError category: 'Magma-Client-Exceptions'!
MaSoftwareError subclass: #MagmaSoftwareError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaSoftwareError class' category: 'Magma-Client-Exceptions'!
MagmaSoftwareError class
	instanceVariableNames: ''!

!classDefinition: #MagmaAlreadyInTransaction category: 'Magma-Client-Exceptions'!
MagmaSoftwareError subclass: #MagmaAlreadyInTransaction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaAlreadyInTransaction class' category: 'Magma-Client-Exceptions'!
MagmaAlreadyInTransaction class
	instanceVariableNames: ''!

!classDefinition: #MagmaInvalidReference category: 'Magma-Client-Exceptions'!
MagmaSoftwareError subclass: #MagmaInvalidReference
	instanceVariableNames: 'referencingBuffer oidOfMissingBuffer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaInvalidReference class' category: 'Magma-Client-Exceptions'!
MagmaInvalidReference class
	instanceVariableNames: ''!

!classDefinition: #MagmaUserError category: 'Magma-Client-Exceptions'!
MaUserError subclass: #MagmaUserError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaUserError class' category: 'Magma-Client-Exceptions'!
MagmaUserError class
	instanceVariableNames: ''!

!classDefinition: #MagmaDuplicateObjectInCollection category: 'Magma-Client-Exceptions'!
MagmaUserError subclass: #MagmaDuplicateObjectInCollection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaDuplicateObjectInCollection class' category: 'Magma-Client-Exceptions'!
MagmaDuplicateObjectInCollection class
	instanceVariableNames: ''!

!classDefinition: #MagmaEquivalentObjectNotInCollection category: 'Magma-Client-Exceptions'!
MagmaUserError subclass: #MagmaEquivalentObjectNotInCollection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaEquivalentObjectNotInCollection class' category: 'Magma-Client-Exceptions'!
MagmaEquivalentObjectNotInCollection class
	instanceVariableNames: ''!

!classDefinition: #MagmaInvalidIndexObject category: 'Magma-Client-Exceptions'!
MagmaUserError subclass: #MagmaInvalidIndexObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaInvalidIndexObject class' category: 'Magma-Client-Exceptions'!
MagmaInvalidIndexObject class
	instanceVariableNames: ''!

!classDefinition: #MagmaInvalidOid category: 'Magma-Client-Exceptions'!
MagmaUserError subclass: #MagmaInvalidOid
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaInvalidOid class' category: 'Magma-Client-Exceptions'!
MagmaInvalidOid class
	instanceVariableNames: ''!

!classDefinition: #MaOverflowError category: 'Magma-Client-Exceptions'!
MaError subclass: #MaOverflowError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MaOverflowError class' category: 'Magma-Client-Exceptions'!
MaOverflowError class
	instanceVariableNames: ''!

!classDefinition: #MaUnreadableRecoveryRecord category: 'Magma-Client-Exceptions'!
MaError subclass: #MaUnreadableRecoveryRecord
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MaUnreadableRecoveryRecord class' category: 'Magma-Client-Exceptions'!
MaUnreadableRecoveryRecord class
	instanceVariableNames: ''!

!classDefinition: #MagmaCommitError category: 'Magma-Client-Exceptions'!
MaError subclass: #MagmaCommitError
	instanceVariableNames: 'result'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaCommitError class' category: 'Magma-Client-Exceptions'!
MagmaCommitError class
	instanceVariableNames: ''!

!classDefinition: #MagmaCommitConflictError category: 'Magma-Client-Exceptions'!
MagmaCommitError subclass: #MagmaCommitConflictError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaCommitConflictError class' category: 'Magma-Client-Exceptions'!
MagmaCommitConflictError class
	instanceVariableNames: ''!

!classDefinition: #MagmaTooFarBehindConflict category: 'Magma-Client-Exceptions'!
MagmaCommitConflictError subclass: #MagmaTooFarBehindConflict
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaTooFarBehindConflict class' category: 'Magma-Client-Exceptions'!
MagmaTooFarBehindConflict class
	instanceVariableNames: ''!

!classDefinition: #MagmaNoTransactionError category: 'Magma-Client-Exceptions'!
MagmaCommitError subclass: #MagmaNoTransactionError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaNoTransactionError class' category: 'Magma-Client-Exceptions'!
MagmaNoTransactionError class
	instanceVariableNames: ''!

!classDefinition: #MagmaStatOverflowCommitError category: 'Magma-Client-Exceptions'!
MagmaCommitError subclass: #MagmaStatOverflowCommitError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaStatOverflowCommitError class' category: 'Magma-Client-Exceptions'!
MagmaStatOverflowCommitError class
	instanceVariableNames: ''!

!classDefinition: #MagmaRepairFailure category: 'Magma-Client-Exceptions'!
MaError subclass: #MagmaRepairFailure
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaRepairFailure class' category: 'Magma-Client-Exceptions'!
MagmaRepairFailure class
	instanceVariableNames: ''!

!classDefinition: #MagmaWarning category: 'Magma-Client-Exceptions'!
MaWarning subclass: #MagmaWarning
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaWarning class' category: 'Magma-Client-Exceptions'!
MagmaWarning class
	instanceVariableNames: ''!

!classDefinition: #MagmaTruncationWarning category: 'Magma-Client-Exceptions'!
MagmaWarning subclass: #MagmaTruncationWarning
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaTruncationWarning class' category: 'Magma-Client-Exceptions'!
MagmaTruncationWarning class
	instanceVariableNames: ''!

!classDefinition: #MagmaNotification category: 'Magma-Client-Exceptions'!
MaClientServerNotification subclass: #MagmaNotification
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaNotification class' category: 'Magma-Client-Exceptions'!
MagmaNotification class
	instanceVariableNames: ''!

!classDefinition: #MagmaLinkChange category: 'Magma-Client-Exceptions'!
MagmaNotification subclass: #MagmaLinkChange
	instanceVariableNames: 'oldLink newLink'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaLinkChange class' category: 'Magma-Client-Exceptions'!
MagmaLinkChange class
	instanceVariableNames: ''!

!classDefinition: #MagmaNodeUpdate category: 'Magma-Client-Exceptions'!
MagmaNotification subclass: #MagmaNodeUpdate
	instanceVariableNames: 'add remove setPrimary'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaNodeUpdate class' category: 'Magma-Client-Exceptions'!
MagmaNodeUpdate class
	instanceVariableNames: ''!

!classDefinition: #MagmaProxyMaterialization category: 'Magma-Client-Exceptions'!
MagmaNotification subclass: #MagmaProxyMaterialization
	instanceVariableNames: 'materializedObject'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaProxyMaterialization class' category: 'Magma-Client-Exceptions'!
MagmaProxyMaterialization class
	instanceVariableNames: ''!

!classDefinition: #MagmaRepairNotification category: 'Magma-Client-Exceptions'!
MagmaNotification subclass: #MagmaRepairNotification
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaRepairNotification class' category: 'Magma-Client-Exceptions'!
MagmaRepairNotification class
	instanceVariableNames: ''!

!classDefinition: #MagmaServerLowOnMemoryNotification category: 'Magma-Client-Exceptions'!
MagmaNotification subclass: #MagmaServerLowOnMemoryNotification
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaServerLowOnMemoryNotification class' category: 'Magma-Client-Exceptions'!
MagmaServerLowOnMemoryNotification class
	instanceVariableNames: ''!

!classDefinition: #MagmaUserRequirementNotification category: 'Magma-Client-Exceptions'!
MagmaNotification subclass: #MagmaUserRequirementNotification
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaUserRequirementNotification class' category: 'Magma-Client-Exceptions'!
MagmaUserRequirementNotification class
	instanceVariableNames: ''!

!classDefinition: #MagmaUserRequiredNotification category: 'Magma-Client-Exceptions'!
MagmaUserRequirementNotification subclass: #MagmaUserRequiredNotification
	instanceVariableNames: 'session'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaUserRequiredNotification class' category: 'Magma-Client-Exceptions'!
MagmaUserRequiredNotification class
	instanceVariableNames: ''!

!classDefinition: #MagmaSolHashFrame category: 'Magma-Client-Backend'!
SOLHashFrame subclass: #MagmaSolHashFrame
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaSolHashFrame class' category: 'Magma-Client-Backend'!
MagmaSolHashFrame class
	instanceVariableNames: ''!

!classDefinition: #MagmaSolHashSegment category: 'Magma-Client-Backend'!
SOLHashSegment subclass: #MagmaSolHashSegment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaSolHashSegment class' category: 'Magma-Client-Backend'!
MagmaSolHashSegment class
	instanceVariableNames: ''!

!classDefinition: #MagmaSolHashTable category: 'Magma-Client'!
SOLHashTable subclass: #MagmaSolHashTable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client'!
!classDefinition: 'MagmaSolHashTable class' category: 'Magma-Client'!
MagmaSolHashTable class
	instanceVariableNames: ''!

!classDefinition: #MagmaBufferPositionMap category: 'Magma-Client-Backend'!
MaBufferPositionMap subclass: #MagmaBufferPositionMap
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaBufferPositionMap class' category: 'Magma-Client-Backend'!
MagmaBufferPositionMap class
	instanceVariableNames: ''!

!classDefinition: #MagmaClassIdManager category: 'Magma-Client-Backend'!
MaClassIdManager subclass: #MagmaClassIdManager
	instanceVariableNames: 'largeCollectionIds'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaClassIdManager class' category: 'Magma-Client-Backend'!
MagmaClassIdManager class
	instanceVariableNames: ''!

!classDefinition: #MagmaOidManager category: 'Magma-Client-Backend'!
MaOidManager subclass: #MagmaOidManager
	instanceVariableNames: 'newObjects newOids statistics'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaOidManager class' category: 'Magma-Client-Backend'!
MagmaOidManager class
	instanceVariableNames: ''!

!classDefinition: #MagmaDataRepair category: 'Magma-Client'!
MaAttributableObject subclass: #MagmaDataRepair
	instanceVariableNames: 'location session startBlock enumerateBlock checkBlock doBlock repairBlock mode count lastCommit strongReferences'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client'!
!classDefinition: 'MagmaDataRepair class' category: 'Magma-Client'!
MagmaDataRepair class
	instanceVariableNames: ''!

!classDefinition: #MagmaPreferences category: 'Magma-Client'!
MaAttributableObject subclass: #MagmaPreferences
	instanceVariableNames: ''
	classVariableNames: 'Debug DebugProxies ShowStatusViaCursor'
	poolDictionaries: ''
	category: 'Magma-Client'!
!classDefinition: 'MagmaPreferences class' category: 'Magma-Client'!
MagmaPreferences class
	instanceVariableNames: ''!

!classDefinition: #MagmaRepositoryDefinition category: 'Magma-Client'!
MaAttributableObject subclass: #MagmaRepositoryDefinition
	instanceVariableNames: 'magmaId classDefinitions symbols maximumNumberOfChallengers codeBase links locked'
	classVariableNames: 'RunningTestCases'
	poolDictionaries: ''
	category: 'Magma-Client'!
!classDefinition: 'MagmaRepositoryDefinition class' category: 'Magma-Client'!
MagmaRepositoryDefinition class
	instanceVariableNames: ''!

!classDefinition: #MagmaRepositoryRequest category: 'Magma-Client-Backend'!
MaClientServerRequest subclass: #MagmaRepositoryRequest
	instanceVariableNames: 'sessionId console repositoryController failedLocation'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaRepositoryRequest class' category: 'Magma-Client-Backend'!
MagmaRepositoryRequest class
	instanceVariableNames: ''!

!classDefinition: #MaAbortTransactionRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MaAbortTransactionRequest
	instanceVariableNames: 'additionalBuffers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaAbortTransactionRequest class' category: 'Magma-Client-Backend'!
MaAbortTransactionRequest class
	instanceVariableNames: ''!

!classDefinition: #MaAbstractReadRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MaAbstractReadRequest
	instanceVariableNames: 'readStrategy requiredProgress'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaAbstractReadRequest class' category: 'Magma-Client-Backend'!
MaAbstractReadRequest class
	instanceVariableNames: ''!

!classDefinition: #MaAnchorRequest category: 'Magma-Client-Backend'!
MaAbstractReadRequest subclass: #MaAnchorRequest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaAnchorRequest class' category: 'Magma-Client-Backend'!
MaAnchorRequest class
	instanceVariableNames: ''!

!classDefinition: #MaLargeCollectionSegmentRequest category: 'Magma-Client-Backend'!
MaAbstractReadRequest subclass: #MaLargeCollectionSegmentRequest
	instanceVariableNames: 'quantity collectionOid'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaLargeCollectionSegmentRequest class' category: 'Magma-Client-Backend'!
MaLargeCollectionSegmentRequest class
	instanceVariableNames: ''!

!classDefinition: #MaRefreshSegmentRequest category: 'Magma-Client-Backend'!
MaLargeCollectionSegmentRequest subclass: #MaRefreshSegmentRequest
	instanceVariableNames: 'segment expression loadObjects exceptions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaRefreshSegmentRequest class' category: 'Magma-Client-Backend'!
MaRefreshSegmentRequest class
	instanceVariableNames: ''!

!classDefinition: #MaSegmentByIndexRequest category: 'Magma-Client-Backend'!
MaLargeCollectionSegmentRequest subclass: #MaSegmentByIndexRequest
	instanceVariableNames: 'lowIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaSegmentByIndexRequest class' category: 'Magma-Client-Backend'!
MaSegmentByIndexRequest class
	instanceVariableNames: ''!

!classDefinition: #MaReadMultipleRequest category: 'Magma-Client-Backend'!
MaAbstractReadRequest subclass: #MaReadMultipleRequest
	instanceVariableNames: 'oids'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaReadMultipleRequest class' category: 'Magma-Client-Backend'!
MaReadMultipleRequest class
	instanceVariableNames: ''!

!classDefinition: #MaReadRequest category: 'Magma-Client-Backend'!
MaAbstractReadRequest subclass: #MaReadRequest
	instanceVariableNames: 'oid'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaReadRequest class' category: 'Magma-Client-Backend'!
MaReadRequest class
	instanceVariableNames: ''!

!classDefinition: #MaCommitLogRecordRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MaCommitLogRecordRequest
	instanceVariableNames: 'startingCommitNumber endingCommitNumber'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaCommitLogRecordRequest class' category: 'Magma-Client-Backend'!
MaCommitLogRecordRequest class
	instanceVariableNames: ''!

!classDefinition: #MaWarmBackupUpdateRequest category: 'Magma-Client-Backend'!
MaCommitLogRecordRequest subclass: #MaWarmBackupUpdateRequest
	instanceVariableNames: 'requestingLocation'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaWarmBackupUpdateRequest class' category: 'Magma-Client-Backend'!
MaWarmBackupUpdateRequest class
	instanceVariableNames: ''!

!classDefinition: #MaCommitRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MaCommitRequest
	instanceVariableNames: 'package beginAnother'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaCommitRequest class' category: 'Magma-Client-Backend'!
MaCommitRequest class
	instanceVariableNames: ''!

!classDefinition: #MaDownloadCodeRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MaDownloadCodeRequest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaDownloadCodeRequest class' category: 'Magma-Client-Backend'!
MaDownloadCodeRequest class
	instanceVariableNames: ''!

!classDefinition: #MaGetMcLockerRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MaGetMcLockerRequest
	instanceVariableNames: 'mcOid'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaGetMcLockerRequest class' category: 'Magma-Client-Backend'!
MaGetMcLockerRequest class
	instanceVariableNames: ''!

!classDefinition: #MaLargeCollectionSizeRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MaLargeCollectionSizeRequest
	instanceVariableNames: 'collectionOid'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaLargeCollectionSizeRequest class' category: 'Magma-Client-Backend'!
MaLargeCollectionSizeRequest class
	instanceVariableNames: ''!

!classDefinition: #MaKeyIntervalInfoRequest category: 'Magma-Client-Backend'!
MaLargeCollectionSizeRequest subclass: #MaKeyIntervalInfoRequest
	instanceVariableNames: 'attribute lowKey highKey'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaKeyIntervalInfoRequest class' category: 'Magma-Client-Backend'!
MaKeyIntervalInfoRequest class
	instanceVariableNames: ''!

!classDefinition: #MaLoadFromReaderRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MaLoadFromReaderRequest
	instanceVariableNames: 'commitPackage expression sourceCollectionOid distinct'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaLoadFromReaderRequest class' category: 'Magma-Client-Backend'!
MaLoadFromReaderRequest class
	instanceVariableNames: ''!

!classDefinition: #MaLoadProgressRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MaLoadProgressRequest
	instanceVariableNames: 'collectionOid'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaLoadProgressRequest class' category: 'Magma-Client-Backend'!
MaLoadProgressRequest class
	instanceVariableNames: ''!

!classDefinition: #MaPrimitiveAttributesRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MaPrimitiveAttributesRequest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaPrimitiveAttributesRequest class' category: 'Magma-Client-Backend'!
MaPrimitiveAttributesRequest class
	instanceVariableNames: ''!

!classDefinition: #MaRawBufferRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MaRawBufferRequest
	instanceVariableNames: 'oid'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaRawBufferRequest class' category: 'Magma-Client-Backend'!
MaRawBufferRequest class
	instanceVariableNames: ''!

!classDefinition: #MaReaderTrunkRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MaReaderTrunkRequest
	instanceVariableNames: 'collectionOid expression'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaReaderTrunkRequest class' category: 'Magma-Client-Backend'!
MaReaderTrunkRequest class
	instanceVariableNames: ''!

!classDefinition: #MaRefreshRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MaRefreshRequest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaRefreshRequest class' category: 'Magma-Client-Backend'!
MaRefreshRequest class
	instanceVariableNames: ''!

!classDefinition: #MaRemoveSecondaryLocationRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MaRemoveSecondaryLocationRequest
	instanceVariableNames: 'locationToRemove'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaRemoveSecondaryLocationRequest class' category: 'Magma-Client-Backend'!
MaRemoveSecondaryLocationRequest class
	instanceVariableNames: ''!

!classDefinition: #MaRepositoryConnectionRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MaRepositoryConnectionRequest
	instanceVariableNames: 'userId magmaVersion commitNumber uuid'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaRepositoryConnectionRequest class' category: 'Magma-Client-Backend'!
MaRepositoryConnectionRequest class
	instanceVariableNames: ''!

!classDefinition: #MaRepositoryDisconnectRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MaRepositoryDisconnectRequest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaRepositoryDisconnectRequest class' category: 'Magma-Client-Backend'!
MaRepositoryDisconnectRequest class
	instanceVariableNames: ''!

!classDefinition: #MaSaveAndExitImageRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MaSaveAndExitImageRequest
	instanceVariableNames: 'save exit'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaSaveAndExitImageRequest class' category: 'Magma-Client-Backend'!
MaSaveAndExitImageRequest class
	instanceVariableNames: ''!

!classDefinition: #MaServerPerformRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MaServerPerformRequest
	instanceVariableNames: 'selector arguments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaServerPerformRequest class' category: 'Magma-Client-Backend'!
MaServerPerformRequest class
	instanceVariableNames: ''!

!classDefinition: #MaTransactionRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MaTransactionRequest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaTransactionRequest class' category: 'Magma-Client-Backend'!
MaTransactionRequest class
	instanceVariableNames: ''!

!classDefinition: #MaWriteRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MaWriteRequest
	instanceVariableNames: 'commitLogRecord'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaWriteRequest class' category: 'Magma-Client-Backend'!
MaWriteRequest class
	instanceVariableNames: ''!

!classDefinition: #MagmaBeWarmBackupRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MagmaBeWarmBackupRequest
	instanceVariableNames: 'primaryLocation'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaBeWarmBackupRequest class' category: 'Magma-Client-Backend'!
MagmaBeWarmBackupRequest class
	instanceVariableNames: ''!

!classDefinition: #MagmaConnectionsRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MagmaConnectionsRequest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaConnectionsRequest class' category: 'Magma-Client-Backend'!
MagmaConnectionsRequest class
	instanceVariableNames: ''!

!classDefinition: #MagmaEnsureCorrectNodeConfiguration category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MagmaEnsureCorrectNodeConfiguration
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaEnsureCorrectNodeConfiguration class' category: 'Magma-Client-Backend'!
MagmaEnsureCorrectNodeConfiguration class
	instanceVariableNames: ''!

!classDefinition: #MagmaFullBackupRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MagmaFullBackupRequest
	instanceVariableNames: 'serverPath'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaFullBackupRequest class' category: 'Magma-Client-Backend'!
MagmaFullBackupRequest class
	instanceVariableNames: ''!

!classDefinition: #MagmaIdRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MagmaIdRequest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaIdRequest class' category: 'Magma-Client-Backend'!
MagmaIdRequest class
	instanceVariableNames: ''!

!classDefinition: #MagmaNoteUnreachableServer category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MagmaNoteUnreachableServer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaNoteUnreachableServer class' category: 'Magma-Client-Backend'!
MagmaNoteUnreachableServer class
	instanceVariableNames: ''!

!classDefinition: #MagmaPathNameRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MagmaPathNameRequest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaPathNameRequest class' category: 'Magma-Client-Backend'!
MagmaPathNameRequest class
	instanceVariableNames: ''!

!classDefinition: #MagmaReleaseReaderRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MagmaReleaseReaderRequest
	instanceVariableNames: 'collectionOid'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaReleaseReaderRequest class' category: 'Magma-Client-Backend'!
MagmaReleaseReaderRequest class
	instanceVariableNames: ''!

!classDefinition: #MagmaRequestSwapPrimaryDutyRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MagmaRequestSwapPrimaryDutyRequest
	instanceVariableNames: 'newPrimary'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaRequestSwapPrimaryDutyRequest class' category: 'Magma-Client-Backend'!
MagmaRequestSwapPrimaryDutyRequest class
	instanceVariableNames: ''!

!classDefinition: #MagmaServerStatisticsRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MagmaServerStatisticsRequest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaServerStatisticsRequest class' category: 'Magma-Client-Backend'!
MagmaServerStatisticsRequest class
	instanceVariableNames: ''!

!classDefinition: #MagmaSwapPrimaryDutyRequest category: 'Magma-Client-Backend'!
MagmaRepositoryRequest subclass: #MagmaSwapPrimaryDutyRequest
	instanceVariableNames: 'newPrimary commitNumber branchCode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaSwapPrimaryDutyRequest class' category: 'Magma-Client-Backend'!
MagmaSwapPrimaryDutyRequest class
	instanceVariableNames: ''!

!classDefinition: #MaImmutabilityStrategy category: 'Magma-Client'!
MaObject subclass: #MaImmutabilityStrategy
	instanceVariableNames: 'specs immutables classes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client'!
!classDefinition: 'MaImmutabilityStrategy class' category: 'Magma-Client'!
MaImmutabilityStrategy class
	instanceVariableNames: ''!

!classDefinition: #MaRootAnchor category: 'Magma-Client'!
MaObject subclass: #MaRootAnchor
	instanceVariableNames: 'root definition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client'!
!classDefinition: 'MaRootAnchor class' category: 'Magma-Client'!
MaRootAnchor class
	instanceVariableNames: ''!

!classDefinition: #MagmaClientConnection category: 'Magma-Client'!
MaObject subclass: #MagmaClientConnection
	instanceVariableNames: 'sessionId userId maximumNumberOfChallengers currentReadStrategy maClientConnection isSystem challengingBytes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client'!
!classDefinition: 'MagmaClientConnection class' category: 'Magma-Client'!
MagmaClientConnection class
	instanceVariableNames: ''!

!classDefinition: #MagmaCounter category: 'Magma-Client'!
MaObject subclass: #MagmaCounter
	instanceVariableNames: 'shared delta'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client'!
!classDefinition: 'MagmaCounter class' category: 'Magma-Client'!
MagmaCounter class
	instanceVariableNames: ''!

!classDefinition: #MagmaEvent category: 'Magma-Client'!
MaObject subclass: #MagmaEvent
	instanceVariableNames: 'session'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client'!
!classDefinition: 'MagmaEvent class' category: 'Magma-Client'!
MagmaEvent class
	instanceVariableNames: ''!

!classDefinition: #MagmaRefreshEvent category: 'Magma-Client'!
MagmaEvent subclass: #MagmaRefreshEvent
	instanceVariableNames: 'object buffer restoreData'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client'!
!classDefinition: 'MagmaRefreshEvent class' category: 'Magma-Client'!
MagmaRefreshEvent class
	instanceVariableNames: ''!

!classDefinition: #MagmaId category: 'Magma-Client'!
MaObject subclass: #MagmaId
	instanceVariableNames: 'uuid name description contact node'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client'!
!classDefinition: 'MagmaId class' category: 'Magma-Client'!
MagmaId class
	instanceVariableNames: ''!

!classDefinition: #MagmaLocation category: 'Magma-Client'!
MaObject subclass: #MagmaLocation
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client'!
!classDefinition: 'MagmaLocation class' category: 'Magma-Client'!
MagmaLocation class
	instanceVariableNames: ''!

!classDefinition: #MagmaLocalLocation category: 'Magma-Client'!
MagmaLocation subclass: #MagmaLocalLocation
	instanceVariableNames: 'path'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client'!
!classDefinition: 'MagmaLocalLocation class' category: 'Magma-Client'!
MagmaLocalLocation class
	instanceVariableNames: ''!

!classDefinition: #MagmaRemoteLocation category: 'Magma-Client'!
MagmaLocation subclass: #MagmaRemoteLocation
	instanceVariableNames: 'location'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client'!
!classDefinition: 'MagmaRemoteLocation class' category: 'Magma-Client'!
MagmaRemoteLocation class
	instanceVariableNames: ''!

!classDefinition: #MagmaNode category: 'Magma-Client'!
MaObject subclass: #MagmaNode
	instanceVariableNames: 'locations sessions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client'!
!classDefinition: 'MagmaNode class' category: 'Magma-Client'!
MagmaNode class
	instanceVariableNames: ''!

!classDefinition: #MagmaPreallocatedDictionary category: 'Magma-Client'!
MaObject subclass: #MagmaPreallocatedDictionary
	instanceVariableNames: 'array tally maxBuckets collisions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client'!
!classDefinition: 'MagmaPreallocatedDictionary class' category: 'Magma-Client'!
MagmaPreallocatedDictionary class
	instanceVariableNames: ''!

!classDefinition: #MagmaRepositoryCodeBase category: 'Magma-Client'!
MaObject subclass: #MagmaRepositoryCodeBase
	instanceVariableNames: 'changeSets classes repositoryModel'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client'!
!classDefinition: 'MagmaRepositoryCodeBase class' category: 'Magma-Client'!
MagmaRepositoryCodeBase class
	instanceVariableNames: ''!

!classDefinition: #MagmaSession category: 'Magma-Client'!
MaObject subclass: #MagmaSession
	instanceVariableNames: 'id user serializer transaction readStrategy definition preferences anchor transactionLevel strongReferences cache guard statistics primaryLink secondaryLink allowFailover oidCount lastClean requiredProgress proxies immutabilityStrategy'
	classVariableNames: 'CommitLogSerializer ConnectedSessions'
	poolDictionaries: 'MaCoreConstants'
	category: 'Magma-Client'!
!classDefinition: 'MagmaSession class' category: 'Magma-Client'!
MagmaSession class
	instanceVariableNames: ''!

!classDefinition: #MagmaUser category: 'Magma-Client'!
MaObject subclass: #MagmaUser
	instanceVariableNames: 'id'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client'!
!classDefinition: 'MagmaUser class' category: 'Magma-Client'!
MagmaUser class
	instanceVariableNames: ''!

!classDefinition: #MagmaCommitConflict category: 'Magma-Client-Exceptions'!
MaObject subclass: #MagmaCommitConflict
	instanceVariableNames: 'connection conflictingOids conflictingObjects'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Exceptions'!
!classDefinition: 'MagmaCommitConflict class' category: 'Magma-Client-Exceptions'!
MagmaCommitConflict class
	instanceVariableNames: ''!

!classDefinition: #MagmaCollectionIndex category: 'Magma-Client-MagmaCollections'!
MaObject subclass: #MagmaCollectionIndex
	instanceVariableNames: 'attribute recordSize'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-MagmaCollections'!
!classDefinition: 'MagmaCollectionIndex class' category: 'Magma-Client-MagmaCollections'!
MagmaCollectionIndex class
	instanceVariableNames: ''!

!classDefinition: #MaByteSequenceIndex category: 'Magma-Client-MagmaCollections'!
MagmaCollectionIndex subclass: #MaByteSequenceIndex
	instanceVariableNames: 'keySize meaningfulCharacters'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-MagmaCollections'!
!classDefinition: 'MaByteSequenceIndex class' category: 'Magma-Client-MagmaCollections'!
MaByteSequenceIndex class
	instanceVariableNames: ''!

!classDefinition: #MaAsciiStringIndex category: 'Magma-Client-MagmaCollections'!
MaByteSequenceIndex subclass: #MaAsciiStringIndex
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-MagmaCollections'!
!classDefinition: 'MaAsciiStringIndex class' category: 'Magma-Client-MagmaCollections'!
MaAsciiStringIndex class
	instanceVariableNames: ''!

!classDefinition: #MaSearchStringIndex category: 'Magma-Client-MagmaCollections'!
MaByteSequenceIndex subclass: #MaSearchStringIndex
	instanceVariableNames: 'lowChar highChar'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-MagmaCollections'!
!classDefinition: 'MaSearchStringIndex class' category: 'Magma-Client-MagmaCollections'!
MaSearchStringIndex class
	instanceVariableNames: ''!

!classDefinition: #MaKeywordIndex category: 'Magma-Client-MagmaCollections'!
MaSearchStringIndex subclass: #MaKeywordIndex
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-MagmaCollections'!
!classDefinition: 'MaKeywordIndex class' category: 'Magma-Client-MagmaCollections'!
MaKeywordIndex class
	instanceVariableNames: ''!

!classDefinition: #MaDateAndTimeIndex category: 'Magma-Client-MagmaCollections'!
MagmaCollectionIndex subclass: #MaDateAndTimeIndex
	instanceVariableNames: 'epoch duration precision keySize'
	classVariableNames: ''
	poolDictionaries: 'ChronologyConstants'
	category: 'Magma-Client-MagmaCollections'!
!classDefinition: 'MaDateAndTimeIndex class' category: 'Magma-Client-MagmaCollections'!
MaDateAndTimeIndex class
	instanceVariableNames: ''!

!classDefinition: #MaDateIndex category: 'Magma-Client-MagmaCollections'!
MagmaCollectionIndex subclass: #MaDateIndex
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-MagmaCollections'!
!classDefinition: 'MaDateIndex class' category: 'Magma-Client-MagmaCollections'!
MaDateIndex class
	instanceVariableNames: ''!

!classDefinition: #MaFloatIndex category: 'Magma-Client-MagmaCollections'!
MagmaCollectionIndex subclass: #MaFloatIndex
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-MagmaCollections'!
!classDefinition: 'MaFloatIndex class' category: 'Magma-Client-MagmaCollections'!
MaFloatIndex class
	instanceVariableNames: ''!

!classDefinition: #MaIntegerIndex category: 'Magma-Client-MagmaCollections'!
MagmaCollectionIndex subclass: #MaIntegerIndex
	instanceVariableNames: 'keySize'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-MagmaCollections'!
!classDefinition: 'MaIntegerIndex class' category: 'Magma-Client-MagmaCollections'!
MaIntegerIndex class
	instanceVariableNames: ''!

!classDefinition: #MaUUIDIndex category: 'Magma-Client-MagmaCollections'!
MagmaCollectionIndex subclass: #MaUUIDIndex
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-MagmaCollections'!
!classDefinition: 'MaUUIDIndex class' category: 'Magma-Client-MagmaCollections'!
MaUUIDIndex class
	instanceVariableNames: ''!

!classDefinition: #MagmaCollectionReader category: 'Magma-Client-MagmaCollections'!
MaObject subclass: #MagmaCollectionReader
	instanceVariableNames: 'collection expression trunk segment pageSize reversed'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-MagmaCollections'!
!classDefinition: 'MagmaCollectionReader class' category: 'Magma-Client-MagmaCollections'!
MagmaCollectionReader class
	instanceVariableNames: ''!

!classDefinition: #MagmaCollectionFilteredReader category: 'Magma-Client-MagmaCollections'!
MagmaCollectionReader subclass: #MagmaCollectionFilteredReader
	instanceVariableNames: 'segments localAdditionsSegment'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-MagmaCollections'!
!classDefinition: 'MagmaCollectionFilteredReader class' category: 'Magma-Client-MagmaCollections'!
MagmaCollectionFilteredReader class
	instanceVariableNames: ''!

!classDefinition: #MagmaCollectionOptimizedReader category: 'Magma-Client-MagmaCollections'!
MagmaCollectionReader subclass: #MagmaCollectionOptimizedReader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-MagmaCollections'!
!classDefinition: 'MagmaCollectionOptimizedReader class' category: 'Magma-Client-MagmaCollections'!
MagmaCollectionOptimizedReader class
	instanceVariableNames: ''!

!classDefinition: #MagmaSetReader category: 'Magma-Client-Backend'!
MagmaCollectionOptimizedReader subclass: #MagmaSetReader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaSetReader class' category: 'Magma-Client-Backend'!
MagmaSetReader class
	instanceVariableNames: ''!

!classDefinition: #MagmaLargeCollection category: 'Magma-Client-MagmaCollections'!
MaObject subclass: #MagmaLargeCollection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-MagmaCollections'!
!classDefinition: 'MagmaLargeCollection class' category: 'Magma-Client-MagmaCollections'!
MagmaLargeCollection class
	instanceVariableNames: ''!

!classDefinition: #MagmaDictionary category: 'Magma-Client'!
MagmaLargeCollection subclass: #MagmaDictionary
	instanceVariableNames: 'table'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client'!
!classDefinition: 'MagmaDictionary class' category: 'Magma-Client'!
MagmaDictionary class
	instanceVariableNames: ''!

!classDefinition: #MagmaHashTable category: 'Magma-Client'!
MagmaLargeCollection subclass: #MagmaHashTable
	instanceVariableNames: 'table index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client'!
!classDefinition: 'MagmaHashTable class' category: 'Magma-Client'!
MagmaHashTable class
	instanceVariableNames: ''!

!classDefinition: #MagmaCoreLargeCollection category: 'Magma-Client-MagmaCollections'!
MagmaLargeCollection subclass: #MagmaCoreLargeCollection
	instanceVariableNames: 'session changes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-MagmaCollections'!
!classDefinition: 'MagmaCoreLargeCollection class' category: 'Magma-Client-MagmaCollections'!
MagmaCoreLargeCollection class
	instanceVariableNames: ''!

!classDefinition: #MagmaArray category: 'Magma-Client'!
MagmaCoreLargeCollection subclass: #MagmaArray
	instanceVariableNames: 'segment pageSize'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client'!
!classDefinition: 'MagmaArray class' category: 'Magma-Client'!
MagmaArray class
	instanceVariableNames: ''!

!classDefinition: #MagmaCollection category: 'Magma-Client-MagmaCollections'!
MagmaCoreLargeCollection subclass: #MagmaCollection
	instanceVariableNames: 'indexes descriptions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-MagmaCollections'!
!classDefinition: 'MagmaCollection class' category: 'Magma-Client-MagmaCollections'!
MagmaCollection class
	instanceVariableNames: ''!

!classDefinition: #MagmaSet category: 'Magma-Client-MagmaCollections'!
MagmaCollection subclass: #MagmaSet
	instanceVariableNames: 'equivalenceAttributes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-MagmaCollections'!
!classDefinition: 'MagmaSet class' category: 'Magma-Client-MagmaCollections'!
MagmaSet class
	instanceVariableNames: ''!

!classDefinition: #MagmaOldDictionary category: 'Magma-Client-MagmaCollections'!
MagmaSet subclass: #MagmaOldDictionary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-MagmaCollections'!
!classDefinition: 'MagmaOldDictionary class' category: 'Magma-Client-MagmaCollections'!
MagmaOldDictionary class
	instanceVariableNames: ''!

!classDefinition: #MaBasicReadStrategy category: 'Magma-Client-Backend'!
MaObject subclass: #MaBasicReadStrategy
	instanceVariableNames: 'minimumDepth isNew'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaBasicReadStrategy class' category: 'Magma-Client-Backend'!
MaBasicReadStrategy class
	instanceVariableNames: ''!

!classDefinition: #MaReadStrategy category: 'Magma-Client'!
MaBasicReadStrategy subclass: #MaReadStrategy
	instanceVariableNames: 'depths depthSpecifications'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client'!
!classDefinition: 'MaReadStrategy class' category: 'Magma-Client'!
MaReadStrategy class
	instanceVariableNames: ''!

!classDefinition: #MaChangedKeySpecification category: 'Magma-Client-Backend'!
MaObject subclass: #MaChangedKeySpecification
	instanceVariableNames: 'object attribute oldHashValues newHashValues'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaChangedKeySpecification class' category: 'Magma-Client-Backend'!
MaChangedKeySpecification class
	instanceVariableNames: ''!

!classDefinition: #MaCommitPackage category: 'Magma-Client-Backend'!
MaObject subclass: #MaCommitPackage
	instanceVariableNames: 'objects allLargeCollectionChanges'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaCommitPackage class' category: 'Magma-Client-Backend'!
MaCommitPackage class
	instanceVariableNames: ''!

!classDefinition: #MaQueryTrunk category: 'Magma-Client-Backend'!
MaObject subclass: #MaQueryTrunk
	instanceVariableNames: 'clauses'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaQueryTrunk class' category: 'Magma-Client-Backend'!
MaQueryTrunk class
	instanceVariableNames: ''!

!classDefinition: #MaRecoveryRecord category: 'Magma-Client-Backend'!
MaObject subclass: #MaRecoveryRecord
	instanceVariableNames: 'byteArray'
	classVariableNames: 'ReusableSha'
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaRecoveryRecord class' category: 'Magma-Client-Backend'!
MaRecoveryRecord class
	instanceVariableNames: ''!

!classDefinition: #MaCommitLogRecord category: 'Magma-Client-Backend'!
MaRecoveryRecord subclass: #MaCommitLogRecord
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaCommitLogRecord class' category: 'Magma-Client-Backend'!
MaCommitLogRecord class
	instanceVariableNames: ''!

!classDefinition: #MaStorageForMagmaSession category: 'Magma-Client-Backend'!
MaObject subclass: #MaStorageForMagmaSession
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaStorageForMagmaSession class' category: 'Magma-Client-Backend'!
MaStorageForMagmaSession class
	instanceVariableNames: ''!

!classDefinition: #MaTerm category: 'Magma-Client-Backend'!
MaObject subclass: #MaTerm
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaTerm class' category: 'Magma-Client-Backend'!
MaTerm class
	instanceVariableNames: ''!

!classDefinition: #MagmaTerm category: 'Magma-Client-Backend'!
MaTerm subclass: #MagmaTerm
	instanceVariableNames: 'reader'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaTerm class' category: 'Magma-Client-Backend'!
MagmaTerm class
	instanceVariableNames: ''!

!classDefinition: #MagmaClause category: 'Magma-Client-Backend'!
MagmaTerm subclass: #MagmaClause
	instanceVariableNames: 'attribute lowKey highKey'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaClause class' category: 'Magma-Client-Backend'!
MagmaClause class
	instanceVariableNames: ''!

!classDefinition: #MaQueryTrunkClause category: 'Magma-Client-Backend'!
MagmaClause subclass: #MaQueryTrunkClause
	instanceVariableNames: 'lastKnownSize'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaQueryTrunkClause class' category: 'Magma-Client-Backend'!
MaQueryTrunkClause class
	instanceVariableNames: ''!

!classDefinition: #MagmaExpression category: 'Magma-Client-Backend'!
MagmaTerm subclass: #MagmaExpression
	instanceVariableNames: 'operator terms'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaExpression class' category: 'Magma-Client-Backend'!
MagmaExpression class
	instanceVariableNames: ''!

!classDefinition: #MaTransactionLogEntry category: 'Magma-Client-Backend'!
MaObject subclass: #MaTransactionLogEntry
	instanceVariableNames: 'id result challengingEntries serverNotifications'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaTransactionLogEntry class' category: 'Magma-Client-Backend'!
MaTransactionLogEntry class
	instanceVariableNames: ''!

!classDefinition: #MaCommitLogEntry category: 'Magma-Client-Backend'!
MaTransactionLogEntry subclass: #MaCommitLogEntry
	instanceVariableNames: 'commitPackage committed didCommitSpecialOid'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaCommitLogEntry class' category: 'Magma-Client-Backend'!
MaCommitLogEntry class
	instanceVariableNames: ''!

!classDefinition: #MagmaIndexDescription category: 'Magma-Client-Backend'!
MaObject subclass: #MagmaIndexDescription
	instanceVariableNames: 'attribute keySize recordSize'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaIndexDescription class' category: 'Magma-Client-Backend'!
MagmaIndexDescription class
	instanceVariableNames: ''!

!classDefinition: #MagmaLargeCollectionChanges category: 'Magma-Client-Backend'!
MaObject subclass: #MagmaLargeCollectionChanges
	instanceVariableNames: 'collectionOid changes isNewCollection collection'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaLargeCollectionChanges class' category: 'Magma-Client-Backend'!
MagmaLargeCollectionChanges class
	instanceVariableNames: ''!

!classDefinition: #MagmaArrayChanges category: 'Magma-Client-Backend'!
MagmaLargeCollectionChanges subclass: #MagmaArrayChanges
	instanceVariableNames: 'maxIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaArrayChanges class' category: 'Magma-Client-Backend'!
MagmaArrayChanges class
	instanceVariableNames: ''!

!classDefinition: #MagmaCollectionChanges category: 'Magma-Client-Backend'!
MagmaLargeCollectionChanges subclass: #MagmaCollectionChanges
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaCollectionChanges class' category: 'Magma-Client-Backend'!
MagmaCollectionChanges class
	instanceVariableNames: ''!

!classDefinition: #MagmaSetChanges category: 'Magma-Client-Backend'!
MagmaCollectionChanges subclass: #MagmaSetChanges
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaSetChanges class' category: 'Magma-Client-Backend'!
MagmaSetChanges class
	instanceVariableNames: ''!

!classDefinition: #MagmaServerResult category: 'Magma-Client-Backend'!
MaObject subclass: #MagmaServerResult
	instanceVariableNames: 'serverNotifications'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaServerResult class' category: 'Magma-Client-Backend'!
MagmaServerResult class
	instanceVariableNames: ''!

!classDefinition: #MaReadResult category: 'Magma-Client-Backend'!
MagmaServerResult subclass: #MaReadResult
	instanceVariableNames: 'byteArray'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaReadResult class' category: 'Magma-Client-Backend'!
MaReadResult class
	instanceVariableNames: ''!

!classDefinition: #MaRefreshViewResult category: 'Magma-Client-Backend'!
MagmaServerResult subclass: #MaRefreshViewResult
	instanceVariableNames: 'connection toBeRefreshed isSystem commitNumber oidCount'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaRefreshViewResult class' category: 'Magma-Client-Backend'!
MaRefreshViewResult class
	instanceVariableNames: ''!

!classDefinition: #MaCommitResult category: 'Magma-Client'!
MaRefreshViewResult subclass: #MaCommitResult
	instanceVariableNames: 'permanentOids changedObjectBuffers newObjectBuffers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client'!
!classDefinition: 'MaCommitResult class' category: 'Magma-Client'!
MaCommitResult class
	instanceVariableNames: ''!

!classDefinition: #MaFailedCommitResult category: 'Magma-Client'!
MaCommitResult subclass: #MaFailedCommitResult
	instanceVariableNames: 'commitConflicts'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client'!
!classDefinition: 'MaFailedCommitResult class' category: 'Magma-Client'!
MaFailedCommitResult class
	instanceVariableNames: ''!

!classDefinition: #MagmaLargeCollectionSegment category: 'Magma-Client-Backend'!
MagmaServerResult subclass: #MagmaLargeCollectionSegment
	instanceVariableNames: 'objects lastKnownSize startIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaLargeCollectionSegment class' category: 'Magma-Client-Backend'!
MagmaLargeCollectionSegment class
	instanceVariableNames: ''!

!classDefinition: #MagmaCollectionReaderSegment category: 'Magma-Client-Backend'!
MagmaLargeCollectionSegment subclass: #MagmaCollectionReaderSegment
	instanceVariableNames: 'endIndex trunkStart trunkEnd trunk lowestKey highestKey mergedCount'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaCollectionReaderSegment class' category: 'Magma-Client-Backend'!
MagmaCollectionReaderSegment class
	instanceVariableNames: ''!

!classDefinition: #MagmaCollectionSegment category: 'Magma-Client-Backend'!
MagmaLargeCollectionSegment subclass: #MagmaCollectionSegment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaCollectionSegment class' category: 'Magma-Client-Backend'!
MagmaCollectionSegment class
	instanceVariableNames: ''!

!classDefinition: #MagmaServerStatistics category: 'Magma-Client'!
MaServerStat subclass: #MagmaServerStatistics
	instanceVariableNames: 'flushTimeHistory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client'!
!classDefinition: 'MagmaServerStatistics class' category: 'Magma-Client'!
MagmaServerStatistics class
	instanceVariableNames: ''!

!classDefinition: #MagmaMutatingProxy category: 'Magma-Client-Backend'!
MaMutatingProxy subclass: #MagmaMutatingProxy
	instanceVariableNames: 'session oid realObject'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaMutatingProxy class' category: 'Magma-Client-Backend'!
MagmaMutatingProxy class
	instanceVariableNames: ''!

!classDefinition: #MagmaForwardingProxy category: 'Magma-Client-Backend'!
MaMinimalObject subclass: #MagmaForwardingProxy
	instanceVariableNames: 'magmaId oid session cachedObject'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaForwardingProxy class' category: 'Magma-Client-Backend'!
MagmaForwardingProxy class
	instanceVariableNames: ''!

!classDefinition: #MagmaSessionStatistics category: 'Magma-Client'!
MaClientStat subclass: #MagmaSessionStatistics
	instanceVariableNames: 'clientSideConnectionTimeHistory refreshAllTimeHistory clientSideMcPageReadsTimeHistory clientSideProxyMaterializationTimeHistory clientSideCommitTimeHistory refreshViewHistory objectsReadPerSecond objectBytesReadPerSecond'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client'!
!classDefinition: 'MagmaSessionStatistics class' category: 'Magma-Client'!
MagmaSessionStatistics class
	instanceVariableNames: ''!

!classDefinition: #MagmaStat category: 'Magma-Client'!
ProtoObject subclass: #MagmaStat
	instanceVariableNames: 'deltaCount deltaSum'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client'!
!classDefinition: 'MagmaStat class' category: 'Magma-Client'!
MagmaStat class
	instanceVariableNames: ''!

!classDefinition: #MaTransaction category: 'Magma-Client-Backend'!
WriteBarrier subclass: #MaTransaction
	instanceVariableNames: 'readSet session largeCollectionChanges commitPackage potentialKeysChange ignoreModifiedSignals commitNumber dictionaryArrays'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MaTransaction class' category: 'Magma-Client-Backend'!
MaTransaction class
	instanceVariableNames: ''!

!classDefinition: #MagmaWbClassBuilder category: 'Magma-Client-Backend'!
ProtoObject subclass: #MagmaWbClassBuilder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Magma-Client-Backend'!
!classDefinition: 'MagmaWbClassBuilder class' category: 'Magma-Client-Backend'!
MagmaWbClassBuilder class
	instanceVariableNames: ''!


!MagmaDifferentBranch commentStamp: 'cmm 10/24/2008 17:38' prior: 0!
A MagmaDifferentBranch is used to indicate when a commit-record from one repository is attempted to be applied to a version of the same repository that has branched in a different direction at some point.  

Normally this should not happen, but if you attempt to restore to a repository that was made by backing up another repository, but other commits have been applied to that repository since, there is no way Magma can reconcile the object models, so it signals this error to inconsistencies to the model.!

!MagmaReadServerTooFarBehind commentStamp: 'cmm 3/8/2009 15:06' prior: 0!
A MagmaReadServerTooFarBehind is signaled only when a higly-available, multi-server Magma node is running.  In this configuration, it is possible for the read-only servers to fall slightly behind the primary server (the one accepting commits).

Applications which cannot tolerate this may set the #requiredProgress of their MagmaSession to a known commitNumber.  All ReadRequests will include this commitNumber, and, if a secondary read-only server finds itself behind that commitNumber for a particular client read-request, the client will pause 1 second and retry once before passing the error to the application.

This will hopefully be sufficient to eliminate 100% of these kinds of errors.!

!MagmaUnavailableCommitRecord commentStamp: 'cmm 8/12/2008 21:23' prior: 0!
A MagmaUnavailableCommitRecord indicates the specified commit record is not available on the server.!

!MagmaWrongServerError commentStamp: 'cmm 11/17/2008 14:33' prior: 0!
A MagmaWrongServerError is signaled when a client asks a request fails it nodeCheck.  It occurs when a warm-backup is asked to commit.  If the server determines the primary is still up and running, and that the client should have asked that server to perform the commit, it will signal this error back to the client.!

!MagmaDuplicateObjectInCollection commentStamp: '<historical>' prior: 0!
Signalled by MagmaSet if a duplicate object is added to the collection.!

!MagmaInvalidOid commentStamp: 'cmm 3/1/2005 17:34' prior: 0!
Signaled when the server is asked for an object at a particular oid but no object is present at that oid.!

!MagmaCommitError commentStamp: 'cmm 3/21/2003 00:50' prior: 0!
I am signaled when another user has committed a change an object that you changed since you began your transaction.!

!MagmaNoTransactionError commentStamp: 'cmm 11/15/2008 14:23' prior: 0!
Signaled when a client tries to commit when they do not have a transaction.!

!MagmaLinkChange commentStamp: 'cmm 12/9/2012 11:52' prior: 0!
This is a private notification to assist with HA processing.  When an HA event occurs, temp vars up on the stack can still be pointing to the server that went down, this notification informs them to update a particular 'oldLink' to a 'newLink' to the new server.!

!MagmaProxyMaterialization commentStamp: 'cmm 1/13/2005 23:05' prior: 0!
I am signaled when a mutating proxy is materialized.  The materializedObject is available as an argument.

To use:

	[ ... do your stuff ... ]
		on: MagmaProxyMaterialization 
		do:
			[ : theNotification |
			doSomethingWith: theNotification.
			theNotification resume "<-- very important!!" ]

!

!MagmaUserRequirementNotification commentStamp: 'cmm 3/11/2005 14:13' prior: 0!
I am used when Magma discovers it is missing an object and must get it from the user.  For example, when the user invokes a forwarding-proxy to another repository, connection credentials for that repository must be supplied.  Magma does not keep these for you, but it requires them.!

!MagmaSolHashTable commentStamp: 'cmm 4/11/2011 10:33' prior: 0!
A MagmaSolHashTable extends Tom Rushworth's SOLHashTable to substitute the internal Array with a MagmaArray.  This allows very large segBits.

Instance Variables
!

!MagmaBufferPositionMap commentStamp: 'cmm 8/27/2008 18:43' prior: 0!
Magma adds additional attributes useful for an ODBMS.

	#commitNumber!

!MagmaClassIdManager commentStamp: 'cmm 6/28/2004 15:04' prior: 0!
The purpose of this class is to keep track of which classes are persistent.!

!MagmaOidManager commentStamp: 'cmm 6/21/2004 00:20' prior: 0!
Because removeKey: is so slow in Squeak, I keep track of which ones are newObjects.  That way, when we return from a commit, replacement of temp to permanent oids is much faster.!

!MagmaDataRepair commentStamp: 'cmm 4/23/2014 16:42' prior: 0!
A MaDataRepair is used to perform data repairs on Magma models in a controlled and reliable fashion.  The requirements of a data-repair are:

	- identify and report all data which will be evaluated so it can known that no objects were skipped simply due to them not being evaluated.
	- identify and report what objects are in need of repair.
	- repair broken data objects.
	- verify and report whether data is fixed.

Example:

(MagmaDataRepair
	at: (MagmaRemoteLocation host: 'prod1' port: 51199)
	enumerate: [ : session : repair | session root accountsDo: [ : eachAccount | eachAccount isThirdParty ifTrue: [ repair check: eachAccount] ] ]
	check: [ : eachAccount : repair | eachAccount importFilters anySatisfy: [ : each | each maOriginalClass = MaxImportFilter ] ])
	repair: [ : eachAccount : repair | eachAccount importFilters withIndexDo: [ : eachFilter : index | eachAccount importFilters at: index put: eachFilter asKeywordFilter ] ]!

!MagmaPreferences commentStamp: 'cmm 1/25/2003 17:49' prior: 0!
Each MagmaSession initializes its own preferences.  Get an instance of my by sending #preferences to a MagmaSession.

Debug and DebugProxies are global preferences.!

!MagmaRepositoryRequest commentStamp: 'cmm 1/25/2003 17:56' prior: 0!
Superclass for all Magma request objects.!

!MaAnchorRequest commentStamp: 'cmm 1/25/2003 17:59' prior: 0!
I'm the request used when you ask for the root.  The "real" root is actually an instance of MaRootAnchor, which references your root (this provides service via the standard commit mechanism).!

!MaReadRequest commentStamp: 'cmm 1/25/2003 17:58' prior: 0!
I'm a request to a Magma server for a bunch of needed object buffers, due to proxy materialization or whatever.!

!MaCommitRequest commentStamp: 'cmm 1/25/2003 17:55' prior: 0!
I am the request object sent to a Magma server that commits changes to the database.!

!MaKeyIntervalInfoRequest commentStamp: '<historical>' prior: 0!
This request is used to get sizes of sub-magmacollections, either with or without
index.
!

!MaSaveAndExitImageRequest commentStamp: 'cmm 7/15/2008 17:22' prior: 0!
This request supports management of headless servers.!

!MagmaServerStatisticsRequest commentStamp: 'cmm 5/6/2008 13:26' prior: 0!
Requests the console statistics from the server.!

!MaRootAnchor commentStamp: 'cmm 12/22/2008 16:47' prior: 0!
This class represents the real root of every repository.  The #root is the user-application domain root, the definition is a meta-object describing this repository itself.!

!MagmaClientConnection commentStamp: 'cmm 1/17/2014 13:24' prior: 0!
MagmaClientConnection is used primarily by the server as an object that represents a single MagmaSession connected to it.

But this object is also used by clients in cases where information about other connected clients is useful.  For example, when a commit-conflict occurs, MagmaCommitConflict is passed back to the client with information about the MagmaClientConnection(s) he's conflicting with.

Instance Variables

challengingBytes
	- xxxxx

currentReadStrategy
	- xxxxx

isSystem
	- xxxxx

maClientConnection
	- xxxxx

maximumNumberOfChallengers
	- xxxxx

sessionId
	- xxxxx

userId
	- xxxxx
!

!MagmaCounter commentStamp: 'cmm 8/3/2011 20:30' prior: 0!
A MagmaCounter provides a concurrent counter.  New instances start at a #value of 0, after which any number of sesions may simultaneously increment or decrement, but no one can set its value.

Currently, MagmaCounters only support from SmallInteger minVal to: SmallInteger maxVal.!

!MagmaLocation commentStamp: 'cmm 1/13/2005 10:43' prior: 0!
I provide an objectified link to a Magma repository, local or remote, to use when you don't want to bother with its location details.!

!MagmaRemoteLocation commentStamp: 'cmm 7/5/2008 14:42' prior: 0!
A MaServerLocation simply encapsulates the host and port information to access a Magma server, allowing the receiver to serve as a 'bookmark' to a Magma server resource.
!

!MagmaNode commentStamp: 'cmm 10/30/2008 17:30' prior: 0!
A MagmaNode is a set of running Magma servers supporting one repository, one primary and one or more warm backups.  Typically, these servers would be connected with fast networking, so the backups can have a chance to get into a "synchronized" state, a state where the primary is sending the commitPackages in real-time.

		-- replace MagmaSession>>'link' with this..? --

Goals:  
	- An equivalent MagmaNode is answered by any server in the node, which describes the servers in the node and their current role.
	- The MagmaNode is delivered as part of the session connection process.
	- Normally, MagmaSessions will send all commit requests other than commits to one of the warm-backup links, however..
	- ..MagmaSessions may #submit: any request to any of the links in the node.  Internally, if the request is sent to the "wrong" link:
 		- a commit request sent to a warm backup
		- a read request sent to the primary
	..then Magma will do the following:
		1) the server that received the erroneous request will answer a MaErroneousRequest with a new MagmaNode
		2) the private MagmaSession behavior will pre-interrogate every response with #isErroneousRequest (maybe via normal #on:do: error handling)
		3) The MaErroneousRequest includes a new MagmaNode indicating the new cluster configuration.
		4) the MagmaSession now replaces its 'node' and resubmits the request to the correct server.

	- It is also possible the server went down, the client will get a NetworkError.  When this occurs, the client then asks the first primary to #takeOverAsPrimary.

The MagmaNode is transmitted as a 'domain object' from server to client.  Its 'links' is transient and lazily initialized from its 'locations'.

Magma will ensure it is sent to the correct node (even in case it changed) and adjust their Node if necessary.

Messages sent to link in MagmaSession:
	#submit: aMagmaRepositoryRequest
	#location
	#isConnected
	#protocolEstablished
	#disconnect
	#stat:
	#timeoutSeconds
	#timeoutSeconds:
	#compressThreshold
	#compressThreshold:
	#linkInformation
	#repositoryController
	#isLocal
	#host!

!MagmaRepositoryCodeBase commentStamp: '<historical>' prior: 0!
This is a repository for code management in magma. Currently this is not implemented in Cuis.!

!MagmaSession commentStamp: 'cmm 2/25/2005 16:01' prior: 0!
This is a clients primary interface to a Magma repository.!

!MagmaCommitConflict commentStamp: 'cmm 3/21/2003 00:50' prior: 0!
When a MagmaCommitError is signaled, it will have a list of me in it so you can determine the cause of the conflict.  I describe what objects were in conflict (conflictingObjects) and who changed them (connection).

conflictingObjects only reflects what is still in your image (e.g., not GC'd).  conflictingOids contains the oid of every object that was in conflict.!

!MaByteSequenceIndex commentStamp: 'cmm 12/25/2004 23:47' prior: 0!
I represent an index that is based on a sequence of bytes to calculate the index-hash value.  I know the number of meaningful characters I can be searched by based on my bit-size.!

!MaAsciiStringIndex commentStamp: 'cmm 8/20/2006 22:12' prior: 0!
THIS CLASS IS NOW DEPRECATED.

USE MaSearchStringIndex with #beAscii for full ascii-range index.

I search based on an exactly matching sequence of ASCII characters (characters between 0 and 127).!

!MaSearchStringIndex commentStamp: 'cmm 12/25/2004 23:50' prior: 0!
I represent an index with just 64 characters of the ascii range utilized; 33 - 96, so we must do without the {, }, |, ~, and space characters.  This increases my number of meaningful characters and eliminates the need for case-sensitive matching.!

!MaKeywordIndex commentStamp: 'cmm 7/31/2018 00:00' prior: 0!
I am just like a MaSearchStringIndex except I index a collection of Strings (i.e., keywords) instead of a single String.  Your indexed attribute should answer a collection of Strings.!

!MaDateAndTimeIndex commentStamp: 'brp 12/21/2005 15:07' prior: 0!
This class indexes DateAndTime attributes.

A DateAndTime has four instance variables:
	julianDayNumber 	- any day since 24 November -4713
	seconds				- seconds since midnight
	nanoSeconds		- up to 10 rasiedTo: 9 per second
	offset				- a Duration from UTC

This would require many byes of hash space. Fortunately most of this power is seldom used.

This class allows the user to specify the earliest date indexed (epoch), the clock precision and how far into the future dates may be specified (duration). All dates are manipulated in UTC.

This allows a far more compact hash value to be generated

!

!MaDateIndex commentStamp: 'cmm 12/25/2004 23:51' prior: 0!
I am a 24-bit index useful for indexing objects by a Date.!

!MaFloatIndex commentStamp: 'cmm 12/25/2004 23:51' prior: 0!
I am a 32-bit index usefulf or indexing objects by a Float value.!

!MaUUIDIndex commentStamp: 'brp 12/20/2005 09:50' prior: 0!
This class is as index on a 16 Byte UUID.!

!MagmaCollectionReader commentStamp: 'cmm 2/14/2008 09:04' prior: 0!
I represent a set of objects contained by a MagmaCollection satisfying my query 'expression'.  Though I am not a Collection, I can be thought of one in terms of reading objects (I can't add or remove any objects for you, but I can hand you my #collection who'll do it for you).

I am created by sending #where: to a MagmaCollection.  My #size is how many objects satisfy the query, which may take some time to compute if the where expression uses more than one range condition.

I am persistable in Magma just like any object.  I can be stored as a "pre-defined" query or something.  I'll work just fine after enduring storage and retrieval to a Magma database.!

!MagmaCollectionFilteredReader commentStamp: 'cmm 2/17/2008 11:06' prior: 0!
A MagmaCollectionFilteredReader is the result of using a where: expression with more than one clause.  This requires more work for the software to keep track of the segment map.
!

!MagmaDictionary commentStamp: 'cmm 4/14/2011 14:07' prior: 0!
A MagmaDictionary is just like a regular Dictionary except it can be very large; billions.

It utilizes a MagmaSolHashTable to map hash values to Associations.

IMPORTANT:  To maximize performance, MagmaSolHashTable is not thread-safe, therefore neither is MagmaDictionary.!

!MagmaHashTable commentStamp: 'cmm 4/11/2011 17:07' prior: 0!
A MagmaHashTable is similar to a MagmaCollection except:

	- It can only query a range of one indexed attribute using #from:to:do:.
	- It can't randomly access via #at: like a regular indexed MagmaCollectionReader.
 	- Access is much faster.
!

!MagmaArray commentStamp: 'cmm 9/10/2009 21:26' prior: 0!
I can be used like a normal Array to reference billions of objects, at a cost of 6-bytes of disk-space per object pointer, and only consume memory for one "page" at a time (defined by #pageSize).

I do not have to be pre-allocated.  You can use at:put: to any size up to the limit.  Once I grow, I don't shrink.!

!MagmaCollection commentStamp: 'cmm 5/28/2007 21:01' prior: 0!
My 'descriptions', are a parallel OrderedCollection of MagmaIndexDescriptions to the indexes.  This is provided for the server so it doesn't have to have the MagmaCollectionIndex hierarchy loaded.  The server is concerned only with the Magma domain, not user-domain classes.!

!MagmaSet commentStamp: 'cmm 4/11/2011 16:25' prior: 0!
NOTE:  This class is deprecated.  Please migrate to the new MagmaDictionary.

Implement simple Set functionality for MagmaCollections.!

!MagmaOldDictionary commentStamp: 'cmm 7/16/2010 17:31' prior: 0!
This is a MagmaCollection of MagmaDictionaryAssociations.  A MagmaDictionaryAssociations is the same as a regular association, except we can find it merely by its key.

When a MagmaDictionaryAssociation is added, it is indexed by its #key.!

!MaBasicReadStrategy commentStamp: '<historical>' prior: 0!
This class operates on the client and server.!

!MaReadStrategy commentStamp: 'cmm 1/26/2005 21:28' prior: 0!
When objects are retrieved from a Magma repository, the server must eventually decide to stop traversing the graph and return a reasonable chunk of objects.  Sometimes, the default pattern of reading may be ineffecient for the processing needed.

Therefore, my instances can be used to suggest to the server a particular depth for particular class or even a variable within a class.

Implementation notes:

There are two parts; 'specifications' and 'depths'.  The specifications track what the user wants, while the depths are the efficiently-integerized representation for each MaClassDefinition (and version).  That's why there are not more first-class objects here, MaObjectSerializer is efficient with #'s (although now with the server caching it's probably no longer an excuse).  Whenever the specs change, or when the ClassDefinitions change the depths need to be rebuilt.  That's what my #isNew api is all about.

When transmitted to the server, it caches me there and I am then told to #beOld.  But only my depths are actually transmitted for further efficiency.  My '*magma server' methods are employed to determine the depth on the server.

Use my 'building' methods so that the Testing methods can then answer whether a particular depth should be read on a particular object or class.
!

!MaCommitPackage commentStamp: 'cmm 3/8/2005 09:41' prior: 0!
This class represents all of the changes made from a single client for a single transaction.!

!MaQueryTrunk commentStamp: '<historical>' prior: 0!
My ranges represent the shortest path through the query.!

!MaRecoveryRecord commentStamp: 'cmm 7/15/2009 15:45' prior: 0!
My instances are records that faciliate the automatic recovery of Magma files when the server was interrupted by an external event such as a power-outage or sysadmin killing of my VM.

There are two types of recovery, forward and backward.  Backward recovery is necessary when a write operation only partially completed and files are in an inconsistent state.

In this case, there are four types of changes that can occur to a file that must be tracked:

	- the file was just created new (MaNewFileRecord), when recover we delete it.
	- updating bytes within an existing file (MaBeforeImageRecord).  When we recover we put those bytes back.
	- extending the length of a file with new bytes (MaFileGrowthRecord).  When we recover we truncate the file back to its original length.
	- an existing file is deleted.  To handle this we simply don't delete the file until the entire apply has completed and flushed successfully.

There are also two records which indicate the begin and end of the group of records for a single write operation.  My groupId associates all records for a particular write together.  Each of these records has a hash-checkSum calculated so that the recovery process can ensure the record was written wholly and correctly.

All of this is contained completely within my own ByteArray with the following format (0-based positions):

	--begin header--
	0 : physicalSize (4-bytes)
	4 : recordType (1 byte, high 4 bits reserved for future expansion bit, if necessary)
	5 to: headerSize-1 : ... other fields implemented by my subclasses ...
	--end header--
	headerSize to: n-21 : my #record (variable data, if appropriate)
	n-20 - checkSum (SHA1)
!

!MaCommitLogRecord commentStamp: 'cmm 7/15/2009 15:43' prior: 0!
These are the "after-images" which are written to the commitPackages file.

	--begin header--
	(see superclass)
	5 to: 10:  commitNumber
	11 to: 15:  timestamp, in seconds
	16 to: 19:  branchCode
	--end header--
	-- begin record --
	-- end record --
	Last 20 bytes - SHA1 checkSum
!

!MaStorageForMagmaSession commentStamp: 'cmm 1/15/2007 18:43' prior: 0!
I represent a reference in the database to whatever current MagmaSession materializes me.  You may not reference other MagmaSessions in your model, only the session to which the model belongs.!

!MaQueryTrunkClause commentStamp: 'cmm 6/5/2007 10:46' prior: 0!
I represent the "normalized" clauses of an expression.  Some queries may specify the same attribute more than once, sometimes even with overlapping key ranges.  In this case there is no reason to search the overlapping keyspaces more than once.
!

!MaTransactionLogEntry commentStamp: 'cmm 7/24/2007 12:04' prior: 0!
A MaTransactionLogEntry maintains information about a single MagmaSession client's refresh state.

Instance Variables
	challengingEntries:  an OrderedCollection of aMaCommitLogEntry's submitted by other clients.  The next time my client commits, none of the committed objects can be included in any of the other MaCommitLogEntry.  Additionally, all of each other MaCommitLogEntry's #committed objects will need to be refreshed by my client.

	id:  anInteger identifying my client-session.

	needsToRefresh:  When my client performs a read operation, this boolean is also included to indicate whether it should perform an abort.  (Note:  This may be soon optimised out).

	result:  My MaRefreshViewResult or MaCommitResult.

	serverNotifications:  A Dictionary of the notifications that my client should respond to.
!

!MaCommitLogEntry commentStamp: 'cmm 7/24/2007 12:08' prior: 0!
A MaCommitLogEntry is the entry used when my client is in a transaction.  I contain extra information about my clients commit.

Instance Variables
	commitPackage : A MaCommitPackage containing the objects of the commit.

	committed : A Dictionary of the individual MaObjectBuffers that were part of the commit, keyed by their oid.

	didCommitSpecialOid : A Boolean indicator of whether the class-definitions Dictionary object was part of the commit.

	magmaArrayCommits : Instances of MagmaArray that were committed.  They require special processing.
!

!MagmaCollectionChanges commentStamp: '<historical>' prior: 0!
This is a private class.  Applications should have no need to use this class directly.
!

!MaRefreshViewResult commentStamp: 'cmm 7/15/2008 14:44' prior: 0!
A MaRefreshViewResult is the result object returned to the client upon crossing a transaction boundary where no transaction was present; i.e., not in a transaction, then doing an begin or abort.

Instance Variables
	connection : The MagmaClientConnection object identifying my client.

	isSystem : A Boolean indicating whether my client is the one used by the repository-controller.

	toBeRefreshed : The Dictionary of objects accumulated from other clients transactions that now need to be refreshed by my client.  It is the latest individual MaObjectBuffers keyed by their oid.

	commitNumber : The number of commits made to the persistent model.!

!MaCommitResult commentStamp: 'cmm 7/24/2007 12:41' prior: 0!
A MaCommitResult is the object returned to my client after performing a successful commit.

Instance Variables

	changedObjectBuffers : The 'committed' Dictionary from my containing MaCommitLogEntry which is used to update the clients readSet with the latest version of his buffers.

	newObjectBuffers : Same as changedObjectBuffers, except the new objects that were attached to the repository via reachability.  Their oids were updated to permanent-oids in the #registerUsing: and #link steps of the commit process.

	permanentOids : The Dictionary map of the transient-oid to the permanent-oid, used to update my clients OidManager.
!

!MagmaLargeCollectionSegment commentStamp: 'cmm 12/1/2004 21:44' prior: 0!
I represent a "page" of objects in a MagmaCollection.!

!MagmaCollectionReaderSegment commentStamp: 'cmm 2/15/2008 09:52' prior: 0!
MagmaCollectionReaders may have access to thousands of objects, so it is necessary to only represent a page at a time.

endIndex - Readers are accessible by #at:, my endIndex represents the index of the last element in this segment.

highestKey - the Integer key of the last element in this segment.

mergedCount - a positive Integer representing the number of objects added.  Number of objects removed is not indicated by this, they are indicated instead by decrements of the endIndex.

trunk - The MaQueryTrunk for the expression.  The "trunk" represents all of the indexes and the key-ranges that must be enumerated to test all objects potentially valid for my readers expression.

trunkEnd:  The ending Integer index position within the trunk this segment represents.

trunkStart:  The starting Integer index position within the trunk this segment represents.
!

!MagmaServerStatistics commentStamp: 'cmm 5/5/2008 22:57' prior: 0!
A MagmaServerStatistics knows considerable information about the performance of a listening MagmaServerConsole.

See method comments for details about each staistic.!

!MagmaForwardingProxy commentStamp: 'cmm 7/6/2009 20:28' prior: 0!
I refer to an object in the repository indicated by my 'magmaId'.  You send me a message and I'll signal my session to try to connect if necessary and forward the message on to the real object in that repository.!

!MaTransaction commentStamp: 'cmm 8/21/2008 13:26' prior: 0!
This class is private.  Applications should use the transaction control provided on MagmaSession.
!

!MaRootAnchor methodsFor: 'accessing' stamp: 'cmm 12/28/2004 23:55'!
definition

	^ definition! !

!MagmaId methodsFor: 'accessing' stamp: 'cmm 10/30/2008 13:27'!
name
	"How people refer to this repository."
	^ name ifNil: [ self uuid printString ]! !

!MagmaLocation methodsFor: 'accessing' stamp: 'cmm 9/15/2004 21:55'!
name

	^ name! !

!MagmaRemoteLocation methodsFor: 'printing' stamp: 'cmm 9/6/2012 20:47'!
printOn: aStream 
	self maPrintAbbreviatedOn: aStream! !

!MagmaSession class methodsFor: 'initializing' stamp: 'cmm 9/24/2008 14:54'!
shutDown: aboutToQuit 
	super shutDown: aboutToQuit.
	ConnectedSessions do: [ : each | each isConnected ifTrue: [ each primDisconnect ] ]! !

!MagmaSession methodsFor: 'database' stamp: 'cmm 12/26/2004 23:32'!
definition
	"Answers the repository definition, a MagmaRepositoryDefinition."

	^ definition! !

!MagmaSession methodsFor: 'serialization' stamp: 'cmm 1/15/2007 17:53'!
isImmutableInMagma 
	^ true! !

!MagmaSession methodsFor: 'serialization' stamp: 'cmm 1/15/2007 18:02'!
maAsStorageObject
	"If the user wishes to reference a session in their model, then it will always be restored to the session that actually materializes it.  There is no changed detection.."
	^ MaStorageForMagmaSession new! !

!MagmaSession methodsFor: 'serialization' stamp: 'cmm 1/15/2007 16:34'!
maUsesStandardStorage
	^ false! !

!MagmaSession methodsFor: 'testing' stamp: 'cmm 7/18/2008 13:24'!
hasDefinition
	"Answer whether this MagmaSession instance has ever been connected to a repository.  Once connected to a particular repository, a MagmaSession may only reconnect to that repository, not to any other repository.  A new MagmaSession instance must be used to connect to a different repository."
	^ definition notNil! !

!MaRecoveryRecord methodsFor: 'testing' stamp: 'cmm 6/3/2005 15:52'!
isFixed
	^ true! !

!MaCommitLogRecord methodsFor: 'testing' stamp: 'cmm 8/12/2008 16:33'!
isFixed
	^ false! !

!MaTerm methodsFor: 'printing' stamp: 'cmm 1/31/2013 15:12'!
printOn: aStream
	self maPrintAbbreviatedOn: aStream! !

!MagmaClause methodsFor: 'printing' stamp: 'cmm 6/3/2006 16:57'!
printOn: aStream

	super printOn: aStream.
	aStream 
		nextPut: $(; 
		nextPutAll: attribute ; 
		space;
		print: self lowKey;
		nextPutAll: '..' ;
		print: self highKey;
		nextPut: $)

! !

!MagmaExpression methodsFor: 'printing' stamp: 'brp 4/9/2006 11:22'!
printOn: aStream

	super printOn: aStream.
	aStream nextPut: $(; nextPutAll: self operator; nextPut: $)

! !

!MagmaMutatingProxy methodsFor: 'printing' stamp: 'cmm 10/25/2010 12:58'!
printOn: aStream 
	MagmaPreferences debugProxies 
		ifTrue: 
			[ super printOn: aStream.
			aStream
				maPrint: $( ;
				maPrint: oid ;
				maPrint: '/' ;
				maPrint: session id ;
				maPrint: ')' ]
		ifFalse: [ self realObjectIfMutatingProxy printOn: aStream ]! !

!MagmaForwardingProxy methodsFor: 'testing' stamp: 'cmm 4/8/2005 15:20'!
isImmutableInMagma 
	"There is absolutely no reason to subject yourself to the danger of trying to point this to a different object.  Just create a new one via #asMagmaForwardingProxy."

	^ true! !

!MagmaForwardingProxy methodsFor: 'private' stamp: 'cmm 1/17/2005 17:36'!
name

	^ self doesNotUnderstand: (Message selector: #name)! !

!MagmaForwardingProxy methodsFor: 'serialization' stamp: 'cmm 3/9/2009 20:21'!
maWantsPreSerialization
	^ true! !

!MagmaWbClassBuilder methodsFor: 'as yet unclassified' stamp: 'cmm 5/30/2018 22:00'!
fieldsWrittenToBySelector: selectorSymbol 
	| allInstVarNames transientFieldNumbers |
	"#maDirtyAdd: is a low-level method used for safe materialization of HashedCollections, do not signal modified at that time."
	selectorSymbol = #maDirtyAdd: ifTrue: [ ^Array empty ].
	allInstVarNames _ self targetClass allInstVarNames.
	transientFieldNumbers _ self targetClass basicNew maTransientVariables collect:
		[ : eachVarName | allInstVarNames indexOf: eachVarName ].
	^ (super fieldsWrittenToBySelector: selectorSymbol) reject:
		[ : eachFieldNumber | transientFieldNumbers includes: eachFieldNumber ]! !

!MagmaDictionaryAssociation methodsFor: 'as yet unclassified' stamp: 'cmm 7/16/2010 16:07'!
= aLookupKey 
	^ self species = aLookupKey species and: [ key = aLookupKey key ]! !

!MagmaTooFarBehindError methodsFor: 'as yet unclassified' stamp: 'cmm 8/7/2014 16:23'!
defaultAction
	super defaultAction.
	^ self resume: true! !

!MagmaTooFarBehindError methodsFor: 'as yet unclassified' stamp: 'cmm 7/17/2014 15:31'!
isResumable
	^ true! !

!MagmaWrongCommitNumber methodsFor: 'accessing' stamp: 'cmm 10/14/2008 18:19'!
expectedCommitNumber
	^expectedCommitNumber! !

!MagmaWrongCommitNumber methodsFor: 'accessing' stamp: 'cmm 10/14/2008 18:19'!
expectedCommitNumber: anInteger
	expectedCommitNumber _ anInteger! !

!MagmaWrongServerError methodsFor: 'accessing' stamp: 'cmm 11/4/2008 17:00'!
correctServer
	^correctServer! !

!MagmaWrongServerError methodsFor: 'accessing' stamp: 'cmm 11/4/2008 17:00'!
correctServer: aMagmaRemoteLocation
	correctServer _ aMagmaRemoteLocation! !

!MagmaInvalidReference methodsFor: 'accessing' stamp: 'cmm 5/5/2013 19:05'!
oidOfMissingBuffer
	^ oidOfMissingBuffer! !

!MagmaInvalidReference methodsFor: 'accessing' stamp: 'cmm 5/5/2013 19:05'!
referencingBuffer
	^ referencingBuffer! !

!MagmaInvalidReference methodsFor: 'printing' stamp: 'cmm 7/4/2013 22:44'!
printDetailsOn: aStream
	super printDetailsOn: aStream.
	aStream
		maPrintAttributes: #(#oidOfMissingBuffer #referencingBuffer )
		on: aStream! !

!MagmaInvalidReference methodsFor: 'initialize-release' stamp: 'cmm 5/5/2013 19:06'!
setReferencingBuffer: aMaObjectBuffer oidOfMissingBuffer: anInteger 
	referencingBuffer _ aMaObjectBuffer.
	oidOfMissingBuffer _ anInteger! !

!MagmaInvalidReference class methodsFor: 'create' stamp: 'cmm 5/5/2013 19:06'!
referencingBuffer: aMaObjectBuffer oidOfMissingBuffer: anInteger 
	^ self new
		setReferencingBuffer: aMaObjectBuffer
		oidOfMissingBuffer: anInteger! !

!MagmaInvalidReference class methodsFor: 'signaling' stamp: 'cmm 5/6/2013 12:24'!
referencingBuffer: aMaObjectBuffer oidOfMissingBuffer: anInteger signal: aString 
	^ ((self messageText: aString)
		setReferencingBuffer: aMaObjectBuffer
		oidOfMissingBuffer: anInteger) signal! !

!MagmaInvalidReference class methodsFor: 'signaling' stamp: 'cmm 5/6/2013 12:21'!
signalReferencingBuffer: aMaObjectBuffer oidOfMissingBuffer: anInteger signal: aString 
	^ ((self messageText: aString)
		setReferencingBuffer: aMaObjectBuffer
		oidOfMissingBuffer: anInteger) signal! !

!MagmaCommitError methodsFor: 'private' stamp: 'cmm 10/20/2014 12:40'!
handleOrPassUsing: aMagmaSession
	self pass! !

!MagmaCommitError methodsFor: 'printing' stamp: 'cmm 5/17/2013 13:18'!
printDetailsOn: aStream 
	super printDetailsOn: aStream.
	result ifNotNil: [ result printDetailsOn: aStream ]! !

!MagmaCommitError methodsFor: 'accessing' stamp: 'cmm 12/17/2002 23:59'!
result

	^result! !

!MagmaCommitError methodsFor: 'initialize-release' stamp: 'cmm 1/17/2014 15:13'!
setResult: MaFailedCommitResult
	result _ MaFailedCommitResult! !

!MagmaCommitError class methodsFor: 'create' stamp: 'cmm 1/17/2014 15:13'!
result: aMaCommitResult 
	^ self new
		setResult: aMaCommitResult ;
		yourself! !

!MagmaCommitConflictError methodsFor: 'private' stamp: 'cmm 10/20/2014 18:07'!
handleOrPassUsing: aMagmaSession 
	"We can handle a conflict on the repository-Definitions Set of 'symbols', simply add-in the ones again and retry."
	| conflictingObjects |
	(result commitConflicts size = 1 and:
		[ (conflictingObjects _ result commitConflicts first conflictingObjects) size = 1 and: [ conflictingObjects first key == aMagmaSession definition symbols ] ])
		ifTrue:
			[ conflictingObjects first key addAll: conflictingObjects first value.
			 aMagmaSession begin.
			self retry ]
		ifFalse: [ self pass ]! !

!MagmaCommitConflictError methodsFor: 'actions' stamp: 'cmm 10/14/2013 20:32'!
mergeAndRetry
	| stillInConflict |
	stillInConflict _ self mergeConflicts.
	stillInConflict
		ifEmpty: [ self retry ]
		ifNotEmpty: [ self pass ]! !

!MagmaCommitConflictError methodsFor: 'actions' stamp: 'cmm 10/14/2013 20:32'!
mergeConflicts
	^ result mergeConflicts! !

!MagmaTooFarBehindConflict methodsFor: 'private' stamp: 'cmm 10/20/2014 12:41'!
handleOrPassUsing: aMagmaSession
	self pass! !

!MagmaLinkChange methodsFor: 'accessing' stamp: 'cmm 12/8/2012 14:01'!
linkToReplace: aMaNetworkServerLink 
	^ oldLink = aMaNetworkServerLink
		ifTrue: [ newLink ]
		ifFalse: [ oldLink ]! !

!MagmaLinkChange methodsFor: 'initializing' stamp: 'cmm 12/8/2012 14:00'!
setOldLink: theOldLink newLink: theNewLink 
	oldLink _ theOldLink.
	newLink _ theNewLink! !

!MagmaLinkChange class methodsFor: 'as yet unclassified' stamp: 'cmm 12/8/2012 14:03'!
oldLink: oldLink newLink: newLink 
	^ self new
		
		setOldLink: oldLink
		newLink: newLink ;
		 yourself! !

!MagmaNodeUpdate methodsFor: 'initialize-release' stamp: 'cmm 10/31/2008 11:34'!
add: aMagmaRemoteLocation 
	add _ aMagmaRemoteLocation! !

!MagmaNodeUpdate methodsFor: 'initialize-release' stamp: 'cmm 10/31/2008 11:34'!
remove: aMagmaRemoteLocation 
	remove _ aMagmaRemoteLocation! !

!MagmaNodeUpdate methodsFor: 'initialize-release' stamp: 'cmm 11/15/2008 14:48'!
setPrimary: aMagmaRemoteLocation 
	setPrimary _ aMagmaRemoteLocation! !

!MagmaNodeUpdate methodsFor: 'accessing' stamp: 'cmm 11/15/2008 14:50'!
applyTo: aMagmaNode 
	"Make updates to the aMagmaNode."
	remove ifNotNil: 
		[ aMagmaNode removeLocation: remove
		"Check node is production-capable (i.e., at least two locations in the node)." ].
	add ifNotNil: [ aMagmaNode addLocation: add ].
	setPrimary ifNotNil: [ aMagmaNode primaryLocation: setPrimary ]! !

!MagmaNodeUpdate methodsFor: 'accessing' stamp: 'cmm 11/24/2009 15:48'!
processUsing: aMagmaServerConsole 
	"Apply my updates to the node in a transaction.  Then ensure a correct node configuration."
	| session node oldBranchCode canSkipReconfigure |
	session _ aMagmaServerConsole serverSession.
	node _ aMagmaServerConsole node.
	canSkipReconfigure _ self isOnlyRemoving and: [ node includesSecondary: remove ].
	
	[ 
	[ self wantsNewPrimary ifTrue: 
		[ "Can't do a commit if you're not the primary, gotta bite the bullet."
		oldBranchCode _ aMagmaServerConsole controller branchCode.
		aMagmaServerConsole controller commitRestore ].
	session commit: [ self applyTo: node ] ] 
		on: MagmaCommitError
		do: 
			[ : err | 
			session abort.
			oldBranchCode ifNotNil: 
				[ "Ahhhh, go back!!  We didn't actually commit anything so it should be safe."
				aMagmaServerConsole controller
					branchCode: oldBranchCode ;
					beginRestore ] ] ] ensure: 
		[ "This is needed whether commit-error occurs or not"
		"But, if only removing a secondary, we don't need to "
		canSkipReconfigure ifFalse: [ aMagmaServerConsole ensureCorrectNodeConfiguration ] ]! !

!MagmaNodeUpdate methodsFor: 'testing' stamp: 'cmm 11/24/2009 15:44'!
isOnlyRemoving
	^ add isNil and: [ self wantsNewPrimary not and: [ remove notNil ] ]! !

!MagmaNodeUpdate methodsFor: 'testing' stamp: 'cmm 11/15/2008 16:30'!
wantsNewPrimary
	^ setPrimary notNil! !

!MagmaNodeUpdate class methodsFor: 'signaling' stamp: 'cmm 10/31/2008 11:33'!
signalAdd: aMagmaRemoteLocation 
	^ self new
		add: aMagmaRemoteLocation ;
		signal! !

!MagmaNodeUpdate class methodsFor: 'signaling' stamp: 'cmm 10/31/2008 11:33'!
signalRemove: aMagmaRemoteLocation 
	^ self new
		remove: aMagmaRemoteLocation ;
		signal! !

!MagmaProxyMaterialization methodsFor: 'as yet unclassified' stamp: 'cmm 4/27/2003 20:14'!
materializedObject

	^materializedObject! !

!MagmaProxyMaterialization methodsFor: 'as yet unclassified' stamp: 'cmm 5/2/2003 17:23'!
materializedObject: anObject

	materializedObject _ anObject! !

!MagmaProxyMaterialization class methodsFor: 'signaling' stamp: 'cmm 4/10/2005 18:00'!
signalMaterializedObject: anObject 
	(self new)
		messageText: 'materializing a ' , anObject maOriginalClass printString;
		materializedObject: anObject;
		signal! !

!MagmaUserRequiredNotification methodsFor: 'as yet unclassified' stamp: 'cmm 11/13/2013 20:40'!
defaultAction
	"The user did not listen for this notification.  For now, bail them out by offering them an opportunity to create one on the fly."
	self resume: (session user ifNil: 
			[ Smalltalk isHeadless 
				ifTrue: [ 'unnamed' ]
				ifFalse: 
					[ MagmaUser id: (UIManager default request: 'Enter a name to connect under.') ] ])! !

!MagmaUserRequiredNotification methodsFor: 'as yet unclassified' stamp: 'cmm 3/13/2005 18:07'!
session: aMagmaSession

	session _ aMagmaSession! !

!MagmaUserRequiredNotification class methodsFor: 'private' stamp: 'cmm 3/13/2005 18:08'!
requestUserFor: aMagmaSession

	^ (self session: aMagmaSession)
		messageText: 'Supply a userId for ', aMagmaSession linkInformation ;
		signal! !

!MagmaUserRequiredNotification class methodsFor: 'as yet unclassified' stamp: 'cmm 3/13/2005 18:07'!
session: aMagmaSession

	^ self new
		session: aMagmaSession ;
		yourself! !

!MagmaSolHashFrame methodsFor: 'overriding' stamp: 'cmm 4/21/2011 20:50'!
advance
	"next will almost always be a proxy, so we avoid the DNU cost with this override."
	prev _ curr.
	curr _ next.
	next _ next ifNotNil: [ next realObjectIfMutatingProxy next ]! !

!MagmaSolHashFrame methodsFor: 'overriding' stamp: 'cmm 4/21/2011 20:49'!
set: aSOLHashNode
	"next will almost always be a proxy, so we avoid the DNU cost with this override."
	prev _ aSOLHashNode.
	curr _ prev next.
	next _ curr ifNotNil: [ curr realObjectIfMutatingProxy next ]! !

!MagmaSolHashSegment methodsFor: 'private' stamp: 'cmm 4/8/2014 22:29'!
bucketAt: bucketNum put: anObject 
	"Return whatever (SOLHashSegment, SOLHashNode, or nil) is in pointers at the index corresponding to bucketNum."
	(pointers maIsLargeCollection not and: [ 1 + (bucketNum bitAnd: owner segMask) > self maxPointers ]) ifTrue: [ self convertToMagmaArray ].
	^ super
		bucketAt: bucketNum
		put: anObject! !

!MagmaSolHashSegment methodsFor: 'private' stamp: 'cmm 4/23/2011 15:02'!
convertToMagmaArray
	| oldPointers |
	oldPointers _ pointers.
	pointers _ MagmaArray new
		 pageSize: 1 ;
		 yourself.
	oldPointers withIndexDo:
		[ : each : x | pointers
			at: x
			put: each ]! !

!MagmaSolHashSegment methodsFor: 'private' stamp: 'cmm 4/8/2014 22:34'!
maxPointers
	^ 1000! !

!MagmaSolHashTable methodsFor: 'overriding' stamp: 'cmm 4/23/2011 12:08'!
hashSegmentClass
	^ MagmaSolHashSegment ! !

!MagmaSolHashTable methodsFor: 'overriding' stamp: 'cmm 4/21/2011 20:47'!
initializeFrame
	frame _ MagmaSolHashFrame new! !

!MagmaSolHashTable methodsFor: 'overriding' stamp: 'cmm 5/30/2018 20:15'!
newPointersCollection
	"This will be converted to a MagmaArray if/when an access takes it past this size."
	^ OrderedCollection new: 0! !

!MagmaSolHashTable class methodsFor: 'overriding' stamp: 'cmm 4/13/2011 21:57'!
defaultLoadFactor
	"MagmaArray's excel at being large, and we should optimize for fast access.  This is better than 3 because it means that dummy elements only take up 8.3% more of the total space, and better than 1 because that would be one dummy for every real node, which is just too much space overhead.  2 seems to be the best balance."
	^ 2! !

!MagmaSolHashTable class methodsFor: 'overriding' stamp: 'cmm 4/10/2011 19:49'!
defaultSegBits
	"A MagmaArray with up to  268435456 buckets would take up roughly 1.61G on disk.  That would be a good size before creating a new one."
	^ 28! !

!MagmaBufferPositionMap class methodsFor: 'as yet unclassified' stamp: 'cmm 8/1/2011 13:05'!
bufferPositionOfByteCodesPlusTrailerSize
	^ 26! !

!MagmaBufferPositionMap class methodsFor: 'as yet unclassified' stamp: 'cmm 8/10/2010 15:51'!
bufferPositionOfClassVersion
	"Magma adds 12 additional bytes."
	^ 28! !

!MagmaBufferPositionMap class methodsFor: 'as yet unclassified' stamp: 'cmm 8/10/2010 15:51'!
bufferPositionOfCommitNumber
	"Bumping over the classVersion for FixedObjectBuffers."
	^ 16! !

!MagmaBufferPositionMap class methodsFor: 'as yet unclassified' stamp: 'cmm 8/1/2011 13:06'!
bufferPositionOfMethodHeader
	^ 22! !

!MagmaBufferPositionMap class methodsFor: 'as yet unclassified' stamp: 'cmm 8/1/2011 14:56'!
headerSize
	"The standard record has 18 bytes of header.  Magma replaces portion of the header with the following:
		commitNumber - 6 bytes
		filler - 6 bytes
		classVersion - 2 bytes"
	^ 30! !

!MagmaBufferPositionMap class methodsFor: 'as yet unclassified' stamp: 'cmm 8/4/2011 21:32'!
headerSizeForCompiledMethodBuffer
	^ 34! !

!MagmaBufferPositionMap class methodsFor: 'as yet unclassified' stamp: 'cmm 8/27/2008 20:53'!
indexPosition
	"Reserve the 0-based particular slot for this attribute map."
	^ 1! !

!MagmaClassIdManager methodsFor: 'event handling' stamp: 'cmm 10/15/2004 12:40'!
assimilateInImageDefinition: aClass
	aClass isMeta ifTrue: [ MagmaSoftwareError signal: 'Metaclass instances are not stored here.' ].
	self addClassDefinition: (self inImageDefinition: aClass)! !

!MagmaClassIdManager methodsFor: 'event handling' stamp: 'cmm 10/1/2004 15:19'!
handleClassModification: aClass using: aMaObjectSerializer

	self refreshInImageDefinition: aClass! !

!MagmaClassIdManager methodsFor: 'event handling' stamp: 'cmm 9/6/2012 11:03'!
handleClassRename: aRenamedEvent 
	"aRenamedEvent's item has just been renamed."
	aRenamedEvent isRenamed ifFalse: [ ^ self ].
	self
		renameClass: aRenamedEvent item
		to: aRenamedEvent newName! !

!MagmaClassIdManager methodsFor: 'event handling' stamp: 'cmm 9/6/2012 17:55'!
renameClass: aClass to: newName 
	"Class name changed, so did hash, so rehash."
	idsByClass rehash.
	inImageDefinitions rehash.
	(self includesIdForClass: aClass) ifFalse: [ ^ self ].
	(self inImageDefinition: aClass) in:
		[ : renamedClassDefinition | renamedClassDefinition beKnownAs: newName ].
	(self classDefinitions at: (self idForClass: aClass)) do:
		[ : each | each beKnownAs: newName ]! !

!MagmaClassIdManager methodsFor: 'accessing' stamp: 'cmm 7/20/2007 11:52'!
idForClass: aClass ifAbsent: aBlock 
	^ aClass = MagmaCounter 
		ifTrue: [ self class magmaCounterClassId ]
		ifFalse: 
			[ super 
				idForClass: aClass
				ifAbsent: aBlock ]! !

!MagmaClassIdManager methodsFor: 'accessing' stamp: 'cmm 3/8/2007 00:28'!
largeCollectionIdsDo: aBlock 
	largeCollectionIds ifNil: 
		[ largeCollectionIds _ OrderedCollection new.
		self class largeCollectionClasses do: 
			[ : each | | id |
			(self includesIdForClass: each) 
				ifTrue: [ largeCollectionIds add: (self idForClass: each) ] ] ].
	largeCollectionIds do: aBlock! !

!MagmaClassIdManager methodsFor: 'private' stamp: 'cmm 7/14/2010 14:29'!
legacyClassMap
	^ ({99 -> MagmaCounter} , super legacyClassMap) sort: [ : a : b | a key < b key ]! !

!MagmaClassIdManager class methodsFor: 'as yet unclassified' stamp: 'cmm 7/23/2011 14:07'!
largeCollectionClasses
	^ MagmaCoreLargeCollection allSubclasses! !

!MagmaClassIdManager class methodsFor: 'as yet unclassified' stamp: 'cmm 7/20/2007 11:53'!
minimumClasses
	^ super minimumClasses, { MagmaCounter }! !

!MagmaClassIdManager class methodsFor: 'accessing' stamp: 'cmm 7/24/2007 23:00'!
magmaCounterClassId
	"MagmaCounters get special treatment because they cannot cause a commit-conflict.  To easily support this, we check for a special class-id."
	^ 99! !

!MagmaOidManager methodsFor: 'private' stamp: 'cmm 9/4/2012 16:42'!
cleanObject: anObject 
	super cleanObject: anObject.
	newObjects
		removeKey:
			(newOids
				removeKey: anObject
				ifAbsent: [ ^ self ])
		ifAbsent: [  ]! !

!MagmaOidManager methodsFor: 'private' stamp: 'cmm 8/6/2013 14:07'!
getNextOid
	| ans |
	^ (MaOidCalculator isOidForNewObject: (ans _ super getNextOid))
		ifTrue: [ ans ]
		ifFalse: [ MagmaUserError signal: 'Cannot support more than about 4M objects in a single commit.' ]! !

!MagmaOidManager methodsFor: 'private' stamp: 'cmm 8/3/2009 20:44'!
validateNextOid
	(MaOidCalculator isOidForNewObject: nextOid) ifFalse: 
		[ MagmaUserError signal: 'Magma cannot add more than 4-million new objects at once.' ]! !

!MagmaOidManager methodsFor: 'initialize-release' stamp: 'cmm 6/22/2016 19:56'!
finalizeOids
	super finalizeOids.
	newOids finalizeValues: true.
	newObjects class isAutoCleaning 
		ifTrue: [ newObjects finalizeValues ]
		ifFalse: [ newObjects _ newObjects reject: [ : each | each isNil ] ]! !

!MagmaOidManager methodsFor: 'initialize-release' stamp: 'sig 9/24/2007 09:41'!
initializeNewObjects

	newObjects _ MagmaPreferences weakValueDictionaryClass new! !

!MagmaOidManager methodsFor: 'initialize-release' stamp: 'cmm 4/25/2010 21:45'!
initializeNewOids
	newOids _ MaObjectSerializerPreferences newWeakIdentityKeyDictionary! !

!MagmaOidManager methodsFor: 'initialize-release' stamp: 'cmm 4/20/2005 22:23'!
reset

	super reset.
	self resetNewObjects! !

!MagmaOidManager methodsFor: 'initialize-release' stamp: 'cmm 4/20/2005 22:23'!
resetNewObjects
	"This is needed because we only have 2 million new-object oids.  If we didn't do this, the nextOid counter continues to increase to its ceiling."

	self
		initializeNewObjects ;
		initializeNewOids ;
		resetNextOid
	! !

!MagmaOidManager methodsFor: 'accessing' stamp: 'cmm 4/22/2013 13:33'!
objectWithOid: anInteger ifFound: oneArgBlock ifAbsent: aBlock

	^MaOidCalculator
		objectWithOid: anInteger
		ifNone:
			[ (MaOidCalculator isOidForNewObject: anInteger)
				ifTrue:
					[ newObjects
						at: anInteger
						ifPresent:
							[ :obj |
							obj 
								ifNil: [ aBlock value ] 
								ifNotNil: [ oneArgBlock value: obj ] ]
						ifAbsent: aBlock ]
				ifFalse:
					[ objects
						at: anInteger
						ifPresent:
							[ :obj |
							obj   "oid key marked to be cleaned"
								ifNil: [ aBlock value ]
								ifNotNil: [ oneArgBlock value: obj ] ]
						ifAbsent: aBlock ] ]




! !

!MagmaOidManager methodsFor: 'accessing' stamp: 'cmm 5/7/2013 10:28'!
oidFor: anObject ifAbsent: aBlock 
	^ anObject maIsMutatingProxy
		ifTrue: [ anObject maOid ]
		ifFalse:
			[ anObject maRequiresOwnBuffer
				ifTrue:
					[ newOids
						at: anObject
						ifPresent:
							[ : oid | oid
								ifNil: aBlock
								ifNotNil: [ oid ] ]
						ifAbsent:
							[ super
								oidFor: anObject
								ifAbsent: aBlock ] ]
				ifFalse:
					[ super
						oidFor: anObject
						ifAbsent: aBlock ] ]! !

!MagmaOidManager methodsFor: 'accessing' stamp: 'cmm 5/6/2013 17:25'!
oidOf: anObject is: anInteger 
	^ (MaOidCalculator isOidForNewObject: anInteger)
		ifTrue:
			[ newObjects
				at: anInteger
				put: anObject.
			newOids
				at: anObject
				put: anInteger ]
		ifFalse:
			[ super
				oidOf: anObject
				is: anInteger.
			(anObject maIsMutatingProxy and: [ anObject maRealObjectIsReified ]) ifTrue:
				[ oids
					at: anObject realObjectIfMutatingProxy
					put: anInteger ] ]! !

!MagmaOidManager methodsFor: 'copying' stamp: 'cmm 4/20/2005 22:16'!
postIndependentCopy

	super postIndependentCopy.
	newObjects _ newObjects copy.
	newOids _ newOids copy! !

!MagmaOidManager methodsFor: 'stats' stamp: 'cmm 5/7/2008 16:28'!
statistics
	^ statistics! !

!MagmaOidManager methodsFor: 'stats' stamp: 'cmm 5/7/2008 15:54'!
statistics: MaSerializationStat 
	statistics _ MaSerializationStat! !

!MagmaOidManager methodsFor: 'stats' stamp: 'cmm 5/7/2008 16:28'!
useStatisticsFrom: anotherOidManager 
	statistics _ anotherOidManager statistics! !

!MagmaDataRepair methodsFor: 'private' stamp: 'cmm 4/4/2014 20:45'!
anyDataToRepair
	doBlock _ [ : each | ^ true ].
	self enumerateCheckAndDo.
	^ false! !

!MagmaDataRepair methodsFor: 'private' stamp: 'cmm 12/29/2013 14:15'!
close
	session ifNotNil:
		[ session disconnectAndClose.
		session _ nil.
		MagmaNotification signal: 'session closed.' ]! !

!MagmaDataRepair methodsFor: 'private' stamp: 'cmm 12/28/2013 15:34'!
ensureOpen
	session ifNil: [ self open ]! !

!MagmaDataRepair methodsFor: 'private' stamp: 'cmm 5/20/2014 22:08'!
enumerateCheckAndDo
	"findBlock must send #check: to the receiver with the objects needing checked."
	count _ 0.
	self ensureOpen.
	startBlock cull: session cull: self.
	lastCommit _ Time millisecondClockValue.
	enumerateBlock cull: session cull: self! !

!MagmaDataRepair methodsFor: 'private' stamp: 'cmm 4/4/2014 13:29'!
open
	self close.
	session _ location newSession.
	session connectAs: 'data-repair'! !

!MagmaDataRepair methodsFor: 'private' stamp: 'cmm 11/22/2016 16:10'!
primRepair
	"safeMode causes the receiver to open its own transaction, and also to verify no data to repair before committing."
	repairBlock ifNil: [ MagmaUserError signal: 'repairBlock must be specified to repair.' ].
	MagmaRepairNotification signal: 'Repair mode: ' , mode.
	self open.
	[ self anyDataToRepair
		ifTrue:
			[ | commitNumberBefore failed |
			failed _ false.
			MagmaRepairNotification signal: 'Found data to repair.  Attempting repair.'.
			commitNumberBefore _ session remoteCommitNumber.
			session begin.
			"Do the repair."
			doBlock _ repairBlock.
			self enumerateCheckAndDo.
			self improveMode
				ifTrue: [ session commit ]
				ifFalse:
					[ MagmaRepairNotification signal: 'Verifying repair before committing.'.
					self anyDataToRepair
						ifTrue:
							[ MagmaRepairNotification signal: 'Still found data to repair.  Aborting.'.
							failed _ true.
							session abort ]
						ifFalse:
							[ MagmaRepairNotification signal: 'No data left to repair.  Committing.'.
							session commit ] ].
			"Close to force a new session when evaluating anyDataToRepair."
			self close.
			(failed or:
				[ MagmaRepairNotification signal: 'Verifying repair...'.
				self anyDataToRepair ])
				ifTrue:
					[ | errMsg |
					errMsg _ String streamContents:
						[ : stream | stream maPrint: 'Verification failed.  '.
						self improveMode
							ifTrue: [ stream maPrint: 'Some improvement may have been committed.' ]
							ifFalse:
								[ failed ifFalse: [ stream maPrint: '(Perhaps the repair tried to change immutable objects?)' ].
								stream maPrint: 'Repair failed.  Commit number prior to repair was ', commitNumberBefore ] ].
					MagmaRepairNotification signal: errMsg.
					MagmaRepairFailure signal: errMsg ]
				ifFalse: [ MagmaRepairNotification signal: 'Verification complete.  Repair successful.' ] ]
		ifFalse: [ MagmaRepairNotification signal: 'No data to repair.' ] ] ensure: [ self close ]! !

!MagmaDataRepair methodsFor: 'private' stamp: 'cmm 4/3/2014 14:25'!
signalCount
	MagmaRepairNotification signal: 'Total:  ' , count asString , ' objects needing repair.'! !

!MagmaDataRepair methodsFor: 'actions' stamp: 'cmm 4/16/2014 10:22'!
check
	"Answer a boolean whether there is any data needing repair."
	| found |
	mode _ #check.
	MagmaRepairNotification signal: 'Repair mode:  #check.'.
	found _ self anyDataToRepair.
	MagmaRepairNotification signal:
		(found
			ifTrue: [ 'Found data in need of repair.' ]
			ifFalse: [ 'All data found clean, no data to repair.' ]).
	^ found! !

!MagmaDataRepair methodsFor: 'actions' stamp: 'cmm 4/16/2014 10:22'!
count
	"Answer the number of objects needing repair."
	mode _ #count.
	MagmaRepairNotification signal: 'Repair mode:  #count.'.
	self
		 enumerateCheckAndDo ;
		 signalCount.
	^ count! !

!MagmaDataRepair methodsFor: 'actions' stamp: 'cmm 4/16/2014 10:22'!
identify
	| badData |
	mode _ #identify.
	badData _ OrderedCollection new.
	doBlock _ [ : badObject | badData add: badObject ].
	MagmaRepairNotification signal: 'Repair mode:  #identify'.
	self enumerateCheckAndDo.
"	badData do: [ : each | MagmaRepairNotification signal: 'Found needing repair: ', each asString ]."
	self signalCount.
	^ badData! !

!MagmaDataRepair methodsFor: 'actions' stamp: 'cmm 4/16/2014 10:21'!
improve
	"Commit repairs as we go, allowing some but possibly not all objects to be repaired, an improvement."
	mode _ #improve.
	self primRepair! !

!MagmaDataRepair methodsFor: 'actions' stamp: 'cmm 4/16/2014 10:21'!
repair
	mode _ #repair.
	self primRepair! !

!MagmaDataRepair methodsFor: 'user-responsibility' stamp: 'cmm 11/22/2016 15:39'!
check: anObject 
	"Your data-repair script must send #check: to the passed-in DataRepair object (2nd arg of the block), with the object to be checked by the checkBlock.  See the class comment for an example."
	(checkBlock
		cull: anObject
		cull: self) ifTrue:
		[ count _ count + 1.
		doBlock
			cull: anObject
			cull: self.
		strongReferences add: anObject.
		(self improveMode and: [ (Time millisecondsSince: lastCommit) > (80 * 1000) ]) ifTrue:
			[ session commitAndBegin.
			lastCommit _ Time millisecondClockValue ] ]! !

!MagmaDataRepair methodsFor: 'accounting' stamp: 'cmm 12/29/2013 14:35'!
commitNumberAfter
	^ self attributeNamed: #commitNumberAfter! !

!MagmaDataRepair methodsFor: 'accounting' stamp: 'cmm 12/29/2013 14:35'!
commitNumberAfter: aString 
	self
		attributeNamed: #commitNumberAfter
		put: aString! !

!MagmaDataRepair methodsFor: 'accounting' stamp: 'cmm 12/29/2013 14:30'!
commitNumberBefore
	^ self attributeNamed: #commitNumberBefore! !

!MagmaDataRepair methodsFor: 'accounting' stamp: 'cmm 12/29/2013 14:35'!
commitNumberBefore: aString 
	self
		attributeNamed: #commitNumberBefore
		put: aString! !

!MagmaDataRepair methodsFor: 'accounting' stamp: 'cmm 12/29/2013 14:36'!
description
	^ self attributeNamed: #description! !

!MagmaDataRepair methodsFor: 'accounting' stamp: 'cmm 12/29/2013 14:37'!
description: aString 
	self
		attributeNamed: #description
		put: aString! !

!MagmaDataRepair methodsFor: 'accounting' stamp: 'cmm 12/29/2013 14:21'!
timestamp
	^ self attributeNamed: #timestamp! !

!MagmaDataRepair methodsFor: 'accounting' stamp: 'cmm 12/29/2013 14:20'!
timestamp: aString 
	self
		attributeNamed: #timestamp
		put: aString! !

!MagmaDataRepair methodsFor: 'testing' stamp: 'cmm 4/16/2014 10:19'!
improveMode
	^ mode = #improve! !

!MagmaDataRepair methodsFor: 'initialize-release' stamp: 'cmm 11/22/2016 15:39'!
initialize
	super initialize.
	doBlock _ startBlock _ [].
	strongReferences _ IdentitySet new! !

!MagmaDataRepair methodsFor: 'initialize-release' stamp: 'cmm 4/3/2014 13:36'!
repairBlock: aBlock
	"A block, up to two arguments where 1st is the object produced by my findBlock, and the 2nd, the receiver."
	repairBlock _ aBlock! !

!MagmaDataRepair methodsFor: 'initialize-release' stamp: 'cmm 5/19/2014 22:07'!
setLocation: aMagmaLocation startBlock: startBlockArg enumerateBlock: enumerateBlockArg checkBlock: checkBlockArg repairBlock: repairBlockArg 
	location _ aMagmaLocation.
	startBlock _ startBlockArg.
	enumerateBlock _ enumerateBlockArg.
	checkBlock _ checkBlockArg.
	repairBlock _ repairBlockArg.
	^ self! !

!MagmaDataRepair methodsFor: 'accessing' stamp: 'cmm 12/28/2013 11:20'!
location
	"The database location to be repaired."
	^ location! !

!MagmaDataRepair methodsFor: 'accessing' stamp: 'cmm 12/29/2013 15:07'!
session
	^ session! !

!MagmaDataRepair class methodsFor: 'create' stamp: 'cmm 5/19/2014 22:07'!
at: aMagmaLocation start: startBlockArg enumerate: enumerateBlock check: checkBlock repair: repairBlock 
	^ self new
		setLocation: aMagmaLocation
		startBlock: startBlockArg
		enumerateBlock: enumerateBlock
		checkBlock: checkBlock
		repairBlock: repairBlock! !

!MagmaPreferences methodsFor: 'accessing' stamp: 'cmm 7/17/2014 15:34'!
allowLongCatchUp
	"If the session should find itself more than 100 commits behind, whether it should automatically catch itself up or whether a MagmaTooFarBehindError should be signaled.
	Most of the time, catching up from a long time ago is costly for both client and server, therefore the default is false.  Note however that MagmaTooFarBehindError is resumable."
	^ self attributeNamed: #allowLongCatchUp! !

!MagmaPreferences methodsFor: 'accessing' stamp: 'cmm 7/17/2014 15:34'!
allowLongCatchUp: anInteger
	"If the session should find itself more than 100 commits behind, whether it should automatically catch itself up or whether a MagmaTooFarBehindError should be signaled.
	Most of the time, catching up from a long time ago is costly for both client and server, therefore the default is false.  Note however that MagmaTooFarBehindError is resumable."
	self
		attributeNamed: #allowLongCatchUp
		put: anInteger! !

!MagmaPreferences methodsFor: 'accessing' stamp: 'cmm 10/13/2012 22:29'!
allowWriteBarrier
	^ self attributeNamed: #allowWriteBarrier! !

!MagmaPreferences methodsFor: 'accessing' stamp: 'cmm 10/13/2012 22:47'!
allowWriteBarrier: aBoolean 
	"Specify whether WriteBarrier should be used.  WriteBarrier changes the class of each materialized domain to a specialized subclass that overrides the mutating methods to call super, then signal a changed flag if the object changed."
	aBoolean ifTrue:
		[ self class canEnableWriteBarrier ifFalse: [ self class signalCannotEnableWriteBarrier ] ].
	self
		attributeNamed: #allowWriteBarrier
		put: aBoolean! !

!MagmaPreferences methodsFor: 'accessing' stamp: 'cmm 7/24/2018 20:47'!
linkLocations
	"A Dictionary keyed by MagmaId and valued by an OrderedCollection of MagmaLocations representing the preferred connection order."
	^ self attributeNamed: #linkLocations! !

!MagmaPreferences methodsFor: 'accessing' stamp: 'cmm 7/24/2018 20:47'!
linkLocations: aDictionary 
	"A Dictionary keyed by MagmaId and valued by an OrderedCollection of MagmaLocations representing the preferred connection order."
	^ self
		attributeNamed: #linkLocations
		put: aDictionary! !

!MagmaPreferences methodsFor: 'accessing' stamp: 'cmm 10/13/2012 22:57'!
retrySeconds
	^ self attributeNamed: #retrySeconds! !

!MagmaPreferences methodsFor: 'accessing' stamp: 'cmm 10/13/2012 22:57'!
retrySeconds: anInteger 
	"For requests that can retry, the number of seconds to wait before retrying."
	self
		attributeNamed: #retrySeconds
		put: anInteger! !

!MagmaPreferences methodsFor: 'accessing' stamp: 'cmm 10/13/2012 22:30'!
signalProxyMaterializations
	"When set to true, every time a proxy is materialized, a MagmaProxyMaterialization notification is signaled.  This is useful during development for performance tuning specifically for optimizing your read strategies."
	^ self attributeNamed: #signalProxyMaterializations! !

!MagmaPreferences methodsFor: 'accessing' stamp: 'cmm 10/13/2012 22:30'!
signalProxyMaterializations: aBoolean 
	"Whether a MagmaProxyMaterialization should be signaled whenever a proxy is converted to a real object."
	self
		attributeNamed: #signalProxyMaterializations
		put: aBoolean! !

!MagmaPreferences methodsFor: 'accessing' stamp: 'cmm 10/13/2012 22:57'!
timeoutSeconds
	"The number of seconds to wait for requests that cannot retry."
	^ self attributeNamed: #timeoutSeconds! !

!MagmaPreferences methodsFor: 'accessing' stamp: 'cmm 10/13/2012 22:57'!
timeoutSeconds: anInteger 
	"The number of seconds to wait for requests that cannot retry."
	self
		attributeNamed: #timeoutSeconds
		put: anInteger! !

!MagmaPreferences methodsFor: 'initializing' stamp: 'cmm 7/17/2014 15:28'!
initialize
	super initialize.
	self 
		signalProxyMaterializations: false ;
		allowWriteBarrier: false ;
		timeoutSeconds: 30 ;
		retrySeconds: 30 ;
		allowLongCatchUp: false! !

!MagmaPreferences class methodsFor: 'write-barrier' stamp: 'cmm 11/26/2011 12:59'!
canEnableWriteBarrier
	^ true! !

!MagmaPreferences class methodsFor: 'write-barrier' stamp: 'cmm 11/22/2011 22:27'!
signalCannotEnableWriteBarrier
	MagmaUserError signal: 'Cannot enable WriteBarrier.'! !

!MagmaPreferences class methodsFor: 'debugging' stamp: 'cmm 8/10/2002 18:09'!
debug

	^Debug! !

!MagmaPreferences class methodsFor: 'debugging' stamp: 'cmm 8/10/2002 18:10'!
debug: aBoolean

	Debug _ aBoolean! !

!MagmaPreferences class methodsFor: 'debugging' stamp: 'cmm 7/16/2002 00:24'!
debugProxies

	^DebugProxies! !

!MagmaPreferences class methodsFor: 'debugging' stamp: 'cmm 7/25/2002 22:31'!
debugProxies: aBoolean

	DebugProxies _ aBoolean! !

!MagmaPreferences class methodsFor: 'debugging' stamp: 'cmm 5/22/2013 16:54'!
debugProxiesWhile: aBlock 
	| priorSetting |
	priorSetting _ DebugProxies.
	self debugProxies: true.
	aBlock ensure: [ self debugProxies: priorSetting ]! !

!MagmaPreferences class methodsFor: 'initializing' stamp: 'cmm 9/3/2012 19:57'!
initialize
	super initialize.
	self
		debugProxies: false ;
		debug: false ;
		showStatusViaCursor: true! !

!MagmaPreferences class methodsFor: 'mouse cursor' stamp: 'cmm 6/17/2009 09:50'!
readCursor
	^ ShowStatusViaCursor 
		ifTrue: [ Cursor read ]
		ifFalse: [ self ]! !

!MagmaPreferences class methodsFor: 'mouse cursor' stamp: 'cmm 6/17/2009 09:44'!
showStatusViaCursor 
	^ ShowStatusViaCursor! !

!MagmaPreferences class methodsFor: 'mouse cursor' stamp: 'cmm 6/17/2009 09:44'!
showStatusViaCursor: aBoolean 
	ShowStatusViaCursor _ aBoolean! !

!MagmaPreferences class methodsFor: 'mouse cursor' stamp: 'cmm 6/17/2009 09:46'!
showWhile: aBlock 
	"This class operates as a 'null cursor' that does not change the cursor, only evaluates aBlock."
	^ aBlock value! !

!MagmaPreferences class methodsFor: 'mouse cursor' stamp: 'cmm 3/7/2011 14:13'!
suspendStatusViaCursorWhile: aBlock
	| priorSetting |
	priorSetting _ self showStatusViaCursor.
	self showStatusViaCursor: false.
	aBlock ensure: [ self showStatusViaCursor: priorSetting ]! !

!MagmaPreferences class methodsFor: 'mouse cursor' stamp: 'cmm 6/17/2009 09:52'!
waitCursor
	^ ShowStatusViaCursor 
		ifTrue: [ Cursor wait ]
		ifFalse: [ self ]! !

!MagmaPreferences class methodsFor: 'mouse cursor' stamp: 'cmm 6/17/2009 09:53'!
writeCursor
	^ ShowStatusViaCursor 
		ifTrue: [ Cursor write ]
		ifFalse: [ self ]! !

!MagmaPreferences class methodsFor: 'special collections' stamp: 'cmm 4/25/2010 20:56'!
weakIdentityKeyDictionaryClass
	^ MaObjectSerializerPreferences weakIdentityKeyDictionaryClass! !

!MagmaPreferences class methodsFor: 'special collections' stamp: 'cmm 4/25/2010 20:56'!
weakIdentityKeyDictionaryClass: aClass 
	MaObjectSerializerPreferences weakIdentityKeyDictionaryClass: aClass! !

!MagmaPreferences class methodsFor: 'special collections' stamp: 'cmm 4/25/2010 20:56'!
weakValueDictionaryClass
	^ MaObjectSerializerPreferences weakValueDictionaryClass! !

!MagmaPreferences class methodsFor: 'special collections' stamp: 'cmm 5/13/2010 13:50'!
weakValueDictionaryClass: aClass
	MaObjectSerializerPreferences weakValueDictionaryClass: aClass! !

!MagmaRepositoryDefinition methodsFor: 'initialize' stamp: 'jpb 5/10/2021 16:41:54'!
addMinimumClassesForOdbmsUsing: aMaObjectSerializer 
	"When a MagmaRepository is initially created, it has no notion of MagmaLocations.  Only when it is initially deployed as a server will an instance of MagmaRemoteLocation be added to the MagmaNode, thereby causing those classes to be in the class-definitions.	But, if a new repository is created, then attempt to set the node, the required order of the special-oid processing, that the #refreshNode must occur before #refreshClassDefinitions, resulting in a 'class-definition not found' error will occur.	Therefore, the following ensures the necessary classes are part of the class-definitions, making this a non-issue."
	| newBlock |
	
	newBlock _ 	[ : classIdManager | 
		{  MaServerLocation  } , MagmaLocation withAllSubclasses asArray do: [ : each | 
			(classIdManager includesIdForClass: each)
				ifFalse: [ classIdManager addNewClass: each ] ].
			
		self classDefinitions: classIdManager classDefinitionsById ].
	
	newBlock value: 	aMaObjectSerializer classIdManager.! !

!MagmaRepositoryDefinition methodsFor: 'initialize' stamp: 'cmm 5/29/2002 22:43'!
classDefinitions: aDictionary

	classDefinitions _ aDictionary
! !

!MagmaRepositoryDefinition methodsFor: 'initialize' stamp: 'cmm 6/4/2004 13:16'!
classDefinitionsForId: anInteger

	^ classDefinitions at: anInteger! !

!MagmaRepositoryDefinition methodsFor: 'initialize' stamp: 'cmm 10/20/2014 13:00'!
initialize
	super initialize.
	self classDefinitions: Dictionary new.
	codeBase _ MagmaRepositoryCodeBase new.
	self initializeMagmaId.
	maximumNumberOfChallengers _ 1000.
	links _ Set new.
	symbols _ Set new.
	locked _ false! !

!MagmaRepositoryDefinition methodsFor: 'initialize' stamp: 'cmm 11/13/2008 21:27'!
initializeMagmaId
	magmaId _ MagmaId new! !

!MagmaRepositoryDefinition methodsFor: 'classes' stamp: 'cmm 8/21/2002 21:58'!
classDefinitions
	"Key = classId, value = anOrderedCollection of MaOdbmsClassDefinition's."

	^classDefinitions! !

!MagmaRepositoryDefinition methodsFor: 'classes' stamp: 'cmm 5/1/2014 10:09'!
classes
	^ self classDefinitions collect: [ : each | each anyOne classObject ]! !

!MagmaRepositoryDefinition methodsFor: 'code base' stamp: 'cmm 10/26/2004 23:41'!
codeBase

	^ codeBase! !

!MagmaRepositoryDefinition methodsFor: 'links' stamp: 'cmm 8/11/2012 14:55'!
ensureCanonicalizedMagmaId: aMagmaId 
	"If aMagmaId is already present in one of my other links, use it instead."
	^ aMagmaId = self magmaId 
		ifTrue: [ self magmaId ]
		ifFalse: 
			[ self links 
				detect: [ : each | each = aMagmaId ]
				ifNone: [ self links add: aMagmaId ] ]! !

!MagmaRepositoryDefinition methodsFor: 'links' stamp: 'cmm 11/18/2009 13:13'!
hasCanonicalizedMagmaId: aMagmaId 
	"If aMagmaId is already present in one of my other links, use it instead."
	^ aMagmaId = self magmaId or: [ self links anySatisfy: [ : each | each = aMagmaId ] ]! !

!MagmaRepositoryDefinition methodsFor: 'links' stamp: 'cmm 10/28/2010 18:35'!
links
	^ links! !

!MagmaRepositoryDefinition methodsFor: 'accessing' stamp: 'cmm 5/25/2014 13:42'!
lock
	locked _ true! !

!MagmaRepositoryDefinition methodsFor: 'accessing' stamp: 'cmm 5/25/2014 13:41'!
locked
	^ locked ifNil: [ false ]! !

!MagmaRepositoryDefinition methodsFor: 'accessing' stamp: 'cmm 12/21/2008 23:42'!
magmaId
	"The #magmaId is an object which has identifying information about the repository."
	^ magmaId! !

!MagmaRepositoryDefinition methodsFor: 'accessing' stamp: 'cmm 11/3/2008 10:38'!
node
	^ magmaId node! !

!MagmaRepositoryDefinition methodsFor: 'accessing' stamp: 'cmm 10/20/2014 13:01'!
symbols
	"All Symbols referenced in this repository.  It's helpful to canonicalize them here, so that clients will always know about them rather than creating new instances of Symbols in the DB just because they hadn't yet encountered a particular Symbol."
	^ symbols ifNil: [ symbols _ Set new ]! !

!MagmaRepositoryDefinition methodsFor: 'settings' stamp: 'cmm 5/29/2002 22:43'!
maximumNumberOfChallengers
	"Answer the maximum number of commit entry's Magma should allow in each users session before that session will be terminated.  Commit entry's are records stored in the servers memory that record the objects changed by each user.  When a session is in a transaction, these entries 'pile up', consuming server memory.  Only when the client crosses a transaction boundary (i.e., begin, commit or abort) is the log for that session cleared."

	^maximumNumberOfChallengers
! !

!MagmaRepositoryDefinition methodsFor: 'settings' stamp: 'cmm 5/29/2002 22:43'!
maximumNumberOfChallengers: anInteger

	maximumNumberOfChallengers _ anInteger
! !

!MagmaRepositoryDefinition methodsFor: 'ui' stamp: 'cmm 6/17/2011 15:43'!
uiFamily
	^ self attributeNamed: #uiFamily! !

!MagmaRepositoryDefinition methodsFor: 'ui' stamp: 'cmm 6/17/2011 15:46'!
uiFamily: aMauiFamily 
	"Argument says its a MauiFamily, but it could be any type of UI-family that responds to #merge: (which merges the panels of one family into the other)."
	self
		attributeNamed: #uiFamily
		put: aMauiFamily! !

!MagmaRepositoryDefinition class methodsFor: 'as yet unclassified' stamp: 'cmm 7/8/2009 18:35'!
defaultMaximumNumberOfChallengers
	"defaultMaximumNumberOfChallengers is used to manage server resources.  Since all commit records against a session build-up in memory until the session crosses a transaction boundary (browse references to MaTransactionLog>>'challengingEntries').  For now, we use this simple default."
	^ 1000! !

!MagmaRepositoryDefinition class methodsFor: 'as yet unclassified' stamp: 'cmm 11/7/2008 15:17'!
runningTestCases
	^ RunningTestCases ifNil: [ RunningTestCases _ false ]! !

!MagmaRepositoryDefinition class methodsFor: 'as yet unclassified' stamp: 'cmm 11/7/2008 15:17'!
runningTestCases: aBoolean
	RunningTestCases _ aBoolean! !

!MagmaRepositoryRequest methodsFor: 'accessing' stamp: 'cmm 2/27/2009 15:59'!
failedLocation: aMagmaRemoteLocation 
	failedLocation _ aMagmaRemoteLocation! !

!MagmaRepositoryRequest methodsFor: 'accessing' stamp: 'cmm 3/8/2009 15:21'!
prepareToSubmitFor: aMagmaSession 
	self sessionId: aMagmaSession id! !

!MagmaRepositoryRequest methodsFor: 'accessing'!
sessionId

	^sessionId! !

!MagmaRepositoryRequest methodsFor: 'accessing' stamp: 'cmm 11/5/2008 16:10'!
sessionId: aUuid 
	self requiresConnection ifTrue: [ aUuid ifNil: [ MagmaSoftwareError signal ] ].
	sessionId _ aUuid! !

!MagmaRepositoryRequest methodsFor: 'accessing' stamp: 'cmm 6/17/2009 10:08'!
waitCursor
	^ MagmaPreferences waitCursor! !

!MagmaRepositoryRequest methodsFor: 'testing' stamp: 'cmm 8/20/2014 14:47'!
isBegin
	^ false! !

!MagmaRepositoryRequest methodsFor: 'testing' stamp: 'cmm 2/5/2009 20:16'!
isConnect
	^ false! !

!MagmaRepositoryRequest methodsFor: 'testing' stamp: 'cmm 9/21/2008 21:02'!
isDisconnect
	^ false! !

!MagmaRepositoryRequest methodsFor: 'testing' stamp: 'cmm 3/1/2009 12:02'!
isWriteRequest
	^ false! !

!MagmaRepositoryRequest methodsFor: 'testing' stamp: 'cmm 12/31/2002 15:26'!
requiresConnection

	^true! !

!MagmaRepositoryRequest methodsFor: 'testing' stamp: 'cmm 9/24/2012 16:54'!
timesToRetry
	^ 2! !

!MaAbortTransactionRequest methodsFor: 'accessing' stamp: 'cmm 7/10/2009 13:49'!
additionalBuffers: anArray
	additionalBuffers _ anArray! !

!MaAbortTransactionRequest methodsFor: 'accessing' stamp: 'cmm 12/5/2012 10:05'!
timesToRetry
	^ 0! !

!MaAbstractReadRequest methodsFor: 'building' stamp: 'cmm 3/8/2009 15:21'!
prepareToSubmitFor: aMagmaSession 
	super prepareToSubmitFor: aMagmaSession.
	requiredProgress _ aMagmaSession requiredProgress! !

!MaAbstractReadRequest methodsFor: 'building' stamp: 'cmm 6/4/2006 20:11'!
readStrategy
	^ readStrategy ! !

!MaAbstractReadRequest methodsFor: 'building' stamp: 'cmm 9/1/2003 23:25'!
readStrategy: aMaReadStrategy

	readStrategy _ aMaReadStrategy! !

!MaAbstractReadRequest methodsFor: 'accessing' stamp: 'cmm 3/8/2009 14:25'!
requiredProgress
	^requiredProgress! !

!MaAbstractReadRequest methodsFor: 'accessing' stamp: 'cmm 12/4/2012 22:15'!
timesToRetry
	^ 3! !

!MaAbstractReadRequest methodsFor: 'accessing' stamp: 'cmm 6/17/2009 09:50'!
waitCursor
	^ MagmaPreferences readCursor! !

!MaAbstractReadRequest class methodsFor: 'as yet unclassified' stamp: 'cmm 10/12/2015 15:08'!
initializeDefaultSound
	defaultSound _ ((FMSound new
		 addEnvelope:
			(VolumeEnvelope
				points: {0 @ 1.0. 1 @ 1.0}
				loopStart: 1
				loopEnd: 1) ;
			 yourself)
		setPitch: 840.0
		dur: 0.1
		loudness: 0.25)! !

!MaLargeCollectionSegmentRequest methodsFor: 'accessing' stamp: 'cmm 6/4/2006 20:11'!
collectionOid
	^ collectionOid! !

!MaLargeCollectionSegmentRequest methodsFor: 'accessing' stamp: 'cmm 12/2/2004 13:50'!
collectionOid: anInteger

	collectionOid _ anInteger! !

!MaLargeCollectionSegmentRequest methodsFor: 'accessing' stamp: 'cmm 6/4/2006 20:11'!
quantity
	^ quantity! !

!MaLargeCollectionSegmentRequest methodsFor: 'accessing'!
quantity: anInteger

	quantity _ anInteger
! !

!MaRefreshSegmentRequest methodsFor: 'accessing' stamp: 'cmm 8/6/2006 21:24'!
exceptions
	^exceptions! !

!MaRefreshSegmentRequest methodsFor: 'accessing' stamp: 'cmm 8/6/2006 22:32'!
exceptions: aSet
	exceptions _ aSet! !

!MaRefreshSegmentRequest methodsFor: 'accessing' stamp: 'cmm 6/3/2006 15:50'!
expression
	^expression! !

!MaRefreshSegmentRequest methodsFor: 'accessing' stamp: 'cmm 6/3/2006 15:50'!
expression: aMaTerm
	expression _ aMaTerm! !

!MaRefreshSegmentRequest methodsFor: 'accessing' stamp: 'cmm 7/29/2006 18:23'!
loadObjects
	^loadObjects! !

!MaRefreshSegmentRequest methodsFor: 'accessing' stamp: 'cmm 7/29/2006 18:23'!
loadObjects: aBoolean
	loadObjects _ aBoolean! !

!MaRefreshSegmentRequest methodsFor: 'accessing' stamp: 'cmm 6/3/2006 15:50'!
segment
	^segment! !

!MaRefreshSegmentRequest methodsFor: 'accessing' stamp: 'cmm 6/3/2006 15:50'!
segment: aMagmaCollectionSegment
	segment _ aMagmaCollectionSegment! !

!MaSegmentByIndexRequest methodsFor: 'building'!
lowIndex: anInteger

	lowIndex _ anInteger
! !

!MaReadMultipleRequest methodsFor: 'accessing' stamp: 'cmm 2/11/2008 16:21'!
oids: aCollection
	oids _ aCollection! !

!MaReadRequest methodsFor: 'building'!
oid: anInteger

	oid _ anInteger
! !

!MaCommitLogRecordRequest methodsFor: 'accessing' stamp: 'cmm 3/15/2009 19:35'!
endingCommitNumber: anInteger
	endingCommitNumber _ anInteger! !

!MaCommitLogRecordRequest methodsFor: 'accessing' stamp: 'cmm 8/12/2008 21:43'!
startingCommitNumber: anInteger
	startingCommitNumber _ anInteger! !

!MaCommitLogRecordRequest methodsFor: 'accessing' stamp: 'cmm 6/17/2009 10:07'!
waitCursor
	^ MagmaPreferences readCursor! !

!MaCommitLogRecordRequest methodsFor: 'testing' stamp: 'cmm 10/14/2008 16:39'!
requiresConnection
	^ false! !

!MaCommitLogRecordRequest class methodsFor: 'initialize-release' stamp: 'cmm 10/12/2015 16:05'!
initializeDefaultSound
	defaultSound _ ((FMSound new
		 addEnvelope:
			(VolumeEnvelope
				points: {0 @ 1.0. 1 @ 1.0}
				loopStart: 1
				loopEnd: 1) ;
			 yourself)
		setPitch: 210.0
		dur: 0.1
		loudness: 1.0 ;
		modulation: 2 ratio: 0.5)! !

!MaWarmBackupUpdateRequest methodsFor: 'accessing' stamp: 'cmm 10/14/2008 17:26'!
requestingLocation: aMagmaRemoteLocation
	"Set with the location of the warm-backup requesting the records."
	requestingLocation _ aMagmaRemoteLocation! !

!MaCommitRequest methodsFor: 'building' stamp: 'cmm 4/21/2003 17:04'!
beginAnother: aBoolean

	beginAnother _ aBoolean! !

!MaCommitRequest methodsFor: 'building'!
package: aMaCommitPackage

	package _ aMaCommitPackage
! !

!MaCommitRequest methodsFor: 'testing' stamp: 'cmm 9/24/2012 16:54'!
timesToRetry
	^ 0! !

!MaCommitRequest methodsFor: 'accessing' stamp: 'cmm 6/17/2009 10:07'!
waitCursor
	^ MagmaPreferences writeCursor! !

!MaCommitRequest class methodsFor: 'initialize-release' stamp: 'cmm 10/12/2015 15:15'!
initializeDefaultSound
	defaultSound _ ((FMSound new
		 addEnvelope:
			(VolumeEnvelope
				points: {0 @ 1.0. 1 @ 1.0}
				loopStart: 1
				loopEnd: 1) ;
			 yourself)
		setPitch: 420.0
		dur: 0.1
		loudness: 0.25)! !

!MaDownloadCodeRequest methodsFor: 'testing' stamp: 'cmm 12/31/2002 15:26'!
requiresConnection

	^false! !

!MaGetMcLockerRequest methodsFor: 'accessing' stamp: 'cmm 9/28/2008 20:54'!
mcOid: anInteger
	"The oid of the MagmaCollection."
	mcOid _ anInteger! !

!MaLargeCollectionSizeRequest methodsFor: 'building'!
collectionOid: anInteger

	collectionOid _ anInteger
! !

!MaLargeCollectionSizeRequest class methodsFor: 'initialize-release' stamp: 'cmm 10/12/2015 15:24'!
initializeDefaultSound
	defaultSound _ ((FMSound new
		 addEnvelope:
			(VolumeEnvelope
				points: {0 @ 1.0. 1 @ 1.0}
				loopStart: 1
				loopEnd: 1) ;
			 yourself)
		setPitch: 840.0
		dur: 0.1
		loudness: 0.25)! !

!MaKeyIntervalInfoRequest methodsFor: 'building'!
attribute: aSymbol

	attribute _ aSymbol
! !

!MaKeyIntervalInfoRequest methodsFor: 'building'!
highKey: anInteger

	highKey _ anInteger
! !

!MaKeyIntervalInfoRequest methodsFor: 'building'!
lowKey: anInteger

	lowKey _ anInteger
! !

!MaLoadFromReaderRequest methodsFor: 'accessing' stamp: 'cmm 10/16/2006 12:15'!
commitPackage: aMaCommitPackage
	commitPackage _ aMaCommitPackage! !

!MaLoadFromReaderRequest methodsFor: 'accessing' stamp: 'cmm 7/2/2006 23:43'!
distinct: aBoolean
	distinct _ aBoolean! !

!MaLoadFromReaderRequest methodsFor: 'accessing' stamp: 'cmm 7/3/2006 12:55'!
expression: aMagmaCollectionReader
	expression _ aMagmaCollectionReader! !

!MaLoadFromReaderRequest methodsFor: 'accessing' stamp: 'cmm 6/11/2006 21:51'!
sourceCollectionOid: anInteger
	sourceCollectionOid _ anInteger! !

!MaLoadFromReaderRequest methodsFor: 'testing' stamp: 'cmm 9/24/2012 16:55'!
timesToRetry
	"Don't retry these; the chance of a duplicate load process is just not worth it."
	^ 0! !

!MaLoadProgressRequest methodsFor: 'accessing' stamp: 'cmm 7/26/2006 17:59'!
collectionOid
	^collectionOid! !

!MaLoadProgressRequest methodsFor: 'accessing' stamp: 'cmm 7/26/2006 17:59'!
collectionOid: anInteger
	collectionOid _ anInteger! !

!MaPrimitiveAttributesRequest methodsFor: 'testing' stamp: 'cmm 10/22/2008 16:34'!
requiresConnection
	^ false! !

!MaRawBufferRequest methodsFor: 'as yet unclassified' stamp: 'cmm 3/14/2009 15:20'!
oid: anInteger 
	oid _ anInteger! !

!MaRawBufferRequest methodsFor: 'as yet unclassified' stamp: 'cmm 3/14/2009 15:21'!
requiresConnection
	^ false! !

!MaReaderTrunkRequest methodsFor: 'accessing' stamp: 'cmm 8/6/2006 18:34'!
collectionOid: aMaTerm
	collectionOid _ aMaTerm! !

!MaReaderTrunkRequest methodsFor: 'accessing' stamp: 'cmm 8/6/2006 18:33'!
expression: aMaTerm
	expression _ aMaTerm! !

!MaRefreshRequest methodsFor: 'overriding' stamp: 'cmm 1/8/2009 18:35'!
nodeCheck
	self shouldBePrimary! !

!MaRefreshRequest methodsFor: 'accessing' stamp: 'cmm 12/5/2012 10:07'!
timesToRetry
	^ 0! !

!MaRemoveSecondaryLocationRequest methodsFor: 'accessing' stamp: 'cmm 3/4/2009 15:47'!
locationToRemove: anObject
	locationToRemove _ anObject! !

!MaRemoveSecondaryLocationRequest methodsFor: 'testing' stamp: 'cmm 3/4/2009 15:50'!
requiresConnection
	^ false! !

!MaRemoveSecondaryLocationRequest methodsFor: 'testing' stamp: 'cmm 9/24/2012 16:55'!
timesToRetry
	^ 0! !

!MaRepositoryConnectionRequest methodsFor: 'building' stamp: 'cmm 11/18/2008 13:49'!
commitNumber: anInteger
	commitNumber _ anInteger! !

!MaRepositoryConnectionRequest methodsFor: 'building' stamp: 'cmm 12/30/2002 23:20'!
magmaVersion: anInteger

	magmaVersion _ anInteger! !

!MaRepositoryConnectionRequest methodsFor: 'building'!
userId: aString

	userId _ aString
! !

!MaRepositoryConnectionRequest methodsFor: 'building' stamp: 'cmm 12/18/2008 17:16'!
uuid: aUuid
	uuid _ aUuid! !

!MaRepositoryConnectionRequest methodsFor: 'testing' stamp: 'cmm 2/25/2009 11:04'!
isConnect
	^ true! !

!MaRepositoryConnectionRequest methodsFor: 'testing' stamp: 'cmm 12/31/2002 15:27'!
requiresConnection

	^false! !

!MaRepositoryConnectionRequest methodsFor: 'testing' stamp: 'cmm 12/5/2012 10:08'!
timesToRetry
	^ 0! !

!MaRepositoryDisconnectRequest methodsFor: 'testing' stamp: 'cmm 9/21/2008 21:02'!
isDisconnect
	^ true! !

!MaRepositoryDisconnectRequest methodsFor: 'testing' stamp: 'cmm 9/24/2012 16:55'!
timesToRetry
	"Can't connect to disconnect?  Don't retry that."
	^ 0! !

!MaRepositoryDisconnectRequest methodsFor: 'testing' stamp: 'cmm 11/24/2009 21:22'!
wantsResponse
	^ false! !

!MaSaveAndExitImageRequest methodsFor: 'accessing' stamp: 'cmm 12/21/2008 15:38'!
exit: aBoolean
	exit _ aBoolean! !

!MaSaveAndExitImageRequest methodsFor: 'accessing' stamp: 'cmm 12/21/2008 15:38'!
save: aBoolean
	save _ aBoolean! !

!MaSaveAndExitImageRequest methodsFor: 'testing' stamp: 'cmm 7/15/2008 17:22'!
requiresConnection
	^ false! !

!MaSaveAndExitImageRequest methodsFor: 'testing' stamp: 'cmm 9/24/2012 16:55'!
timesToRetry
	^ 0! !

!MaServerPerformRequest methodsFor: 'access' stamp: 'cmm 9/6/2007 21:32'!
arguments: anArray
	arguments _ anArray! !

!MaServerPerformRequest methodsFor: 'access' stamp: 'cmm 9/6/2007 21:32'!
selector: selectorSymbol
	selector _ selectorSymbol! !

!MaServerPerformRequest methodsFor: 'testing' stamp: 'cmm 2/22/2011 15:12'!
requiresConnection
	^ false! !

!MaServerPerformRequest methodsFor: 'testing' stamp: 'cmm 9/24/2012 16:56'!
timesToRetry 
	"Too risky to auto-retry, the operation may not be idempotent."
	^ 0! !

!MaTransactionRequest methodsFor: 'testing' stamp: 'cmm 8/20/2014 14:47'!
isBegin
	^ true! !

!MaTransactionRequest methodsFor: 'testing' stamp: 'cmm 9/24/2012 16:56'!
timesToRetry
	"A retry here on a timeout would result in a guaranteed error once the original bytes made it, so don't retry."
	^ 0! !

!MaWriteRequest methodsFor: 'accessing' stamp: 'cmm 3/2/2009 15:11'!
commitLogRecord
	^ commitLogRecord! !

!MaWriteRequest methodsFor: 'accessing' stamp: 'cmm 10/28/2008 11:15'!
commitLogRecord: aMaCommitLogRecord
	commitLogRecord _ aMaCommitLogRecord! !

!MaWriteRequest methodsFor: 'accessing' stamp: 'cmm 6/17/2009 10:07'!
waitCursor
	^ MagmaPreferences writeCursor! !

!MaWriteRequest methodsFor: 'testing' stamp: 'cmm 3/1/2009 12:02'!
isWriteRequest
	^ true! !

!MaWriteRequest methodsFor: 'testing' stamp: 'cmm 12/29/2008 19:27'!
requiresConnection
	^ false! !

!MaWriteRequest methodsFor: 'testing' stamp: 'cmm 9/24/2012 16:56'!
timesToRetry
	^ 0! !

!MaWriteRequest methodsFor: 'testing' stamp: 'cmm 11/13/2008 10:30'!
wantsResponse
	^ false! !

!MagmaBeWarmBackupRequest methodsFor: 'initializing' stamp: 'cmm 2/27/2009 15:13'!
primaryLocation: aMagmaRemoteLocation 
	primaryLocation _ aMagmaRemoteLocation! !

!MagmaBeWarmBackupRequest methodsFor: 'testing' stamp: 'cmm 2/27/2009 15:14'!
requiresConnection
	^ false! !

!MagmaBeWarmBackupRequest methodsFor: 'testing' stamp: 'cmm 9/24/2012 16:56'!
timesToRetry
	^ 0! !

!MagmaBeWarmBackupRequest methodsFor: 'testing' stamp: 'cmm 2/27/2009 15:14'!
wantsResponse
	^ false! !

!MagmaConnectionsRequest methodsFor: 'as yet unclassified' stamp: 'cmm 7/31/2013 09:58'!
process
	^ self repository connectionsList! !

!MagmaConnectionsRequest methodsFor: 'as yet unclassified' stamp: 'cmm 3/24/2013 17:11'!
requiresConnection
	^ false! !

!MagmaEnsureCorrectNodeConfiguration methodsFor: 'testing' stamp: 'cmm 9/24/2012 16:56'!
timesToRetry
	^ 0! !

!MagmaEnsureCorrectNodeConfiguration methodsFor: 'testing' stamp: 'cmm 11/22/2009 22:26'!
wantsResponse
	^ false! !

!MagmaFullBackupRequest methodsFor: 'testing' stamp: 'cmm 12/30/2008 14:02'!
requiresConnection
	^ false! !

!MagmaFullBackupRequest methodsFor: 'testing' stamp: 'cmm 9/24/2012 16:56'!
timesToRetry
	^ 0! !

!MagmaFullBackupRequest methodsFor: 'accessing' stamp: 'cmm 12/18/2008 15:26'!
serverPath: aString 
	"Set the server path to backup to."
	serverPath _ aString! !

!MagmaIdRequest methodsFor: 'testing' stamp: 'cmm 7/15/2008 17:00'!
requiresConnection
	"Although a connection is not required, the session must have been *previously* connected.  This is used for a session reconnection, we must ensure it is connecting to the same repository."
	^ false! !

!MagmaNoteUnreachableServer methodsFor: 'testing' stamp: 'cmm 3/6/2009 10:26'!
requiresConnection
	^ false! !

!MagmaNoteUnreachableServer methodsFor: 'testing' stamp: 'cmm 9/24/2012 16:56'!
timesToRetry
	^ 0! !

!MagmaPathNameRequest methodsFor: 'testing' stamp: 'cmm 9/19/2004 22:58'!
requiresConnection

	^ false! !

!MagmaReleaseReaderRequest methodsFor: 'accessing' stamp: 'cmm 1/5/2010 13:43'!
collectionOid: anInteger
	collectionOid _ anInteger! !

!MagmaReleaseReaderRequest methodsFor: 'testing' stamp: 'cmm 1/5/2010 14:25'!
wantsResponse
	^ false! !

!MagmaRequestSwapPrimaryDutyRequest methodsFor: 'testing' stamp: 'cmm 3/3/2009 21:38'!
requiresConnection
	^ false! !

!MagmaRequestSwapPrimaryDutyRequest methodsFor: 'testing' stamp: 'cmm 9/24/2012 16:56'!
timesToRetry
	^ 0! !

!MagmaServerStatisticsRequest methodsFor: 'testing' stamp: 'cmm 5/6/2008 14:01'!
requiresConnection
	^ false! !

!MagmaSwapPrimaryDutyRequest methodsFor: 'accessing' stamp: 'cmm 12/29/2008 16:41'!
branchCode: anInteger 
	branchCode _ anInteger! !

!MagmaSwapPrimaryDutyRequest methodsFor: 'accessing' stamp: 'cmm 12/29/2008 15:01'!
commitNumber: anInteger
	commitNumber _ anInteger! !

!MagmaSwapPrimaryDutyRequest methodsFor: 'accessing' stamp: 'cmm 3/3/2009 20:31'!
newPrimary: aMagmaRemoteLocation
	newPrimary _ aMagmaRemoteLocation! !

!MagmaSwapPrimaryDutyRequest methodsFor: 'accessing' stamp: 'cmm 9/24/2012 16:56'!
timesToRetry
	^ 0! !

!MaImmutabilityStrategy methodsFor: 'private' stamp: 'cmm 11/11/2011 21:28'!
classes
	^ classes! !

!MaImmutabilityStrategy methodsFor: 'private' stamp: 'cmm 11/7/2011 21:33'!
finalizeImmutables
	immutables finalizeValues! !

!MaImmutabilityStrategy methodsFor: 'private' stamp: 'cmm 12/2/2011 17:10'!
rememberIfImmutableByClass: anObject for: aMaTransaction 
	classes
		at: anObject maOriginalClass
		ifPresent:
			[ : foundCondition | (foundCondition value: anObject) ifTrue:
				[ aMaTransaction remove: anObject.
				immutables
					at: anObject
					put: nil ] ]
		ifAbsent: [  ]! !

!MaImmutabilityStrategy methodsFor: 'private' stamp: 'cmm 4/22/2013 16:44'!
rememberImmutableReferencesFrom: anObject bySpecFor: aMaTransaction
	specs
		at: anObject maOriginalClass
		ifPresent:
			[ : foundSpec | foundSpec keysAndValuesDo:
				[ : eachVarName : eachBlock | (eachBlock value: anObject) ifTrue:
					[ | immutable |
					immutable _ anObject instVarNamed: eachVarName.
					immutable maIsMutatingProxy ifTrue:
						[ immutable _ immutable maRealObjectIsReified ifTrue: [ immutable realObjectIfMutatingProxy ] ].
					immutable ifNotNil:
						[ aMaTransaction remove: immutable.
						immutables
							at: immutable
							put: nil ] ] ] ]
		ifAbsent: [  ]! !

!MaImmutabilityStrategy methodsFor: 'private' stamp: 'cmm 12/2/2011 17:10'!
rememberImmutableReferencesFrom: anObject for: aMaTransaction 
	self
		
		rememberIfImmutableByClass: anObject
		for: aMaTransaction ;
		
		rememberImmutableReferencesFrom: anObject
		bySpecFor: aMaTransaction! !

!MaImmutabilityStrategy methodsFor: 'private' stamp: 'cmm 11/11/2011 21:22'!
specs
	^ specs! !

!MaImmutabilityStrategy methodsFor: 'initialize-release' stamp: 'cmm 11/13/2011 20:11'!
initialize
	super initialize.
	specs _ Dictionary new.
	classes _ Dictionary new.
	self resetImmutables! !

!MaImmutabilityStrategy methodsFor: 'initialize-release' stamp: 'cmm 11/13/2011 20:11'!
resetImmutables
	immutables _ MaObjectSerializerPreferences newWeakIdentityKeyDictionary! !

!MaImmutabilityStrategy methodsFor: 'testing' stamp: 'cmm 11/3/2011 23:06'!
isImmutable: anObject using: aMaTransaction 
	anObject maIsLargeCollection ifTrue: [ ^ false ].
	self
		rememberImmutableReferencesFrom: anObject
		for: aMaTransaction.
	^ immutables includesKey: anObject! !

!MaImmutabilityStrategy methodsFor: 'setup' stamp: 'cmm 11/11/2011 21:23'!
merge: aMaImmutabilityStrategy 
	aMaImmutabilityStrategy specs keysAndValuesDo:
		[ : eachClass : eachMap | specs
			at: eachClass
			ifAbsentPut: [ eachMap copy ] ].
	aMaImmutabilityStrategy classes keysAndValuesDo:
		[ : eachClass : eachBlock | classes
			at: eachClass
			ifAbsentPut: [ eachBlock ] ]! !

!MaImmutabilityStrategy methodsFor: 'setup' stamp: 'cmm 11/10/2011 20:33'!
treatAny: aClass asImmutableIf: oneArgBlock 
	"Specify immutability of an object by its class and a condition on each instance of that class."
	aClass withAllSubclassesDo:
		[ : eachClass | classes
			at: eachClass
			put: oneArgBlock ]! !

!MaImmutabilityStrategy methodsFor: 'setup' stamp: 'cmm 11/10/2011 20:32'!
treatObjectReferencedBy: variableName onAny: aClass asImmutableIf: oneArgBlock 
	"Specify immutability of an object by its referencing object."
	| spec |
	(aClass allInstVarNames includes: variableName) ifFalse: [ MagmaUserError signal: aClass name , ' does not have a variable named ' , variableName ].
	aClass withAllSubclassesDo:
		[ : eachClass | spec _ specs
			at: eachClass
			ifAbsentPut: [ Dictionary new ].
		spec
			at: variableName
			put: oneArgBlock ]! !

!MaRootAnchor methodsFor: 'accessing' stamp: 'cmm 12/28/2004 23:56'!
definition: aMagmaRepositoryDefinition

	definition _ aMagmaRepositoryDefinition! !

!MaRootAnchor methodsFor: 'accessing' stamp: 'cmm 12/28/2004 23:55'!
root

	^ root! !

!MaRootAnchor methodsFor: 'building' stamp: 'cmm 12/28/2004 23:55'!
root: anObject

	root _ anObject
! !

!MaRootAnchor class methodsFor: 'creation'!
object: anObject

	^self new object: anObject
! !

!MagmaClientConnection methodsFor: 'private' stamp: 'cmm 3/25/2013 20:41'!
addChallengingBytes: anInteger 
	challengingBytes _ challengingBytes + anInteger! !

!MagmaClientConnection methodsFor: 'private' stamp: 'cmm 3/25/2013 20:42'!
resetChallengingBytes
	challengingBytes _ 0! !

!MagmaClientConnection methodsFor: 'accessing' stamp: 'cmm 3/25/2013 20:34'!
challengingBytes
	"The number of bytes that have been committed by others since this client last accessed the server."
	^ challengingBytes! !

!MagmaClientConnection methodsFor: 'accessing' stamp: 'cmm 4/28/2003 16:48'!
currentReadStrategy

	^currentReadStrategy! !

!MagmaClientConnection methodsFor: 'accessing' stamp: 'cmm 4/28/2003 16:48'!
currentReadStrategy: aMaReadStrategy

	currentReadStrategy _ aMaReadStrategy! !

!MagmaClientConnection methodsFor: 'accessing' stamp: 'cmm 3/25/2013 20:11'!
info
	^ maClientConnection info! !

!MagmaClientConnection methodsFor: 'accessing' stamp: 'cmm 11/7/2008 14:05'!
isSystem
	^isSystem! !

!MagmaClientConnection methodsFor: 'accessing' stamp: 'cmm 11/7/2008 14:05'!
isSystem: aBoolean
	isSystem _ aBoolean! !

!MagmaClientConnection methodsFor: 'accessing' stamp: 'cmm 4/14/2013 15:36'!
lastAccess
	^ maClientConnection ifNotNil: [ maClientConnection lastAccess ]! !

!MagmaClientConnection methodsFor: 'accessing' stamp: 'cmm 9/20/2008 16:35'!
maClientConnection
	"The MaClientConnection from the Ma client server framework."
	^maClientConnection! !

!MagmaClientConnection methodsFor: 'accessing' stamp: 'cmm 3/25/2013 20:10'!
maClientConnection: aMaClientConnection
	maClientConnection _ aMaClientConnection! !

!MagmaClientConnection methodsFor: 'accessing' stamp: 'cmm 6/26/2002 00:21'!
maximumNumberOfChallengers

	^maximumNumberOfChallengers! !

!MagmaClientConnection methodsFor: 'accessing' stamp: 'cmm 6/26/2002 00:21'!
maximumNumberOfChallengers: anInteger

	maximumNumberOfChallengers _ anInteger
! !

!MagmaClientConnection methodsFor: 'accessing' stamp: 'cmm 6/26/2002 00:21'!
sessionId

	^sessionId! !

!MagmaClientConnection methodsFor: 'accessing' stamp: 'cmm 6/26/2002 00:21'!
userId

	^userId! !

!MagmaClientConnection methodsFor: 'copying' stamp: 'cmm 7/31/2013 18:43'!
informationalCopy
	^ self copy postInformationalCopy! !

!MagmaClientConnection methodsFor: 'copying' stamp: 'cmm 7/31/2013 18:42'!
postInformationalCopy
	maClientConnection _ maClientConnection informationalCopy! !

!MagmaClientConnection methodsFor: 'copying' stamp: 'cmm 9/25/2008 23:48'!
postTrimmedCopy
	currentReadStrategy _ nil.
	maClientConnection _ nil! !

!MagmaClientConnection methodsFor: 'copying' stamp: 'cmm 9/25/2008 23:48'!
trimmedCopy
	^ self copy postTrimmedCopy! !

!MagmaClientConnection methodsFor: 'initialize' stamp: 'cmm 3/25/2013 21:12'!
initialize
	super initialize.
	challengingBytes _ 0! !

!MagmaClientConnection methodsFor: 'initialize' stamp: 'cmm 11/7/2008 13:59'!
sessionId: aUuid 
	sessionId _ aUuid! !

!MagmaClientConnection methodsFor: 'initialize' stamp: 'cmm 6/26/2002 00:21'!
userId: aString

	userId _ aString
! !

!MagmaClientConnection methodsFor: 'maui' stamp: 'cmm 3/26/2013 12:30'!
mauiDefaultColumns
	^ #(sessionId userId lastAccess challengingBytes)! !

!MagmaClientConnection methodsFor: 'maui' stamp: 'cmm 3/26/2013 12:30'!
mauiSortableColumns
	^ #(sessionId userId lastAccess challengingBytes)! !

!MagmaClientConnection class methodsFor: 'creation' stamp: 'cmm 1/30/2014 17:32'!
unknown
	^ self new
		 sessionId: 'unknown' ;
		 userId: 'unknown' ;
		 yourself! !

!MagmaClientConnection class methodsFor: 'creation' stamp: 'cmm 11/7/2008 14:05'!
userId: aString sessionId: sessionUuid maximumNumberOfChallengers: anInteger clientConnection: aMaClientConnection isSystem: aBoolean
	^ self new
		userId: aString ;
		sessionId: sessionUuid ;
		maximumNumberOfChallengers: anInteger ;
		maClientConnection: aMaClientConnection ;
		isSystem: aBoolean ;
		yourself! !

!MagmaCounter methodsFor: 'accessing' stamp: 'cmm 7/20/2007 10:37'!
decrement
	self decrement: 1! !

!MagmaCounter methodsFor: 'accessing' stamp: 'cmm 7/20/2007 10:37'!
decrement: anInteger 
	"Decrement my value by anInteger."
	self increment: anInteger negated! !

!MagmaCounter methodsFor: 'accessing' stamp: 'cmm 1/9/2014 14:19'!
delta
	"The local portion of this counters value, not yet committed to the repository."
	^ delta! !

!MagmaCounter methodsFor: 'accessing' stamp: 'cmm 7/20/2007 10:37'!
increment
	self increment: 1! !

!MagmaCounter methodsFor: 'accessing' stamp: 'cmm 7/20/2007 10:37'!
increment: anInteger
	"Increment my value by anInteger."
	delta _ delta + anInteger! !

!MagmaCounter methodsFor: 'accessing' stamp: 'cmm 1/9/2014 14:19'!
shared
	"The last-known persistent value of this Counter."
	^ shared! !

!MagmaCounter methodsFor: 'accessing' stamp: 'cmm 7/20/2007 10:28'!
value
	^ shared + delta! !

!MagmaCounter methodsFor: 'initialize' stamp: 'cmm 7/20/2007 10:29'!
initialize
	super initialize.
	delta _ shared _ 0! !

!MagmaEvent methodsFor: 'accessing' stamp: 'cmm 2/25/2005 14:29'!
session
	"Answer the value of session"

	^ session! !

!MagmaEvent methodsFor: 'accessing' stamp: 'cmm 2/25/2005 14:29'!
session: anObject
	"Set the value of session"

	session _ anObject! !

!MagmaEvent class methodsFor: 'as yet unclassified' stamp: 'cmm 2/25/2005 12:51'!
session: aMagmaSession
	^ self new
		session: aMagmaSession ;
		yourself! !

!MagmaRefreshEvent methodsFor: 'accessing' stamp: 'cmm 2/25/2005 12:51'!
buffer
	"Answer the value of buffer"

	^ buffer! !

!MagmaRefreshEvent methodsFor: 'accessing' stamp: 'cmm 2/25/2005 12:51'!
buffer: anObject
	"Set the value of buffer"

	buffer _ anObject! !

!MagmaRefreshEvent methodsFor: 'accessing' stamp: 'cmm 2/25/2005 13:44'!
hasRestoreData

	^ restoreData notNil! !

!MagmaRefreshEvent methodsFor: 'accessing' stamp: 'cmm 2/25/2005 12:51'!
object
	"Answer the value of object"

	^ object! !

!MagmaRefreshEvent methodsFor: 'accessing' stamp: 'cmm 2/25/2005 12:51'!
object: anObject
	"Set the value of object"

	object _ anObject! !

!MagmaRefreshEvent methodsFor: 'accessing' stamp: 'cmm 2/25/2005 12:51'!
restoreData
	"Answer the value of restoreData"

	^ restoreData! !

!MagmaRefreshEvent methodsFor: 'accessing' stamp: 'cmm 2/25/2005 12:51'!
restoreData: anObject
	"Set the value of restoreData"

	restoreData _ anObject! !

!MagmaId methodsFor: 'testing' stamp: 'cmm 7/6/2009 21:20'!
= aMagmaId 
	self == aMagmaId ifTrue: [ ^ true ].
	aMagmaId maOriginalClass = self maOriginalClass ifFalse: [ ^ false ].
	^ uuid = aMagmaId uuid! !

!MagmaId methodsFor: 'testing' stamp: 'cmm 1/16/2005 22:24'!
hash

	^ uuid hash! !

!MagmaId methodsFor: 'testing' stamp: 'cmm 7/6/2009 21:21'!
isMagmaId
	^ true! !

!MagmaId methodsFor: 'accessing' stamp: 'cmm 1/13/2005 22:34'!
contact
	"If having trouble connecting to this repository."

	^ contact! !

!MagmaId methodsFor: 'accessing' stamp: 'cmm 5/2/2005 22:00'!
contact: aString
	"Specify information on how to contact the person who maintains this repository."

	contact _ aString! !

!MagmaId methodsFor: 'accessing' stamp: 'cmm 1/13/2005 22:34'!
description
	"About this repository."

	^ description! !

!MagmaId methodsFor: 'accessing' stamp: 'cmm 1/13/2005 22:35'!
description: aString
	"A description of this repository."

	description _ aString! !

!MagmaId methodsFor: 'accessing' stamp: 'cmm 10/30/2008 13:05'!
location
	"The last known primaryLocation of this repository."
	^ node primaryLocation! !

!MagmaId methodsFor: 'accessing' stamp: 'cmm 1/13/2005 22:36'!
name: aString

	name _ aString! !

!MagmaId methodsFor: 'accessing' stamp: 'cmm 10/30/2008 13:12'!
node
	^node! !

!MagmaId methodsFor: 'accessing' stamp: 'cmm 10/30/2008 13:13'!
node: aMagmaNode
	node _ aMagmaNode! !

!MagmaId methodsFor: 'accessing' stamp: 'cmm 12/26/2011 16:07'!
resetNode
	self node: MagmaNode new! !

!MagmaId methodsFor: 'accessing' stamp: 'cmm 1/13/2005 10:35'!
uuid

	^ uuid! !

!MagmaId methodsFor: 'session' stamp: 'cmm 7/3/2012 21:26'!
findSession
	"Look in this image for a session with this MagmaId.  If it exists, answer it, else find new session to my primaryLocation."
	^ MagmaSession connectedSessions
		detect:
			[ : each | each magmaId = self ]
		ifNone:
			[ MagmaSession allClientInstances
				detect: [ : each | each magmaId = self ]
				ifNone:
					[ | foundSession |
					self location ifNil: [ MagmaEnvironmentError signal: 'No location specified for remote repository.' ].
					foundSession _ self location findSession.
					(foundSession magmaId notNil and: [ foundSession magmaId ~= self ]) ifTrue: [ MagmaEnvironmentError signal: self name , ' is no longer at ' , self location asString ].
					foundSession ] ]! !

!MagmaId methodsFor: 'initialize-release' stamp: 'cmm 5/30/2013 11:13'!
initialize
	super initialize.
	uuid _ UUID new.
	name _ uuid asString.
	node _ MagmaNode new! !

!MagmaId methodsFor: 'printing' stamp: 'cmm 11/3/2008 10:46'!
maPrintAbbreviatedOn: aStream 
	aStream
		maPrint: self name ;
		maPrint: '@' ;
		maPrint: self node! !

!MagmaLocation methodsFor: 'accessing' stamp: 'cmm 3/24/2013 17:43'!
connectionWithId: aUUID 
	^ self connections
		detect: [ : each | each sessionId = aUUID ]
		ifNone: [ nil ]! !

!MagmaLocation methodsFor: 'accessing' stamp: 'cmm 3/24/2013 17:40'!
connections
	^ self newAdminSession connections! !

!MagmaLocation methodsFor: 'accessing' stamp: 'cmm 10/24/2004 23:30'!
description

	^ String streamContents: [ : stream | self maPrintAbbreviatedOn: stream ]! !

!MagmaLocation methodsFor: 'accessing' stamp: 'cmm 9/15/2004 21:55'!
name: anObject
	"Set the value of name"

	name _ anObject! !

!MagmaLocation methodsFor: 'accessing' stamp: 'cmm 2/12/2012 15:32'!
sessionClass
	^ MagmaSession! !

!MagmaLocation methodsFor: 'session' stamp: 'cmm 7/24/2018 20:37'!
findSession
	"If there is already a session in the image for this location, use it, otherwise make a new one."
	^ MagmaSession connectedSessions
		detect: [ : each | each location = self ]
		ifNone:
			[ (MagmaSession allClientInstances select:
				[ : each | each location = self ])
				ifEmpty: [ self newSession ]
				ifNotEmpty: [ : candidates | candidates atRandom ] ]! !

!MagmaLocation methodsFor: 'session' stamp: 'cmm 9/22/2009 20:37'!
newAdminSession
	^ self newSession! !

!MagmaLocation methodsFor: 'session' stamp: 'cmm 1/13/2005 22:43'!
newSession

	self subclassResponsibility! !

!MagmaLocation methodsFor: 'testing' stamp: 'cmm 9/23/2004 14:41'!
isLocal

	^ false! !

!MagmaLocation methodsFor: 'factory' stamp: 'cmm 11/5/2008 21:30'!
newServerLink
	self subclassResponsibility ! !

!MagmaLocalLocation methodsFor: 'testing' stamp: 'cmm 7/16/2007 21:38'!
= aMagmaLocalLocation 
	aMagmaLocalLocation maOriginalClass = self species ifFalse: [ ^ false ].
	^ aMagmaLocalLocation pathName = self pathName! !

!MagmaLocalLocation methodsFor: 'testing' stamp: 'cmm 7/16/2007 21:38'!
hash
	^ self pathName hash! !

!MagmaLocalLocation methodsFor: 'testing' stamp: 'cmm 9/23/2004 14:41'!
isLocal

	^ true! !

!MagmaLocalLocation methodsFor: 'converting' stamp: 'cmm 1/17/2007 23:09'!
asMagmaLocalLocation
	^ self! !

!MagmaLocalLocation methodsFor: 'accessing' stamp: 'kph 10/4/2006 20:25'!
base

	^FileDirectory default  ! !

!MagmaLocalLocation methodsFor: 'accessing' stamp: 'cmm 1/18/2007 21:05'!
directory
	"It's not obvious, but this actually supports fully-qualified paths or relative paths.
		(FileDirectory default on: 'c:\temp') inspect.
		(FileDirectory default on: 'magma') inspect
	"
	^  FileDirectory on: (self base fullNameFor: path) ! !

!MagmaLocalLocation methodsFor: 'accessing' stamp: 'kph 4/27/2007 02:52'!
fileNames

^ self directory fileNames! !

!MagmaLocalLocation methodsFor: 'accessing' stamp: 'cmm 9/24/2004 12:28'!
path

	^ path! !

!MagmaLocalLocation methodsFor: 'accessing' stamp: 'cmm 9/24/2004 12:28'!
path: aString

	path _ aString! !

!MagmaLocalLocation methodsFor: 'accessing' stamp: 'kph 10/4/2006 14:39'!
pathName

^ self directory pathName! !

!MagmaLocalLocation methodsFor: 'printing' stamp: 'cmm 10/11/2010 17:23'!
maPrintAbbreviatedOn: aStream 
	aStream
		maPrint: 'magma:' ;
		nextPutAll: path! !

!MagmaLocalLocation methodsFor: 'session' stamp: 'kph 10/4/2006 14:46'!
newSession
 
 ^self sessionClass openLocal: self
	 ! !

!MagmaLocalLocation class methodsFor: 'create' stamp: 'kph 10/4/2006 13:35'!
default
	"This method is for Seaside."
	self maMarked: 'otherPackageSupport'.
	^ self path: 'magma'! !

!MagmaLocalLocation class methodsFor: 'create' stamp: 'cmm 1/17/2007 21:49'!
path: fullOrRelativePathString
	^ self new
		path: fullOrRelativePathString ; 
		yourself! !

!MagmaLocalLocation class methodsFor: 'validate' stamp: 'cmm 5/2/2013 12:58'!
verifyIsVersion: versionNumber 
	self repositoryVersion = versionNumber ifFalse: [ MagmaUserError signal: 'Repository is not already version ' , versionNumber asString ]! !

!MagmaRemoteLocation methodsFor: 'testing' stamp: 'cmm 12/30/2008 13:06'!
= aMagmaRemoteLocation 
	aMagmaRemoteLocation maOriginalClass = self maOriginalClass ifFalse: [ ^ false ].
	^ self serverLocation = aMagmaRemoteLocation serverLocation! !

!MagmaRemoteLocation methodsFor: 'testing' stamp: 'cmm 12/30/2008 13:09'!
hash
	^ self serverLocation hash! !

!MagmaRemoteLocation methodsFor: 'testing' stamp: 'cmm 3/12/2009 16:07'!
isLocalHost
	^ location isLocalHost ! !

!MagmaRemoteLocation methodsFor: 'testing' stamp: 'cmm 6/30/2009 10:56'!
isReachable
	"Answer whether the host specified by my location can be reached on the port."
	^ location isReachable! !

!MagmaRemoteLocation methodsFor: 'accessing' stamp: 'cmm 7/5/2008 14:56'!
host
	"The TCP/IP hostname of the host hosting this Magma repository."
	^ location host! !

!MagmaRemoteLocation methodsFor: 'accessing' stamp: 'cmm 7/5/2008 14:43'!
hostAddress
	"Answer the ByteArray representation of my hosts ip address."
	^ location hostAddress! !

!MagmaRemoteLocation methodsFor: 'accessing' stamp: 'cmm 7/5/2008 14:56'!
port
	"The TCP/IP port the remote Magma repository is expected to be listening."
	^ location port! !

!MagmaRemoteLocation methodsFor: 'accessing' stamp: 'cmm 11/6/2008 14:12'!
serverLocation
	^ location! !

!MagmaRemoteLocation methodsFor: 'printing' stamp: 'cmm 9/6/2012 20:47'!
maPrintAbbreviatedOn: aStream 
	aStream maPrint: 'magma://'.
	location maPrintAbbreviatedOn: aStream! !

!MagmaRemoteLocation methodsFor: 'maui-support' stamp: 'cmm 9/11/2012 16:29'!
mauiDefaultColumns
	^ #(host port)! !

!MagmaRemoteLocation methodsFor: 'maui-support' stamp: 'cmm 9/11/2012 16:31'!
mauiSortableColumns
	^ #(#host #port )! !

!MagmaRemoteLocation methodsFor: 'factory' stamp: 'cmm 3/8/2009 12:33'!
newAdminSession
	"Answer a session that does not fail over to any backup.  These sessions are used for communicating between the servers of a node themselves."
	^ self newSession
		allowFailover: false ;
		yourself! !

!MagmaRemoteLocation methodsFor: 'factory' stamp: 'cmm 1/7/2009 01:08'!
newServerLink
	^ (MaNetworkServerLink location: location) protocol: MagmaSession protocol! !

!MagmaRemoteLocation methodsFor: 'factory' stamp: 'cmm 7/15/2008 22:16'!
newSession
	| answer |
	answer _ self sessionClass 
		host: self host
		port: self port.
	"Try to help the user in case they don't remember to turn this off on a localhost connection."
	self isLocalHost ifTrue: [ answer useCompression: false ].
	^ answer! !

!MagmaRemoteLocation methodsFor: 'initialize-release' stamp: 'cmm 7/5/2008 14:12'!
setLocation: aMaServerLocation
	location _ aMaServerLocation! !

!MagmaRemoteLocation class methodsFor: 'create' stamp: 'cmm 7/5/2008 14:14'!
default
	"For Seaside support."
	self maMarked: 'otherPackageSupport'.
	^ self 
		host: 'localhost'
		port: 51969! !

!MagmaRemoteLocation class methodsFor: 'create' stamp: 'cmm 7/5/2008 15:23'!
host: hostName port: portInteger 
	^ self location: 
		(MaServerLocation 
			host: hostName
			port: portInteger)! !

!MagmaRemoteLocation class methodsFor: 'create' stamp: 'cmm 7/5/2008 15:22'!
location: aMaServerLocation 
	^ self new
		setLocation: aMaServerLocation ;
		yourself! !

!MagmaNode methodsFor: 'updating' stamp: 'cmm 12/21/2012 14:59'!
addLocation: aMagmaRemoteLocation 
	self removeLocation: aMagmaRemoteLocation.
	locations _ locations copyWith: aMagmaRemoteLocation! !

!MagmaNode methodsFor: 'updating' stamp: 'cmm 10/9/2009 16:46'!
primaryLocation: aMagmaLocation 
	(locations notEmpty and: [ locations first = aMagmaLocation ]) ifTrue: [ ^ self ].
	locations _ locations copyWithout: aMagmaLocation.
	"Local connections are used only exclusively."
	locations _ aMagmaLocation isLocal 
		ifTrue: 
			[ {  aMagmaLocation  } ]
		ifFalse: 
			[ {  aMagmaLocation  } , (locations reject: [ : each | each isLocal ]) ]! !

!MagmaNode methodsFor: 'updating' stamp: 'cmm 11/5/2008 21:12'!
removeLocation: aMagmaRemoteLocation 
	| session |
	locations _ locations copyWithout: aMagmaRemoteLocation.
	session _ self sessions 
		removeKey: aMagmaRemoteLocation
		ifAbsent: [ nil ].
	session ifNotNil: [ session disconnect ]! !

!MagmaNode methodsFor: 'updating' stamp: 'cmm 11/3/2008 12:16'!
removePrimaryLocation
	^ self removeLocation: self primaryLocation! !

!MagmaNode methodsFor: 'updating' stamp: 'cmm 12/29/2008 16:01'!
swapWithPrimary: secondaryLocation 
	(self secondaryLocations includes: secondaryLocation) ifFalse: 
		[ MagmaUserError signal: 'Swap function only available with warm-backups.' ].
	locations 
		swap: 1
		with: (locations indexOf: secondaryLocation)! !

!MagmaNode methodsFor: 'accessing' stamp: 'cmm 11/14/2008 12:36'!
anySecondaryLocation
	"Answer one of my warm backup locations at random.  Some installations may have multiple warm backups equally accessible, so clients don't care which one they connect to.  This method provides those applications convenience of not having to specify one of the warm backups explicitly, although they can (#see secondaryLocation:)"
	^ self secondaryLocations atRandom! !

!MagmaNode methodsFor: 'accessing' stamp: 'cmm 12/29/2008 20:05'!
firstSecondaryLocation
	^ locations size > 1 
		ifTrue: [ locations at: 2 ]
		ifFalse: [ nil ]! !

!MagmaNode methodsFor: 'accessing' stamp: 'cmm 12/29/2008 20:05'!
firstSecondarySession
	^ self firstSecondaryLocation ifNotNilDo: [ : sl | self sessionFor: sl ]! !

!MagmaNode methodsFor: 'accessing' stamp: 'cmm 11/22/2008 18:04'!
locationMatching: aMaServerLocation 
	"There are locations at two levels, the Magma level and the Ma Client Server level.  The Magma-level (an instance of MagmaRemoteLocation) references an instance of the Ma client server's location (a MaServerLocation)."
	^ locations 
		detect: [ : each | each serverLocation = aMaServerLocation ]
		ifNone: [ nil ]! !

!MagmaNode methodsFor: 'accessing' stamp: 'cmm 11/3/2008 12:26'!
locations
	^ locations! !

!MagmaNode methodsFor: 'accessing' stamp: 'cmm 11/16/2008 16:47'!
nextPrimaryLocation
	"The first is always the primary.  The second is always the next primary.  When the first fails, it is removed and the second becomes the first, the primary."
	^ self locations size > 1 ifTrue: [ self locations second ]! !

!MagmaNode methodsFor: 'accessing' stamp: 'cmm 3/20/2015 16:59'!
primaryLocation
	"Had to use this temporary or else Spur fails in HA test-case 4, Swap Primary Duty because it thinks locations is the first inst-var of the Proxy.  Weird!!"
|locs| locs_locations.
	^ locs notEmpty ifTrue: [ locs first ]! !

!MagmaNode methodsFor: 'accessing' stamp: 'cmm 11/3/2008 11:58'!
primarySession
	^ self primaryLocation ifNotNil: [ self sessionFor: self primaryLocation ]! !

!MagmaNode methodsFor: 'accessing' stamp: 'cmm 11/6/2008 13:42'!
secondaryLocations
	^ locations size > 1 
		ifTrue: 
			[ locations 
				copyFrom: 2
				to: locations size ]
		ifFalse: [ Array new ]! !

!MagmaNode methodsFor: 'accessing' stamp: 'cmm 11/6/2008 13:42'!
secondaryLocationsDo: oneArgBlock 
	| locCopy |
	locCopy _ locations copy.	"in case user wants to remove them"
	2 
		to: locCopy size
		do: [ : n | oneArgBlock value: (locCopy 
				at: n
				ifAbsent: [ ^ self ]) ]! !

!MagmaNode methodsFor: 'accessing' stamp: 'cmm 3/14/2009 12:35'!
sessionFor: aMagmaRemoteLocation 
	"In dealing with the servers of a node, it is necessary to lazily-initialize and cache MagmaSessions on account of how expensive they are to create."
	^ self sessions 
		at: aMagmaRemoteLocation
		ifAbsentPut: 
			[ | answer |
			answer _ aMagmaRemoteLocation newAdminSession.
			answer user: (MagmaUser id: (String streamContents: 
						[ : stream | 
						stream maPrint: 'Admin-Session to '.
						aMagmaRemoteLocation maPrintAbbreviatedOn: stream ])).
			answer ]! !

!MagmaNode methodsFor: 'testing' stamp: 'cmm 6/30/2009 11:08'!
includesSecondary: aMagmaRemoteLocation 
	self secondaryLocationsDo: [ : each | each = aMagmaRemoteLocation ifTrue: [ ^ true ] ].
	^ false! !

!MagmaNode methodsFor: 'testing' stamp: 'cmm 11/2/2008 10:04'!
includesServerAt: aMagmaRemoteLocation
	^ locations includes: aMagmaRemoteLocation! !

!MagmaNode methodsFor: 'testing' stamp: 'cmm 11/3/2008 18:24'!
isBackedUp
	"Answer whether I have any warm backups ready to take over."
	^ locations size > 1! !

!MagmaNode methodsFor: 'testing' stamp: 'cmm 11/3/2008 12:24'!
isEmpty
	^ locations isEmpty! !

!MagmaNode methodsFor: 'testing' stamp: 'cmm 10/9/2009 16:49'!
isLocal
	^ self primaryLocation isLocal! !

!MagmaNode methodsFor: 'testing' stamp: 'cmm 11/18/2008 12:52'!
ping: aMagmaRemoteLocation 
	"Answer the commitNumber of the primary repository, if it can be.  Otherwise, signal an error (probably NetworkError)."
	^ (self locations includes: aMagmaRemoteLocation) 
		ifTrue: [ (self sessionFor: aMagmaRemoteLocation) remoteCommitNumber ]
		ifFalse: 
			[ MagmaSoftwareError signal: aMagmaRemoteLocation printString , ' is not part of ' ]! !

!MagmaNode methodsFor: 'testing' stamp: 'cmm 11/14/2008 14:15'!
pingPrimary
	"Answer the commitNumber of the primary repository, if it can be.  Otherwise, signal an error (probably NetworkError)."
	^ self ping: self primaryLocation! !

!MagmaNode methodsFor: 'initialize-release' stamp: 'cmm 10/12/2011 20:14'!
initialize
	super initialize.
	self reset! !

!MagmaNode methodsFor: 'initialize-release' stamp: 'cmm 10/12/2011 20:14'!
reset
	locations _ Array new! !

!MagmaNode methodsFor: 'private' stamp: 'cmm 10/22/2008 10:52'!
locationsDo: aBlock 
	locations do: aBlock! !

!MagmaNode methodsFor: 'private' stamp: 'cmm 8/5/2011 13:28'!
maTransientVariables
	^ #('sessions')! !

!MagmaNode methodsFor: 'private' stamp: 'cmm 11/3/2008 19:55'!
sessions
	^ sessions ifNil: [ sessions _ Dictionary new ]! !

!MagmaNode methodsFor: 'printing' stamp: 'cmm 11/13/2008 14:14'!
maPrintAbbreviatedOn: aStream 
	super maPrintAbbreviatedOn: aStream.
	locations do: 
		[ : each | 
		aStream maPrint: each.
		each == locations last ifFalse: [ aStream maPrint: ', ' ] ]! !

!MagmaNode methodsFor: 'copying' stamp: 'cmm 11/18/2009 13:38'!
veryDeepInner: aDeepCopier 
	super veryDeepInner: aDeepCopier.
	locations _ locations veryDeepCopyWith: aDeepCopier.
	"Let this node establish his own sessions."
	sessions _ nil! !

!MagmaPreallocatedDictionary methodsFor: 'initialize-release' stamp: 'cmm 11/6/2010 20:02'!
allocation: numberOfSlots 
	numberOfSlots copy == numberOfSlots copy ifFalse: [ MagmaUserError signal: 'Max pre-allocation allowed is ' , SmallInteger maxVal asString ].
	maxBuckets _ numberOfSlots.
	array _ MagmaArray new
		
"		at: numberOfSlots
		put: nil ;
"		 pageSize: 1 ;
		 yourself! !

!MagmaPreallocatedDictionary methodsFor: 'initialize-release' stamp: 'cmm 10/13/2014 20:55'!
initialize
	super initialize.
	tally _ MagmaCounter new.
	collisions _ 0! !

!MagmaPreallocatedDictionary methodsFor: 'private' stamp: 'cmm 11/6/2010 19:06'!
associationAt: key ifAbsent: aBlock 
	| bucket |
	bucket _ self bucketAt: (self keyHash: key).
	^ bucket
		ifNil: aBlock
		ifNotNil: [ (bucket findKeyOrNil: key) ifNil: aBlock ]! !

!MagmaPreallocatedDictionary methodsFor: 'private' stamp: 'cmm 3/12/2011 14:56'!
associationAt: key ifPresent: presentBlock ifAbsent: absentBlock 
	"This method can help reduce the number of accesses to the receiver."
	| bucket |
	bucket _ self bucketAt: (self keyHash: key).
	^ bucket
		ifNil: absentBlock
		ifNotNil:
			[ (bucket findKeyOrNil: key)
				ifNil: absentBlock
				ifNotNilDo:
					[ : assoc | presentBlock value: assoc ] ]! !

!MagmaPreallocatedDictionary methodsFor: 'private' stamp: 'cmm 11/2/2010 13:51'!
associationClass
	^ MaAssociation! !

!MagmaPreallocatedDictionary methodsFor: 'private' stamp: 'cmm 10/13/2014 20:56'!
atIndex: index insertKey: key value: value
	| currentBucket newBucket |
	currentBucket _ self bucketAt: index.
	currentBucket ifNotNil: [ collisions _ collisions + 1 ].
	newBucket _ self associationClass key: key value: value next: (currentBucket).
	array at: index put: newBucket.
	tally increment: 1.
	^ value! !

!MagmaPreallocatedDictionary methodsFor: 'private' stamp: 'cmm 11/21/2014 13:47'!
bucketAt: anInteger 
	| answer |
	answer _ array
		at: anInteger
		ifAbsent: [ nil ].
"	array refresh."
	^ answer! !

!MagmaPreallocatedDictionary methodsFor: 'private' stamp: 'cmm 11/2/2010 15:23'!
errorKeyNotFound: key
	"Signal KeyNotFound error"
	^(KeyNotFound key: key) signal! !

!MagmaPreallocatedDictionary methodsFor: 'private' stamp: 'cmm 11/6/2010 19:13'!
keyHash: key
	^ (key hash \\ maxBuckets) + 1! !

!MagmaPreallocatedDictionary methodsFor: 'private' stamp: 'cmm 11/6/2010 18:52'!
maxBuckets
	^ maxBuckets! !

!MagmaPreallocatedDictionary methodsFor: 'access' stamp: 'cmm 11/2/2010 15:22'!
at: key 
	"Answer the value associated with the key."

	^ self at: key ifAbsent: [self errorKeyNotFound: key]! !

!MagmaPreallocatedDictionary methodsFor: 'access' stamp: 'cmm 11/6/2010 18:27'!
at: key ifAbsent: aBlock
	| bucket |
	bucket _ self bucketAt: (self keyHash: key).
	[bucket notNil] whileTrue: [ bucket key = key ifTrue: [^ bucket value]. bucket _ bucket next ].
	^ aBlock value! !

!MagmaPreallocatedDictionary methodsFor: 'access' stamp: 'cmm 11/21/2014 13:46'!
at: key ifAbsentPut: aBlock 
	| index bucket |
	index _ self keyHash: key.
	"Don't use bucketAt: because we may need to put the value of aBlock."
	bucket _ array
		at: index
		ifAbsent: [ nil ].
	[ bucket notNil ] whileTrue:
		[ bucket key = key ifTrue:
			[ "array refresh."
			^ bucket value ].
		bucket _ bucket next ].
	^ self
		atIndex: index
		insertKey: key
		value: aBlock value! !

!MagmaPreallocatedDictionary methodsFor: 'access' stamp: 'cmm 10/28/2011 15:51'!
at: anObject ifPresent: oneArgBlock ifAbsent: zeroArgBlock 
	^ oneArgBlock value:
		(self
			at: anObject
			ifAbsent: [ ^ zeroArgBlock value ])! !

!MagmaPreallocatedDictionary methodsFor: 'access' stamp: 'cmm 10/2/2014 17:25'!
at: anObject ifPresent: oneArgBlock ifAbsentPut: zeroArgBlock 
	^ self
		at: anObject
		ifPresent: oneArgBlock
		ifAbsent:
			[ self
				at: anObject
				put: zeroArgBlock value ]! !

!MagmaPreallocatedDictionary methodsFor: 'access' stamp: 'cmm 11/21/2014 13:47'!
at: key put: value 
	| index bucket |
	index _ self keyHash: key.
	"Don't use bucketAt: because we may need to call #atIndex:  insertKey:  value:, which will just look it up again."
	bucket _ array 
		at: index
		ifAbsent: [ nil ].
	[ bucket notNil ] whileTrue:
		[ bucket key = key ifTrue:
			[ bucket value: value.
			"Restock this persistent bucket into the MagmaArray's changes so that subsquent access will find it there, and ensure it doesn't get GC'd before commit."
			array
				at: index
				put: bucket"; refresh".
			^ value ].
		bucket _ bucket next ].
	^ self
		atIndex: index
		insertKey: key
		value: value! !

!MagmaPreallocatedDictionary methodsFor: 'access' stamp: 'cmm 3/12/2011 23:13'!
collisions
	"Answer the number of collisions this Dictionary currently suffers."
	^ collisions! !

!MagmaPreallocatedDictionary methodsFor: 'access' stamp: 'cmm 11/2/2010 16:06'!
lastKnownSize
	^ self size! !

!MagmaPreallocatedDictionary methodsFor: 'access' stamp: 'cmm 10/13/2014 20:57'!
removeKey: key ifAbsent: aBlock 
	"Remove key (and its associated value) from the receiver. If key is not in 
	the receiver, answer the result of evaluating aBlock. Otherwise, answer 
	the value externally named by key."
	| index bucket next |
	index _ self keyHash: key.
	bucket _ self bucketAt: index.
	bucket ifNil: [ ^ aBlock value ].
	bucket key = key ifTrue:
		[ | nxt |
		tally decrement: 1.
		array
			at: index
			put: (nxt _ bucket next).
		nxt ifNotNil: [ collisions _ collisions - 1 ].
		^ bucket value ].
	[ (next _ bucket next) notNil ] whileTrue:
		[ next key = key ifTrue:
			[ tally decrement: 1.
			bucket next: next next.
			collisions _ collisions - 1.
			^ next value ].
		bucket _ next ].
	^ aBlock value! !

!MagmaPreallocatedDictionary methodsFor: 'access' stamp: 'cmm 10/13/2014 21:02'!
size
	^ tally value! !

!MagmaPreallocatedDictionary methodsFor: 'do not use' stamp: 'cmm 11/2/2010 13:02'!
copy
	"The challenge with copying a MagmaFastDictionary is that it would require copying of all of the association objects, which cannot be done efficiently."
	self shouldNotImplement! !

!MagmaPreallocatedDictionary methodsFor: 'testing' stamp: 'cmm 11/2/2010 13:56'!
includesKey: key 
	"Answer whether the receiver has a key equal to the argument, key."
	self at: key ifAbsent: [^false].
	^true! !

!MagmaPreallocatedDictionary methodsFor: 'testing' stamp: 'cmm 11/9/2010 11:54'!
isEmpty
	^ self size = 0! !

!MagmaPreallocatedDictionary methodsFor: 'testing' stamp: 'cmm 11/9/2010 11:54'!
notEmpty
	^ self isEmpty not! !

!MagmaPreallocatedDictionary class methodsFor: 'instance creation' stamp: 'cmm 4/23/2011 13:45'!
new
	^ self new67M! !

!MagmaPreallocatedDictionary class methodsFor: 'instance creation' stamp: 'cmm 4/23/2011 13:52'!
new134M
	"Create a Preallocated dictionary with up to 134M slots.  BEWARE:  This will cause up to 805M of disk space to be allocated upon commit."
	^ self newAllocation: 134217757 "Probably prime"! !

!MagmaPreallocatedDictionary class methodsFor: 'instance creation' stamp: 'cmm 4/23/2011 13:51'!
new1B
	"Create a Preallocated dictionary with up to 1B slots.  BEWARE:  This will cause up to 7GB of disk-space to be allocated upon commit."
	^ self newAllocation: 1073741789 "Probably prime"! !

!MagmaPreallocatedDictionary class methodsFor: 'instance creation' stamp: 'cmm 4/23/2011 13:51'!
new268M
	"Create a Preallocated dictionary with up to 268M slots.  BEWARE:  This will cause up to  1.61G of disk space to be allocated upon commit."
	^ self newAllocation: 268435399 "Probably prime"! !

!MagmaPreallocatedDictionary class methodsFor: 'instance creation' stamp: 'cmm 4/23/2011 13:51'!
new67M
	"Create a Preallocated dictionary with up to 67M slots.  BEWARE:  This will cause up to  402.65M of disk space to be allocated upon commit."
	^ self newAllocation: 67108879 "67M, prime"! !

!MagmaPreallocatedDictionary class methodsFor: 'instance creation' stamp: 'cmm 11/30/2010 13:58'!
new: allocation
	MagmaUserError signal: 'Please use #newAllocation:'! !

!MagmaPreallocatedDictionary class methodsFor: 'instance creation' stamp: 'cmm 11/2/2010 14:10'!
newAllocation: numberOfSlots 
	^ super new
		 allocation: numberOfSlots ;
		 yourself! !

!MagmaRepositoryCodeBase methodsFor: 'change sets' stamp: 'cmm 2/14/2005 13:47'!
browseChangeSetNamed: nameString
	"Opens a code-file browser on the change-set named nameString."

	FileContentsBrowser browseStream: (self changeSetNamed: nameString)! !

!MagmaRepositoryCodeBase methodsFor: 'change sets' stamp: 'cmm 10/26/2004 23:12'!
changeSetNamed: aString

	^ changeSets
		at: aString
		ifAbsent: [ MagmaUserError signal: 'No change set named ', aString, ' found here.' ].! !

!MagmaRepositoryCodeBase methodsFor: 'change sets' stamp: 'cmm 11/9/2004 12:25'!
changeSetNames

	changeSets keys asSortedCollection! !

!MagmaRepositoryCodeBase methodsFor: 'change sets' stamp: 'cmm 10/26/2004 23:52'!
fileInChangeSetNamed: nameString

	| stream |
	stream _ self changeSetNamed: nameString.
	stream reset.
	ChangeSorter
		newChangesFromStream: stream
		named: nameString! !

!MagmaRepositoryCodeBase methodsFor: 'change sets' stamp: 'cmm 10/26/2004 23:44'!
fileOutChangeSet: aChangeSet

	| stream |
	stream _ ReadWriteStream on: String new.
	aChangeSet fileOutOn: stream.
	stream position: 0.
	changeSets
		at: aChangeSet name
		put: stream! !

!MagmaRepositoryCodeBase methodsFor: 'change sets' stamp: 'cmm 10/26/2004 23:14'!
installChangeSets

	changeSets keysDo: [ :eachKey | self fileInChangeSetNamed: eachKey ]! !

!MagmaRepositoryCodeBase methodsFor: 'class fileouts' stamp: 'cmm 2/14/2005 13:42'!
browseClassNamed: nameSymbol
	"Opens a code-file browser on the class named nameSymbol."

	FileContentsBrowser browseStream: (self classNamed: nameSymbol)! !

!MagmaRepositoryCodeBase methodsFor: 'class fileouts' stamp: 'cmm 10/26/2004 23:17'!
classNamed: aSymbol

	^ classes
		at: aSymbol
		ifAbsent: [ MagmaUserError signal: 'No class named ', aSymbol, ' found here.' ].! !

!MagmaRepositoryCodeBase methodsFor: 'class fileouts' stamp: 'cmm 11/9/2004 12:25'!
classNames

	^ classes keys asSortedCollection! !

!MagmaRepositoryCodeBase methodsFor: 'class fileouts' stamp: 'cmm 10/26/2004 23:17'!
fileInClassNamed: nameString

	| stream |
	stream _ self classNamed: nameString.
	stream reset.
	stream fileInAnnouncing: 'loading class ', nameString, ' from Magma database.'! !

!MagmaRepositoryCodeBase methodsFor: 'class fileouts' stamp: 'cmm 10/26/2004 23:44'!
fileOutClass: aClass

	| stream |
	stream _ ReadWriteStream on: String new.
	aClass fileOutOn: stream.
	stream position: 0.
	classes
		at: aClass name
		put: stream! !

!MagmaRepositoryCodeBase methodsFor: 'class fileouts' stamp: 'cmm 10/26/2004 23:18'!
installClasses

	classes keysDo: [ :eachKey | self fileInClassNamed: eachKey ]! !

!MagmaRepositoryCodeBase methodsFor: 'initialize-release' stamp: 'cmm 3/6/2011 22:00'!
initialize
	super initialize.
	changeSets _ Dictionary new.
	classes _ Dictionary new! !

!MagmaSession methodsFor: 'transaction' stamp: 'cmm 1/16/2012 20:27'!
abort
	"Abort the current transaction.  Objects are updated to their persistent state in the repository."
	"This guard is needed for when we initially connect to the repository because we can't abort before the connection is made."
	guard critical:
		[ self
			 dropStrongReferences ;
			 resetTransactionLevel.
		transaction restore.
		self isConnected ifTrue:
			[ | request additional |
			additional _ Array streamContents:
				[ : stream | transaction commitPackage objectsDo:
					[ : each | | oid |
					oid _ serializer
						oidFor: each
						ifAbsent: [  ].
					oid ifNotNil: [ stream nextPut: oid ] ] ].
			request _ MaAbortTransactionRequest new additionalBuffers: additional.
			"Calls #abortTransactionFor:."
			self
				refreshViewUsing: (self submit: request)
				includingLocal: true ] ]! !

!MagmaSession methodsFor: 'transaction' stamp: 'cmm 3/18/2015 21:23'!
begin
	"Begin a new transaction.  To commit changes to the repository, a transaction is required.  After performing this message, changes may be made to objects, followed by a a #commit (or #commitAndBegin), which will cause any changes made to be saved to the repository and visible to others."
	| refreshViewResult |
	guard critical:
		[ self incrementTransactionLevel.
		self inNestedTransaction ifTrue: [ ^ self ].
		self ensureConnected.
		"Calls #newTransactionFor:."
		refreshViewResult _ [ self submit: MaTransactionRequest new ]
			on: MagmaAlreadyInTransaction
			do: [ : err | "This happens when the session got disconnected while in a transaction.  #ensureConnected, above, called #restoreTransaction which restored this sessions CommitLogEntry in the server." ]
			on: Error
			do:
				[ : err | self decrementTransactionLevel.
				err pass ].
		refreshViewResult ifNotNil:
			[ self
				refreshViewUsing: refreshViewResult
				includingLocal: false ] ]! !

!MagmaSession methodsFor: 'transaction' stamp: 'cmm 4/30/2013 14:39'!
changedObjects
	"For debugging purposes:  Objects which have been changed, excluding MagmaCollection changes."
	^ transaction changedObjects objects! !

!MagmaSession methodsFor: 'transaction' stamp: 'cmm 12/22/2008 00:25'!
commit
	"Commit changes to persistent objects made since the last #begin or #commitAndBegin."
	self commitAndBegin: false! !

!MagmaSession methodsFor: 'transaction' stamp: 'cmm 6/17/2012 18:34'!
commit: aBlock 
	| result |
	guard critical: 
		[ self begin.
		result _ aBlock valueWhileObservingStateChange.
		self commit ].
	^ result! !

!MagmaSession methodsFor: 'transaction' stamp: 'cmm 12/22/2008 00:26'!
commitAndBegin
	"Commit the current changes and, immediately begin a new transaction."
	self commitAndBegin: true! !

!MagmaSession methodsFor: 'transaction' stamp: 'cmm 10/20/2014 12:41'!
commitAndBegin: aBoolean 
	"Calls submitAll:for:beginAnother:"
	| commitPackage commitResult |
	guard critical:
		[ self inNestedTransaction ifTrue:
			[ "nested transaction commit, essentially does nothing"
			aBoolean ifFalse: [ self decrementTransactionLevel ].
			^ self ].
		self inTransaction ifFalse: [ MagmaUserError signal: 'No transaction to commit.' ].
		self statistics clientSideCommitTimeHistory addValue: (Time millisecondsToRun: [ commitPackage _ self newCommitPackageFor: transaction ]).
		serializer validateNextOid.
		[ [ self
			 ensureConnected ;
			 dropStrongReferences.
		commitResult _ self submit:
			(MaCommitRequest new
				 package: commitPackage ;
				 beginAnother: aBoolean ;
				 yourself) ] ifCurtailed: [ self refreshDefinition ].
		self resetTransactionLevel.
		aBoolean ifTrue: [ self incrementTransactionLevel ].
		self resetMagmaCollectionChanges ]
			on: MagmaCommitError
			do:
				[ : exception | self
					 bulkBecomeProxies ;
					 refreshDefinition ;
					 resetTransactionLevel.
				aBoolean ifTrue: [ self incrementTransactionLevel ].
				exception result populateConflictingObjectsFromOidsUsing: serializer.
				self
					refreshViewUsing: exception result
					includingLocal: false.
				exception handleOrPassUsing: self ].
		(commitPackage hasNewIndexes or: [ commitPackage hasRemovedIndexes ])
			ifTrue:
				[ commitPackage hasRemovedIndexes ifTrue: [ "Give server time to flush so old index files will be deleted."
					(Delay forSeconds: 5) wait ].
				commitResult ifNotNil:
					[ self
						processNewAndRemovedIndexesIn: commitPackage
						using: commitResult ] ]
			ifFalse:
				[ commitResult ifNotNil:
					[ self
						refreshViewUsing: commitResult
						includingLocal: true ] ] ]! !

!MagmaSession methodsFor: 'transaction' stamp: 'cmm 4/30/2014 20:47'!
dirtyGraphDo: threeArgBlock
	"Value threeArgBlock with every object that would be included in the next commit."
	self changedObjects
		maGraphDo: threeArgBlock
		using: serializer traversalStrategy! !

!MagmaSession methodsFor: 'transaction' stamp: 'cmm 12/26/2004 00:16'!
inNestedTransaction

	^ transactionLevel > 1! !

!MagmaSession methodsFor: 'transaction' stamp: 'cmm 12/26/2004 00:20'!
inTransaction

	^ transactionLevel > 0! !

!MagmaSession methodsFor: 'transaction' stamp: 'cmm 2/26/2009 10:52'!
noteOldKeysFor: anObject 
	"If anObject is in an indexed MagmaCollection and your program *is about to* change its keys, you must call this method or it will continue to be indexed under its old keys.  Emphasize, that you call this method *before* you change the keys, not after."
	guard critical: [ transaction ensureOldHashesCapturedFor: anObject ]! !

!MagmaSession methodsFor: 'transaction' stamp: 'cmm 2/3/2014 20:49'!
refresh
	"Update the state of all persistent objects known to by this session with changes by other sessions, without changing the status of the transaction."
	"Calls #renewTransactionEntryFor:."
	[ self safeRefresh ]
		on: MagmaTooFarBehindConflict
		do: [ : err | err retry ]! !

!MagmaSession methodsFor: 'transaction' stamp: 'cmm 2/3/2014 20:47'!
safeRefresh
	"Update the state of all persistent objects known to by this session with changes by other sessions, without changing the status of the transaction."
	"Calls #renewTransactionEntryFor:."
	guard critical: 
		[ self 
			refreshViewUsing: (self submit: MaRefreshRequest new)
			includingLocal: false ]! !

!MagmaSession methodsFor: 'transaction' stamp: 'cmm 1/8/2009 11:21'!
transactionLevel
	^ transactionLevel! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 3/12/2013 20:19'!
addProxy: aMagmaMutatingProxy 
	"Add aMagmaMutatingProxy to a list that will be bulk-becomed at an appropriate time."
	^ guard critical: [ proxies at: aMagmaMutatingProxy put: aMagmaMutatingProxy ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 11/30/2011 20:37'!
addSystemImmutablesTo: aMaImmutabilityStrategy 
	aMaImmutabilityStrategy
		
		treatAny: MaClassDefinition
		asImmutableIf: [ : aMaClassDefinition | true ] ;
		
		treatObjectReferencedBy: 'instVarNames'
		onAny: MaClassDefinition
		asImmutableIf: [ : aMaClassDefinition | true ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 2/20/2014 21:41'!
advanceUsing: aMaObjectSerializer 
	"Advance the state of the cached model forward by a reasonably-sized chunk of commits.  The 'chunk of commits' is obtained directly from the commit-logs on the server.  If the commit-log files are no longer available on the server, signal a MagmaUnavailableCommitRecord."
	| commitLogRecords result |
	result _ MaFailedCommitResult new.
	commitLogRecords _ self commitLogRecordsFrom: self commitNumber + 1.
	commitLogRecords do:
		[ : each | | commitLogEntry |
		commitLogEntry _ aMaObjectSerializer resetOidManager materializeGraph: each record.
		self
			advanceWith: commitLogEntry
			accumulatingConflictsIn: result ].
	self bulkBecomeProxies.
	self inTransaction ifTrue: [ self checkIfTooFarBehind: result ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 1/17/2014 14:59'!
advanceWith: aMaCommitLogEntry 
	| result |
	result _ MaFailedCommitResult new.
	self
		advanceWith: aMaCommitLogEntry
		accumulatingConflictsIn: result.
	^ result! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 1/17/2014 16:24'!
advanceWith: aMaCommitLogEntry accumulatingConflictsIn: aMaFailedCommitResult 
	guard critical:
		[ | buffers conflict |
		buffers _ OrderedCollection new.
		conflict _ MagmaCommitConflict connection: aMaCommitLogEntry connection.
		aMaCommitLogEntry commitPackage objectsDo:
			[ : eachBuffer | buffers add: eachBuffer copyWithSameBuffer.
			self
				check: eachBuffer
				using: aMaCommitLogEntry connection
				accumulatingConflictsInto: aMaFailedCommitResult ].
		aMaFailedCommitResult populateConflictingObjectsFromOidsUsing: serializer.
		self
			
			refreshChangedObjects: buffers
			includingLocal: false ;
			 commitNumber: aMaCommitLogEntry result commitNumber ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 2/26/2009 11:01'!
anchor
	"Calls readAnchorFor:using: in server."
	^ guard critical: 
		[ anchor ifNil: 
			[ | anch |
			anch _ self materializeAnchorFrom: (self secondarySubmit: (MaAnchorRequest new
						readStrategy: self resetReadStrategy ;
						yourself)).
			"avoid the root getting garbage collected before we can capture the changes because the user wrote mySession commit: [ mySession root at: 'hello' put: 'world' ]."
			anchor _ self inTransaction ifTrue: 
				[ "otherwise, nil it out"
				anch ].
			anch ] ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 3/16/2005 12:38'!
assignPermanentOidsFrom: permanentOidsDictionary

	permanentOidsDictionary ifNil: [ ^ self ].
	permanentOidsDictionary keysAndValuesDo:
		[ : eachTempOid : eachPermanentOid |
		serializer
			objectWithOid: eachTempOid
			ifFound: 
				[ : persistentObject | 
				serializer
					oidOf: persistentObject
					is: eachPermanentOid.
				persistentObject maIsLargeCollection ifTrue: [ persistentObject setOid: eachPermanentOid ] ]
			ifAbsent: [ nil ] ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 3/20/2015 15:45'!
bulkBecomeProxies
	| allKnownProxies reified realObjects |
	guard critical:
		[ reified _ OrderedCollection new.
		allKnownProxies _ proxies.
		self resetProxies.
		allKnownProxies do:
			[ : each | each maIsMutatingProxy ifTrue:
				[ each maRealObjectIsReified
					ifTrue: [ reified add: each ]
					ifFalse: [ self addProxy: each ] ] ].
		realObjects _ reified collect:
			[ : each | each realObjectIfMutatingProxy ].
		reified asArray
			elementsForwardIdentityTo: realObjects asArray
			copyHash: false.
		immutabilityStrategy ifNotNil:
			[ realObjects do:
				[ : each | immutabilityStrategy
					rememberImmutableReferencesFrom: each
					for: transaction ] ] ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 11/25/2011 16:38'!
canStubOut: anObject 
	anObject maIsMutatingProxy ifTrue: [ ^ anObject maRealObjectIsReified ].
	(self isPersistent: anObject) ifFalse: [ ^ false ].
	anObject maOriginalClass = MaClassDefinition ifTrue: [ ^ false ].
	anObject == serializer classDefinitionsById ifTrue: [ ^ false ].
	^ serializer classDefinitionsById noneSatisfy:
		[ : eachCollection | eachCollection == anObject ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 1/20/2014 20:20'!
check: remoteObjectBuffer using: aMagmaClientConnection accumulatingConflictsInto: aMaFailedCommitResult 
	| magmaStatClassIds |
	magmaStatClassIds _ self magmaStatClassIds.
	(serializer
		objectWithOid: remoteObjectBuffer oid
		ifAbsent: [  ]) ifNotNil:
		[ : proxy | proxy realObjectIfReified ifNotNil:
			[ : obj | ((transaction didChange: obj) and:
				[ (transaction
					didChange: obj
					from: remoteObjectBuffer) and: [ (magmaStatClassIds includes: remoteObjectBuffer classId) not ] ]) ifTrue:
				[ aMaFailedCommitResult
					recordObjectConflictWith: aMagmaClientConnection
					on: remoteObjectBuffer oid ] ] ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 1/17/2014 16:26'!
checkIfTooFarBehind: aMaFailedCommitResult 
	aMaFailedCommitResult hasConflicts ifTrue:
		[ (MagmaTooFarBehindConflict result: aMaFailedCommitResult) signal ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 1/14/2014 10:52'!
clean
	self statistics houseCleaningTimeHistory addValue:
		(Time millisecondsToRun:
			[ self
				 bulkBecomeProxies ;
				 finalizeOids ;
				 resetLastClean ])! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 1/14/2014 10:52'!
cleanIfTime
	self isTimeToClean ifTrue: [ self clean ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 6/23/2013 15:07'!
cleanUpWriteBarrier
	self abort.
	transaction
		 writeBarrierStatusChangedFor: self ;
		 cleanUpWriteBarrier! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 8/12/2010 23:34'!
commitLogRecordAt: commitNumber 
	"Calls commitRecordsFrom:"
	| answerArray |
	answerArray _ self secondarySubmit:
		(MaCommitLogRecordRequest new
			 startingCommitNumber: commitNumber ;
			 endingCommitNumber: commitNumber yourself).
	^ answerArray
		ifEmpty: [ MagmaUnavailableCommitRecord signal ]
		ifNotEmpty: [ answerArray first ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 11/6/2008 16:30'!
commitLogRecordsFrom: startingCommitNumber 
	"Calls commitRecordsFrom:"
	^ self secondarySubmit: 
		(MaCommitLogRecordRequest new
			startingCommitNumber: startingCommitNumber ;
			yourself)! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 7/15/2008 14:57'!
commitNumber: anInteger 
	transaction commitNumber: anInteger! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 1/14/2013 14:02'!
critical: aBlock
	^ guard critical: aBlock! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 12/11/2004 13:44'!
decrementTransactionLevel

	transactionLevel _ transactionLevel - 1! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 3/7/2011 11:08'!
dropStrongReferences
	anchor _ nil.
	strongReferences removeAll! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 7/8/2014 20:39'!
ensureClassDefinitionsFullyMaterialized
	serializer classDefinitionsById do: [ : eachColl | eachColl do: [ : eachDef | eachDef yourself ] ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 3/14/2009 12:41'!
ensureCorrectNodeConfiguration
	self ensureIsAdminSession.
	"Calls #ensureCorrectNodeConfiguration."
	self submit: MagmaEnsureCorrectNodeConfiguration new! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 11/17/2008 16:19'!
ensureInRestoreMode
	self serverPerform: #ensureInRestoreMode! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 11/26/2011 16:28'!
ensureNodeFullyMaterialized
	self node locations do:
		[ : each | each yourself ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 5/23/2011 13:59'!
ensureProxy: aMagmaMutatingProxy
	(proxies includes: aMagmaMutatingProxy) ifFalse: [ proxies add: aMagmaMutatingProxy ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 1/1/2013 19:58'!
ensureSecondaryLinkConfigured
	"Private - If allowFailover is set, and a secondary server is available, initialize my secondaryLink accordingly."
	(self node isNil or: [ (self node includesSecondary: (MagmaRemoteLocation location: secondaryLink location)) not ]) ifTrue:
		[ self secondaryLocation:
			(allowFailover
				ifTrue:
					[ self node isBackedUp
						ifTrue: [ self node anySecondaryLocation ]
						ifFalse: [ self node primaryLocation ] ]
				ifFalse: [ MagmaRemoteLocation location: primaryLink location ]) ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 3/26/2013 13:01'!
finalizeOids
	guard critical:
		[ serializer finalizeOids.
		transaction finalizeOids.
		immutabilityStrategy ifNotNil: [ immutabilityStrategy finalizeImmutables ] ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 3/26/2013 12:47'!
forceClean
	guard critical:
		[ lastClean _ 0.
		self cleanIfTime ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 2/26/2009 00:23'!
handleClassModification: aModifiedClassDefinitionEvent 
	guard critical: 
		[ aModifiedClassDefinitionEvent isModified ifFalse: [ ^ self ].
		aModifiedClassDefinitionEvent item isMeta ifTrue: [ ^ self ].
		serializer handleClassModification: aModifiedClassDefinitionEvent.
		self prepareReadStrategy ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 8/22/2014 16:08'!
handleFailedLink: failedMaNetworkServerLink 
	"Handle the situation where aMaNetworkServerLink received a ConnectionRefused when trying to access it.  If it is a link to the primary, we set my primaryLink to the second server, if aMaNetworkServerLink is a link to a warm backup, set it to any other secondary or, if none available, the primary.  Answer the new link to try next."
	| answer primaryFailed |
	allowFailover ifFalse: [ ^ failedMaNetworkServerLink ].
	self node ifNil: [ ^ failedMaNetworkServerLink ].
	self isHighlyAvailable ifFalse: [ ^ failedMaNetworkServerLink ].
	primaryFailed _ false.
	answer _ failedMaNetworkServerLink == primaryLink 
		ifTrue: 
			[ primaryFailed _ true.
			"In case the node's 'locations' is a proxy, trying to access it would result in a stack-overflow.  So set it to secondaryLink first, in case the following line tries to cause a ReadRequest sent to the "
			primaryLink _ secondaryLink.
			"primaryLink should be a link to the second location, so we don't have different clients with different notions about who should be the next primary.  If that is what secondaryLink already is, we don't need to re-init it."
			primaryLink _ self node nextPrimaryLocation 
				ifNil: [ secondaryLink ]
				ifNotNilDo: 
					[ : nextLoc | 
					secondaryLink location = nextLoc serverLocation 
						ifTrue: [ secondaryLink ]
						ifFalse: 
							[ self node nextPrimaryLocation newServerLink
								preferences: primaryLink preferences copy ;
								yourself ] ] ]
		ifFalse: 
			[ "Secondary failed, look for a different secondary or, if none, use the primary."
			| otherAvailableSecondarys |
"A like-guard as in the primary-failure case, above."
"secondaryLink_primaryLink"
			otherAvailableSecondarys _ self node locations allButFirst.
			secondaryLink _ otherAvailableSecondarys 
				maDetect: [ : each | (each serverLocation = secondaryLink location) not ]
				ifFound: 
					[ : foundLocation | 
					foundLocation newServerLink
						preferences: secondaryLink preferences copy ;
						yourself ]
				ifNone: [ primaryLink ] ].
	"Tell whoever is primary now to update the Node."
	primaryFailed ifTrue: 
		[ "Inform the primary of the failed location so the node can be updated prior to attempting reconnection."
		primaryLink submit: (MagmaNoteUnreachableServer new failedLocation: (self node locationMatching: failedMaNetworkServerLink location)) ].
	^ answer! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 7/10/2014 13:44'!
handleSpecialOidNotifications: aDictionary 
	"aDictionary is keyed by selector Symbols, with Array's of ByteArray's as values.  The selectors indicate what should be done with those ByteArray's once materialized."
	guard critical:
		[ | didRefresh |
		didRefresh _ false.
		"Refresh the node first, in case subsequent instructions require access to the server."
		(aDictionary includesKey: #refreshNode) ifTrue:
			[ self
				 refreshSpecialObjectsUsing: (aDictionary at: #refreshNode) ;
				 ensureNodeFullyMaterialized ].
		((aDictionary includesKey: #refreshClassDefinitions) or: [ aDictionary includesKey: #refreshClassVersions ]) ifTrue:
			[ didRefresh _ true.
			self
				 refreshSpecialObjectsUsing: (aDictionary at: #refreshClassDefinitions) ;
				 ensureClassDefinitionsFullyMaterialized ].
		"Uncomment the next line when we decide to support lockable RepositoryDefinitions."
		"		(aDictionary includesKey: #refreshDefinition) ifTrue: [ self refreshSpecialObjectsUsing: (aDictionary at: #refreshDefinition) ]."
		didRefresh ifTrue: [ self prepareReadStrategy ] ]! !

!MagmaSession methodsFor: 'private'!
id

	^id! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 7/16/2014 12:58'!
id: aUUID
self maMarked: 'delete'.
	id _ aUUID! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 12/11/2004 13:44'!
incrementTransactionLevel

	transactionLevel _ transactionLevel + 1! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 12/4/2015 16:30'!
initializePrimaryLocation
	"Clients may send any request, including the initial connection request, to any respository in the node, primary or secondary.  Magma will adjust the receivers primaryLink and secondaryLink as necessary.  Whichever one the user connected to (primary or secondary), configure the other."
	(allowFailover and: [ self isLocal not ]) ifTrue:
		[ "did user connect to the primary?"
		primaryLink location = self node primaryLocation serverLocation
			ifTrue: [ self ensureSecondaryLinkConfigured ]
			ifFalse:
				[ "No, did they connect to one of the secondary locations?"
				self node secondaryLocations ifNotEmpty:
					[ : secondaryLocs | (secondaryLocs anySatisfy:
						[ : each | each serverLocation = secondaryLink location ]) ifTrue: [ "Yes, we have some valid link, set my primaryLink to what its supposed to be."
						self primaryLocation: self node primaryLocation ] ] ] ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 10/12/2009 13:19'!
isMonitoringLargeCollection: aMagmaLargeCollection
	^ transaction isMonitoring: aMagmaLargeCollection changes! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 3/12/2010 17:40'!
isServerSession
	^ (Smalltalk hasClassNamed: #MagmaRepositoryController) and: 
		[ self userId = (Smalltalk classNamed: #MagmaRepositoryController) systemSessionUserId ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 7/24/2018 17:44'!
isTimeToClean
	^ guard critical:
		[ (Time millisecondsSince: lastClean) > 60000 and:
			[ proxies size > 1000 or: [ (Time millisecondsSince: lastClean) > (1000 * 60 * 5) ] ] ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 10/13/2014 15:03'!
link: aMaServerLink 
	primaryLink _ secondaryLink _ aMaServerLink.
	primaryLink stat: self statistics.
	secondaryLink stat: self statistics! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 11/18/2008 14:29'!
linksDo: aBlock 
	aBlock value: primaryLink.
	secondaryLink ~~ primaryLink ifTrue: [ aBlock value: secondaryLink ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 7/5/2012 10:12'!
maPrintAbbreviatedOn: aStream 
	super maPrintAbbreviatedOn: aStream.
	self isLocal
		ifTrue:
			[ self location ifNotNilDo:
				[ : loc | loc maPrintAbbreviatedOn: aStream ] ]
		ifFalse:
			[ primaryLink maPrintAbbreviatedOn: aStream.
			self isHighlyAvailable ifTrue:
				[ aStream space.
				secondaryLink maPrintAbbreviatedOn: aStream ] ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 5/27/2013 17:43'!
magmaSession
	"For API compatibility with any object.  Any object knows its MagmaSession, but the session for any MagmaSession object is himself.  This method was added to allow MaInstaller to #close: down the session for any object, not just a session."
	^ self! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 1/20/2014 20:18'!
magmaStatClassIds
	| ids |
	ids _ Set new.
	self definition classDefinitions keysAndValuesDo:
		[ : eachId : each | | candidate |
		candidate _ eachId.
		each anyOne withAllSuperclassDefinitionsDo:
			[ : eachDef | eachDef className = #MagmaStat ifTrue:
				[ ids
					 add: candidate ;
					 add: eachDef id ] ] ].
	^ ids! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 1/28/2005 00:17'!
materializeAnchorFrom: aMaReadResult

	^ self materializeObject: aMaReadResult byteArray! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 5/16/2013 10:27'!
materializeObject: aByteArray 
	"aByteArray is a MaGraphBuffer retrieved from the server.  Construct its object graph, noting each node in my serializer, linking up with previously materialized nodes by oid as appropriate."
	"When not using WriteBarrier, postMats won't cause objects to be dirty, so let's not allow them to be when using WriteBarrier."
	^ transaction suspendWriteBarrierModifiedsWhile: 
		[ 
		[ serializer 
			materializeGraph: aByteArray
			do: 
				[ : eachObject : eachBuffer | 
				transaction 
					markRead: eachObject realObjectIfMutatingProxy
					using: eachBuffer ]
		"Handle MagmaSessionRequest to handle domains that reference the session directly." ] 
			on: MagmaSessionRequest
			do: [ : req | req handleAndResumeUsing: self ] ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 5/7/2008 17:03'!
materializeObjectsIn: aMaCollectionSegment 
	self statistics clientSideMcPageReadsTimeHistory addValue: (Time millisecondsToRun: 
			[ aMaCollectionSegment objects doWithIndex: 
				[ : eachHashAndBuffer : index | 
				eachHashAndBuffer isVariableBinding 
					ifTrue: 
						[ aMaCollectionSegment objects 
							at: index
							put: eachHashAndBuffer key -> (self materializeObject: eachHashAndBuffer value) ]
					ifFalse: 
						[ "For member-index access, we only need the object buffers, there are no associated hashes, and I decided an ugly type-check was better than wasting bandwidth."
						aMaCollectionSegment objects 
							at: index
							put: (self materializeObject: eachHashAndBuffer) ] ] ])! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 7/20/2010 14:19'!
newCommitPackageFor: aMaTransaction 
	"It is possible to that we will serialize up to three times.  If we add a new LargeCollection that also adds instances of a new class, the first serialization will detect the new LargeCollection, the second notices the new classes, the third gets everything right.."
	| commitPackage mustReserialize |
	commitPackage _ aMaTransaction changedObjects.
	mustReserialize _ commitPackage serializeObjectsUsing: self.
	^ mustReserialize
		ifTrue:
			[ self
				 prepareReadStrategy ;
				 newCommitPackageFor: aMaTransaction ]
		ifFalse: [ commitPackage ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 12/22/2008 13:47'!
oidCount: anInteger 
	oidCount _ anInteger! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 2/8/2009 15:36'!
prepareReadStrategy
	readStrategy ifNotNil: [ readStrategy makeReadyForUseUsing: serializer classIdManager ]! !

!MagmaSession methodsFor: 'private' stamp: 'jpb 5/11/2021 16:21:26'!
primConnect
	| repositoryCommitNumber resultArray startedClientSideConnectionProcessing connectionRequest connectedToPrimary |
	MaRegistry checkUuidPlugin.

	self isConnected ifTrue: [ MagmaUserError signal: 'This session is already connected.' ].

	"	Smalltalk initializeGarbageCollectorSettingsForMagma."
	self statistics ensureActive.
	self isLocal ifTrue: [ self ensureOpen ].

	readStrategy ifNotNil: [ readStrategy beNew ].

	"Calls #newSessionFor:sessionId:."
	connectionRequest _ MaRepositoryConnectionRequest new
		 uuid: self uuid ;
		 commitNumber: self commitNumber ;
		 magmaVersion: self class magmaVersion ;
		 userId: self userId ;
		 sessionId: (id _ MaRegistry newUuid) ;
		 yourself.
	resultArray _ self submit: connectionRequest.
	startedClientSideConnectionProcessing _ Time millisecondClockValue.
	self
		 loadClassDefinitionsFrom: (resultArray at: 1) ;
		 loadDefinitionFrom: (resultArray at: 2).
	repositoryCommitNumber _ resultArray at: 3.
	connectedToPrimary _ resultArray at: 4.
	"We now have class-defs, make the readStrategy ready in case they've specified one before connection!!"
	self prepareReadStrategy.
	"Whichever one we already connected to, connect to the other one, so both servers can have a MagmaClientConnection for this session."
	self initializePrimaryLocation.
	self isHighlyAvailable ifTrue:
		[ connectedToPrimary
			ifTrue: [ self secondarySubmit: connectionRequest ]
			ifFalse: [ self submit: connectionRequest ] ].
	self commitNumber = 0
		ifTrue: [ self commitNumber: repositoryCommitNumber ]
		ifFalse: [ self statistics refreshAllTimeHistory addValue: (Time millisecondsToRun: [ self refreshTo: repositoryCommitNumber ]) ].
		
	transaction registerForNotifications.
	
	self initializeSystemChangeNotifications.
	self statistics clientSideConnectionTimeHistory addValue: (MaRegistry findMillisecondsSince: startedClientSideConnectionProcessing).
	self isServerSession ifFalse: [MagmaNotification signal: 'Connected to ' , self linkInformation , ' as ' , self userId , '...'].
	
	"We've just connected.  If this session *was* in a transaction then begin one on the server."
	self restoreTransaction! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 12/9/2012 14:56'!
primaryLocation: aMagmaRemoteLocation 
	"Set my primary (commit) location to the repository aMagmaRemoteLocation."
	primaryLink location ~= aMagmaRemoteLocation serverLocation ifTrue:
		[ | oldLink |
		oldLink _ primaryLink.
		primaryLink disconnect.
		primaryLink _ aMagmaRemoteLocation newServerLink
			 preferences: primaryLink preferences copy ;
			 yourself.
		(MagmaLinkChange
			oldLink: oldLink
			newLink: primaryLink) signal ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 9/22/2008 10:23'!
processNewAndRemovedIndexesIn: aMagmaCommitPackage using: aMaCommitResult 
	| backupPackage |
	backupPackage _ aMagmaCommitPackage copyWithNewLargeCollectionChanges.
	transaction resetCommitPackage.
	self 
		refreshViewUsing: aMaCommitResult
		includingLocal: false.
	backupPackage newIndexesDo: 
		[ : eachChanges | 
		| objectOidsAlreadyIndexed |
		objectOidsAlreadyIndexed _ eachChanges added keys collect: 
			[ : each | 
			(MaOidCalculator isOidForNewObject: each) 
				ifTrue: 
					[ aMaCommitResult permanentOids 
						at: each
						ifAbsent: 
							[ MagmaSoftwareError signal: 'error building index, expected to find permanent oid' ] ]
				ifFalse: [ each ] ].
		eachChanges isNewCollection ifFalse: 
			[ eachChanges collection 
				buildIndexes: (eachChanges addedIndexes collect: [ : each | eachChanges collection indexNamed: each attribute ])
				ignoring: objectOidsAlreadyIndexed ] ].
	backupPackage removedIndexesDo: [ : eachCollection : eachIndexes | eachCollection commitUnlock ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 9/27/2011 22:27'!
read: oid 
	"calls read:for:using: in server."
	self cleanIfTime.
	^ self secondarySubmit: 
		(MaReadRequest new
			oid: oid ;
			readStrategy: self resetReadStrategy ;
			yourself)! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 4/22/2013 15:12'!
realObjectFor: oid 
	^ guard critical:
		[ | result answer readTime |
		readTime _ Time millisecondsToRun:
			[ result _ self read: oid.
			answer _ self materializeObject: result byteArray ].
		self statistics clientSideProxyMaterializationTimeHistory addValue: readTime.
		readTime > 0 ifTrue:
			[ "I don't like capturing this because it requires an enumeration of the buffers, which could be slowing things down.  Only uncomment if necessary."
			"self statistics objectsReadPerSecond addValue: serializer graphBuffer objectCount * 1000 // readTime."
			self statistics objectBytesReadPerSecond addValue: serializer graphBuffer bufferSize * 1000 // readTime ].
		answer realObjectIfMutatingProxy ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 10/25/2010 13:27'!
recordObjects: aCollection 
	"aCollection of MaObjectBuffers."
	aCollection do:
		[ : each | serializer
			objectWithOid: each oid
			ifFound:
				[ : object | object maIsMutatingProxy
					ifTrue:
						[ object maRealObjectIsReified ifTrue:
							[ transaction
								markRead: object realObjectIfMutatingProxy
								using: each ] ]
					ifFalse:
						[ transaction
							markRead: object
							using: each ] ]
			ifAbsent: [ "do nothing"
				 ] ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 1/5/2016 10:10'!
refresh: anObject 
	"Update anObject with the contents of the repository.  Use sparingly and with caution!!"
	| readResult graph |
	((serializer hasOidFor: anObject) and: [( MaOidCalculator isOidForUserObject: (serializer oidFor: anObject)) not]) ifTrue: [  MagmaUserError signal: 'cannot refresh a non-persistent object.' ].
	readResult _ self read: (self oidFor: anObject).
	graph _ MaSerializedGraphBuffer byteArray: readResult byteArray.
	self
		refreshObject:
			((MagmaRefreshEvent session: self)
				 buffer: graph rootBuffer ;
				 object: anObject ;
				 yourself)
		includingLocal: false! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 1/30/2014 17:32'!
refreshAllWithOids: allKnownOids accumulatingConflictsIn: aMaFailedCommitResult 
	"refreshAll:for: returns MaSerializedGraphBuffers but refreshChangedObjects: just wants the individual MaObjectBuffers.  Collect them up."
	"Calls refreshAll:for:."
	| objectBuffers myCommitNumber |
	objectBuffers _ (self secondarySubmit: (MaReadMultipleRequest new oids: allKnownOids)) collect:
		[ : each | each buffers first ].
	"Now select the ones which were changed by others."
	myCommitNumber _ self commitNumber.
	objectBuffers _ objectBuffers select:
		[ : each | each commitNumber > myCommitNumber ].
	objectBuffers sort:
		[ : a : b | a commitNumber < b commitNumber ].
	objectBuffers do:
		[ : eachBuffer | self
			check: eachBuffer
			using: MagmaClientConnection unknown
			accumulatingConflictsInto: aMaFailedCommitResult ].
	aMaFailedCommitResult populateConflictingObjectsFromOidsUsing: serializer.
	self
		refreshChangedObjects: objectBuffers
		includingLocal: false! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 1/13/2014 15:58'!
refreshChangedObjects: changedObjects includingLocal: aBoolean
	"changedObjects is a Collection of MaObjectBuffers that were written by other clients.  For each one that the receiver still knows its oid, set all of its instVars to the objects that map by its referenced oids.  If a referenced oid is not in the client, substitute with a proxy."
	"Some Morphs cannot be refreshed while they're stepping in the world; therefore we provide this hack to ensure we only update them 'offline'; e.g., we delete, refresh, then add them back at the same position and index as they were.  The events restoreData is used to capture this temporary information."
	| refreshEvents |
	refreshEvents _ OrderedCollection new.
	transaction suspendWriteBarrierModifiedsWhile: 
		[ changedObjects do: 
			[ : eachObjectBuffer | 
			| object |
			object _ serializer 
				objectWithOid: eachObjectBuffer oid
				ifAbsent: [ nil ].
			(object == nil or: [ (object maIsMutatingProxy and: [ object maRealObjectIsReified not ]) or: [ object isImmutableInMagma ] ]) ifFalse: 
				[ | event |
				event _ (MagmaRefreshEvent session: self)
					buffer: eachObjectBuffer ;
					object: object ;
					yourself.
				self refreshObject: event includingLocal: aBoolean.
				object realObjectIfMutatingProxy wantsMagmaEvents ifTrue: [ refreshEvents add: event ] ] ] ].
	refreshEvents do: 
		[ : each | 
		each object 
			triggerEvent: #magmaRefreshed
			with: each ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 11/25/2011 16:39'!
refreshClassDefinitions
	"This for a very specific scenario.  If the user attempts to commit a new or changed class and the commit fails for any reason, their classMaps (both persistent and non-persistent) need to be restored to their state without all the new classes because, if they then try to commit some of those same new classes again, it will not detect the new addition to the classDefinitions."
	guard critical: 
		[ transaction suspendWriteBarrierModifiedsWhile: 
			[ self refresh: serializer classDefinitionsById.
			serializer classDefinitionsById do: [ : eachDefinitions | self refresh: eachDefinitions ].
			serializer classIdManager rebuildTransientClassMaps ] ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 7/13/2009 12:57'!
refreshDefinition
	"This for a very specific scenario.  If the user attempts to commit a new or changed class and the commit fails for any reason, their classMaps (both persistent and non-persistent) need to be restored to their state without all the new classes because, if they then try to commit some of those same new classes again, it will not detect the new addition to the classDefinitions."
	guard critical: 
		[ transaction suspendWriteBarrierModifiedsWhile: [ self refresh: definition ].
		self refreshClassDefinitions ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 3/4/2014 15:33'!
refreshMyKnownObjects
	"Refresh all objects in the image retrieved by this session with their copies in the repository."
	"When a session has been offline for sometime, many of the objects it has in its oid Dictionary's could be out of date, and doing an abort after reconnecting won't update them because refreshes are only performed from transient information in the server (the repository's 'transactionLog').	Therefore, enumerate all of my objects and refresh them."
	| allKnownOids result |
	result _ MaFailedCommitResult new.
	allKnownOids _ OrderedCollection new: 1000.
	serializer oidsAndObjectsDo:
		[ : eachOid : eachObject | ((eachObject maIsMutatingProxy and: [ eachObject maRealObjectIsReified not ]) not and:
			[ eachObject maIsForwardingProxy not and:
				[ eachObject notNil and: [ eachObject isImmutableInMagma not ] ] ]) ifTrue:
			[ allKnownOids add: eachOid.
			allKnownOids size >= 1000 ifTrue:
				[ self
					refreshAllWithOids: allKnownOids
					accumulatingConflictsIn: result.
				allKnownOids removeAll ] ] ].
	allKnownOids ifNotEmpty:
		[ self
			refreshAllWithOids: allKnownOids
			accumulatingConflictsIn: result ].
	self bulkBecomeProxies.
	self inTransaction ifTrue: [ self checkIfTooFarBehind: result ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 9/17/2014 10:14'!
refreshObject: aMagmaRefreshEvent includingLocal: aBoolean 
	aMagmaRefreshEvent object wantsMagmaEvents ifTrue:
		[ aMagmaRefreshEvent object
			triggerEvent: #magmaAboutToRefresh
			with: aMagmaRefreshEvent
		"calls #aboutToRefreshFromMagma:" ].
	aMagmaRefreshEvent buffer
		refresh: aMagmaRefreshEvent object
		using: self
		includingLocal: aBoolean.
	"We do this here instead of all the time in #markRead:using: because removeKey: is so slow."
	transaction ensureOldHashesCleanedFor: aMagmaRefreshEvent object.
	aMagmaRefreshEvent object realObjectIfMutatingProxy
		postRefreshUsing: aMagmaRefreshEvent buffer
		for: self! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 1/10/2014 16:58'!
refreshSpecialObjectsUsing: anArrayOfByteArrays 
	"each ByteArray is a graph buffer of either the entire classDefinitionsById, OR merely one of the OrderedCollections of the definitions for a particular id/class."
	anArrayOfByteArrays do:
		[ : each | | gb specialObject |
		"Materialize the full-graph of each special-object."
		specialObject _ serializer materializeGraph: each.
		gb _ MaSerializedGraphBuffer byteArray: each.
		self
			refreshChangedObjects: gb buffers
			includingLocal: false ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 8/22/2014 14:49'!
refreshTo: repositoryCommitNumber 
	"Refresh all objects in the image retrieved by this session with their copies in the repository."
	"When a session has been offline for sometime, many of the objects it has in its oid Dictionary's could be out of date, and doing an abort after reconnecting won't update them because refreshes are only performed from transient information in the server (the repository's 'transactionLog').
	Therefore, bring my view up to date."
	guard critical:
		[ self cachedObjectCount < 25000
			ifTrue:
				[ self refreshMyKnownObjects.
				self commitNumber: repositoryCommitNumber ]
			ifFalse:
				[ (self remoteCommitNumber - self commitNumber < 100 or:
					[ self preferences allowLongCatchUp = true or: [ MagmaTooFarBehindError signal ] ]) ifTrue:
					[ [ self tryToRefreshTo: repositoryCommitNumber ]
						on: MagmaUnavailableCommitRecord
						do:
							[ : err | self refreshMyKnownObjects ] ] ] ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 1/10/2014 16:50'!
refreshViewUsing: aMaRefreshViewResult includingLocal: aBoolean 
	"I have crossed a transaction boundary, either through abort, commit or begin."
	guard critical:
		[ self statistics refreshViewHistory addValue: (Time millisecondsToRun: [ aMaRefreshViewResult refresh: self includingLocal: aBoolean ]).
		serializer resetNewObjects.
		transaction resetNewLargeCollections.
		aBoolean ifTrue:
			[ transaction resetCommitPackage.
			self resetMagmaCollectionChanges ].
		self cleanIfTime ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 3/14/2009 14:55'!
remotePrimitiveAttributes
	"Calls #primitiveAttributes."
	^ self submit: MaPrimitiveAttributesRequest new! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 12/22/2008 13:37'!
remotePrimitiveAttributesDo: aBlock 
	^ aBlock value: self remotePrimitiveAttributes! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 12/22/2008 15:46'!
resetLastClean
	lastClean _ Time millisecondClockValue! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 3/6/2009 16:15'!
resetReadStrategy
	"We allow the user to define read strategies 'specifications' for classes that may not even exist in the repository.  So, classes that aren't known yet are remembered by the strategy."
	^ guard critical: 
		[ readStrategy 
			ifNotNil: 
				[ readStrategy isNew ifTrue: 
					[ "do we have new depth specifications?"
					"Must ensureConnected now instead of relying on a lazy connection because #resetReadStrategy copies my readStrategy.  We need the ReadStrategy *after* we have downloaded the class-definitions."
					self ensureConnected.
					[ readStrategy copyWithoutSpecifications ] ensure: [ readStrategy beOld ] ] ] ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 12/11/2004 13:55'!
resetTransactionLevel
	transactionLevel _ 0! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 12/18/2008 19:27'!
restoreTransaction
	self inTransaction ifTrue: 
		[ | saveTransactionLevel |
		saveTransactionLevel _ transactionLevel.
		"We must reset the transactionLevel so #begin will work."
		
		[ 
		[ self
			resetTransactionLevel ;
			begin ] 
			on: MagmaAlreadyInTransaction
			do: 
				[ : err | 
				"This could happen if the network couldn't deliver the response on a commit.  We're in the state we want, don't complain."
				 ] ] ensure: [ transactionLevel _ saveTransactionLevel ] ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 9/14/2011 18:14'!
root: anObject 
	anchor _ self anchor.
	anchor root ifNotNil: 
		[ MagmaWarning signal: 'Are you sure you want to wipe out the entire database for ' , anObject printString , '?' ].
	guard critical: [ anchor root: anObject ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 12/9/2012 14:57'!
secondaryLocation: aMagmaRemoteLocation 
	"Set my secondary (read) location to the repository aMagmaRemoteLocation."
	secondaryLink location ~= aMagmaRemoteLocation serverLocation ifTrue:
		[ | oldLink |
		oldLink _ secondaryLink.
		secondaryLink == primaryLink ifFalse: [ secondaryLink disconnect ].
		secondaryLink _ primaryLink location = aMagmaRemoteLocation serverLocation
			ifTrue: [ primaryLink ]
			ifFalse:
				[ aMagmaRemoteLocation newServerLink
					 preferences: secondaryLink preferences copy ;
					 yourself ].
		(MagmaLinkChange
			oldLink: oldLink
			newLink: secondaryLink) signal ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 8/9/2014 19:11'!
secondarySubmit: aMagmaRepositoryRequest 
	"Submit aMagmaRepositoryRequest to the secondary server and answer the result."
	^ [ aMagmaRepositoryRequest requiresConnection ifTrue: [ self ensureConnected ].
	self
		submit: aMagmaRepositoryRequest
		to: secondaryLink ]
		maOn: MagmaReadServerTooFarBehind
		do:
			[ : err | self isHighlyAvailable
				ifTrue:
					[ 1 second asDelay wait.
					err retry ]
				ifFalse: [ err pass ] ]
		on: MagmaWrongServerError
		do:
			[ : err | allowFailover
				ifTrue:
					[ MagmaNotification signal: err asString , ' switching to ' , err correctServer asString.
					self
						 disconnect ;
						 secondaryLocation: err correctServer.
					err retry ]
				ifFalse:
					[ MagmaNotification signal: err asString.
					err pass ] ]! !

!MagmaSession methodsFor: 'private'!
serializer

	^serializer! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 10/31/2018 15:53'!
setGlobalReadStrategy: aMaReadStrategy ifNotIn: aSet 
	"Set my ReadStrategy, as well as all other sessions of my sessions linked to me."

self maMarked: 'dev'.  "Was just looking at this code and thinking we should enumerate all MagmaSession instances which match my magmaId, or the magmaId's of any of my 'links'."

	(aSet ifAbsentAdd: self) ifFalse: [ ^ self ].
	self readStrategy: aMaReadStrategy copyForOtherSession.
	self definition ifNotNilDo:
		[ : def | def links do:
			[ : each | each findSession
				setGlobalReadStrategy: aMaReadStrategy copyForOtherSession
				ifNotIn: aSet ] ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 12/22/2012 15:10'!
setTimeoutSecondsTo: anInteger during: aBlock 
	"Temporarily adjust my timeoutSeconds for evaluation of aBlock."
	| oldTimeout |
	guard critical: 
		[ oldTimeout _ self timeoutSeconds.
		self timeoutSeconds: anInteger.
		[ aBlock value ] ensure: [ self timeoutSeconds: oldTimeout ] ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 6/7/2005 12:50'!
signalExceptionLike: anException 
	| signalableError |
	signalableError _ anException maOriginalClass new 
		copyAttributes:
			(anException maOriginalClass allInstVarNames copyWithoutAll: #('signalContext' 'handlerContext' 'outerContext'))
		from: anException.
	"this is probably not necessary.."
	signalableError signal! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 11/6/2008 16:27'!
sizeOfLargeCollection: aMagmaCollection
	"Calls sizeOfLargeCollection:"
	self ensureConnected.  "Need this before we call oidFor:, below."
	^ self secondarySubmit:
		(MaLargeCollectionSizeRequest new 
			collectionOid: (self oidFor: aMagmaCollection) ;
			yourself)! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 4/1/2012 18:34'!
stopLoading: aMagmaCollection 
	"If aMagmaCollection was created from a 'luxury' query, and it is still loading on the server, instruct the server to stop.  This can save many server resources for queries that are no longer needed.
	If aMagmaCollection is not being loaded, or not created from a luxury query, this message has no effect.
	This is an asynchronous message, so it returns instantly."
	(MaOidCalculator isOidForNewObject: aMagmaCollection changes collectionOid) ifFalse: 
		[ self submit: (MagmaReleaseReaderRequest new
				collectionOid: aMagmaCollection changes collectionOid ;
				yourself) ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 7/4/2005 16:35'!
stronglyReference: anObject

	strongReferences add: anObject! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 8/9/2014 19:11'!
submit: aMagmaRepositoryRequest 
	"Submit aMagmaRepositoryRequest and answer the result.  This is a core method."
	^ [ self
		submit: aMagmaRepositoryRequest
		to: primaryLink ]
		on: MagmaWrongServerError
		do:
			[ : err | allowFailover
				ifTrue:
					[ MagmaNotification signal: err asString , ' switching to ' , err correctServer asString.
					self
						 disconnect ;
						 primaryLocation: err correctServer.
					err retry ]
				ifFalse:
					[ MagmaNotification signal: err asString.
					err pass ] ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 9/4/2014 14:28'!
submit: aMagmaRepositoryRequest to: aMaServerLink 
	"Submit aMagmaRepositoryRequest and answer the result.  This is a core method."
	^ guard critical:
		[ aMagmaRepositoryRequest waitCursor showWhile:
			[ | retries link result priorLink newLink |
			retries _ 0.
			link _ aMaServerLink.
			[ aMagmaRepositoryRequest requiresConnection ifTrue:
				[ [ self ensureConnected ; ensureConnected ]
					on: MagmaLinkChange
					do:
						[ : noti | link _ noti linkToReplace: link.
						noti resume ] ].
			aMagmaRepositoryRequest prepareToSubmitFor: self.
			link timeoutSeconds:
				(aMagmaRepositoryRequest timesToRetry > 0
					ifTrue: [ self retrySeconds + (self retrySeconds * retries) ]
					ifFalse: [ self timeoutSeconds ]).
			result _ link submit: aMagmaRepositoryRequest.
			result maIsException ifTrue: [ self signalExceptionLike: result ] ]
				maOn: ConnectionTimedOut
				do:
					[ : err | "This occurs whenever we successfully sent a request out, but did not get a response back within the timeout period."
					MagmaNotification signal: err asString , '.  Retry ' , retries asString , ' of ' , aMagmaRepositoryRequest timesToRetry asString , '.'.
					retries >= aMagmaRepositoryRequest timesToRetry
						ifTrue: [ err pass ]
						ifFalse:
							[ retries _ retries + 1.
							err retry ] ]
				on: ConnectionClosed , MagmaSessionLost
				do:
					[ : err |
					MagmaNotification signal: err asString , '.  Retrying unconditionally.'.
					"It could just be that the server simply expired this session.  Try to reconnect to the same server."
					aMagmaRepositoryRequest isConnect ifFalse: [ self disconnect ].
					"Don't retry a begin, because we already restore transaction on the server as part of the connection process."
					aMagmaRepositoryRequest isBegin
						ifTrue:
							[ MagmaNotification signal: err asString , '.  Reconnecting and restoring transaction...'.
							self ensureConnected.
							nil ]
						ifFalse:
							[ MagmaNotification signal: err asString , '.  Retrying ' , aMagmaRepositoryRequest asString , ' unconditionally.'.
							err retry ] ]
				on: ConnectionRefused
				do:
					[ : err | aMagmaRepositoryRequest isConnect ifFalse: [ self disconnect ].
					priorLink _ link.
					newLink _ self handleFailedLink: link.
					"The server is down.  If we are HA, try another server."
					newLink = priorLink
						ifTrue:
							[ MagmaNotification signal: err asString , '.  Backup server unavailable.'.
							err pass ]
						ifFalse:
							[ MagmaNotification signal: err asString , '.  Retrying at ' , newLink asString.
							aMagmaRepositoryRequest failedLocation: (MagmaRemoteLocation location: priorLink location).
							link _ newLink.
							(MagmaLinkChange
								oldLink: priorLink
								newLink: newLink) signal.
							err retry ] ].
			(result isMagmaServerResult and: [ result hasServerNotifications ]) ifTrue: [ self handleSpecialOidNotifications: result serverNotifications ].
			result ] ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 1/16/2014 13:57'!
transaction
	^ transaction! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 3/1/2009 17:18'!
tryToRefreshTo: repositoryCommitNumber 
	"If the server has the available commit-log records, answer the next few hundred of them and update this session.  If not, signal a MagmaUnavailableCommitRecord."
	| commitLogSerializer lastPosition cn |
	commitLogSerializer _ self class newCommitLogSerializer.
	lastPosition _ -1.
	
	[ cn _ self commitNumber.
	cn > lastPosition and: [ cn < repositoryCommitNumber ] ] whileTrue: 
		[ lastPosition _ cn.
		self advanceUsing: commitLogSerializer ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 1/17/2005 14:33'!
user
	^ user! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 11/12/2008 20:30'!
user: aMagmaUser
	user _ aMagmaUser! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 1/7/2010 11:13'!
userId
	^ self user ifNotNil: [ self user id ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 11/23/2010 14:39'!
userId: aString
	"Convenience method for setting userId, arbitrarily required by Magma.  Creating a session and setting the user is a more lazy way to access repositories, vs. a direct #connectAs:."
	self user: (MagmaUser id: aString)! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 12/18/2008 17:15'!
uuid
	^ self magmaId ifNotNilDo: [ : magId | magId uuid ]! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 5/8/2014 20:07'!
veryDeepCopy
	"Don't let it try."
	^ self! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 10/28/2008 10:42'!
warmBackupUpdatesFrom: startingCommitNumber for: backupLocation 
	"Calls commitRecordsFrom:"
	^ self submit: 
		(MaWarmBackupUpdateRequest new
			startingCommitNumber: startingCommitNumber ;
			requestingLocation: backupLocation ;
			yourself)! !

!MagmaSession methodsFor: 'private' stamp: 'cmm 2/25/2013 12:48'!
write: aMaCommitLogRecord 
	"Send aMaCommitLogRecord to the repository, instructing it to write it to its logs and apply it to its persistent graph."
	"Calls write:logged:commitLogRecord:."
	aMaCommitLogRecord resetChecksum.
	self submit: 
		(MaWriteRequest new
			commitLogRecord: aMaCommitLogRecord ;
			yourself)! !

!MagmaSession methodsFor: 'high-availability' stamp: 'cmm 11/6/2008 13:53'!
allowFailover
	"Answer whether this session will failover to access a secondary repository if necessary and available."
	^ allowFailover! !

!MagmaSession methodsFor: 'high-availability' stamp: 'cmm 3/5/2009 18:30'!
allowFailover: aBoolean 
	"Set whether this session should talk to any and all nodes to ensure service is provided by multiple servers, improving system performance and continuity."
	self isLocal ifTrue: 
		[ MagmaUserError signal: 'Only applicable to multiserver on-line nodes.' ].
	guard critical: 
		[ allowFailover _ aBoolean.
		self ensureSecondaryLinkConfigured ]! !

!MagmaSession methodsFor: 'high-availability' stamp: 'cmm 10/2/2014 13:52'!
beWarmBackup
	self
		 ensureIsAdminSession ;
		 beWarmBackupFor: self node primaryLocation! !

!MagmaSession methodsFor: 'high-availability' stamp: 'cmm 3/14/2009 12:48'!
beWarmBackupFor: aMagmaRemoteLocation 
	"Instruct the server to be a warm-backup for the server running at aMagmaRemoteLocation."
	self ensureIsAdminSession.
	"Calls #beWarmBackupFor:."
	self submit: 
		(MagmaBeWarmBackupRequest new
			primaryLocation: aMagmaRemoteLocation ;
			yourself)! !

!MagmaSession methodsFor: 'high-availability' stamp: 'cmm 9/22/2009 20:35'!
ensureIsAdminSession
	self isLocal ifFalse: 
		[ self allowFailover ifTrue: 
			[ MagmaUserError signal: 'Use a #newAdminSession to perform admin requests, please.' ] ]! !

!MagmaSession methodsFor: 'high-availability' stamp: 'cmm 3/24/2009 14:48'!
inRestoreMode
	"Answer whether the primary server is in restoreMode."
	self ensureIsAdminSession.
	^ self remotePrimitiveAttributes at: #restoreMode! !

!MagmaSession methodsFor: 'high-availability' stamp: 'cmm 11/6/2008 13:15'!
isHighlyAvailable
	"Answer whether I am pointed to a secondary server for this repository which will be used automatically as necessary."
	^ primaryLink ~= secondaryLink! !

!MagmaSession methodsFor: 'high-availability' stamp: 'cmm 12/22/2008 10:11'!
primaryLocation
	^ MagmaRemoteLocation location: primaryLink location! !

!MagmaSession methodsFor: 'high-availability' stamp: 'cmm 11/24/2009 20:32'!
relinquishPrimaryDutyTo: secondaryLocation atCommitNumber: commitNumber branchCode: branchCode
	self ensureIsAdminSession.
	"Calls #executeSwapWith:commitNumber:branchCode:."
	^ self submit:
		(MagmaSwapPrimaryDutyRequest new
			newPrimary: secondaryLocation ;
			commitNumber: commitNumber ;
			branchCode: branchCode ;
			yourself)! !

!MagmaSession methodsFor: 'high-availability' stamp: 'cmm 3/14/2009 12:40'!
removeWarmBackup: aMagmaRemoteLocation 
	"Gracefully removes aMagmaRemoteLocation from the primary servers warm-backups, rather than shutting down abruptly and relying on error-handling."
	self ensureIsAdminSession.
	"Calls #removeSecondaryLocation:"
	self submit: (MaRemoveSecondaryLocationRequest new locationToRemove: aMagmaRemoteLocation)! !

!MagmaSession methodsFor: 'high-availability' stamp: 'cmm 3/8/2009 14:25'!
requiredProgress
	"When using Magma in a multi-server configuration, it may be possible to occasionally find the secondary read-servers 'behind' the primary server.  Applications that cannot tolerate behind reads may specify the minimum requiredProgress for future reads."
	^ requiredProgress! !

!MagmaSession methodsFor: 'high-availability' stamp: 'cmm 3/8/2009 14:24'!
requiredProgress: commitNumber 
	"When using Magma in a multi-server configuration, it may be possible to occasionally find the secondary read-servers 'behind' the primary server.  Applications that cannot tolerate behind reads may specify the minimum requiredProgress for future reads."
	commitNumber isInteger ifFalse: [ MagmaUserError signal: 'Must specify an integral commitNumber.' ].
	requiredProgress _ commitNumber! !

!MagmaSession methodsFor: 'high-availability' stamp: 'cmm 8/4/2013 20:59'!
resetNode
	self commit:
		[ self magmaId resetNode.
		self definition links ifNotNil:
			[ : links | links do:
				[ : each | each resetNode ] ] ]! !

!MagmaSession methodsFor: 'high-availability' stamp: 'cmm 12/22/2008 10:11'!
secondaryLocation
	^ MagmaRemoteLocation location: secondaryLink location! !

!MagmaSession methodsFor: 'high-availability' stamp: 'cmm 3/7/2009 14:16'!
takeOverAsPrimary
	self isLocal ifTrue: 
		[ MagmaUserError signal: 'Only applicable for multiserver on-line nodes.' ].
	self ensureIsAdminSession.
	"Calls #relinquishPrimaryDutyTo:atCommitNumber:branchCode:, but also see the process method."
	^ self submit: MagmaRequestSwapPrimaryDutyRequest new! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 8/7/2014 16:52'!
allowLongCatchUp
	"If the session should find itself more than 100 commits behind, whether it should automatically catch itself up or whether a MagmaTooFarBehindError should be signaled.
	Most of the time, catching up from a long time ago is costly for both client and server, therefore the default is false.  Note however that MagmaTooFarBehindError is resumable."
	^ preferences allowLongCatchUp! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 8/7/2014 16:52'!
allowLongCatchUp: aBoolean
	preferences allowLongCatchUp: aBoolean! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 1/16/2014 13:35'!
allowWriteBarrier
	"Answers whether the WriteBarrier option is enabled, which can enable much improved performance."
	"Not guarded because this needs to perform and it seems very unlikely we would be flipping WB in a background process."
	^ preferences allowWriteBarrier! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 6/21/2013 14:30'!
allowWriteBarrier: aBoolean 
	guard critical:
		[ transaction validateWriteBarrier: aBoolean.
		aBoolean
			ifTrue:
				[ preferences allowWriteBarrier ifFalse: [ transaction installWriteBarrierUsing: self ] ]
			ifFalse:
				[ preferences allowWriteBarrier ifTrue: [ self cleanUpWriteBarrier ] ].
		preferences allowWriteBarrier: aBoolean ]! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 4/23/2003 13:08'!
cachedObjectCount
	"Answers how many persistent objects from this repository are in memory.  Your program should be careful not to reference too-large object structures at a time, or these cache Dictionaries will become large and slower."

	^serializer oidCount! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 5/8/2003 13:48'!
cachedObjectCountByClass

	^serializer cachedObjectCountByClass! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 1/19/2012 20:12'!
commitPackageCountByClass
	"The number of objects in the commitPackage."
	^ transaction commitPackageCountByClass! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 11/5/2008 10:09'!
compressThreshold
	"The maximum number of bytes a request will be before the client decides it should be compressed."
	^ primaryLink compressThreshold! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 11/5/2008 10:09'!
compressThreshold: anInteger 
	"The maximum number of bytes a request will be before the client decides it should be compressed."
	^ primaryLink compressThreshold: anInteger! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 9/1/2010 14:12'!
globalReadStrategy: aMaReadStrategy 
	"Set my ReadStrategy, as well as all other sessions of sessions I link to."
	self
		setGlobalReadStrategy: aMaReadStrategy
		ifNotIn: Set new! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 11/13/2011 19:18'!
immutabilityStrategy
	^ immutabilityStrategy ifNil: [ MaImmutabilityStrategy new ]! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 11/30/2011 20:37'!
immutabilityStrategy: aMaImmutabilityStrategy 
	"Capture some of the immutables"
	self addSystemImmutablesTo: aMaImmutabilityStrategy.
	serializer
		initializeImmutabilityStrategy: aMaImmutabilityStrategy
		using: transaction.
	immutabilityStrategy _ aMaImmutabilityStrategy! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 11/13/2011 19:48'!
mergeImmutabilityStrategy: aMaImmutabilityStrategy 
	self immutabilityStrategy:
		(immutabilityStrategy
			ifNil: [ aMaImmutabilityStrategy ]
			ifNotNil: [ immutabilityStrategy merge: aMaImmutabilityStrategy ])! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 4/12/2013 10:32'!
readSetBufferByteCount
	^ transaction readSetBufferByteCount! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 12/1/2011 12:51'!
readSetCountByClass
	"The number of objects in the readSet.  The caution
with caching too many objects is that it can cause the readSet to be large, which will affect the speed of commits.

There are several tools to deal with THAT:

	 - implement #isImmutableInMagma to return true.  Instances of that object will not be put into the readSet.
	 - Create a one-time ImmutabilityStrategy.  This is a more sophisticated way to describe immutability -- by using a Block.
	 - Turn on the WriteBarrier.  This is, by far, the most effective solution to the problem.  It's totally transparent and free."
	^ transaction readSetCountByClass! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 9/23/2004 15:59'!
readStrategy
	"Answers an object that defines how many levels deep to read when encountering various kinds of objects."

	^ readStrategy! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 2/26/2009 00:22'!
readStrategy: aMaReadStrategy 
	"Once the readStrategy is set, aMaReadStrategy is converted to use class ids.."
	aMaReadStrategy isBasic ifTrue: 
		[ "basic read-strategies are not allowed because they circumvent the systemReadStrategy in the server."
		MagmaUserError signal: 'Basic read-strategies are not allowed, use a MaReadStrategy.' ].
	guard critical: 
		[ readStrategy _ aMaReadStrategy.
		self prepareReadStrategy ]! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 10/13/2012 23:01'!
retrySeconds
	"Some requests will retry a few times, some won't.  For ones that will, this is, the number of seconds the client should wait for a response from the remote server before retrying."
	^ preferences retrySeconds! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 10/13/2012 23:02'!
retrySeconds: anInteger
	"Some requests will retry a few times, some won't.  For ones that will, this is, the number of seconds the client should wait for a response from the remote server before retrying."
	^ preferences retrySeconds: anInteger! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 4/24/2014 16:54'!
serverStatisticsPrimary
	"Answer the MagmaServerStatistics in the primary server.  Calls #serverStatistics."
	^ self 
		submit: MagmaServerStatisticsRequest new
		to: primaryLink! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 4/24/2014 16:54'!
serverStatisticsSecondary
	"Answer the MagmaServerStatistics in the secondary server.  Calls #serverStatistics."
	^ self 
		submit: MagmaServerStatisticsRequest new
		to: secondaryLink! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 5/7/2008 17:02'!
statistics
	^ statistics ifNil: [ statistics _ MagmaSessionStatistics new ]! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 3/13/2013 15:14'!
stubOut: anObject 
	"Convert anObject to a proxy, potentially freeing the objects it references for garbage collection.  Useful for keeping memory consumption under control."
	self stubOutAll: {anObject}! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 11/11/2014 12:58'!
stubOutAll: aCollection 
	"Convert aCollection of objects to proxies, potentially freeing the objects they reference for garbage collection.  Useful for keeping memory consumption under control."
	guard critical:
		[ | obj proxy stubbable objects stubs |
		stubbable _ aCollection select:
			[ : each | self canStubOut: each ].
		objects _ OrderedCollection new: stubbable size.
		stubs _ OrderedCollection new: stubbable size.
		stubbable do:
			[ : each | each maIsMutatingProxy
				ifTrue:
					[ "We know the proxy has its real-object reified, because canStubOut: requires that."
					obj _ each realObjectIfMutatingProxy.
					proxy _ each.
					proxy setRealObjectTo: nil.
					self addProxy: each ]
				ifFalse:
					[ obj _ each.
					proxy _ serializer proxyFor: (self oidFor: obj) ].
			objects add: obj.
			stubs add: proxy.
			transaction remove: obj.
			serializer cleanObject: obj ].
		"Not sure this guard is actually necessary but..."
		objects asArray
			elementsForwardIdentityTo: stubs asArray
			copyHash: false ]! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 10/13/2012 23:02'!
timeoutSeconds
	"For MagmaRemoteLocations only, the number of seconds the client should wait for a response from the remote server.  If, after that time, a response is not received, a MaNetworkError will be signaled."
	^ preferences timeoutSeconds! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 10/13/2012 23:02'!
timeoutSeconds: anInteger 
	"For MagmaRemoteLocations only, specify the number of seconds the client should wait for a response from the remote server.  If, after that time, a response is not received, a MaNetworkError will be signaled."
	preferences timeoutSeconds: anInteger.
	primaryLink timeoutSeconds: anInteger.
	secondaryLink timeoutSeconds: anInteger! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 8/18/2009 14:30'!
useCompression: aBoolean 
	self compressThreshold: (aBoolean 
			ifTrue: [ MaClientSocket mtuSize ]
			ifFalse: [ MaSerializedGraphBuffer unreasonablePhysicalSize * 2 ])! !

!MagmaSession methodsFor: 'performance' stamp: 'cmm 3/27/2010 21:36'!
writeStatisticsToFile
	| allStats filename |
	filename _ 'magma-statistics.obj'.
	allStats _ Dictionary new
		at: #statistics
			put: self statistics archivalCopy ;
		yourself.
	self isHighlyAvailable 
		ifTrue: 
			[ allStats
				at: #serverStatisticsPrimary
					put: self serverStatisticsPrimary archivalCopy ;
				at: #serverStatisticsSecondary
					put: self serverStatisticsSecondary archivalCopy ]
		ifFalse: 
			[ allStats 
				at: 'server statistics'
				put: self serverStatisticsPrimary ].
	MaObjectSerializer new 
		fileOut: allStats
		toFileNamed: filename
		in: FileDirectory default.
	FileDirectory default 
		maFileNamed: filename
		do: [ : stream | stream compressFile ]! !

!MagmaSession methodsFor: 'raw buffers' stamp: 'cmm 4/23/2014 17:18'!
bufferFor: anObject 
	^ transaction
		bufferFor: anObject
		ifAbsent:
			[ (self isPersistent: anObject) ifTrue:
				[ (self oidFor: anObject) ifNotNil:
					[ : oid | self bufferForOid: oid ] ] ]! !

!MagmaSession methodsFor: 'raw buffers' stamp: 'cmm 5/7/2014 16:28'!
bufferForOid: oidInteger 
	"Calls bufferFor: in the server."
	^ self secondarySubmit: 
		(MaRawBufferRequest new
			oid: oidInteger ;
			yourself)! !

!MagmaSession methodsFor: 'initialize-release' stamp: 'cmm 4/23/2011 17:33'!
cleanUp
	self bulkBecomeProxies.
	statistics ifNotNil: [ statistics release ].
	transaction unregister! !

!MagmaSession methodsFor: 'initialize-release' stamp: 'cmm 10/7/2010 22:17'!
ensureConnected
	"When stale proxies or MagmaCollections are provoked, ensure their session connects."
	self isConnected ifFalse: 
		[ user ifNil: [ user _ MagmaUserRequiredNotification requestUserFor: self ].
		user ifNil: [ MagmaUserError signal: 'A user to connect must be supplied.' ].
		self connect: user ]! !

!MagmaSession methodsFor: 'initialize-release' stamp: 'cmm 4/15/2013 18:15'!
initialize
	super initialize.
	transaction _ MaTransaction session: self.
	preferences _ MagmaPreferences new.
	guard _ Mutex new.
	allowFailover _ true.
	oidCount _ requiredProgress _ 0.
	strongReferences _ OrderedCollection new.
	self
		resetProxies ;
		resetLastClean ;
		initializeSerializer ;
		resetTransactionLevel ;
		initializeCache! !

!MagmaSession methodsFor: 'initialize-release' stamp: 'cmm 8/23/2007 12:26'!
initializeCache
	cache _ Dictionary new! !

!MagmaSession methodsFor: 'initialize-release' stamp: 'cmm 5/1/2014 22:00'!
initializeSerializer
	serializer _ MaObjectSerializer new
		bpMapIndex: (MaObjectBuffer indexOfBpMap: MagmaBufferPositionMap) ;
		toCreateProxies: 
			[ : oid | 
			MagmaMutatingProxy 
				session: self
				oid: oid ] ;
		classIdManager: MagmaClassIdManager new ;
		oidManager: (MagmaOidManager new
				statistics: self statistics ;
				yourself) ;
		yourself.
	serializer traversalStrategy
		traverseWhen: 
			[ : path : parent : indexInteger | 
			(path last 
				maShouldTraverseWithPath: path
				parent: parent
				index: indexInteger) and: 
				[ path size <= 2 or: 
					[ "Because we're serializing an Array of only changed objects, we only need capture their first level, but don't forget the OC container is level 1."
					MaOidCalculator isOidForNewObject: (self oidFor: path last) ] ] ] ;
		valueWhen: 
			[ : path : parent : index | 
			(path last 
				maShouldAppendWithPath: path
				parent: parent
				index: index) and: 
				[ path size <= 2 or: [ MaOidCalculator isOidForNewObject: (self oidFor: path last) ] ] ].
	serializer preferences
		beforeSerializingAny: #MagmaForwardingProxy
			do: [ : aMagmaForwardingProxy | aMagmaForwardingProxy ensureReferencePopulated ] ;
		beforeSerializingAny: #Morph
			do: 
				[ : aMorph | 
				"(sigh) Morphs keep their own #updateableActionMap, the map used to hold event-listener definitions.  Before, we were setting up these listeners on *materialization*, but this was causing them to be marked dirty immediately.  Therefore, we go ahead and set these listeners up 'permanently' upon serialization."
				aMorph wantsMagmaEvents ifTrue: 
					[ aMorph 
						when: #magmaAboutToRefresh
						send: #aboutToRefreshFromMagma:
						to: aMorph.	"aMagmaRefreshEvent"
					aMorph 
						when: #magmaRefreshed
						send: #refreshedFromMagma:
						to: aMorph	"aMagmaRefreshEvent".
					aMorph formerOwner: nil ] ] ;
		afterMaterializingAny: #MagmaCoreLargeCollection
			do: 
				[ : aMagmaCollection | 
				aMagmaCollection
					initializeChangesUsing: aMagmaCollection ;
					setOid: (serializer oidFor: aMagmaCollection) ].
	MagmaCollectionReader withAllSubclasses do: 
		[ : each | 
		serializer preferences 
			afterMaterializingAny: each name
			do: 
				[ : aMagmaCollectionReader | 
				aMagmaCollectionReader
					fixUpExpression ;
					setUpListener ;
					refresh ] ]! !

!MagmaSession methodsFor: 'initialize-release' stamp: 'cmm 1/26/2005 16:36'!
initializeSystemChangeNotifications

	SystemChangeNotifier uniqueInstance
		notify: self
		ofSystemChangesOfItem: #class
		change: #Modified
		using: #handleClassModification:.
	SystemChangeNotifier uniqueInstance
		notify: serializer classIdManager
		ofSystemChangesOfItem: #class
		change: #Renamed
		using: #handleClassRename:! !

!MagmaSession methodsFor: 'initialize-release' stamp: 'cmm 2/26/2009 10:26'!
loadClassDefinitionsFrom: aByteArray 
	guard critical: [ serializer classDefinitions: (self materializeObject: aByteArray) ]! !

!MagmaSession methodsFor: 'initialize-release' stamp: 'cmm 2/26/2009 10:39'!
loadDefinitionFrom: aByteArray 
	guard critical: 
		[ definition ifNotNil: 
			[ self
				stubOut: self node ;
				stubOut: self magmaId ;
				stubOut: definition ].
		definition _ self materializeObject: aByteArray ]! !

!MagmaSession methodsFor: 'initialize-release' stamp: 'cmm 7/16/2014 12:57'!
primDisconnect
	"Calls removeSessionFor:"
	guard critical: 
		[ self isConnected ifTrue: 
			[ MagmaNotification signal: 'disconnecting from ' , self linkInformation.
			self linksDo: 
				[ : eachLink | 
				"Make reasonable attempt to clean my resources from server, if established."
				(eachLink isConnected and: [ eachLink protocolEstablished ]) ifTrue: 
					[ self 
						submit: MaRepositoryDisconnectRequest new
						to: eachLink ].
				eachLink disconnect ].
			id _ nil.
			self cleanUp
			"The following commented out because now we keep transactions active!!"
			"			resetTransactionLevel ;" ].
		self
			releaseSystemChangeNotifications ;
			releaseActionMap
		"			cleanUpWriteBarrier ;" ]! !

!MagmaSession methodsFor: 'initialize-release' stamp: 'cmm 2/26/2009 10:42'!
releaseSystemChangeNotifications
	guard critical: 
		[ SystemChangeNotifier uniqueInstance
			noMoreNotificationsFor: self ;
			noMoreNotificationsFor: serializer classIdManager ]! !

!MagmaSession methodsFor: 'initialize-release' stamp: 'cmm 11/11/2014 11:18'!
resetProxies
	proxies _ MaWeakIdentityKeyDictionary new! !

!MagmaSession methodsFor: 'connections' stamp: 'cmm 2/26/2009 00:07'!
closeRepository
	self isLocal ifFalse: [ MaUserError signal: 'Only available for local connections.' ].
	guard critical: 
		[ self isConnected ifTrue: [ self disconnect ].
		self repositoryController close ]! !

!MagmaSession methodsFor: 'connections' stamp: 'cmm 2/26/2009 00:06'!
connect: aMagmaUser 
	self isConnected ifTrue: [ MagmaUserError signal: 'Already connected.' ].
	guard critical: 
		[ user _ aMagmaUser.
		self primConnect.
		self isServerSession ifFalse: 
			[ (ConnectedSessions includes: self) ifFalse: 
				[ ConnectedSessions
					add: self ;
					changed ] ] ]! !

!MagmaSession methodsFor: 'connections' stamp: 'cmm 3/11/2005 13:21'!
connectAs: aString

	self connect: (MagmaUser id: aString)! !

!MagmaSession methodsFor: 'connections' stamp: 'cmm 7/31/2013 09:59'!
connections
	"Answer information about all clients connected to this server.  Calls #connectionsList."
	self ensureIsAdminSession.
	^ self submit: MagmaConnectionsRequest new! !

!MagmaSession methodsFor: 'connections' stamp: 'cmm 2/26/2009 00:08'!
disconnect
	"Disconnect this session from the repository.  If the repository is a locally-connected one, it will remain open."
	guard critical: 
		[ ConnectedSessions
			remove: self
				ifAbsent: 
					[ "do nothing"
					 ] ;
			changed.
		self primDisconnect ]! !

!MagmaSession methodsFor: 'connections' stamp: 'cmm 7/14/2008 17:45'!
disconnectAndClose
	"Disconnect from the repository and, if it is a locally-connected one, close the repository."
	self disconnect.
	self isLocal ifTrue: [ self closeRepository ]! !

!MagmaSession methodsFor: 'connections' stamp: 'cmm 2/7/2016 15:36'!
isConnected
	"Answer whether I am *logically* connected to my repository.  This is independent of whether I have a physical socket connection.  Magma makes this irrelevant, since physical socket disconnections can occur based on timeouts, the reconnection to the Magma are reestablished automatically, as needed."

"The above comment is wrong.  We nil out the id in primDisconnect. Perhaps we should be checking the 'definition' instead?"

	^id notNil! !

!MagmaSession methodsFor: 'connections' stamp: 'cmm 11/5/2008 21:38'!
isLocal
	^ primaryLink isLocal and: [ primaryLink == secondaryLink ]! !

!MagmaSession methodsFor: 'connections' stamp: 'cmm 12/26/2004 23:08'!
isRemote

	^ self isLocal not! !

!MagmaSession methodsFor: 'connections' stamp: 'cmm 11/18/2008 12:08'!
isSameRepositoryAs: anotherMagmaSession

	^ anotherMagmaSession hasDefinition
	and: [ definition magmaId = anotherMagmaSession magmaId ]! !

!MagmaSession methodsFor: 'connections' stamp: 'cmm 11/5/2008 10:09'!
linkInformation
	^ primaryLink linkInformation! !

!MagmaSession methodsFor: 'connections' stamp: 'cmm 7/24/2018 20:48'!
prefer: aMagmaRemoteLocation for: aMagmaId 
	preferences linkLocations ifNil: [ preferences linkLocations: Dictionary new ].
	(preferences linkLocations
		at: aMagmaId
		ifAbsentPut: [ OrderedCollection new ]) add: aMagmaRemoteLocation! !

!MagmaSession methodsFor: 'connections' stamp: 'cmm 7/24/2018 22:04'!
preferredLocationFor: aMagmaId 
	"If one or more preferred linkLocations for aMagmaId have been specified, use the first one that reports on-line."
	^ preferences linkLocations ifNotNil:
		[ (preferences linkLocations
			at: aMagmaId
			ifAbsent: [ ^ nil ])
			detect:
				[ : each | "test the connection"
				[ each newAdminSession remoteCommitNumber.
				true ]
					on: Error
					do: [ : err | false ] ]
			ifNone: [ nil ] ]! !

!MagmaSession methodsFor: 'admin' stamp: 'jpb 5/7/2021 22:07:19'!
codeBackup
	"Backup the code-packages current in use by this image.  This only copies versions, not dirty working-copies."
	self notYetImplemented ! !

!MagmaSession methodsFor: 'admin' stamp: 'cmm 6/17/2011 16:25'!
fullBackup
	"Calls #fullBackup."
	self ensureIsAdminSession.
	"Code backup is just regular commits to the repository, must use a normal session, not an admin session in case this is an HA node."
	self location newSession
		 connectAs: 'fullBackup' ;
		 codeBackup ;
		 uiBackup.
	self modelBackup! !

!MagmaSession methodsFor: 'admin' stamp: 'cmm 5/15/2011 15:45'!
isModelBackupRunning
	^ self remotePrimitiveAttributes at: #isFullBackupRunning ! !

!MagmaSession methodsFor: 'admin' stamp: 'cmm 4/14/2011 14:17'!
location
	"Answer a new MagmaLocation that can be used later to access to this session without having to be concerned with directory-paths or ip addresses."
	^ primaryLink ifNotNil:
		[ self isLocal
			ifTrue:
				[ (self respondsTo: #repositoryController)
					ifTrue: [ self repositoryController localLocation ]
					ifFalse: [ MagmaEnvironmentError signal: 'The Magma server package should be loaded.' ] ]
			ifFalse: [ MagmaRemoteLocation location: primaryLink location ] ]! !

!MagmaSession methodsFor: 'admin' stamp: 'cmm 5/15/2011 15:46'!
modelBackup
	"Backup the model, but not the code-packages in this image."
	"Calls #fullBackup."
	self modelBackupTo: nil! !

!MagmaSession methodsFor: 'admin' stamp: 'cmm 5/15/2011 15:47'!
modelBackupTo: serverPathString 
	"Backup the model, but not the code-packages in this image, to the specified fully-qualified serverPathString."
	"Calls #fullBackupToServerPath:."
	self ensureIsAdminSession.
	^ self submit: 
		(MagmaFullBackupRequest new
			serverPath: serverPathString ;
			yourself)! !

!MagmaSession methodsFor: 'admin' stamp: 'cmm 11/4/2008 18:28'!
node
	^ self definition ifNotNilDo: [ : def | def node ]! !

!MagmaSession methodsFor: 'admin' stamp: 'cmm 11/5/2008 21:07'!
pathNamePrimary
	^ self 
		submit: MagmaPathNameRequest new
		to: primaryLink! !

!MagmaSession methodsFor: 'admin' stamp: 'cmm 11/5/2008 21:08'!
pathNameSecondary
	^ self 
		submit: MagmaPathNameRequest new
		to: secondaryLink! !

!MagmaSession methodsFor: 'code base' stamp: 'cmm 7/18/2008 13:17'!
codeBase
	"Answer the persistent codeBase object so that you may commit additions to it."
	^ definition ifNotNil: [ definition codeBase ]! !

!MagmaSession methodsFor: 'code base' stamp: 'cmm 2/26/2009 10:43'!
getCode
	"Answer the Dictionary of Streams that was manually installed in the server that can be browsed or filed-in to be able to connect to my repostory."
	"Calls #codeBaseByteArray."
	^ guard critical: 
		[ | code classesAndCode |
		classesAndCode _ self secondarySubmit: MaDownloadCodeRequest new.
		self loadClassDefinitionsFrom: classesAndCode first.
		code _ serializer materializeGraph: classesAndCode last.
		code ]! !

!MagmaSession methodsFor: 'code base' stamp: 'cmm 1/22/2013 14:31'!
mapLegacyInstancesOf: oldClassName to: newClass 
	"If you renamed a class while not connected to the repository, use this method to migrate the persistent version in the repository to the new name and structure.  newClass must be present in the system.  Make a connection to the repository but send this message before accessing the root."
	| oldDefs |
	oldDefs _ self definition classDefinitions
		detect:
			[ : eachDefinitions | eachDefinitions anySatisfy:
				[ : eachDefinition | eachDefinition isKnownAs: oldClassName ] ]
		ifNone: [ MagmaUserError signal: 'No old class named ' , oldClassName ].
	(serializer classIdManager hasClassDefinitionFor: newClass) ifTrue: [ MagmaUserError signal: 'This operation cannot be performed because ' , newClass name , ' is already established.' ].
	self commit:
		[ oldDefs do:
			[ : each | each beKnownAs: newClass name ] ]! !

!MagmaSession methodsFor: 'database' stamp: 'cmm 6/19/2013 14:15'!
commitLogEntryAt: commitNumber
	"The MaCommitLogEntry that contained this buffer."
	^ (self commitLogRecordAt: commitNumber) ifNotNilDo: [ : cr | MagmaSession materializeCommitLogEntry: cr ]! !

!MagmaSession methodsFor: 'database' stamp: 'cmm 2/26/2009 00:27'!
commitNumber
	"The commitNumber position this session is refreshed to."
	^ guard critical: [ transaction commitNumber ]! !

!MagmaSession methodsFor: 'database' stamp: 'cmm 6/19/2013 13:29'!
commitPackageAt: commitNumber
	"The MaCommitLogEntry that contained this buffer."
	^ (self commitLogEntryAt: commitNumber) ifNotNilDo: [ : cle | cle commitPackage ]! !

!MagmaSession methodsFor: 'database' stamp: 'cmm 7/15/2008 16:53'!
magmaId
	^ definition ifNotNil: [ definition magmaId ]! !

!MagmaSession methodsFor: 'database' stamp: 'cmm 12/22/2008 13:23'!
oidCount
	"The number of oids allocated by this repository.  The total number of objects ever committed, even if some have since been garbage-collected."
	^ oidCount! !

!MagmaSession methodsFor: 'database' stamp: 'cmm 12/21/2008 23:02'!
remoteBranchCode
	"The branchCode is a private, internal Magma field used to identify whenever a backup copy of a repository is switched out of restoreMode.  Such a repository is now a 'branch' and can never again receive updates from its ancestral repository."
	^ self remotePrimitiveAttributes at: #branchCode! !

!MagmaSession methodsFor: 'database' stamp: 'cmm 12/21/2008 23:18'!
remoteCommitNumber
	"The commitNumber that the repository is at."
	^ self remotePrimitiveAttributes at: #commitNumber! !

!MagmaSession methodsFor: 'database' stamp: 'cmm 7/14/2008 23:22'!
remoteMagmaId
	"Calls #magmaId."
	^ self submit: MagmaIdRequest new! !

!MagmaSession methodsFor: 'serialization' stamp: 'cmm 5/1/2014 10:22'!
firstPathToNewLinkOrType
	self pathsToNewLinksAndTypesDo: [ : each | ^ each ].
	^ nil! !

!MagmaSession methodsFor: 'serialization' stamp: 'cmm 5/1/2014 10:19'!
pathsToNewLinksAndTypes
	| newClasses newLinks |
	newClasses _ Set new.
	newLinks _ Set new.
	self pathsToNewLinksAndTypesDo:
		[ : eachPath | eachPath isMagmaId
			ifTrue: [ newLinks add: eachPath ]
			ifFalse: [ newClasses add: eachPath ] ]! !

!MagmaSession methodsFor: 'serialization' stamp: 'cmm 5/1/2014 10:18'!
pathsToNewLinksAndTypesDo: aBlock
	| classes links |
	classes _ self definition classes asSet.
	links _ self definition links asSet.
	self dirtyGraphDo:
		[ : path : parent : index |  "The same Symbol instances might exist in multiple Magma sessions, so disregard those."
			path last isSymbol ifFalse:
				[ | otherSess newClass |
				otherSess _ path last quickMagmaSession.
				otherSess ifNotNil:
					[ otherSess ~= self ifTrue:
						[ (links includes: otherSess magmaId) ifFalse: [ aBlock value: path asArray ] ] ].
				(classes includes: (newClass _ path last maOriginalClass theNonMetaClass)) ifFalse: [ aBlock value: path asArray ] ]  ]! !

!MagmaSession methodsFor: 'private-magma collections' stamp: 'cmm 1/4/2010 15:08'!
fractionLoaded: aMagmaCollection 
	"Calls loadProgress."
	^ self submit: (
		(MaLoadProgressRequest new)
			collectionOid: (self oidFor: aMagmaCollection) ;
			yourself)! !

!MagmaSession methodsFor: 'private-magma collections' stamp: 'cmm 11/6/2008 16:24'!
getTrunkFor: aMagmaCollection expression: aMaTerm 
	"Calls getTrunkFor:expression:."
	^ self secondarySubmit: 
		(MaReaderTrunkRequest new
			collectionOid: (self oidFor: aMagmaCollection) ;
			expression: aMaTerm ;
			yourself)! !

!MagmaSession methodsFor: 'private-magma collections' stamp: 'cmm 2/26/2009 10:44'!
load: aMagmaCollection from: aMagmaCollectionReader makeDistinct: aBoolean 
	"Calls registerAndLoad:using:from:forSession:distinct:"
	| commitPackage refreshResult |
	guard critical: 
		[ commitPackage _ MaCommitPackage new.
		commitPackage addLargeCollectionChanges: aMagmaCollection changes.
		"aMagmaCollection is a new object, so serializer will traverse it deeply enough."
		serializer 
			serializeGraph: aMagmaCollection
			do: [ : eachObject | commitPackage addObject: eachObject ].
		aMagmaCollection
			setOid: (self oidFor: aMagmaCollection) ;
			beNotPersistent.
		commitPackage objects: (serializer serializeGraph: commitPackage objects).
		refreshResult _ self submit: (MaLoadFromReaderRequest new
				commitPackage: commitPackage ;
				expression: aMagmaCollectionReader expression ;
				distinct: aBoolean ;
				sourceCollectionOid: (self oidFor: aMagmaCollectionReader collection) ;
				yourself).
		self 
			refreshViewUsing: refreshResult
			includingLocal: false.
		"set it up as if it was created through normal transaction mechanism"
		aMagmaCollection session: self.
		transaction monitorLargeCollectionChanges: aMagmaCollection changes ]! !

!MagmaSession methodsFor: 'private-magma collections' stamp: 'cmm 9/28/2008 20:58'!
lockerOf: aMagmaCollection 
	^ self submit: 
		(MaGetMcLockerRequest new
			mcOid: (self oidFor: aMagmaCollection) ;
			yourself)! !

!MagmaSession methodsFor: 'private-magma collections' stamp: 'cmm 10/12/2009 13:08'!
monitorLargeCollection: aMagmaCollection 
	(aMagmaCollection session notNil and: [ aMagmaCollection session ~= self ]) ifTrue: 
		[ MagmaUserError signal: 'LargeCollections cannot be shared with other repositories.' ].
	aMagmaCollection setOid: (self oidFor: aMagmaCollection).
	transaction monitorLargeCollectionChanges: aMagmaCollection changes! !

!MagmaSession methodsFor: 'private-magma collections' stamp: 'cmm 11/6/2008 16:26'!
occurrencesOf: anObject in: aMagmaCollection 
	"Calls numberOfEntriesFrom:to:inLargeCollection:on:."
	| oid |
	^ self secondarySubmit: 
		(MaKeyIntervalInfoRequest new
			collectionOid: (self oidFor: aMagmaCollection) ;
			attribute: nil ;
			lowKey: (oid _ self oidFor: anObject) ;
			highKey: oid ;
			yourself)! !

!MagmaSession methodsFor: 'private-magma collections' stamp: 'cmm 2/26/2009 10:47'!
refreshSegment: aMagmaCollectionReaderSegment of: aMagmaCollection where: aMaTerm pageSize: anInteger using: aMaReadStrategy loadObjects: aBoolean 
	"Calls refreshSegmentIn:"
	guard critical: 
		[ | segment |
		segment _ self secondarySubmit: (MaRefreshSegmentRequest new
				quantity: anInteger ;
				collectionOid: (self oidFor: aMagmaCollection) ;
				segment: aMagmaCollectionReaderSegment ;
				expression: aMaTerm ;
				readStrategy: aMaReadStrategy ;
				loadObjects: aBoolean ;
				exceptions: aMagmaCollection changes removedOids ;
				yourself).
		"Since we say we 'refresh' let's do that instead of returning the new one."
		aMagmaCollectionReaderSegment refreshFrom: segment.
		self materializeObjectsIn: aMagmaCollectionReaderSegment ]! !

!MagmaSession methodsFor: 'private-magma collections' stamp: 'cmm 10/10/2004 20:05'!
resetMagmaCollectionChanges

	transaction largeCollectionChanges do: [ :each | each reset ]! !

!MagmaSession methodsFor: 'private-magma collections' stamp: 'cmm 3/7/2011 11:36'!
upTo: anInteger objectsIn: aMagmaCollection fromIndex: startIndex using: aMaReadStrategy 
	"Answer a MaCollectionSegment or aMaIndexedCollectionSegment.  Calls upTo:oidsFromIndex:inLargeCollection:using:forSession: "
	^ guard critical: 
		[ | segmentResult |
		segmentResult _ self secondarySubmit: (MaSegmentByIndexRequest new
				quantity: anInteger ;
				collectionOid: (self oidFor: aMagmaCollection) ;
				lowIndex: startIndex ;
				readStrategy: aMaReadStrategy ;
				yourself).
		self materializeObjectsIn: segmentResult.
		self inTransaction ifTrue: [ self stronglyReference: segmentResult ].
		segmentResult ]! !

!MagmaSession methodsFor: 'testing' stamp: 'cmm 4/28/2014 10:08'!
isDirty: anObject 
	"Answer whether anObject is persistent in this session and changed from its last-read buffer state."
	^ (anObject maIsLargeCollection and: [ anObject changes hasChanges ]) or: [ transaction didChange: anObject ]! !

!MagmaSession methodsFor: 'testing' stamp: 'cmm 5/28/2014 14:09'!
isPersistent: anObject 
	"Answer whether anObject has been read from the persistent graph."
	^ anObject maIsLargeCollection
		ifTrue: [ anObject changes isNotPersistent not ]
		ifFalse:
			[ (anObject maIsMutatingProxy and: [ anObject mutatingProxySession = self ]) or:
				[ (self serializer hasOidFor: anObject) and: [ (MaOidCalculator isOidForNewObject: (self oidFor: anObject)) not ] ] ]! !

!MagmaSession methodsFor: 'maui support' stamp: 'cmm 9/16/2008 22:23'!
maChooseNotificationHandlerUsing: aMauiMorph 
	"This method is provided for Maui.  It allows a seamless UI transition for MagmaForwardingProxy's into the UI screens representing the other domain they exist in, so that the proper notificationHandler is set for them (used to intercept MagmaSessionRequests)."
	^ aMauiMorph object magmaSession ifNil: [ self ]! !

!MagmaSession methodsFor: 'maui support' stamp: 'cmm 2/12/2012 15:48'!
mauiDefaultView
	^ 'Main'! !

!MagmaSession methodsFor: 'maui support' stamp: 'cmm 10/16/2010 16:40'!
send: aMessage to: anObject 
	"Allow me to be used as a MauiNotificationHandler."
	"We have time here to make sure the receiver is the proper one to be handling the MagmaSessionRequests for anObject.  Do it just to be extra conservative."
	| handlingSession |
	handlingSession _ anObject quickMagmaSession ifNil: [ self ].
	^ [ aMessage sentTo: anObject ] 
		on: MagmaSessionRequest
		do: [ : req | req handleAndResumeUsing: handlingSession ]! !

!MagmaSession methodsFor: 'maui support' stamp: 'cmm 3/17/2013 20:29'!
uiBackup
	MagmaNotification signal: 'User-interface backup.'.
	(Smalltalk hasClassNamed: #MauiWorld) ifTrue:
		[ | thisFamily persistentFamily |
		thisFamily _ (Smalltalk classNamed: #MauiWorld) current family.
		persistentFamily _ self definition uiFamily.
		thisFamily ~= persistentFamily ifTrue:
			[ self
				 timeoutSeconds: 600 ;
				 retrySeconds: 600 ;
				 commit:
					[ persistentFamily
						ifNil: [ self definition uiFamily: thisFamily ]
						ifNotNil: [ persistentFamily merge: thisFamily ] ] ;
				 timeoutSeconds: 30 ] ]! !

!MagmaSession methodsFor: 'maui support' stamp: 'cmm 11/13/2015 13:15'!
uiRestore
	"If Maui is loaded and an application UI panels were backed up with #uiBackup, merge those panels into the current MauiWorld's Family."
	Smalltalk hasMaui
		ifTrue:
			[ self ensureConnected.
			self definition uiFamily ifNotNil:
				[ : family | (Smalltalk classNamed: #MauiWorld) current family merge: family ] ]
		ifFalse: [ MagmaUserError signal: 'Maui is not installed.' ]! !

!MagmaSession methodsFor: 'accessing' stamp: 'cmm 4/28/2007 19:30'!
objectWithOid: anInteger 
	^ self 
		objectWithOid: anInteger
		ifAbsent: 
			[ MagmaInvalidOid signal: 'no object with oid ' , anInteger printString ]! !

!MagmaSession methodsFor: 'accessing' stamp: 'cmm 2/26/2009 10:20'!
objectWithOid: anInteger ifAbsent: aBlock 
	"Answer the object or its proxy, the one in the repository whose oid is anInteger.  If no object with that oid exists, answer the value of aBlock."
	^ guard critical: 
		[ serializer 
			objectWithOid: anInteger
			ifAbsent: 
				[ [ self realObjectFor: anInteger ] 
					on: MagmaInvalidOid
					do: 
						[ : exc | 
						"signaled in MaObjectFiler>>filePointerForOid:"
						aBlock value ] ] ]! !

!MagmaSession methodsFor: 'accessing' stamp: 'cmm 2/1/2005 22:58'!
oidFor: anObject

	^ serializer oidFor: anObject! !

!MagmaSession methodsFor: 'accessing'!
preferences

	^preferences! !

!MagmaSession methodsFor: 'accessing' stamp: 'cmm 7/16/2002 00:17'!
preferences: aMagmaPreferences

	preferences _ aMagmaPreferences! !

!MagmaSession methodsFor: 'accessing' stamp: 'cmm 11/13/2011 19:53'!
root
	"Answer the root of the domain."
	^ self anchor root in:
		[ : root | immutabilityStrategy ifNil: [ self immutabilityStrategy: root class immutabilityStrategy ].
		root ]! !

!MagmaSession methodsFor: 'server advanced' stamp: 'cmm 9/6/2007 21:45'!
serverPerform: selectorSymbol 
	"Tell the server to perform selectorSymbol.  The actual receiver of the perform request is the MagmaRepositoryController itself.
	IMPORTANT:  Make absolutely certain the response object will not attempt to extend the protocol!!
	IMPORTANT:  While this perform is executing on the server, all other requests are blocked, therefore be sure its execution will be very brief!!"
	^ self 
		serverPerform: selectorSymbol
		withArguments: #()! !

!MagmaSession methodsFor: 'server advanced' stamp: 'cmm 9/6/2007 21:34'!
serverPerform: selectorSymbol withArguments: anArray 
	"Tell the server to perform selectorSymbol with arguments specified in anArray.  The actual receiver of the perform request is the MagmaRepositoryController itself.
	IMPORTANT:  Make absolutely certain you do not extend the #protocol (via anArray arguments OR the response)!!
	IMPORTANT:  While this perform is executing on the server, all other requests are blocked, therefore be sure its execution will be very brief!!"
	^ self submit: 
		(MaServerPerformRequest new
			selector: selectorSymbol ;
			arguments: anArray ;
			yourself)! !

!MagmaSession methodsFor: 'server advanced' stamp: 'cmm 3/13/2009 13:55'!
serverSave: saveOption andExit: exitOption 
	"Tell the server to save and exit the image.  This is used for headless operation when the World menu cannot otherwise be obtained."
	self ensureIsAdminSession.
	^ 
	[ self submit: (MaSaveAndExitImageRequest new
			save: saveOption ;
			exit: exitOption ;
			yourself) ] 
		on: NetworkError
		do: 
			[ : err | 
			"we may expect a network error, because we just told it to shutdown."
			false ]! !

!MagmaSession class methodsFor: 'accessing' stamp: 'cmm 8/30/2010 19:09'!
allClientInstances
	^ self allSubInstances reject: [ : each | each isServerSession ]! !

!MagmaSession class methodsFor: 'accessing' stamp: 'cmm 6/19/2013 12:37'!
commitLogSerializer
	^ CommitLogSerializer ifNil: [ CommitLogSerializer _ self newCommitLogSerializer ]! !

!MagmaSession class methodsFor: 'accessing' stamp: 'cmm 4/26/2010 22:21'!
connectedSessions
	"The MagmaSessions in this image, connected to some repository."
	^ ConnectedSessions asArray sort: [ : a : b | a printString < b printString ]! !

!MagmaSession class methodsFor: 'accessing' stamp: 'cmm 1/24/2013 20:11'!
magmaVersion
	"Version 12 extended the MaRecoveryRecords #physicalSize to 4 bytes.
	In version 13, the structure of MaCompiledMethodStorage was changed.  This was a manual domain conversion for each application.
	Version 14 expands MaObjectBuffer >> #physicalSize to 4-bytes (plus 3 bytes of filler).
	Version 15 was due to a totally new implementation of MagmaDictionary that no longer inherits from MagmaCollection.
	Version 16 is to support CompiledMethods, MethodContexts and BlockClosures in Ma object serialization's native buffer format.  This resulted in Array's and all other isVariable classes to be moved to MaFixedObjectBuffer (which might be renamed to MaPointerObjectBuffer).
	Version 17 renames MaClause to MagmaClause.  Please run upgradeTo17At:"
	^ 17! !

!MagmaSession class methodsFor: 'accessing' stamp: 'cmm 5/6/2013 22:23'!
protocol 
	"This is the protocol needed to talk to a magma server."
	^ { LargePositiveInteger. MaSerializedGraphBuffer.
		MaByteObjectBuffer . MaVariableWordBuffer . MaVariableObjectBuffer . MaFixedObjectBuffer . MaStorageObjectBuffer . MaVariableBuffer.  MaCompiledMethodBuffer.  MaMethodContextBuffer },
	"various requests"
		{MaLargeCollectionSizeRequest . MaTransactionRequest . MaReadRequest . MaCommitRequest . MaCommitLogRecordRequest . MaGetMcLockerRequest . MaWriteRequest . MagmaPathNameRequest . MaAnchorRequest . MaSaveAndExitImageRequest . MaRepositoryConnectionRequest . MaLoadFromReaderRequest . MaRepositoryDisconnectRequest . MagmaFullBackupRequest . MagmaIdRequest . MaLargeCollectionSegmentRequest . MaAbortTransactionRequest . MaReaderTrunkRequest . MaWarmBackupUpdateRequest . MagmaSwapPrimaryDutyRequest . MaLoadProgressRequest . MaSegmentByIndexRequest . MagmaServerStatisticsRequest . MaServerPerformRequest . MaPrimitiveAttributesRequest . MaRefreshRequest . MaDownloadCodeRequest . MaRefreshSegmentRequest . MagmaEnsureCorrectNodeConfiguration . MaReadMultipleRequest . MaAbstractReadRequest . MaKeyIntervalInfoRequest . MagmaRequestSwapPrimaryDutyRequest . MagmaBeWarmBackupRequest . MagmaNoteUnreachableServer. MaRemoveSecondaryLocationRequest. MaRawBufferRequest. MagmaReleaseReaderRequest. MagmaConnectionsRequest },
	"extra objects for some requests"
		{ MaCommitPackage.  MaBasicReadStrategy.  MaReadStrategy },
	"various results"
		{ MagmaCollectionSegment . MaRefreshViewResult . MaReadResult . MagmaLargeCollectionSegment . MaCommitResult . MagmaCollectionReaderSegment . MaFailedCommitResult. MaClientConnection },
	"extra objects for results"
		{ MagmaId. UUID. MagmaNode. MaFailedCommitResult. MagmaClientConnection. MagmaCommitConflict. Fraction. MaServerLocation. MaCommitLogEntry. MaCommitLogRecord }, 
		{MagmaLocalLocation . MagmaRemoteLocation . MagmaLocation},
	"Statistics querys"
		{ Interval. DateAndTime. Duration. MaHistoricalStat. MaStatHistory. MagmaServerStatistics },
	"query expressions"
		{ MagmaClause . MagmaExpression . MaQueryTrunkClause. MaQueryTrunk },
	"MagmaCollections"
		{MagmaSet . MagmaCollection. IdentityDictionary.  MaIdentityDictionary.  MagmaIndexDescription },
	"large-collection changes"
		{ MagmaCollectionChanges . MagmaArrayChanges . MagmaSetChanges },
	"parts of MagmaCollectionChanges"
		{ Association.  MaChangedKeySpecification },
	"exceptions"
		{ MaError. MaUnreadableRecoveryRecord . MagmaNoTransactionError . MaClientServerUserError . MaSoftwareError . MaObjectSerializationUserError . MagmaAlreadyInTransaction . MagmaWrongServerError . MaSpecialCollectionsSoftwareError . MagmaUnavailableCommitRecord . MagmaSoftwareError . MagmaDifferentBranch . MagmaSessionLost . MagmaEquivalentObjectNotInCollection . MaObjectSerializationSoftwareError . MaEnvironmentError . MagmaEnvironmentError . MagmaUserError . MaCorruptionError . MaUserError . MagmaCommitConflictError . MagmaCorruptionError . MagmaGarbageCollectedObject . MagmaDuplicateObjectInCollection . MagmaUnconnectableSessionError. MagmaWrongCommitNumber . MagmaInvalidIndexObject . MagmaInvalidOid . MagmaInvalidReference . MagmaCommitError . MaHashIndexUserError . MaMalformedRequestError . MagmaReadServerTooFarBehind }! !

!MagmaSession class methodsFor: 'initializing' stamp: 'cmm 1/17/2005 14:53'!
disconnectAndCloseAllConnectedSessions

	ConnectedSessions ifNotNil:
		[ ConnectedSessions copy do: [ : each | each disconnectAndClose ] ]! !

!MagmaSession class methodsFor: 'initializing' stamp: 'cmm 6/22/2012 13:13'!
initialize
	HasMagma_true.
	self disconnectAndCloseAllConnectedSessions.
	ConnectedSessions _ OrderedCollection new.
	Smalltalk addToShutDownList: self.
	MaObjectBuffer 
		bpMapsAt: MagmaBufferPositionMap indexPosition + 1
		put: MagmaBufferPositionMap! !

!MagmaSession class methodsFor: 'creation' stamp: 'cmm 1/1/2009 17:24'!
host: hostName port: anInteger 
	"Connect to a Magma server running on host named hostName, listening on port anInteger."
	^ self link: 
		((MaNetworkServerLink 
			host: hostName
			port: anInteger)
			protocol: self protocol ;
			yourself)! !

!MagmaSession class methodsFor: 'creation' stamp: 'cmm 12/26/2004 23:12'!
link: aMaServerLink

	^ self new
		link: aMaServerLink ;
		yourself! !

!MagmaSession class methodsFor: 'creation' stamp: 'cmm 2/26/2009 21:33'!
localPort: anInteger 
	"Connect to a Magma server running on localhost, listening on port anInteger."
	^ self 
		host: 'localhost'
		port: anInteger! !

!MagmaSession class methodsFor: 'private' stamp: 'cmm 1/15/2007 18:44'!
maMaterializeFromGraph: aByteArray using: aMaObjectSerializer
	"A domain object referenced his own session, recover that with a reference to whatever session is materializing."
	| answer |
	MagmaSessionRequest 
		signal: 'a session reference' 
		do: [ : aMagmaSession | answer _ aMagmaSession ].
	^ answer! !

!MagmaSession class methodsFor: 'private' stamp: 'cmm 6/19/2013 13:11'!
materializeCommitLogEntry: aMaCommitLogRecord 
	^ self commitLogSerializer resetOidManager materializeGraph: aMaCommitLogRecord record! !

!MagmaSession class methodsFor: 'private' stamp: 'cmm 6/22/2009 19:31'!
newCommitLogSerializer
	"Unfortunately, for legacy support, we cannot use the #protocol API, because it sorts the classes by name."
	| answer |
	answer _ MaObjectSerializer new.
	{ 
		Association.
		UUID.
		MaCommitLogEntry.
		MaCommitPackage.
		IdentityDictionary.
		MaCommitResult.
		MaSerializedGraphBuffer.
		MaChangedKeySpecification.
		LargePositiveInteger.
		MagmaIndexDescription.
		MagmaClientConnection.
		MaObjectBuffer.
		MaFixedObjectBuffer.
		MaVariableBuffer.
		MaByteObjectBuffer.
		MaStorageObjectBuffer.
		MaVariableObjectBuffer.
		MaVariableWordBuffer.
		MagmaArrayChanges.
		MagmaCollectionChanges.
		MagmaSetChanges.
		MaIdentityDictionary
	 } do: [ : each | answer classIdManager addNewClass: each ].
	^ answer! !

!MagmaUser methodsFor: 'initialize' stamp: 'cmm 1/15/2005 16:37'!
id
	^ id! !

!MagmaUser methodsFor: 'initialize' stamp: 'cmm 1/15/2005 16:37'!
id: aString
	id _ aString! !

!MagmaUser methodsFor: 'printing' stamp: 'cmm 1/17/2005 21:59'!
maPrintAbbreviatedOn: aStream

	self maPrintAttribute: #id on: aStream! !

!MagmaUser class methodsFor: 'create' stamp: 'cmm 1/15/2005 16:37'!
id: aString
	^ self new id: aString; yourself! !

!MagmaCommitConflict methodsFor: 'private' stamp: 'cmm 6/26/2002 00:00'!
addConflictingOid: oidInteger

	conflictingOids add: oidInteger
! !

!MagmaCommitConflict methodsFor: 'private' stamp: 'cmm 1/17/2014 16:26'!
initializeConflictingObjectsUsing: aMaObjectSerializer 
	conflictingOids do:
		[ : each | | eachConflictingObject |
		eachConflictingObject _ aMaObjectSerializer objectWithOid: each.
		conflictingObjects add: eachConflictingObject -> eachConflictingObject conflictingObjectCopy ].
	"The catch-up process does this in pieces, so we now need to removeAll conflictingOids after 'transferring' them to conflictingObjects so it doesn't happen again for subsequent pieces."
	conflictingOids removeAll! !

!MagmaCommitConflict methodsFor: 'accessing' stamp: 'cmm 2/28/2013 10:44'!
comparisons
	^ self conflictingObjects collect:
		[ : each | MaObjectComparison
			with: each key
			with: each value ]! !

!MagmaCommitConflict methodsFor: 'accessing' stamp: 'cmm 7/5/2004 14:40'!
conflictingConnection

	^ connection! !

!MagmaCommitConflict methodsFor: 'accessing' stamp: 'cmm 6/26/2002 00:01'!
conflictingObjects

	^conflictingObjects
! !

!MagmaCommitConflict methodsFor: 'accessing' stamp: 'cmm 6/26/2002 00:01'!
conflictingOids

	^conflictingOids
! !

!MagmaCommitConflict methodsFor: 'accessing' stamp: 'cmm 4/5/2013 09:59'!
connection
	^ connection! !

!MagmaCommitConflict methodsFor: 'initializing' stamp: 'cmm 7/5/2004 14:39'!
connection: aMagmaClientConnection

	connection _ aMagmaClientConnection! !

!MagmaCommitConflict methodsFor: 'initializing' stamp: 'cmm 1/17/2014 16:22'!
initialize
	super initialize.
	conflictingOids _ OrderedCollection new.
	conflictingObjects _ OrderedCollection new! !

!MagmaCommitConflict class methodsFor: 'creation' stamp: 'cmm 7/5/2004 14:37'!
connection: aMagmaClientConnection

	^ self new
		connection: aMagmaClientConnection ;
		yourself! !

!MagmaCollectionIndex methodsFor: 'convert' stamp: 'cmm 5/28/2007 10:25'!
asDescription
	"This is used so my classes do not have to be part of the client-server protocol."
	^ MagmaIndexDescription 
		attribute: self attribute
		keySize: self keySize
		recordSize: self recordSize! !

!MagmaCollectionIndex methodsFor: 'accessing'!
attribute
	"the accessor symbol for any kind of object that has this attribute.
	These are used to determine what whether the receiver is appropriate to restrict
	or sort a Query."

	^attribute
! !

!MagmaCollectionIndex methodsFor: 'accessing' stamp: 'brp 7/18/2006 20:17'!
lowestPossibleKey

	^ 0
! !

!MagmaCollectionIndex methodsFor: 'accessing' stamp: 'cmm 12/10/2002 23:30'!
recordSize

	^recordSize! !

!MagmaCollectionIndex methodsFor: 'private'!
attribute: aSymbol

	attribute _ aSymbol
! !

!MagmaCollectionIndex methodsFor: 'private' stamp: 'cmm 2/25/2011 15:56'!
defaultRecordSize
	^ 32! !

!MagmaCollectionIndex methodsFor: 'private' stamp: 'cmm 12/1/2014 15:51'!
highestPossibleKey
	^ (1 bitShift: self keySize) - 1! !

!MagmaCollectionIndex methodsFor: 'private' stamp: 'cmm 4/11/2005 16:26'!
indexHashFor: anObject 
	"Answer the Integer hash used to locate anObject."

	self validateCanIndex: anObject.
	^ self indexHashForIndexObject: (self indexObjectFor: anObject)! !

!MagmaCollectionIndex methodsFor: 'private' stamp: 'cmm 12/5/2002 17:31'!
indexHashesFor: anObject 
	"Answer an Integer or Array of Integers that will be used to locate the receiver."

	self validateCanIndex: anObject.
	^self indexHashesForIndexObject: (self indexObjectFor: anObject)
! !

!MagmaCollectionIndex methodsFor: 'private' stamp: 'cmm 7/2/2006 22:30'!
indexHashesForIndexObject: anObject 
	"Answer a collection of Integers which are the MaHashIndex locations at which anObject will be indexed."
	^ (anObject isCollection and: [ anObject maOriginalClass isPointers ]) 
		ifTrue: [ anObject collect: [ : each | self indexHashForIndexObject: each ] ]
		ifFalse: [ Array with: (self indexHashForIndexObject: anObject) ]! !

!MagmaCollectionIndex methodsFor: 'private' stamp: 'cmm 2/8/2009 15:37'!
indexObjectFor: anObject 
	"Answer the object by which I am indexed."
	^ anObject yourself perform: attribute yourself! !

!MagmaCollectionIndex methodsFor: 'testing' stamp: 'cmm 2/8/2009 12:04'!
canIndex: anObject 
	"MutatingProxy's respond to #respondsTo:, ensure we send it to the domain object."
	^ anObject yourself respondsTo: attribute yourself! !

!MagmaCollectionIndex methodsFor: 'must override' stamp: 'cmm 11/7/2002 23:06'!
indexHashForIndexObject: anObject

	self subclassResponsibility! !

!MagmaCollectionIndex methodsFor: 'must override' stamp: 'cmm 2/22/2004 21:47'!
keySize
	"Answer an Integer number of bits, in multiples of 8, that each key value can be."

	self subclassResponsibility! !

!MagmaCollectionIndex methodsFor: 'initialize' stamp: 'cmm 2/25/2011 15:55'!
initialize
	super initialize.
	self recordSize: self defaultRecordSize! !

!MagmaCollectionIndex methodsFor: 'initialize' stamp: 'cmm 9/21/2005 14:19'!
recordSize: anInteger
	"Only set this ONCE, when you create.  It is not changeable after the dictionary is created."

	(MaHashIndex validRecordSizes includes: anInteger)
		ifTrue: [ recordSize _ anInteger ]
		ifFalse:
			[ MagmaUserError signal: 'recordSize must be one of ', MaHashIndex validRecordSizes printString ]! !

!MagmaCollectionIndex methodsFor: 'printing' stamp: 'cmm 4/22/2002 22:25'!
maPrintAbbreviatedOn: aStream

	aStream nextPutAll: self attribute
! !

!MagmaCollectionIndex methodsFor: 'validate' stamp: 'cmm 8/17/2005 21:18'!
validRecordSizes
	"Record sizes must be a power of 2 so that slots in every MaHashIndexRecord will be uniformely sized."

	^ #(2 4 8 16 32 64 128)! !

!MagmaCollectionIndex methodsFor: 'validate' stamp: 'cmm 5/1/2002 23:12'!
validateCanIndex: anObject

	(self canIndex: anObject)
		ifFalse:
			[ MagmaUserError signal:
				'Cannot calculate the hashIndexFor: ' , anObject printString ]
! !

!MagmaCollectionIndex class methodsFor: 'creation' stamp: 'cmm 9/26/2004 20:22'!
attribute: aSymbol

	^ super new
		attribute: aSymbol;
		yourself! !

!MaByteSequenceIndex methodsFor: 'accessing' stamp: 'cmm 7/16/2007 23:23'!
indexHashForIndexObject: aStringOrByteArray 
	"Answer the index hash value of the receiver, a value for a MaHashIndex."
	| answer power |
	aStringOrByteArray maOriginalClass isBytes ifFalse: 
		[ MagmaInvalidIndexObject signal: 'Not a valid index object.  Need a byte-object please.' ].
	answer _ 0.
	power _ meaningfulCharacters - 1.
	aStringOrByteArray do: 
		[ : eachChar | 
		(eachChar asInteger 
			between: 0
			and: self sizeOfCharacterSet - 1) ifTrue: 
			[ answer _ answer + (eachChar asInteger * (self sizeOfCharacterSet raisedTo: power)).
			power _ power - 1.
			power < 0 ifTrue: [ ^ answer ] ] ].
	^ answer! !

!MaByteSequenceIndex methodsFor: 'accessing' stamp: 'cmm 2/22/2004 21:04'!
keySize

	^keySize! !

!MaByteSequenceIndex methodsFor: 'accessing'!
meaningfulCharacters
	"Answer the number of characters this index will use to index."	

	^meaningfulCharacters
! !

!MaByteSequenceIndex methodsFor: 'accessing' stamp: 'cmm 3/13/2005 20:02'!
sizeOfCharacterSet

	^ 256! !

!MaByteSequenceIndex methodsFor: 'initialize' stamp: 'cmm 7/31/2018 00:03'!
initialize
	super initialize.
	self keySize: 64! !

!MaByteSequenceIndex methodsFor: 'initialize' stamp: 'cmm 7/18/2007 21:04'!
initializeNumberOfMeaningfulCharacters
	meaningfulCharacters _ ((2 raisedTo: keySize) maLog: self sizeOfCharacterSet) truncated! !

!MaByteSequenceIndex methodsFor: 'initialize' stamp: 'cmm 11/20/2010 19:35'!
keySize: numberOfBits 
	"Only set this ONCE, when you create.  It is not changeable after the dictionary is created."
	(MaHashIndex validKeySizes includes: numberOfBits)
		ifFalse: [ MagmaUserError signal: 'keySize must be one of ' , MaHashIndex validKeySizes printString ].
	keySize _ numberOfBits.
	self initializeNumberOfMeaningfulCharacters! !

!MaAsciiStringIndex methodsFor: 'accessing' stamp: 'cmm 8/20/2006 23:59'!
canIndex: anObject

	^(super canIndex: anObject) and: [ (self indexObjectFor: anObject) isString ]
! !

!MaAsciiStringIndex methodsFor: 'accessing' stamp: 'cmm 7/16/2007 23:13'!
indexHashForIndexObject: aString 
	"Answer the index hash value of the receiver, a value
	for a MaHashIndex.  Only ASCII values 0 - 127 are meaningful,
	all others in aString are ignored."
	aString isString ifFalse: 
		[ MagmaInvalidIndexObject signal: 'Not a valid index object.  Need a String please.' ].
	^ super indexHashForIndexObject: aString! !

!MaAsciiStringIndex methodsFor: 'private accessing'!
sizeOfCharacterSet

	^128
! !

!MaSearchStringIndex methodsFor: 'initialize' stamp: 'cmm 8/20/2006 21:33'!
beAlpha
	"Set up this index to include only alpha characters; 
		(65 to: 90) collect: [ : each | Character value: each ]
	This can only be called when the index is initially created, do not call this after the index is persistent."
	self 
		setLowChar: 65
		highChar: 90! !

!MaSearchStringIndex methodsFor: 'initialize' stamp: 'cmm 8/20/2006 21:33'!
beAlphaNumeric
	"Set up this index to include only alpha characters; 
		(48 to: 90) collect: [ : each | Character value: each ]
	This can only be called when the index is initially created, do not call this after the index is persistent."
	self 
		setLowChar: 48
		highChar: 90! !

!MaSearchStringIndex methodsFor: 'initialize' stamp: 'cmm 8/20/2006 21:38'!
beAscii
	"Set up this index to include basic punctuation; 
		(0 to: 127) collect: [ : each | Character value: each ]
	This can only be called when the index is initially created, do not call this after the index is persistent."
	self 
		setLowChar: 0
		highChar: 127! !

!MaSearchStringIndex methodsFor: 'initialize' stamp: 'cmm 8/20/2006 21:32'!
bePunctuated
	"Set up this index to include basic punctuation; 
		(33 to: 96) collect: [ : each | Character value: each ]
	This can only be called when the index is initially created, do not call this after the index is persistent."
	self 
		setLowChar: 33
		highChar: 96! !

!MaSearchStringIndex methodsFor: 'initialize' stamp: 'cmm 8/20/2006 21:32'!
setLowChar: lowInteger highChar: highInteger
	lowChar _ lowInteger.
	highChar _ highInteger.
	self initializeNumberOfMeaningfulCharacters! !

!MaSearchStringIndex methodsFor: 'testing' stamp: 'cmm 8/21/2006 00:11'!
canIndex: anObject 
	^ (super canIndex: anObject) and: [ (self indexObjectFor: anObject) isCollection ]! !

!MaSearchStringIndex methodsFor: 'private' stamp: 'cmm 8/20/2006 22:11'!
conditionedKeyword: aString 
	"Answer the keyword aString conditioned for keyword search (i.e., padded to meaningfulCharacters, characters not in my lowChar..highChar range stripped)."
	| stringIndex conditionedStringIndex conditionedString |
	conditionedString _ (String new: meaningfulCharacters) atAllPut: (Character value: self lowChar).
	stringIndex _ 1.
	conditionedStringIndex _ 1.
	"First, load conditionedString with conditioned characters from aString."
	[ conditionedStringIndex <= meaningfulCharacters and: [ stringIndex <= aString size ] ] whileTrue: 
		[ | conditionedChar |
		conditionedChar _ (aString at: stringIndex) asUppercase.
		(conditionedChar asciiValue 
			between: self lowChar
			and: self highChar) ifTrue: 
			[ conditionedString 
				at: conditionedStringIndex
				put: conditionedChar.
			conditionedStringIndex _ conditionedStringIndex + 1 ].
		stringIndex _ stringIndex + 1 ].
	^ conditionedString! !

!MaSearchStringIndex methodsFor: 'private' stamp: 'cmm 8/20/2006 21:03'!
highChar
	^ highChar ifNil: 
		[ self bePunctuated.
		highChar ]! !

!MaSearchStringIndex methodsFor: 'private' stamp: 'cmm 8/20/2006 22:31'!
indexHashForIndexObject: aString 
	"Answer the index hash value of the receiver, a value for a MaHashIndex."
	"First, load zeroString with conditioned characters from aString."
	"Now compute the hash value."
	| answer conditionedString |
	aString isString ifFalse: 
		[ MagmaInvalidIndexObject signal: 'Invalid index object, need a String.' ].
	conditionedString _ self conditionedKeyword: aString.
	answer _ 0.
	conditionedString doWithIndex: 
		[ : eachChar : index | 
		answer _ answer + ((eachChar asciiValue - self lowChar) * (self sizeOfCharacterSet raisedTo: meaningfulCharacters - index)) ].
	^ answer! !

!MaSearchStringIndex methodsFor: 'private' stamp: 'cmm 8/20/2006 21:04'!
lowChar
	^ lowChar ifNil: 
		[ self bePunctuated.
		lowChar ]! !

!MaSearchStringIndex methodsFor: 'private' stamp: 'cmm 8/20/2006 21:28'!
sizeOfCharacterSet
	^ self highChar - self lowChar + 1! !

!MaDateAndTimeIndex methodsFor: 'accessing' stamp: 'brp 12/21/2005 15:08'!
duration

	^ duration! !

!MaDateAndTimeIndex methodsFor: 'accessing' stamp: 'brp 12/21/2005 14:57'!
epoch

	^ epoch! !

!MaDateAndTimeIndex methodsFor: 'accessing' stamp: 'brp 12/21/2005 14:57'!
precision

	^ precision! !

!MaDateAndTimeIndex methodsFor: 'must override' stamp: 'cmm 12/2/2014 16:01'!
indexHashForIndexObject: aDateAndTime 
	^ aDateAndTime
		ifNil: [ 0 ]
		ifNotNil:
			[ | delta hash |
			delta _ aDateAndTime asDateAndTime asUTC - epoch.
			hash _ (delta asSeconds * self magnification) asInteger.
			delta nanoSeconds isZero ifFalse: [ hash _ hash + (delta nanoSeconds / (precision / 1 second * NanosInSecond)) floor ].
			hash < 0 ifTrue: [ MagmaInvalidIndexObject signal: 'Not a valid DateAndTime: . The index object must be greater than ' , epoch printString ].
			hash ]! !

!MaDateAndTimeIndex methodsFor: 'must override' stamp: 'cmm 1/22/2015 16:17'!
keySize
	^ keySize! !

!MaDateAndTimeIndex methodsFor: 'must override' stamp: 'brp 12/21/2005 15:26'!
magnification
	"Answer the factor by which the modified julian day number must be 
	multiplied in order to accomodate the clock precision"

	^ 1 second / self precision
! !

!MaDateAndTimeIndex methodsFor: 'initialize' stamp: 'cmm 11/21/2014 21:39'!
initialize
	super initialize.
	self
		setEpoch: DateAndTime epoch
		duration: (365.24 * 1000) ceiling days
		precision: 1 minute! !

!MaDateAndTimeIndex methodsFor: 'initialize' stamp: 'cmm 1/22/2015 16:18'!
setEpoch: startingDateAndTime duration: aDuration precision: durationUnits 
	| bits |
	epoch _ startingDateAndTime asUTC.
	duration _ aDuration.
	precision _ durationUnits.
	"The keySize is a function of the epoch, duration, and precision"
	bits _ (self duration asSeconds * self magnification log: 2) ceiling.
	keySize _ (bits / 8) ceiling * 8! !

!MaDateAndTimeIndex class methodsFor: 'create' stamp: 'cmm 11/21/2014 21:42'!
attribute: attributeSymbol epoch: startingDateAndTime duration: aDuration precision: durationUnits 
	^ (self attribute: attributeSymbol)
		setEpoch: startingDateAndTime
		duration: aDuration
		precision: durationUnits! !

!MaDateIndex methodsFor: 'as yet unclassified' stamp: 'cmm 8/4/2006 14:04'!
indexHashForIndexObject: aDate

	(aDate respondsTo: #julianDayNumber)
		ifFalse:
			[ MagmaInvalidIndexObject signal: 'Not a valid date.' ].
	^ aDate julianDayNumber! !

!MaDateIndex methodsFor: 'as yet unclassified' stamp: 'cmm 4/8/2004 00:41'!
keySize
"Rationale for 24-bit index:
	Date julianDayNumber: (2 raisedTo: 24) 
(prints 10 May 41222)
Will Squeak still be around then??"

	^ 24! !

!MaFloatIndex methodsFor: 'as yet unclassified' stamp: 'cmm 12/17/2014 16:12'!
indexHashForIndexObject: aFloat
	^aFloat asFloat hashKey32! !

!MaFloatIndex methodsFor: 'as yet unclassified' stamp: 'cmm 2/22/2004 21:59'!
keySize

	^ 32! !

!MaIntegerIndex methodsFor: 'overriding' stamp: 'cmm 7/17/2005 21:25'!
indexHashForIndexObject: anInteger

	^ anInteger! !

!MaIntegerIndex methodsFor: 'overriding' stamp: 'cmm 11/20/2010 19:35'!
keySize: numberOfBits
	"Only set this ONCE, when you create.  It is not changeable after the index is created."
	(MaHashIndex validKeySizes includes: numberOfBits)
		ifFalse: [ MagmaUserError signal: 'keySize must be one of ' , MaHashIndex validKeySizes printString ].
	keySize _ numberOfBits! !

!MaIntegerIndex methodsFor: 'initialize' stamp: 'cmm 7/17/2005 21:26'!
initialize
	super initialize.
	keySize _ 32! !

!MaIntegerIndex methodsFor: 'accessing' stamp: 'cmm 7/18/2005 13:29'!
keySize
	^ keySize! !

!MaUUIDIndex methodsFor: 'private' stamp: 'cmm 2/25/2011 15:55'!
defaultRecordSize
	^ 8! !

!MaUUIDIndex methodsFor: 'must override' stamp: 'brp 12/21/2005 09:38'!
indexHashForIndexObject: anUUID
	"anUUID is a 16 byte ByteArray"

	^ anUUID maUint: self keySize at: 0! !

!MaUUIDIndex methodsFor: 'must override' stamp: 'brp 12/20/2005 09:56'!
keySize
	"Answer an Integer number of bits, in multiples of 8, that each key value can be."

	^ 128	"UUID new size * 8"! !

!MagmaCollectionReader methodsFor: 'accessing' stamp: 'cmm 2/28/2015 13:12'!
add: anObject
	collection add: anObject! !

!MagmaCollectionReader methodsFor: 'accessing' stamp: 'cmm 2/18/2008 17:11'!
anyOne
	^ self isLoaded 
		ifTrue: [ segment objects anyOne value ]
		ifFalse: [ self first ]! !

!MagmaCollectionReader methodsFor: 'accessing' stamp: 'cmm 1/2/2008 12:55'!
at: anInteger 
	^ self 
		at: anInteger
		ifAbsent: [ MagmaUserError signal: 'out of bounds' ]! !

!MagmaCollectionReader methodsFor: 'accessing' stamp: 'cmm 11/26/2007 10:15'!
at: anInteger ifAbsent: aBlock 
	^ self 
		primAt: 
			(reversed 
				ifTrue: [ self lastKnownSize - anInteger + 1 ]
				ifFalse: [ anInteger ])
		ifOutOfBounds: aBlock! !

!MagmaCollectionReader methodsFor: 'accessing' stamp: 'cmm 11/26/2007 10:16'!
at: anInteger ifOutOfBounds: aBlock
self deprecated: 'Use #at:ifAbsent:'.
	^ self
		primAt: 
			(reversed
				ifTrue: [ self lastKnownSize - anInteger + 1 ]
				ifFalse: [ anInteger ])
		ifOutOfBounds: aBlock! !

!MagmaCollectionReader methodsFor: 'accessing' stamp: 'cmm 4/18/2013 10:00'!
cachedObjectAfter: anObject 
	| found |
self maMarked: 'delete'.
	found _ false.
	self segmentObjects do:
		[ : each | found ifTrue: [ ^ each value ].
		each value = anObject ifTrue: [ found _ true ] ].
	^ nil! !

!MagmaCollectionReader methodsFor: 'accessing' stamp: 'cmm 4/18/2013 10:25'!
cachedObjectBefore: anObject 
	| prior | prior _ nil.
self maMarked: 'delete'.
	self segmentObjects do:
		[ : each | each value = anObject ifTrue: [ ^ prior ].
		prior _ each value ].
	^ nil! !

!MagmaCollectionReader methodsFor: 'accessing' stamp: 'cmm 7/30/2002 23:49'!
collection

	^collection! !

!MagmaCollectionReader methodsFor: 'accessing' stamp: 'brp 10/28/2005 13:16'!
first

	^ self at: 1! !

!MagmaCollectionReader methodsFor: 'accessing' stamp: 'cmm 7/4/2011 20:51'!
fourth
	^ self at: 4! !

!MagmaCollectionReader methodsFor: 'accessing' stamp: 'cmm 8/1/2006 20:40'!
last
	^ self at: self lastKnownSize! !

!MagmaCollectionReader methodsFor: 'accessing' stamp: 'cmm 2/17/2008 15:02'!
lastKnownSize
	self subclassResponsibility ! !

!MagmaCollectionReader methodsFor: 'accessing' stamp: 'cmm 6/23/2011 12:06'!
nextToLast
	^ self at: self lastKnownSize-1! !

!MagmaCollectionReader methodsFor: 'accessing' stamp: 'cmm 3/21/2005 12:12'!
pageSize
	"The number of object retrieved to memory at a time."

	^ pageSize! !

!MagmaCollectionReader methodsFor: 'accessing' stamp: 'cmm 7/16/2006 20:00'!
pageSize: anInteger 
	"Tell the receiver to retrieve anInteger number of elements at a time when 'scrolling' to a new part of the collection via at:."
	pageSize _ anInteger.
	"We must refresh because my segments are laid out by my page-size and is also how my changes are merged."
	self refresh! !

!MagmaCollectionReader methodsFor: 'accessing' stamp: 'cmm 6/5/2006 20:58'!
refresh
	"clear out my caches.  The next access will force retrieve my latest state from the server."
	self initializeSegments! !

!MagmaCollectionReader methodsFor: 'accessing' stamp: 'cmm 7/4/2011 20:51'!
second
	^ self at: 2! !

!MagmaCollectionReader methodsFor: 'accessing' stamp: 'cmm 7/4/2011 17:31'!
segmentObjects
	^ segment
		ifNil: [ Array empty ]
		ifNotNil: [ segment objects ]! !

!MagmaCollectionReader methodsFor: 'accessing' stamp: 'cmm 6/5/2006 20:56'!
size
	"Retrieve the latest-known size from the server, regardless if I'm already loaded."
	self refresh.
	^ self lastKnownSize! !

!MagmaCollectionReader methodsFor: 'accessing' stamp: 'cmm 7/4/2011 20:51'!
third
	^ self at: 3! !

!MagmaCollectionReader methodsFor: 'accessing' stamp: 'cmm 11/2/2006 22:46'!
where: aBlock 
	| newReader |
	newReader _ self collection where: aBlock.
	newReader expression: newReader expression & self expression.
	^ newReader! !

!MagmaCollectionReader methodsFor: 'accessing' stamp: 'cmm 11/2/2006 22:58'!
where: aBlock distinct: makeDistinct sortBy: attributeSymbol descending: shouldDescend 
	^ ((self where: aBlock)
		sortBy: attributeSymbol makeDistinct: makeDistinct)
		descending: shouldDescend ;
		yourself! !

!MagmaCollectionReader methodsFor: 'accessing' stamp: 'cmm 11/2/2006 22:59'!
where: aBlock distinct: makeDistinct sortedBy: attributeSymbol descending: shouldDescend 
	| answer |
	answer _ self 
		where: aBlock
		distinct: makeDistinct
		sortBy: attributeSymbol
		descending: shouldDescend.
	[ answer sortComplete ] whileFalse: [ (Delay forMilliseconds: 400) wait ].
	^ answer! !

!MagmaCollectionReader methodsFor: 'enumerating' stamp: 'cmm 11/16/2004 22:58'!
allSatisfy: aBlock
	"Evaluate aBlock with the elements of the receiver.
	If aBlock returns false for any element return false.
	Otherwise return true."

	self do: [:each | (aBlock value: each) ifFalse: [^ false]].
	^ true! !

!MagmaCollectionReader methodsFor: 'enumerating' stamp: 'cmm 11/16/2004 22:58'!
anySatisfy: aBlock
	"Evaluate aBlock with the elements of the receiver.
	If aBlock returns true for any element return true.
	Otherwise return false."

	self do: [:each | (aBlock value: each) ifTrue: [^ true]].
	^ false! !

!MagmaCollectionReader methodsFor: 'enumerating' stamp: 'cmm 11/16/2004 22:58'!
collect: aBlock 
	"Evaluate aBlock with each of the receiver's elements as the argument.  
	Collect the resulting values into a collection like the receiver. Answer  
	the new collection."

	| newCollection |
	newCollection _ self species new.
	self do: [:each | newCollection add: (aBlock value: each)].
	^ newCollection! !

!MagmaCollectionReader methodsFor: 'enumerating' stamp: 'cmm 11/16/2004 22:59'!
count: aBlock 
	"Evaluate aBlock with each of the receiver's elements as the argument.  
	Answer the number of elements that answered true."

	| sum |
	sum _ 0.
	self do: [:each | (aBlock value: each) ifTrue: [sum _ sum + 1]].
	^ sum! !

!MagmaCollectionReader methodsFor: 'enumerating' stamp: 'cmm 11/16/2004 23:00'!
detect: aBlock 
	"Evaluate aBlock with each of the receiver's elements as the argument. 
	Answer the first element for which aBlock evaluates to true."

	^ self detect: aBlock ifNone: [self errorNotFound: aBlock]! !

!MagmaCollectionReader methodsFor: 'enumerating' stamp: 'cmm 11/16/2004 23:00'!
detect: aBlock ifNone: exceptionBlock 
	"Evaluate aBlock with each of the receiver's elements as the argument.  
	Answer the first element for which aBlock evaluates to true. If none  
	evaluate to true, then evaluate the argument, exceptionBlock."

	self do: [:each | (aBlock value: each) ifTrue: [^ each]].
	^ exceptionBlock value! !

!MagmaCollectionReader methodsFor: 'enumerating' stamp: 'cmm 11/16/2004 23:01'!
detectMax: aBlock
	"Evaluate aBlock with each of the receiver's elements as the argument. 
	Answer the element for which aBlock evaluates to the highest magnitude.
	If collection empty, return nil.  This method might also be called elect:."

	| maxElement maxValue val |
	self do: [:each | 
		maxValue == nil
			ifFalse: [
				(val _ aBlock value: each) > maxValue ifTrue: [
					maxElement _ each.
					maxValue _ val]]
			ifTrue: ["first element"
				maxElement _ each.
				maxValue _ aBlock value: each].
				"Note that there is no way to get the first element that works 
				for all kinds of Collections.  Must test every one."].
	^ maxElement! !

!MagmaCollectionReader methodsFor: 'enumerating' stamp: 'cmm 11/16/2004 23:01'!
detectMin: aBlock
	"Evaluate aBlock with each of the receiver's elements as the argument. 
	Answer the element for which aBlock evaluates to the lowest number.
	If collection empty, return nil."

	| minElement minValue val |
	self do: [:each | 
		minValue == nil
			ifFalse: [
				(val _ aBlock value: each) < minValue ifTrue: [
					minElement _ each.
					minValue _ val]]
			ifTrue: ["first element"
				minElement _ each.
				minValue _ aBlock value: each].
				"Note that there is no way to get the first element that works 
				for all kinds of Collections.  Must test every one."].
	^ minElement! !

!MagmaCollectionReader methodsFor: 'enumerating' stamp: 'cmm 11/16/2004 23:02'!
difference: aCollection
	"Answer the set theoretic difference of two collections."

	^ self reject: [:each | aCollection includes: each]! !

!MagmaCollectionReader methodsFor: 'enumerating' stamp: 'cmm 11/17/2009 22:44'!
do: oneArgBlock 
	| index |
	index _ 0.
	
	[ oneArgBlock value: 
		(self 
			at: (index _ index + 1)
			ifAbsent: [ ^ self ]) ] repeat! !

!MagmaCollectionReader methodsFor: 'enumerating' stamp: 'cmm 11/16/2004 23:00'!
errorNotFound: anObject

	MagmaUserError signal: 'Object is not in the collection.'! !

!MagmaCollectionReader methodsFor: 'enumerating' stamp: 'cmm 11/16/2004 23:03'!
inject: thisValue into: binaryBlock 
	"Accumulate a running value associated with evaluating the argument, 
	binaryBlock, with the current value of the argument, thisValue, and the 
	receiver as block arguments. For instance, to sum the numeric elements 
	of a collection, aCollection inject: 0 into: [:subTotal :next | subTotal + 
	next]."

	| nextValue |
	nextValue _ thisValue.
	self do: [:each | nextValue _ binaryBlock value: nextValue value: each].
	^nextValue! !

!MagmaCollectionReader methodsFor: 'enumerating' stamp: 'cmm 11/16/2004 23:03'!
intersection: aCollection
	"Answer the set theoretic intersection of two collections."

	^ self select: [:each | aCollection includes: each]! !

!MagmaCollectionReader methodsFor: 'enumerating' stamp: 'cmm 11/17/2009 20:16'!
maDetect: aBlock ifFound: foundBlock ifNone: exceptionBlock 
	"foundBlock takes one argument, the found object."
"This implementation copied directly from Collection.  For compatibility with the Ma base additions methods too!!"
	self 
		do: [ :element | (aBlock value: element) ifTrue: [ ^foundBlock value: element ] ].
	^exceptionBlock value
! !

!MagmaCollectionReader methodsFor: 'enumerating' stamp: 'cmm 11/16/2004 23:03'!
noneSatisfy: aBlock
	"Evaluate aBlock with the elements of the receiver.
	If aBlock returns false for all elements return true.
	Otherwise return false"

	self do: [:item | (aBlock value: item) ifTrue: [^ false]].
	^ true! !

!MagmaCollectionReader methodsFor: 'enumerating' stamp: 'cmm 11/16/2004 23:03'!
reject: aBlock 
	"Evaluate aBlock with each of the receiver's elements as the argument. 
	Collect into a new collection like the receiver only those elements for 
	which aBlock evaluates to false. Answer the new collection."

	^self select: [:element | (aBlock value: element) == false]! !

!MagmaCollectionReader methodsFor: 'enumerating' stamp: 'cmm 11/16/2004 22:57'!
select: aBlock 
	"Evaluate aBlock with each of the receiver's elements as the argument. 
	Collect into a new collection like the receiver, only those elements for 
	which aBlock evaluates to true. Answer the new collection."

	| newCollection |
	newCollection _ self species new.
	self do: [:each | (aBlock value: each) ifTrue: [newCollection add: each]].
	^newCollection! !

!MagmaCollectionReader methodsFor: 'enumerating' stamp: 'cmm 8/1/2006 21:29'!
withIndexDo: elementAndIndexBlock 
	| x |
	x _ 0.
	self do: 
		[ : each | 
		elementAndIndexBlock 
			value: each
			value: (x _ x + 1) ]! !

!MagmaCollectionReader methodsFor: 'converting' stamp: 'cmm 11/11/2007 22:47'!
asArray
	^ self asArray: self lastKnownSize! !

!MagmaCollectionReader methodsFor: 'converting' stamp: 'cmm 8/1/2006 20:35'!
asArray: count 
	"Answer an Array of up to count elements contained in me."
	| a |
	a _ Array new: (count min: self lastKnownSize).
	self withIndexDo: 
		[ : each : x | 
		a 
			at: x
			put: each.
		x = count ifTrue: [ ^ a ] ].
	^ a! !

!MagmaCollectionReader methodsFor: 'converting' stamp: 'cmm 8/8/2006 21:00'!
asBag
	"Answer a Bag whose elements are the elements of the receiver."
	^ Bag withAll: self! !

!MagmaCollectionReader methodsFor: 'converting' stamp: 'cmm 5/26/2014 19:47'!
asOrderedCollection
	^ OrderedCollection withAll: self! !

!MagmaCollectionReader methodsFor: 'converting' stamp: 'cmm 11/16/2004 23:04'!
asSet
	"Answer a Set whose elements are the unique elements of the receiver."

	^ Set withAll: self! !

!MagmaCollectionReader methodsFor: 'sort' stamp: 'cmm 5/28/2006 21:45'!
ascend
	self descending: false! !

!MagmaCollectionReader methodsFor: 'sort' stamp: 'cmm 6/19/2018 14:32'!
ascending: aBoolean 
	self descending: aBoolean not! !

!MagmaCollectionReader methodsFor: 'sort' stamp: 'cmm 5/28/2006 21:45'!
descend
	self descending: true! !

!MagmaCollectionReader methodsFor: 'sort' stamp: 'cmm 6/9/2006 16:02'!
descending: aBoolean 
	self isSorted ifFalse: [ MagmaUserError signal: 'not sorted' ].
	reversed _ aBoolean! !

!MagmaCollectionReader methodsFor: 'sort' stamp: 'cmm 7/26/2006 20:20'!
fractionSorted
	"For MagmaCollections that are sorted in a background server process, we must ask the server for progress."
	^ collection fractionLoaded! !

!MagmaCollectionReader methodsFor: 'sort' stamp: 'cmm 6/16/2006 16:31'!
isDescending
	^ reversed! !

!MagmaCollectionReader methodsFor: 'sort' stamp: 'cmm 6/8/2006 16:22'!
isSorted
	^ self sortIndex notNil! !

!MagmaCollectionReader methodsFor: 'sort' stamp: 'cmm 7/3/2006 23:21'!
sortBy: attributeSymbol 
	"Determine if I am already sorted by attributeSymbol and, if so, answer self immediately.  Otherwise, create a new a new MagmaCollection with a single-index on attributeSymbol, containing only the objects in me."
	^ self 
		sortBy: attributeSymbol
		makeDistinct: false! !

!MagmaCollectionReader methodsFor: 'sort' stamp: 'cmm 1/4/2010 09:54'!
sortBy: attributeSymbol makeDistinct: aBoolean 
	"If I am already sorted by attributeSymbol and can allow duplicates, answer myself immediately.  Otherwise, create a new a new MagmaCollection with a single-index on attributeSymbol, containing only the objects in me.  Answer it immediately, but it is being sorted in the background."
	^ self 
		sortBy: attributeSymbol
		makeDistinct: aBoolean
		descending: false! !

!MagmaCollectionReader methodsFor: 'sort' stamp: 'cmm 1/4/2010 09:43'!
sortBy: attributeSymbol makeDistinct: aBoolean descending: shouldDescend 
	"If I am already sorted by attributeSymbol and can allow duplicates, answer myself immediately.  Otherwise, create a new a new MagmaCollection with a single-index on attributeSymbol, containing only the objects in me.  Answer it immediately, but it is being sorted in the background."
	^ (aBoolean not and: [ self isSorted and: [ self sortIndex attribute = attributeSymbol ] ]) 
		ifTrue: [ self ]
		ifFalse: 
			[ (self 
				newReducedReaderOn: attributeSymbol
				makeDistinct: aBoolean)
				descending: shouldDescend ;
				yourself ]! !

!MagmaCollectionReader methodsFor: 'sort' stamp: 'cmm 6/13/2006 17:08'!
sortComplete
	^ self fractionSorted = 1! !

!MagmaCollectionReader methodsFor: 'sort' stamp: 'cmm 6/5/2007 15:58'!
sortIndex
	trunk ifNil: 
		[ expression isClause 
			ifTrue: [ ^ self indexNamed: expression attribute ]
			ifFalse: [ self isNewCollection ifTrue: [ ^ nil ] ].
		trunk _ collection getTrunk: expression ].
	^ trunk sortAttribute ifNotNilDo: [ : attribute | self indexNamed: attribute ]! !

!MagmaCollectionReader methodsFor: 'sort' stamp: 'cmm 1/4/2010 09:57'!
sortedBy: attributeSymbol makeDistinct: aBoolean 
	"If I am already sorted by attributeSymbol and can allow duplicates, answer myself immediately.  Otherwise, create a new a new MagmaCollection with a single-index on attributeSymbol, containing only the objects in me.  Answer it immediately only after the sort has completed."
	^ self 
		sortedBy: attributeSymbol
		makeDistinct: aBoolean
		descending: false! !

!MagmaCollectionReader methodsFor: 'sort' stamp: 'cmm 1/4/2010 09:56'!
sortedBy: attributeSymbol makeDistinct: aBoolean descending: shouldDescend 
	"If I am already sorted by attributeSymbol and can allow duplicates, answer myself immediately.  Otherwise, create a new a new MagmaCollection with a single-index on attributeSymbol, containing only the objects in me.  Answer it immediately only after the sort has completed."
	| answer |
	answer _ self 
		sortBy: attributeSymbol
		makeDistinct: aBoolean
		descending: shouldDescend.
	[ answer sortComplete ] whileFalse: [ (Delay forMilliseconds: 400) wait ].
	^ answer! !

!MagmaCollectionReader methodsFor: 'sort' stamp: 'cmm 4/2/2012 20:24'!
stopSorting
	collection ifNotNil: [ collection stopLoading]! !

!MagmaCollectionReader methodsFor: 'initialize-release' stamp: 'cmm 4/14/2005 23:08'!
collection: aMagmaCollection

	collection _ aMagmaCollection.
	self setUpListener! !

!MagmaCollectionReader methodsFor: 'initialize-release' stamp: 'cmm 2/14/2008 13:09'!
initialize
	super initialize.
	self pageSize: 125.
	reversed _ false! !

!MagmaCollectionReader methodsFor: 'initialize-release' stamp: 'cmm 2/17/2008 22:04'!
initializeSegments
	trunk _ nil.	"let's share the trunk"
	segment _ nil! !

!MagmaCollectionReader methodsFor: 'initialize-release' stamp: 'cmm 4/1/2012 18:34'!
release
	self stopSorting! !

!MagmaCollectionReader methodsFor: 'copying' stamp: 'brp 5/13/2005 19:52'!
copyFrom: startIndex to: endIndex

	^ (startIndex to: endIndex) collect: [ :i | self at: i ]! !

!MagmaCollectionReader methodsFor: 'expressions' stamp: 'cmm 1/20/2013 17:33'!
doesNotUnderstand: aMessage 
	| clause |
	clause _ MagmaClause new
		reader: self ;
		attribute: aMessage selector ;
		yourself.
	self expression ifNil: [ self expression: clause ].
	^ clause! !

!MagmaCollectionReader methodsFor: 'expressions' stamp: 'cmm 4/14/2006 12:54'!
expression

	^ expression! !

!MagmaCollectionReader methodsFor: 'expressions' stamp: 'cmm 12/9/2014 14:45'!
expression: aTerm 
	aTerm ifNotNil: [ aTerm validateUsing: self ].
	expression _ aTerm! !

!MagmaCollectionReader methodsFor: 'expressions' stamp: 'cmm 4/14/2006 16:20'!
normalize
	self expression normalize! !

!MagmaCollectionReader methodsFor: 'expressions' stamp: 'cmm 4/14/2006 16:11'!
read: attributeSymbol at: key
	"Answers a MaLargeCollectionReader with access to all elements at key."

	^ self
		read: attributeSymbol
		from: key
		to: key! !

!MagmaCollectionReader methodsFor: 'expressions' stamp: 'cmm 4/14/2006 16:17'!
read: attributeSymbol from: lowKey
	"Answers a MaLargeCollectionReader with access to all of my elements after lowKey."

	| index |
	index _ self indexNamed: attributeSymbol.
	^ self
		readIndex: index
		fromHash: (index indexHashForIndexObject: lowKey)
		toHash: index highestPossibleKey! !

!MagmaCollectionReader methodsFor: 'expressions' stamp: 'cmm 4/14/2006 16:17'!
read: attributeSymbol from: startKey to: endKey
	"Answers a MaLargeCollectionReader with access to all of my elements between startKey and endKey."

	| index |
	index _ self indexNamed: attributeSymbol.
	^ self
		readIndex: index
		fromHash: (index indexHashForIndexObject: startKey)
		toHash: (index indexHashForIndexObject: endKey)! !

!MagmaCollectionReader methodsFor: 'expressions' stamp: 'cmm 4/14/2006 16:17'!
read: attributeSymbol from: startKey upTo: endKey
      "Answers a MaLargeCollectionReader with access to all of my elements between startKey and endKey, but NOT including endKey.  This is useful with MaByteSequenceIndexDefinitions where you want to find all matching the left-side of a particular key."

	| index |
	index _ self indexNamed: attributeSymbol.
	^ self
		readIndex: index
		fromHash: (index indexHashForIndexObject: startKey)
		toHash: ((index indexHashForIndexObject: endKey) - 1 max: 0)! !

!MagmaCollectionReader methodsFor: 'expressions' stamp: 'cmm 4/14/2006 16:17'!
read: attributeSymbol to: highKey
	"Answers a MaLargeCollectionReader with access to all of my elements up to highKey."

	| index |
	index _ self indexNamed: attributeSymbol.
	^ self
		readIndex: index
		fromHash: 0
		toHash: (index indexHashForIndexObject: highKey)! !

!MagmaCollectionReader methodsFor: 'expressions' stamp: 'cmm 1/20/2013 17:33'!
readIndex: aMagmaCollectionIndex fromHash: lowHashValue toHash: highHashValue 
	"Answers a MaLargeCollectionReader."
	| clause |
	clause _ MagmaClause new
		reader: self ;
		attribute: aMagmaCollectionIndex attribute ;
		lowKey: lowHashValue ;
		highKey: highHashValue ;
		yourself.
	self expression ifNil: [ self expression: clause ].
	^ clause! !

!MagmaCollectionReader methodsFor: 'private' stamp: 'cmm 7/16/2006 14:01'!
fixUpExpression
	expression reader: self! !

!MagmaCollectionReader methodsFor: 'private' stamp: 'cmm 4/14/2006 15:35'!
indexNamed: attributeSymbol

	^ collection indexNamed: attributeSymbol
! !

!MagmaCollectionReader methodsFor: 'private' stamp: 'cmm 4/2/2009 14:33'!
isLoaded
	"Answer whether I have a page of objects loaded."
	^ segment notNil! !

!MagmaCollectionReader methodsFor: 'private' stamp: 'cmm 7/24/2014 15:33'!
isLoaded: anInteger
	"Answer whether I have the page of objects loaded which includes anInteger index."
	^ segment notNil and: [ segment includesIndex: 1 ]! !

!MagmaCollectionReader methodsFor: 'private' stamp: 'cmm 2/20/2008 12:01'!
loadFromIndex: indexInteger pageSize: pageSizeInteger 
	"we can simply integrate the non-persistents all into one dedicated page at the beginning?"
	(self segmentContaining: indexInteger) ifNotNilDo: 
		[ : desiredSegment | 
		"if swapping to a different segment, save memory by clipping its objects."
		(segment notNil and: [ segment ~= desiredSegment ]) ifTrue: [ segment initializeObjects ].
		segment _ desiredSegment.
		collection isNewCollection ifFalse: 
			[ self mergeChanges.
			"If merging changes caused segments to shift enough where indexInteger is no longer part of the originally-retrieved segment, then re-retrieve it given that we now know which segment will contain it."
			(self isFiltered and: [ segment notNil and: [ (segment includesIndex: indexInteger) not ] ]) 
				ifTrue: 
					[ self 
						loadFromIndex: indexInteger
						pageSize: pageSizeInteger ]
				ifFalse: [ self stronglyReferencePage ] ] ]! !

!MagmaCollectionReader methodsFor: 'private' stamp: 'cmm 2/17/2008 22:07'!
localAdditionsSegment
	"Only Filtered readers should have this."
	^ nil! !

!MagmaCollectionReader methodsFor: 'private' stamp: 'cmm 1/22/2015 19:21'!
maTransientVariables 
	^ #('trunk' 'segment' 'changesSegment' )! !

!MagmaCollectionReader methodsFor: 'private' stamp: 'cmm 2/17/2008 11:13'!
merge: oneArgBlock at: hashKey advance: anInteger 
	self subclassResponsibility! !

!MagmaCollectionReader methodsFor: 'private' stamp: 'cmm 2/18/2008 17:06'!
mergeAddition: anObject at: hashKey 
	"Fixup my segments by acknowledging that anObject exists in this reader at positions hashKeys.  If anObject is in the range of the active page (i.e., my 'segment'), then add it to its objects collection."
	| sortNeeded |
	sortNeeded _ false.
	self 
		merge: 
			[ : containingSegment | 
			containingSegment == segment ifTrue: 
				[ sortNeeded _ true.
				segment addObject: hashKey->anObject ] ]
		at: hashKey
		advance: 1.
	^ sortNeeded! !

!MagmaCollectionReader methodsFor: 'private' stamp: 'cmm 6/8/2006 16:13'!
mergeChanges
	self isSorted 
		ifTrue: [ self mergeChangesSorted ]
		ifFalse: [ self mergeChangesUnsorted ]! !

!MagmaCollectionReader methodsFor: 'private' stamp: 'cmm 2/18/2008 23:44'!
mergeChangesSorted
	"I am sorted.  My segment may be populated with the desired segment, my segments are populated.  Merge in my collections changes, fixing up my segments as necessary."
	| sortNeeded sortIndex |
	sortNeeded _ false.
	sortIndex _ self sortIndex.
	collection changes additionsDo: 
		[ : eachObject : eachHashes | 
		(expression qualifyingHashesOf: eachObject) do: 
			[ : eachAttributeAndHash | 
			eachAttributeAndHash key = sortIndex attribute ifTrue: 
				[ sortNeeded _ sortNeeded | (self 
						mergeAddition: eachObject
						at: eachAttributeAndHash value) ] ] ].
	sortNeeded ifTrue: [ segment sortObjects: expression ascendingSortBlock ]! !

!MagmaCollectionReader methodsFor: 'private' stamp: 'cmm 10/13/2006 16:35'!
newReducedReaderOn: attribute makeDistinct: aBoolean 
	"Create a new MagmaCollection and install it on the server without going through the normal transaction process.  This is nothing more than a transient object that happens to require server support."
	| newMc index |
	index _ self indexNamed: attribute.
	newMc _ MagmaCollection new.
	newMc addIndex: index.
	collection isNewCollection 
		ifTrue: 
			[ aBoolean 
				ifTrue: [ self asSet do: [ : each | newMc add: each ] ]
				ifFalse: [ self do: [ : each | newMc add: each ] ] ]
		ifFalse: 
			[ collection 
				load: newMc
				from: self
				makeDistinct: aBoolean ].
	^ newMc read: attribute! !

!MagmaCollectionReader methodsFor: 'private' stamp: 'cmm 11/24/2009 14:26'!
primAt: indexInteger ifOutOfBounds: aBlock 
	"Interrogates the committed and uncommitted contents of the underlying collection."
	^ indexInteger < 1 
		ifTrue: aBlock
		ifFalse: 
			[ (self isLoaded and: [ segment includesIndex: indexInteger ]) 
				ifTrue: 
					[ segment 
						at: indexInteger
						ifAbsent: aBlock ]
				ifFalse: 
					[ self 
						loadFromIndex: indexInteger
						pageSize: pageSize.
					(segment notNil and: [ segment includesIndex: indexInteger ]) 
						ifTrue: 
							[ segment 
								at: indexInteger
								ifAbsent: aBlock ]
						ifFalse: aBlock ] ]! !

!MagmaCollectionReader methodsFor: 'private' stamp: 'cmm 2/17/2008 12:05'!
refreshSegment: aMagmaCollectionReaderSegment loadObjects: aBoolean 
	self 
		refreshSegment: aMagmaCollectionReaderSegment
		loadObjects: aBoolean
		pageSize: pageSize! !

!MagmaCollectionReader methodsFor: 'private' stamp: 'cmm 2/18/2008 17:05'!
refreshSegment: aMagmaCollectionReaderSegment loadObjects: aBoolean pageSize: anInteger 
	aMagmaCollectionReaderSegment = self localAdditionsSegment ifFalse: 
		[ collection 
			refreshSegment: aMagmaCollectionReaderSegment
			where: expression
			pageSize: anInteger
			using: (self session ifNotNil: [ self session resetReadStrategy ])
			loadObjects: aBoolean ].
	self trunk: aMagmaCollectionReaderSegment trunk.
	self sortIndex ifNotNilDo: [ : sortIndex | aMagmaCollectionReaderSegment sortObjects: expression ascendingSortBlock ]! !

!MagmaCollectionReader methodsFor: 'private' stamp: 'cmm 1/20/2010 12:52'!
removeListener
	| didTry |
	didTry _ false.
	[ collection removeDependent: self ] 
		on: Error
		do: 
			[ : err | 
			"Bug in Squeak; sometimes it gets a 'Subscript out of bounds' when trying to remove from its own DependentsArray!!"
			didTry ifFalse: 
				[ (Delay forSeconds: 1) wait.
				didTry _ true.
				err retry ] ]! !

!MagmaCollectionReader methodsFor: 'private' stamp: 'cmm 2/17/2008 11:14'!
segmentContaining: anInteger 
	self subclassResponsibility! !

!MagmaCollectionReader methodsFor: 'private' stamp: 'cmm 2/17/2008 11:15'!
segmentSpanningKey: anInteger 
	self subclassResponsibility! !

!MagmaCollectionReader methodsFor: 'private' stamp: 'cmm 7/18/2002 15:44'!
session

	^collection session
! !

!MagmaCollectionReader methodsFor: 'private' stamp: 'cmm 4/14/2005 23:09'!
setUpListener

	"Whenever aMagmaCollection changes, we need to remerge its changes in with me."
	collection addDependent: self! !

!MagmaCollectionReader methodsFor: 'private' stamp: 'cmm 11/16/2004 22:57'!
species

	^ OrderedCollection! !

!MagmaCollectionReader methodsFor: 'private' stamp: 'cmm 2/18/2008 17:11'!
stronglyReferencePage
	| session |
	session _ self session.
	(session notNil and: [ session inTransaction and: [ segment notNil ] ]) ifTrue: [ session stronglyReference: segment objects value ]! !

!MagmaCollectionReader methodsFor: 'private' stamp: 'cmm 2/14/2008 10:36'!
trunk: aMaQueryTrunk 
	trunk _ aMaQueryTrunk.
	"Share aMaQueryTrunk among all my segments."
	segment ifNotNil: [ segment trunk: aMaQueryTrunk ]! !

!MagmaCollectionReader methodsFor: 'private' stamp: 'cmm 8/2/2006 21:36'!
update: addedOrRemovedSymbol
	"My collection has had an object added or removed, I will now need to remerge its uncommitted contents into my segment."
	self initializeSegments! !

!MagmaCollectionReader methodsFor: 'testing' stamp: 'cmm 6/20/2011 14:56'!
ifEmpty: emptyBlock ifNotEmpty: notEmptyBlock
	"Evaluate emptyBlock if I'm empty, notEmptyBlock otherwise"
	" If the notEmptyBlock has an argument, eval with the receiver as its argument"

	self isEmpty ifTrue: [ ^emptyBlock value ].
	^notEmptyBlock valueWithPossibleArgument: self! !

!MagmaCollectionReader methodsFor: 'testing' stamp: 'cmm 6/20/2011 14:57'!
ifEmpty: emptyBlock ifNotEmptyDo: notEmptyBlock
	"Evaluate emptyBlock if I'm empty, notEmptyBlock otherwise"
	"Evaluate the notEmptyBlock with the receiver as its argument"

	self isEmpty ifTrue: [ ^emptyBlock value ].
	^notEmptyBlock value: self! !

!MagmaCollectionReader methodsFor: 'testing' stamp: 'cmm 6/20/2011 14:57'!
ifNotEmpty: aBlock
	"Evaluate the given block unless the receiver is empty.

      If the block has an argument, eval with the receiver as its argument,
      but it might be better to use ifNotEmptyDo: to make the code easier to
      understand"

	self isEmpty ifFalse: [^ aBlock valueWithPossibleArgument: self].
! !

!MagmaCollectionReader methodsFor: 'testing' stamp: 'cmm 6/20/2011 14:56'!
ifNotEmpty: notEmptyBlock ifEmpty: emptyBlock
	"Evaluate emptyBlock if I'm empty, notEmptyBlock otherwise
	 If the notEmptyBlock has an argument, eval with the receiver as its argument"

	self isEmpty ifFalse: [ ^notEmptyBlock valueWithPossibleArgument: self ].
	^emptyBlock value! !

!MagmaCollectionReader methodsFor: 'testing' stamp: 'cmm 6/20/2011 13:16'!
ifNotEmptyDo: aBlock 
	"Evaluate the given block with the receiver as its argument."
	self isEmpty ifFalse: [ ^ aBlock value: self ]! !

!MagmaCollectionReader methodsFor: 'testing' stamp: 'cmm 6/20/2011 14:57'!
ifNotEmptyDo: notEmptyBlock ifEmpty: emptyBlock
	"Evaluate emptyBlock if I'm empty, notEmptyBlock otherwise
	Evaluate the notEmptyBlock with the receiver as its argument"

	self isEmpty ifFalse: [ ^notEmptyBlock value: self ].
	^emptyBlock value! !

!MagmaCollectionReader methodsFor: 'testing' stamp: 'cmm 4/14/2006 13:03'!
includes: anObject
	(collection includes: anObject) ifFalse: [ ^ false ].
	^ expression evaluate: anObject! !

!MagmaCollectionReader methodsFor: 'testing' stamp: 'cmm 6/20/2011 18:08'!
isEmpty
	^ self lastKnownSize = 0! !

!MagmaCollectionReader methodsFor: 'testing' stamp: 'cmm 2/17/2008 21:22'!
isFiltered
	"Multiple conditions used in a #where: requires server-level filtering, which is slower than MagmaCollectionOptimizedReader's.  Answer whether my expression could not be optimized."
	^ false! !

!MagmaCollectionReader methodsFor: 'testing' stamp: 'brp 4/5/2005 12:31'!
isNewCollection

	^ collection isNewCollection! !

!MagmaCollectionReader methodsFor: 'testing' stamp: 'cmm 2/27/2017 22:39'!
isSequenceable
	^ true! !

!MagmaCollectionReader methodsFor: 'testing' stamp: 'brp 11/8/2004 18:42'!
notEmpty

	^ self isEmpty not
! !

!MagmaCollectionReader methodsFor: 'cached object access' stamp: 'cmm 9/13/2012 17:32'!
indexOfCachedObject: anObject 
	self segmentObjects withIndexDo:
		[ : each : index | anObject = each value ifTrue: [ ^ index ] ].
	^ 0! !

!MagmaCollectionReader methodsFor: 'search' stamp: 'cmm 12/30/2010 19:43'!
maNewSearchContext
	^ (Smalltalk classNamed: #MagmaCollectionContext) reader: self! !

!MagmaCollectionReader methodsFor: 'serialization' stamp: 'cmm 12/12/2010 20:00'!
maWantsPostMaterialization 
	^ true! !

!MagmaCollectionReader class methodsFor: 'class initialization' stamp: 'jpb 5/7/2021 21:57:06'!
initialize
	"
	Smalltalk hasMaui ifTrue:
		[ (Smalltalk classNamed: #MauiWorld) current registry
			register: (Smalltalk classNamed: #MauiCollectionMorph)
			forAny: self ]"! !

!MagmaCollectionFilteredReader methodsFor: 'private' stamp: 'cmm 2/14/2008 10:37'!
adjustLastKnownSize: anInteger 
	(segments notEmpty and: [ segments last atEnd ]) ifTrue: [ segments last adjustLastKnownSize: anInteger ]! !

!MagmaCollectionFilteredReader methodsFor: 'private' stamp: 'cmm 2/17/2008 18:35'!
getNextSegmentAndLoadIf: oneArgBlock
	"Generate the next segment and, if oneArgBlock valued with it answers true, load objects into it too."
	| toRefresh |
	toRefresh _ segments 
		ifEmpty: 
			[ (MagmaCollectionReaderSegment new)
				startIndex: 1 ;
				trunkStart: 1 ;
				yourself ]
		ifNotEmpty: [ segments last nextSegment ].
	self 
		refreshSegment: toRefresh
		loadObjects: (oneArgBlock value: toRefresh).
	"Return nil unless a new segment was created."
	^ (segments isEmpty or: [ segments last ~= toRefresh ]) ifTrue: [ segments add: toRefresh ]
! !

!MagmaCollectionFilteredReader methodsFor: 'private' stamp: 'cmm 2/17/2008 22:08'!
localAdditionsSegment
	^ localAdditionsSegment! !

!MagmaCollectionFilteredReader methodsFor: 'private' stamp: 'cmm 1/22/2015 19:22'!
maTransientVariables 
	^ super maTransientVariables, #('segments' 'localAdditionsSegment')! !

!MagmaCollectionFilteredReader methodsFor: 'private' stamp: 'cmm 2/17/2008 15:39'!
merge: oneArgBlock at: hashKey advance: anInteger 
	| containingSegment |
	containingSegment _ self segmentSpanningKey: hashKey.
	containingSegment ifNil: [ ^ self ].
	oneArgBlock value: containingSegment.
	containingSegment advanceEnd: anInteger.
	self 
		segmentsAfter: containingSegment
		do: [ : eachSegment | eachSegment advanceStart: anInteger ]! !

!MagmaCollectionFilteredReader methodsFor: 'private' stamp: 'cmm 2/14/2008 16:33'!
mergeChangesSorted
	self resetSegmentRanges.
	super mergeChangesSorted! !

!MagmaCollectionFilteredReader methodsFor: 'private' stamp: 'cmm 2/17/2008 22:05'!
mergeChangesUnsorted
	"I am not sorted.  My segment is populated with the desired segment, my segments are populated.  Put my collections changes at the beginning, fixing up my subsequent segments as necessary."
	localAdditionsSegment ifNil: [ self mergeChangesUnsortedAdditions ]! !

!MagmaCollectionFilteredReader methodsFor: 'private' stamp: 'cmm 2/18/2008 17:26'!
mergeChangesUnsortedAdditions
	"I am not sorted.  My segment is populated with the desired segment, my segments are populated.  Put my collections changes at the beginning, fixing up my subsequent segments as necessary."
	collection changes additionsDo: 
		[ : eachObject : eachHashes | 
		(expression qualifyingHashesOf: eachObject) do: 
			[ : eachAttributeAndHash | 
			localAdditionsSegment ifNil: 
				[ segments addFirst: (localAdditionsSegment _ MagmaCollectionReaderSegment new
						startIndex: 1 ;
						endIndex: 0 ;
						trunk: trunk ;
						yourself) ].
			localAdditionsSegment
				addObject: eachAttributeAndHash value -> eachObject ;
				advanceEnd: 1.
			self 
				segmentsAfter: localAdditionsSegment
				do: [ : each | each advanceStart: 1 ] ] ]! !

!MagmaCollectionFilteredReader methodsFor: 'private' stamp: 'cmm 2/14/2008 10:37'!
resetSegmentRanges
	"Before each merge of local changes, my segments must be reset to indicate the page index ranges as they exist in the repository, otherwise, multiple page retrieves would continue to modify the index ranges when changes were merged (incorrectly).  My lastKnownSize must also be reset."
	| totalMerged |
	totalMerged _ 0.
	segments withIndexDo: 
		[ : each : index | 
		each = segments last ifTrue: [ totalMerged _ each mergedCount ].
		each
			startIndex: (index - 1) * pageSize + 1 ;
			endIndex: each startIndex + pageSize - 1 ;
			resetMergedCount ].
	self adjustLastKnownSize: totalMerged! !

!MagmaCollectionFilteredReader methodsFor: 'private' stamp: 'cmm 2/17/2008 18:32'!
segmentContaining: anInteger 
	"My expression is complex, an object at anInteger is being requested.  If I have previously loaded the segment containing anInteger, switch to it immediately from my cached 'segments'.  Otherwise, keep getting the next segment until we have the requested index."
	| desiredSegment |
	^ segments 
		maDetect: [ : each | each includesIndex: anInteger ]
		ifFound: 
			[ : foundSegment | 
			self 
				refreshSegment: foundSegment
				loadObjects: true.
			foundSegment ]
		ifNone: 
			[ 
			[ desiredSegment _ self getNextSegmentAndLoadIf: 
				[ : nextSeg | 
				nextSeg endIndex isNil or: [ nextSeg includesIndex: anInteger ] ].
			desiredSegment isNil or: [ (desiredSegment includesIndex: anInteger) or: [ desiredSegment atEnd ] ] ] whileFalse.
			desiredSegment ]! !

!MagmaCollectionFilteredReader methodsFor: 'private' stamp: 'cmm 2/17/2008 18:28'!
segmentSpanningKey: anInteger 
	^ segments 
		detect: 
			[ : each | 
			(each isFitted and: [ anInteger <= each highestKey ]) or: [ each atEnd ] ]
		ifNone: 
			[ "If we didn't find the spanning segment, and we're not at the end, then lets move forward toward the end until we do.."
			| desiredSegment |
			[ desiredSegment _ self getNextSegmentAndLoadIf: [ : nextSeg | false ].
			desiredSegment isNil or: [ anInteger <= desiredSegment highestKey or: [ desiredSegment atEnd ] ] ] whileFalse.
			(desiredSegment notNil and: [ anInteger <= desiredSegment highestKey ]) ifTrue: [ desiredSegment ] ]! !

!MagmaCollectionFilteredReader methodsFor: 'private' stamp: 'cmm 2/14/2008 10:38'!
segmentsAfter: aMagmaCollectionReaderSegment do: aBlock 
	| foundIt |
	foundIt _ false.
	segments do: 
		[ : each | 
		foundIt ifTrue: [ aBlock value: each ].
		each = aMagmaCollectionReaderSegment ifTrue: [ foundIt _ true ] ]! !

!MagmaCollectionFilteredReader methodsFor: 'private' stamp: 'cmm 2/14/2008 10:36'!
trunk: aMaQueryTrunk 
	super trunk: aMaQueryTrunk.
	segments do: [ : each | each trunk: aMaQueryTrunk ]! !

!MagmaCollectionFilteredReader methodsFor: 'initialize-release' stamp: 'cmm 2/14/2008 13:09'!
initialize
	super initialize.
	self initializeSegments! !

!MagmaCollectionFilteredReader methodsFor: 'initialize-release' stamp: 'cmm 2/17/2008 22:04'!
initializeSegments
	super initializeSegments.
	segments _ OrderedCollection new.
	localAdditionsSegment _ nil! !

!MagmaCollectionFilteredReader methodsFor: 'testing' stamp: 'cmm 2/17/2008 21:22'!
isFiltered
	"Multiple conditions used in a #where: requires server-level filtering, which is slower than MagmaCollectionOptimizedReader's.  Answer whether my expression could not be optimized."
	^ true! !

!MagmaCollectionFilteredReader methodsFor: 'testing' stamp: 'cmm 2/14/2008 10:35'!
knowsSize
	^ segments notEmpty and: [segments last atEnd]! !

!MagmaCollectionFilteredReader methodsFor: 'accessing' stamp: 'cmm 2/17/2008 18:27'!
lastKnownSize
	| didLoad |
	didLoad _ false.
	[ segments isEmpty or: [ segments last atEnd not ] ] whileTrue: 
		[ self getNextSegmentAndLoadIf: [ : nextSeg | false ].
		didLoad _ true ].
	didLoad ifTrue: [ collection isNewCollection ifFalse: [ self mergeChanges ] ].
	^ segments last lastKnownSize! !

!MagmaCollectionOptimizedReader methodsFor: 'private' stamp: 'cmm 12/9/2014 14:44'!
asFilteredReader
	^ MagmaCollectionFilteredReader new
		collection: collection ;
		expression: expression ;
		yourself! !

!MagmaCollectionOptimizedReader methodsFor: 'private' stamp: 'cmm 2/22/2009 18:46'!
getSegmentContaining: anInteger withObjects: aBoolean 
	| answer numberOfUncommitted pageStartIndex expandedPageSize |
	numberOfUncommitted _ self numberOfUncommittedInRange.
	pageStartIndex _ self isDescending 
		ifTrue: 
			[ "we're reversed, so as they populate their list and send at: 1, at: 2, at: 3, etc., it will cause a page-load every time, killing performance.  So invert the page-direction to backward rather than forward."
			anInteger - (numberOfUncommitted max: pageSize - 1) max: 1 ]
		ifFalse: [ anInteger - numberOfUncommitted max: 1 ].
	"But we must also account for expanding the page in both directions of indexInteger by the numberOfUncommitted, so we can properly integrate the non-committeds."
	expandedPageSize _ self pageSize max: 2 * numberOfUncommitted.
	answer _ MagmaCollectionReaderSegment new
		startIndex: pageStartIndex ;
		trunkStart: pageStartIndex ;
		yourself.
	self 
		refreshSegment: answer
		loadObjects: aBoolean
		pageSize: expandedPageSize.
	^ (answer lastKnownSize = 0 or: [ answer includesIndex: pageStartIndex ]) ifTrue: [ answer ]! !

!MagmaCollectionOptimizedReader methodsFor: 'private' stamp: 'cmm 2/18/2008 23:50'!
merge: oneArgBlock at: hashKey advance: anInteger 
	| containingSegment |
	containingSegment _ self segmentSpanningKey: hashKey.
	containingSegment 
		ifNil: 
			[ hashKey < segment lowestKey 
				ifTrue: [ segment advanceStart: 1 ]
				ifFalse: 
					[ "We already know it doesn't span hashKey, but if it is beyond, then increment the lastKnownsize."
					hashKey > segment highestKey ifTrue: [ segment advanceLastKnownSize: anInteger ] ] ]
		ifNotNil: 
			[ oneArgBlock value: containingSegment.
			segment advanceEnd: anInteger ]! !

!MagmaCollectionOptimizedReader methodsFor: 'private' stamp: 'cmm 2/20/2008 10:18'!
mergeChangesSorted
	super mergeChangesSorted.
	self mergeRemoved! !

!MagmaCollectionOptimizedReader methodsFor: 'private' stamp: 'cmm 2/20/2008 16:00'!
mergeRemoved
	collection changes removedDo: 
		[ : eachObject : eachHashes | 
		(expression qualifyingHashesOf: eachObject) do: 
			[ : each | 
			each value < segment lowestKey 
				ifTrue: [ segment advanceStart: -1 ]
				ifFalse: 
					[ "The server already excluded removed from the result, and is accounted for everywhere except the lastKnownSize.  No need to retreat the endIndex.."
					"segment advanceEnd: -1"
					segment advanceLastKnownSize: -1 ] ] ]! !

!MagmaCollectionOptimizedReader methodsFor: 'private' stamp: 'cmm 2/17/2008 11:54'!
numberOfUncommittedInRange
	"This is used to modify the startingAt: of a page-access.  We slide the page left as many in-range as have been inserted prior to my current first key in the page so we can know whether those uncommitted keys should be merged into the resulting segment.  After sliding over, those uncommitted keys will either be part of the *middle* of the segment or not.  If they are still left of it then we must not merge them (unless the startIndex is 1, in which case we know we are at the beginning and so we can merge them).  Otherwise, if they are left of it but the startIndex is >1, we must not merge them (trim them) because the next-lower key on disk may still be higher than them."
	| count indexPosition |
	count _ 0.
	indexPosition _ collection indexes indexOf: (collection indexNamed: expression attribute) .
	collection changes additionsDo:
		[ : eachObject : eachHashes |
		count _ count + 
			((eachHashes at: indexPosition) count: 
				[ : each | each between: expression lowKey and: expression highKey ]) ].
	^ count! !

!MagmaCollectionOptimizedReader methodsFor: 'private' stamp: 'cmm 2/17/2008 15:11'!
segmentContaining: anInteger 
	"My expression is a single clause, therefore the server can immediately give me the segment containing anInteger.  But we must adjust the index being asked for according to the uncommitted adds that have occurred."
	anInteger < 1 ifTrue: [ MagmaUserError signal: 'out of bounds' ].
	^ (self isLoaded and: [ segment includesIndex: anInteger ]) 
		ifTrue: [ segment ]
		ifFalse: 
			[ self 
				getSegmentContaining: anInteger
				withObjects: true ]! !

!MagmaCollectionOptimizedReader methodsFor: 'private' stamp: 'cmm 2/20/2008 10:18'!
segmentSpanningKey: anInteger 
	"My expression is a single clause.  Answer my own segment if it spans anInteger, otherwise nil.  
	If it doesn't span anInteger, but is at the beginning (trunkStart=1) then it is possible the user has inserted an uncomitted before the first committed, in which case we want to merge that.
	Likewise, if the segment is butted up against the end of the persistent collection but the user has added a new object whose key is beyond the persistent end, answer my segment because it is mergeable."
	^ ((segment includesKey: anInteger) 
		or: [ (segment trunkStart = 1 and: [ anInteger < segment lowestKey ]) 
		or: [ anInteger > segment highestKey and: [ segment atEndForOptimized ] ] ]) 
		ifTrue: [ segment ]! !

!MagmaCollectionOptimizedReader methodsFor: 'cached object access' stamp: 'cmm 4/18/2013 09:59'!
cachedObjectAfter: anObject 
self maMarked: 'delete'.
	self expression isClause ifFalse: [ ^ super cachedObjectAfter: anObject ].
	^ (self segmentObjects
		at: (self indexOfCachedObject: anObject) + 1
		ifAbsent: [ nil ]) value! !

!MagmaCollectionOptimizedReader methodsFor: 'cached object access' stamp: 'cmm 7/24/2014 13:21'!
cachedObjectAfterKey: anObject 
	| index |
	index _ self lastIndexOfCachedObjectAtOrBeforeKey: anObject.
	^ index isZero ifFalse:
		[ (self segmentObjects
			at: index + 1
			ifAbsent: [ ^ nil ]) value ]! !

!MagmaCollectionOptimizedReader methodsFor: 'cached object access' stamp: 'cmm 7/12/2013 14:07'!
cachedObjectAtKey: anObject 
	^ (self segmentObjects
		at: (self indexOfCachedObjectAtKey: anObject)
		ifAbsent: [ ^ nil ]) value! !

!MagmaCollectionOptimizedReader methodsFor: 'cached object access' stamp: 'cmm 4/18/2013 10:25'!
cachedObjectBefore: anObject 
self maMarked: 'delete'.
	self expression isClause ifFalse: [ ^ super cachedObjectBefore: anObject ].
	^ (self segmentObjects
		at: (self indexOfCachedObject: anObject) - 1
		ifAbsent: [ nil ]) value! !

!MagmaCollectionOptimizedReader methodsFor: 'cached object access' stamp: 'cmm 7/24/2014 13:23'!
cachedObjectBeforeKey: anObject 
	^ (self segmentObjects
		at: (self firstIndexOfCachedObjectAtOrAfterKey: anObject) - 1
		ifAbsent: [ ^ nil ]) value! !

!MagmaCollectionOptimizedReader methodsFor: 'cached object access' stamp: 'cmm 7/24/2014 13:23'!
firstIndexOfCachedObjectAtOrAfterKey: anObject 
	"anObject is the key.  Answer its indexed position within the receivers colllection of cached objects or the index of the object with the next higher key."
	| index hash |
	index _ self collection indexNamed: expression attribute.
	hash _ index indexHashForIndexObject: anObject.
	^ self segmentObjects
		ifEmpty: [ 0 ]
		ifNotEmpty:
			[ | nearestIndex |
			nearestIndex _ self segmentObjects findNearbyBinaryIndex:
				[ : testedObject | | hashOfTested |
				hashOfTested _ testedObject key.
				hash - hashOfTested ].
			"findNearby gives the next *lower* index rather than the next higher, so unless anObject exists, we need the next one."
			(nearestIndex
				between: 1
				and: self segmentObjects size)
				ifTrue:
					[ (self segmentObjects at: nearestIndex) key < hash
						ifTrue: [ nearestIndex + 1 ]
						ifFalse:
							[ "In the face of duplicate keys walk backward to ensure we get the first."
							[ nearestIndex > 1 and: [ (self segmentObjects at: nearestIndex - 1) key = hash ] ] whileTrue: [ nearestIndex _ nearestIndex - 1 ].
							nearestIndex ] ]
				ifFalse: [ 0 ] ]! !

!MagmaCollectionOptimizedReader methodsFor: 'cached object access' stamp: 'cmm 9/13/2012 17:32'!
indexOfCachedObject: anObject 
	self expression isClause ifFalse: [ ^ super indexOfCachedObject: anObject ].
	^ self indexOfCachedObjectAtKey: ((self collection indexNamed: expression attribute) indexObjectFor: anObject)! !

!MagmaCollectionOptimizedReader methodsFor: 'cached object access' stamp: 'cmm 11/20/2012 21:49'!
indexOfCachedObjectAtKey: anObject 
	| index hash |
	index _ self collection indexNamed: expression attribute.
	hash _ index indexHashForIndexObject: anObject.
	^ self segmentObjects
		findBinaryIndex:
			[ : testedObject | hash - testedObject key ]
		ifNone: [ 0 ]! !

!MagmaCollectionOptimizedReader methodsFor: 'cached object access' stamp: 'cmm 7/24/2014 13:19'!
lastIndexOfCachedObjectAtOrBeforeKey: anObject 
	"anObject is the key.  It must already be IN RANGE of the receivers cached objects.  Answer the index of in my segmentObjects whose key is NOT AFTER anObject; e.g., at or before anObject.  In the case where there are multiple instances with key anObject, answer the index of the last one."
	| index hash |
	index _ self collection indexNamed: expression attribute.
	hash _ index indexHashForIndexObject: anObject.
	^ self segmentObjects
		ifEmpty: [ 0 ]
		ifNotEmpty:
			[ | nearestIndex |
			nearestIndex _ self segmentObjects findNearbyBinaryIndex:
				[ : testedObject | hash - testedObject key ].
			(nearestIndex
				between: 1
				and: self segmentObjects size)
				ifTrue:
					[ [ nearestIndex < self segmentObjects size and: [ (self segmentObjects at: nearestIndex + 1) key = hash ] ] whileTrue: [ nearestIndex _ nearestIndex + 1 ].
					nearestIndex ]
				ifFalse: [ 0 ] ]! !

!MagmaCollectionOptimizedReader methodsFor: 'accessing' stamp: 'cmm 2/19/2008 10:24'!
lastKnownSize
	self isLoaded ifFalse: 
		[ segment _ self 
			getSegmentContaining: 1
			withObjects: true.
		(segment notNil and: [ collection isNewCollection not ]) ifTrue: [ self mergeChanges ] ].
	^ segment 
		ifNil: [ 0 ]
		ifNotNil: [ segment lastKnownSize ]! !

!MagmaSetReader methodsFor: 'as yet unclassified' stamp: 'cmm 7/19/2010 16:37'!
mergeChanges
	"With a MagmaDictionary or MagmaSet, there is no need to mergeChanges, because we check the locally added changes directly first."! !

!MagmaSetReader methodsFor: 'as yet unclassified' stamp: 'cmm 7/19/2010 16:36'!
setUpListener
	"The purpose of this is to force aMagmaCollectionReader to nil-out its segments whenever any object is added or removed to the receiver, so that we can enjoy the side-effect of any objects added since then, merged back in.
	However, MagmaSet and MagmaDictionary don't need the local changes merged, because they are only accessed one object at a time; (e.g., #includes: or #at:ifAbsent:) direct.  They need to be fast and this helps."! !

!MagmaLargeCollection methodsFor: 'accessing' stamp: 'cmm 7/6/2006 22:39'!
addAll: aCollection
	aCollection do: [ : each | self add: each ].
	^ aCollection! !

!MagmaLargeCollection methodsFor: 'accessing' stamp: 'cmm 3/15/2005 23:09'!
anyOne

	^ self detect: [ : each | true ]! !

!MagmaLargeCollection methodsFor: 'accessing' stamp: 'cmm 7/23/2011 14:19'!
enumerationPageSize
	"For enumeration, larger page-sizes make sense (vs. end-user browsing, where smaller page sizes of 50 make more sense), especially when throughput is more important than latency."
	^ 1000! !

!MagmaLargeCollection methodsFor: 'accessing' stamp: 'cmm 1/1/2008 17:22'!
lastKnownSize
	^ self size! !

!MagmaLargeCollection methodsFor: 'accessing' stamp: 'cmm 8/12/2007 20:44'!
occurrencesOf: anObject 
	self subclassResponsibility! !

!MagmaLargeCollection methodsFor: 'accessing' stamp: 'cmm 4/13/2005 12:14'!
size
	self subclassResponsibility! !

!MagmaLargeCollection methodsFor: 'enumerating (slow)' stamp: 'cmm 3/15/2005 23:05'!
allSatisfy: aBlock
	"Evaluate aBlock with the elements of the receiver.
	If aBlock returns false for any element return false.
	Otherwise return true."

	self do: [:each | (aBlock value: each) ifFalse: [^ false]].
	^ true! !

!MagmaLargeCollection methodsFor: 'enumerating (slow)' stamp: 'cmm 3/15/2005 23:06'!
anySatisfy: aBlock
	"Evaluate aBlock with the elements of the receiver.
	If aBlock returns true for any element return true.
	Otherwise return false."

	self do: [:each | (aBlock value: each) ifTrue: [^ true]].
	^ false! !

!MagmaLargeCollection methodsFor: 'enumerating (slow)' stamp: 'cmm 3/15/2005 23:06'!
collect: aBlock 
	"Evaluate aBlock with each of the receiver's elements as the argument.  
	Collect the resulting values into a collection like the receiver. Answer  
	the new collection."

	| newCollection |
	newCollection _ self species new.
	self do: [:each | newCollection add: (aBlock value: each)].
	^ newCollection! !

!MagmaLargeCollection methodsFor: 'enumerating (slow)' stamp: 'cmm 3/15/2005 23:06'!
count: aBlock 
	"Evaluate aBlock with each of the receiver's elements as the argument.  
	Answer the number of elements that answered true."

	| sum |
	sum _ 0.
	self do: [:each | (aBlock value: each) ifTrue: [sum _ sum + 1]].
	^ sum! !

!MagmaLargeCollection methodsFor: 'enumerating (slow)' stamp: 'cmm 3/15/2005 23:06'!
detect: aBlock 
	"Evaluate aBlock with each of the receiver's elements as the argument. 
	Answer the first element for which aBlock evaluates to true."

	^ self detect: aBlock ifNone: [self errorNotFound: aBlock]! !

!MagmaLargeCollection methodsFor: 'enumerating (slow)' stamp: 'cmm 3/15/2005 23:06'!
detect: aBlock ifNone: exceptionBlock 
	"Evaluate aBlock with each of the receiver's elements as the argument.  
	Answer the first element for which aBlock evaluates to true. If none  
	evaluate to true, then evaluate the argument, exceptionBlock."

	self do: [:each | (aBlock value: each) ifTrue: [^ each]].
	^ exceptionBlock value! !

!MagmaLargeCollection methodsFor: 'enumerating (slow)' stamp: 'cmm 3/15/2005 23:06'!
detectMax: aBlock
	"Evaluate aBlock with each of the receiver's elements as the argument. 
	Answer the element for which aBlock evaluates to the highest magnitude.
	If collection empty, return nil.  This method might also be called elect:."

	| maxElement maxValue val |
	self do: [:each | 
		maxValue == nil
			ifFalse: [
				(val _ aBlock value: each) > maxValue ifTrue: [
					maxElement _ each.
					maxValue _ val]]
			ifTrue: ["first element"
				maxElement _ each.
				maxValue _ aBlock value: each].
				"Note that there is no way to get the first element that works 
				for all kinds of Collections.  Must test every one."].
	^ maxElement! !

!MagmaLargeCollection methodsFor: 'enumerating (slow)' stamp: 'cmm 3/15/2005 23:06'!
detectMin: aBlock
	"Evaluate aBlock with each of the receiver's elements as the argument. 
	Answer the element for which aBlock evaluates to the lowest number.
	If collection empty, return nil."

	| minElement minValue val |
	self do: [:each | 
		minValue == nil
			ifFalse: [
				(val _ aBlock value: each) < minValue ifTrue: [
					minElement _ each.
					minValue _ val]]
			ifTrue: ["first element"
				minElement _ each.
				minValue _ aBlock value: each].
				"Note that there is no way to get the first element that works 
				for all kinds of Collections.  Must test every one."].
	^ minElement! !

!MagmaLargeCollection methodsFor: 'enumerating (slow)' stamp: 'cmm 3/15/2005 23:07'!
difference: aCollection
	"Answer the set theoretic difference of two collections."

	^ self reject: [:each | aCollection includes: each]! !

!MagmaLargeCollection methodsFor: 'enumerating (slow)' stamp: 'cmm 7/16/2006 14:27'!
do: oneArgBlock 
	self 
		slowlyDo: oneArgBlock
		pageBoundariesDo: [  ]! !

!MagmaLargeCollection methodsFor: 'enumerating (slow)' stamp: 'cmm 3/15/2005 23:07'!
errorNotFound: anObject

	MagmaUserError signal: 'Object is not in the collection.'! !

!MagmaLargeCollection methodsFor: 'enumerating (slow)' stamp: 'cmm 3/15/2005 23:07'!
inject: thisValue into: binaryBlock 
	"Accumulate a running value associated with evaluating the argument, 
	binaryBlock, with the current value of the argument, thisValue, and the 
	receiver as block arguments. For instance, to sum the numeric elements 
	of a collection, aCollection inject: 0 into: [:subTotal :next | subTotal + 
	next]."

	| nextValue |
	nextValue _ thisValue.
	self do: [:each | nextValue _ binaryBlock value: nextValue value: each].
	^nextValue! !

!MagmaLargeCollection methodsFor: 'enumerating (slow)' stamp: 'cmm 3/15/2005 23:07'!
intersection: aCollection
	"Answer the set theoretic intersection of two collections."

	^ self select: [:each | aCollection includes: each]! !

!MagmaLargeCollection methodsFor: 'enumerating (slow)' stamp: 'cmm 3/15/2005 23:12'!
maDo: aBlock while: conditionBlock

	conditionBlock value ifFalse: [ ^ self ].
	self do:
		[ : each |
		aBlock value: each.
		conditionBlock value ifFalse: [ ^ self ] ]! !

!MagmaLargeCollection methodsFor: 'enumerating (slow)' stamp: 'cmm 3/15/2005 23:08'!
noneSatisfy: aBlock
	"Evaluate aBlock with the elements of the receiver.
	If aBlock returns false for all elements return true.
	Otherwise return false"

	self do: [:item | (aBlock value: item) ifTrue: [^ false]].
	^ true! !

!MagmaLargeCollection methodsFor: 'enumerating (slow)' stamp: 'cmm 3/15/2005 23:08'!
reject: aBlock 
	"Evaluate aBlock with each of the receiver's elements as the argument. 
	Collect into a new collection like the receiver only those elements for 
	which aBlock evaluates to false. Answer the new collection."

	^self select: [:element | (aBlock value: element) == false]! !

!MagmaLargeCollection methodsFor: 'enumerating (slow)' stamp: 'cmm 3/7/2011 11:35'!
segmentsDo: oneArgBlock 
	"Unlike other slowlyDo: methods, this method does not lock me, so while you can get a large 'sampling', if the collection is changed while I'm enumerating, there's no guarantee you'll reach every element."
	| segment done index nextSignalTime |
	done _ false.
	index _ 1.
	nextSignalTime _ Time millisecondClockValue + 5000.
	[ done ] whileFalse: 
		[ segment _ self 
			segmentFromIndex: index
			pageSize: self enumerationPageSize.
		oneArgBlock value: segment.
		Time millisecondClockValue > nextSignalTime ifTrue: 
			[ MagmaNotification signal: (index - 1) printString , ' objects enumerated.'.
			nextSignalTime _ Time millisecondClockValue + 5000 ].
		index _ index + segment actualPageSize.
		done _ segment atEnd ]! !

!MagmaLargeCollection methodsFor: 'enumerating (slow)' stamp: 'cmm 3/15/2005 23:08'!
select: aBlock 
	"Evaluate aBlock with each of the receiver's elements as the argument. 
	Collect into a new collection like the receiver, only those elements for 
	which aBlock evaluates to true. Answer the new collection."

	| newCollection |
	newCollection _ self species new.
	self do: [:each | (aBlock value: each) ifTrue: [newCollection add: each]].
	^newCollection! !

!MagmaLargeCollection methodsFor: 'enumerating (slow)' stamp: 'cmm 7/22/2011 10:58'!
slowlyDo: oneArgBlock pageBoundariesDo: aBlock 
	"Unlike other enumeration methods, this method does not lock me, so while you can get a large 'sampling', if the collection is changed while I'm enumerating, there's no guarantee you'll reach every element."
	self subclassResponsibility! !

!MagmaLargeCollection methodsFor: 'enumerating (slow)' stamp: 'brp 9/27/2011 07:00'!
withIndexDo: elementAndIndexBlock 
	| x |
	x _ 0.
	self do: 
		[ : each | 
		elementAndIndexBlock 
			value: each
			value: (x _ x + 1) ]! !

!MagmaLargeCollection methodsFor: 'converting' stamp: 'brp 7/5/2005 10:05'!
asArray

	| all |
	all _ OrderedCollection new: self size.
	self do: [ :each | all add: each ].
	^ all asArray
! !

!MagmaLargeCollection methodsFor: 'testing' stamp: 'cmm 3/12/2010 13:48'!
ifEmpty: aBlock
	"Evaluate the block if I'm empty"
	self isEmpty ifTrue: [ ^ aBlock value ].
	^ self! !

!MagmaLargeCollection methodsFor: 'testing' stamp: 'brp 4/5/2005 15:22'!
ifEmpty: emptyBlock ifNotEmpty: notEmptyBlock
	"Evaluate emptyBlock if I'm empty, notEmptyBlock otherwise"
	" If the notEmptyBlock has an argument, eval with the receiver as its argument"

	^ self isEmpty ifTrue: emptyBlock ifFalse: [notEmptyBlock valueWithPossibleArgument: self]! !

!MagmaLargeCollection methodsFor: 'testing' stamp: 'brp 4/5/2005 15:23'!
ifNotEmpty: aBlock
	"Evaluate the given block unless the receiver is empty.

      If the block has an argument, eval with the receiver as its argument,
      but it might be better to use ifNotEmptyDo: to make the code easier to
      understand"

	^self isEmpty ifFalse: [aBlock valueWithPossibleArgument: self].
! !

!MagmaLargeCollection methodsFor: 'testing' stamp: 'cmm 8/12/2007 20:44'!
includes: anObject
	self subclassResponsibility! !

!MagmaLargeCollection methodsFor: 'testing' stamp: 'cmm 4/5/2012 20:02'!
isCollection
	^ true! !

!MagmaLargeCollection methodsFor: 'testing' stamp: 'cmm 6/20/2011 18:08'!
isEmpty
	^ self lastKnownSize = 0! !

!MagmaLargeCollection methodsFor: 'testing' stamp: 'cmm 8/31/2010 22:25'!
isEmptyOrNil
	"Answer whether the receiver contains any elements, or is nil.  Useful in numerous situations where one wishes the same reaction to an empty collection or to nil"
	^ self isEmpty! !

!MagmaLargeCollection methodsFor: 'testing' stamp: 'cmm 3/15/2005 23:26'!
notEmpty

	^self isEmpty not
! !

!MagmaLargeCollection class methodsFor: 'as yet unclassified' stamp: 'cmm 4/5/2012 19:39'!
withAll: aCollection
	^ self new addAll: aCollection! !

!MagmaDictionary methodsFor: 'access' stamp: 'cmm 4/13/2011 23:04'!
associationAt: key ifAbsent: aBlock 
	table
		at: (self hashFor: key)
		do:
			[ : eachAssociation | eachAssociation value key = key ifTrue: [ ^ eachAssociation value ] ].
	^ aBlock value! !

!MagmaDictionary methodsFor: 'access' stamp: 'cmm 4/13/2011 23:09'!
associationAt: anObject ifPresent: oneArgBlock ifAbsent: zeroArgBlock 
	^ oneArgBlock value:
		(self
			associationAt: anObject
			ifAbsent: [ ^ zeroArgBlock value ])! !

!MagmaDictionary methodsFor: 'access' stamp: 'cmm 4/11/2011 14:21'!
at: key 
	"Answer the value associated with the key."
	^ self
		at: key
		ifAbsent: [ self errorKeyNotFound: key ]! !

!MagmaDictionary methodsFor: 'access' stamp: 'cmm 4/13/2011 23:06'!
at: key ifAbsent: aBlock 
	^ (self
		associationAt: key
		ifAbsent: [ ^ aBlock value ]) value! !

!MagmaDictionary methodsFor: 'access' stamp: 'cmm 4/14/2011 17:32'!
at: keyObject ifAbsentPut: aBlock 
	"Answer the object at keyObject, if it isn't found, add the value of aBlock at keyObject and answer it.  IMPORTANT:  Do not nest calls to this method."
	| hash assoc |
	assoc _ table
		at: (hash _ self hashFor: keyObject)
		ifAbsentAdd:
			[ MagmaDictionaryAssociation
				key: keyObject
				value: aBlock value ].
	"assoc was either found or just created.  If it was found, it might be for a different keyObject (but with the same hash).  Do the right thing."
	^ (assoc key = keyObject
		ifTrue: [ assoc ]
		ifFalse:
			[ table
				add:
					(MagmaDictionaryAssociation
						key: keyObject
						value: aBlock value )
				at: hash ]) value! !

!MagmaDictionary methodsFor: 'access' stamp: 'cmm 4/11/2011 15:05'!
at: anObject ifPresent: oneArgBlock ifAbsent: zeroArgBlock 
	^ oneArgBlock value:
		(self
			at: anObject
			ifAbsent: [ ^ zeroArgBlock value ])! !

!MagmaDictionary methodsFor: 'access' stamp: 'cmm 10/2/2014 17:25'!
at: anObject ifPresent: oneArgBlock ifAbsentPut: zeroArgBlock 
	^ self
		at: anObject
		ifPresent: oneArgBlock
		ifAbsent:
			[ self
				at: anObject
				put: zeroArgBlock value ]! !

!MagmaDictionary methodsFor: 'access' stamp: 'cmm 4/11/2011 15:16'!
at: keyObject put: valueObject 
	"Add valueObject at keyObject.  If there is already an object at an equivalent to keyObject, replace it with each of keyObject and valueObject."
	| hash assoc |
	assoc _ table
		at: (hash _ self hashFor: keyObject)
		ifAbsentAdd:
			[ MagmaDictionaryAssociation
				key: keyObject
				value: valueObject ].
	"assoc was either found or just created.  If it was found, it might be for a different keyObject (but with the same hash).  Do the right thing."
	^ (assoc key = keyObject
		ifTrue:
			[ assoc
				 key: keyObject ;
				 value: valueObject ;
				 yourself ]
		ifFalse:
			[ table
				add:
					(MagmaDictionaryAssociation
						key: keyObject
						value: valueObject)
				at: hash ]) value! !

!MagmaDictionary methodsFor: 'access' stamp: 'cmm 4/24/2013 22:03'!
errorKeyNotFound: key
	"Signal KeyNotFound error"
	^(KeyNotFound key: key) signal! !

!MagmaDictionary methodsFor: 'access' stamp: 'cmm 4/11/2011 14:36'!
lastKnownSize
	^ self size! !

!MagmaDictionary methodsFor: 'access' stamp: 'cmm 7/22/2011 11:09'!
occurrencesOf: anObject 
	"Answer how many of the receiver's elements are equal to anObject."

	| tally |
	tally _ 0.
	self do: [:each | anObject = each ifTrue: [tally _ tally + 1]].
	^tally! !

!MagmaDictionary methodsFor: 'access' stamp: 'cmm 4/24/2013 22:03'!
removeKey: key 
	"Remove key from the receiver.
	If key is not in the receiver, notify an error."
	^ self
		removeKey: key
		ifAbsent: [ self errorKeyNotFound: key ]! !

!MagmaDictionary methodsFor: 'access' stamp: 'cmm 4/25/2013 14:28'!
removeKey: keyObject ifAbsent: aBlock 
	"Remove key (and its associated value) from the receiver. If key is not in the receiver, answer the result of evaluating aBlock. Otherwise, answer the value externally named by key."
	^ (table
		remove:
			(MagmaDictionaryAssociation
				key: keyObject
				value: nil)
		at: (self hashFor: keyObject)
		ifAbsent: [ ^ aBlock value ]) value! !

!MagmaDictionary methodsFor: 'access' stamp: 'cmm 4/11/2011 14:36'!
size
	^ table size! !

!MagmaDictionary methodsFor: 'enumerating (slow)' stamp: 'cmm 9/11/2012 14:36'!
associations
	^ Array streamContents:
		[ : stream | self associationsDo:
			[ : each | stream nextPut: each ] ]! !

!MagmaDictionary methodsFor: 'enumerating (slow)' stamp: 'cmm 7/23/2011 14:37'!
associationsDo: aBlock 
	"Value aBlock with each of my Associations."
	self
		slowlyDo: aBlock
		pageBoundariesDo: [  ]! !

!MagmaDictionary methodsFor: 'enumerating (slow)' stamp: 'cmm 7/23/2011 14:41'!
collect: aBlock 
	"Evaluate aBlock with each of my values as the argument.  Collect the resulting values into a collection that is like me. Answer with the new collection."
	| newCollection |
	newCollection _ self class new.
	self associationsDo:
		[ : each | newCollection
			at: each key
			put: (aBlock value: each value) ].
	^ newCollection! !

!MagmaDictionary methodsFor: 'enumerating (slow)' stamp: 'cmm 7/23/2011 14:37'!
do: aBlock

	self valuesDo: aBlock! !

!MagmaDictionary methodsFor: 'enumerating (slow)' stamp: 'cmm 10/28/2011 16:37'!
keys
	^ Array streamContents:
		[ : stream | self keysDo:
			[ : each | stream nextPut: each ] ]! !

!MagmaDictionary methodsFor: 'enumerating (slow)' stamp: 'cmm 7/23/2011 14:39'!
keysAndValuesDo: aBlock
	^self associationsDo:[:assoc|
		aBlock value: assoc key value: assoc value].! !

!MagmaDictionary methodsFor: 'enumerating (slow)' stamp: 'cmm 7/23/2011 14:37'!
keysDo: aBlock 
	"Evaluate aBlock for each of the receiver's keys."

	self associationsDo: [:association | aBlock value: association key]! !

!MagmaDictionary methodsFor: 'enumerating (slow)' stamp: 'cmm 7/23/2011 14:40'!
select: aBlock 
	"Evaluate aBlock with each of my values as the argument. Collect into a new dictionary, only those associations for which aBlock evaluates to true."
	| newCollection |
	newCollection _ self class new.
	self associationsDo:
		[ : each | (aBlock value: each value) ifTrue:
			[ newCollection
				at: each key
				put: each value ] ].
	^ newCollection! !

!MagmaDictionary methodsFor: 'enumerating (slow)' stamp: 'cmm 7/23/2011 15:37'!
slowlyDo: oneArgBlock pageBoundariesDo: aBlock 
	"Enumerate all Associations of the receiver, value oneArgBlock with each association."
	| count |
	count _ 0.
	table do:
		[ : eachAssociation | oneArgBlock value: eachAssociation.
		count _ count + 1.
		count \\ self enumerationPageSize = 0 ifTrue: [ aBlock value ] ]! !

!MagmaDictionary methodsFor: 'enumerating (slow)' stamp: 'cmm 7/23/2011 14:37'!
valuesDo: aBlock 
	"Evaluate aBlock for each of the receiver's values."

	self associationsDo: [:association | aBlock value: association value]! !

!MagmaDictionary methodsFor: 'private' stamp: 'cmm 4/11/2011 17:30'!
hashFor: anObject
	| hugeNumber validHash |
	validHash _ 0.
	hugeNumber _ anObject hash.
	[ hugeNumber > 0 ] whileTrue: 
		[ validHash _ validHash bitXor: (hugeNumber bitAnd: (1 bitShift: table keyBits)-1).
		hugeNumber _ hugeNumber bitShift: -28 ].
	^ validHash! !

!MagmaDictionary methodsFor: 'testing' stamp: 'cmm 7/22/2011 11:10'!
includes: anObject 
	"Answer whether anObject is one of the receiver's elements."

	^ self anySatisfy: [:each | each = anObject]! !

!MagmaDictionary methodsFor: 'testing' stamp: 'cmm 4/11/2011 15:17'!
includesKey: key 
	"Answer whether the receiver has a key equal to the argument, key."
	self at: key ifAbsent: [^false].
	^true! !

!MagmaDictionary methodsFor: 'testing' stamp: 'cmm 4/11/2011 15:17'!
isEmpty
	^ self size = 0! !

!MagmaDictionary methodsFor: 'testing' stamp: 'cmm 4/11/2011 15:17'!
notEmpty
	^ self isEmpty not! !

!MagmaDictionary methodsFor: 'initialize-release' stamp: 'cmm 4/14/2011 12:21'!
initialize
	super initialize.
	table _ MagmaSolHashTable new! !

!MagmaHashTable methodsFor: 'access' stamp: 'cmm 4/25/2011 09:57'!
add: anObject 
	(index indexHashesFor: anObject) do:
		[ : each | table
			add: anObject
			at: each ].
	^ anObject! !

!MagmaHashTable methodsFor: 'access' stamp: 'cmm 10/26/2012 14:36'!
allAt: keyObject 
	^ Array streamContents:
		[ : stream | self
			at: keyObject
			do: [ : each | stream nextPut: each ] ]! !

!MagmaHashTable methodsFor: 'access' stamp: 'cmm 12/26/2011 13:11'!
at: keyObject do: oneArgBlock 
	table
		at: (index indexHashForIndexObject: keyObject)
		do:
			[ : eachSolHashNode | | obj |
			obj _ eachSolHashNode value.
			(obj realObjectIfMutatingProxy perform: index attribute) = keyObject ifTrue: [ oneArgBlock value: obj ] ]! !

!MagmaHashTable methodsFor: 'access' stamp: 'cmm 1/4/2012 15:57'!
from: fromKey to: toKey do: oneArgBlock 
	| endHash |
	endHash _ index indexHashForIndexObject: toKey.
	table
		from: (index indexHashForIndexObject: fromKey)
		do: [ : eachSOLHashNode | oneArgBlock value: eachSOLHashNode value ]
		until: [ : eachSOLHashNode | eachSOLHashNode key > endHash ]! !

!MagmaHashTable methodsFor: 'access' stamp: 'cmm 4/13/2011 14:55'!
isEmpty
	^ self size = 0! !

!MagmaHashTable methodsFor: 'access' stamp: 'cmm 4/13/2011 14:55'!
notEmpty
	^ self isEmpty not! !

!MagmaHashTable methodsFor: 'access' stamp: 'cmm 4/13/2011 14:55'!
size
	^ table size! !

!MagmaHashTable methodsFor: 'private' stamp: 'cmm 12/26/2011 13:15'!
indexObjectFor: anObject
	^ anObject realObjectIfMutatingProxy perform: index attribute realObjectIfMutatingProxy! !

!MagmaHashTable methodsFor: 'initialize' stamp: 'cmm 4/13/2011 11:40'!
setIndex: aMagmaCollectionIndex 
	index _ aMagmaCollectionIndex.
	table _ MagmaSolHashTable
		loadFactor: 4
		segBits: 28
		keyBits: aMagmaCollectionIndex keySize! !

!MagmaHashTable methodsFor: 'enumeration' stamp: 'cmm 10/26/2012 14:39'!
slowlyDo: oneArgBlock pageBoundariesDo: aBlock 
	"Enumerate all objects of the receiver, value oneArgBlock with each object."
	| count |
	count _ 0.
	table do:
		[ : each | oneArgBlock value: each.
		count _ count + 1.
		count \\ self enumerationPageSize = 0 ifTrue: [ aBlock value ] ]! !

!MagmaHashTable class methodsFor: 'create' stamp: 'cmm 4/11/2011 10:16'!
index: aMagmaCollectionIndex 
	^ self new
		 setIndex: aMagmaCollectionIndex ;
		 yourself! !

!MagmaCoreLargeCollection methodsFor: 'testing' stamp: 'cmm 3/17/2005 21:14'!
canIndex: anObject

	^ false! !

!MagmaCoreLargeCollection methodsFor: 'testing' stamp: 'brp 4/5/2005 11:23'!
isNewCollection

	^ changes isNewCollection! !

!MagmaCoreLargeCollection methodsFor: 'testing' stamp: 'cmm 3/28/2005 16:01'!
maAllowsWriteBarrier 
	"My changes are tracked through the MagmaLargeCollectionChanges mechanism."

	^ false! !

!MagmaCoreLargeCollection methodsFor: 'testing' stamp: 'cmm 7/22/2011 11:12'!
maIsLargeCollection
	"This method should be renamed, #maIsCoreLargeCollection."
	^ true! !

!MagmaCoreLargeCollection methodsFor: 'private' stamp: 'cmm 3/17/2005 20:57'!
changes

	^ changes! !

!MagmaCoreLargeCollection methodsFor: 'private' stamp: 'cmm 5/6/2013 20:58'!
changesClass
	^ MagmaCollectionChanges! !

!MagmaCoreLargeCollection methodsFor: 'private' stamp: 'cmm 8/5/2011 13:27'!
maTransientVariables 
	"Large-collection changes are processed separately in the server, therefore they are stored separately in the commit-package, therefore, we mark them transient."

	^ #( 'session' 'changes' )! !

!MagmaCoreLargeCollection methodsFor: 'private' stamp: 'cmm 3/17/2005 21:29'!
maWantsPostMaterialization
	"Needed to initialize my changes."
	^ true! !

!MagmaCoreLargeCollection methodsFor: 'private' stamp: 'cmm 4/29/2005 12:51'!
segmentFromIndex: startIndex pageSize: anInteger
	"Answer a MaCollectionSegment."

	^ self
		segmentFromIndex: startIndex
		pageSize: anInteger
		using: (session ifNotNil: [session resetReadStrategy])! !

!MagmaCoreLargeCollection methodsFor: 'private' stamp: 'cmm 7/30/2006 13:55'!
segmentFromIndex: startIndex pageSize: anInteger using: aMaReadStrategy 
	"Answer a MaCollectionSegment."
	^ self isNewCollection 
		ifTrue: [ changes localSegment ]
		ifFalse: 
			[ session 
				upTo: anInteger
				objectsIn: self
				fromIndex: startIndex
				using: aMaReadStrategy ]! !

!MagmaCoreLargeCollection methodsFor: 'private' stamp: 'cmm 3/15/2005 23:25'!
session

	^ session! !

!MagmaCoreLargeCollection methodsFor: 'private' stamp: 'cmm 3/15/2005 23:25'!
session: aMagmaSession

	session _ aMagmaSession! !

!MagmaCoreLargeCollection methodsFor: 'private' stamp: 'cmm 3/15/2005 23:26'!
setOid: anInteger

	changes collectionOid: anInteger
! !

!MagmaCoreLargeCollection methodsFor: 'indexes' stamp: 'cmm 3/16/2005 13:59'!
indexesDo: aBlock
	"Some large-collections do not require indexes.  Do nothing by default."! !

!MagmaCoreLargeCollection methodsFor: 'initialize' stamp: 'cmm 5/6/2013 21:01'!
initialize
	super initialize.
	self initializeChangesUsing: self.
	changes beNewCollection! !

!MagmaCoreLargeCollection methodsFor: 'initialize' stamp: 'cmm 5/6/2013 21:00'!
initializeChangesUsing: proxyOrMagmaCollection 
	changes _ self changesClass collection: proxyOrMagmaCollection! !

!MagmaCoreLargeCollection methodsFor: 'enumerating (slow)' stamp: 'cmm 6/4/2007 10:09'!
slowlyDo: oneArgBlock pageBoundariesDo: aBlock 
	"Unlike other slowlyDo: methods, this method does not lock me, so while you can get a large 'sampling', if the collection is changed while I'm enumerating, there's no guarantee you'll reach every element."
	self isNewCollection ifFalse: 
		[ changes additionsDo: [ : eachObject : eachHashes | oneArgBlock value: eachObject ] ].
	self segmentsDo: 
		[ : each | 
		each objects do: [ : eachObject | (changes hasRemoved: eachObject) ifFalse: [ oneArgBlock value: eachObject ] ].
		aBlock value ]! !

!MagmaArray methodsFor: 'accessing' stamp: 'cmm 7/18/2010 19:46'!
add: anObject 
	"Put anObject at my next-higher size.  Warning:  Only use this method if you have exclusive access to the receiver."
	^ self
		at: self lastKnownSize + 1
		put: anObject! !

!MagmaArray methodsFor: 'accessing' stamp: 'cmm 4/13/2005 15:18'!
at: anIndex

	^ self
		at: anIndex
		ifAbsent: [ self error: 'index out of range' ]! !

!MagmaArray methodsFor: 'accessing' stamp: 'cmm 11/5/2010 15:15'!
at: anInteger ifAbsent: aBlock 
	^ changes
		at: anInteger
		ifAbsent:
			[ (self isLoaded and: [ segment includesIndex: anInteger ])
				ifTrue:
					[ segment
						at: anInteger
						ifAbsent: aBlock ]
				ifFalse:
					[ | size |
					size _ self lastKnownSize.
					self isNewCollection
						ifTrue:
							[ anInteger < size
								ifTrue: [ nil ]
								ifFalse: aBlock ]
						ifFalse:
							[ self loadFromIndex: anInteger.
							(segment includesIndex: anInteger)
								ifTrue:
									[ segment
										at: anInteger
										ifAbsent: aBlock ]
								ifFalse:
									[ anInteger < size
										ifTrue: [ nil ]
										ifFalse: aBlock ] ] ] ]! !

!MagmaArray methodsFor: 'accessing' stamp: 'cmm 3/18/2005 13:21'!
at: anInteger put: anObject

	changes
		add: anObject
		at: anInteger.
	^ anObject! !

!MagmaArray methodsFor: 'accessing' stamp: 'NicolasPetton 12/7/2011 16:44'!
first
	^self at: 1! !

!MagmaArray methodsFor: 'accessing' stamp: 'cmm 12/7/2011 22:07'!
last
	^self at: self lastKnownSize! !

!MagmaArray methodsFor: 'accessing' stamp: 'cmm 7/30/2006 20:06'!
lastKnownSize
	^ segment 
		ifNil: [ self size ]
		ifNotNil: [ segment lastKnownSize max: changes maxIndex ]! !

!MagmaArray methodsFor: 'accessing' stamp: 'cmm 3/21/2005 12:30'!
pageSize

	^ pageSize! !

!MagmaArray methodsFor: 'accessing' stamp: 'cmm 3/21/2005 12:30'!
pageSize: anInteger

	pageSize _ anInteger! !

!MagmaArray methodsFor: 'accessing' stamp: 'cmm 7/30/2006 20:07'!
refresh
	segment _ nil! !

!MagmaArray methodsFor: 'accessing' stamp: 'cmm 4/13/2005 12:15'!
size

	^ session isNil
		ifTrue:
			[ changes maxIndex ]
		ifFalse:
			[ (session sizeOfLargeCollection: self) max: changes maxIndex ]! !

!MagmaArray methodsFor: 'accessing' stamp: 'cmm 4/12/2005 17:24'!
species

	^ OrderedCollection! !

!MagmaArray methodsFor: 'private' stamp: 'cmm 5/6/2013 21:17'!
changesClass
	^ MagmaArrayChanges! !

!MagmaArray methodsFor: 'private' stamp: 'cmm 3/21/2005 12:36'!
isLoaded

	^ segment notNil! !

!MagmaArray methodsFor: 'private' stamp: 'cmm 5/1/2005 16:43'!
loadFromIndex: indexInteger

	segment _
		self
			segmentFromIndex: indexInteger
			pageSize: pageSize
			using: (session ifNotNil: [ session resetReadStrategy ])! !

!MagmaArray methodsFor: 'private' stamp: 'cmm 3/19/2005 11:25'!
maTransientVariables 
	"Large-collection changes are processed separately in the server, therefore they are stored separately in the commit-package, therefore, we mark them transient."

	^ super maTransientVariables, #( 'segment' )! !

!MagmaArray methodsFor: 'enumerate' stamp: 'cmm 7/30/2006 19:39'!
do: aBlock 
	1 
		to: self size
		do: [ : x | aBlock value: (self at: x) ]! !

!MagmaArray methodsFor: 'enumerate' stamp: 'cmm 9/10/2009 21:28'!
reverseDo: aBlock 
	self size 
		to: 1
		by: -1
		do: [ : x | aBlock value: (self at: x) ]! !

!MagmaArray methodsFor: 'do not use' stamp: 'cmm 3/21/2005 12:37'!
includes: anObject
	"This should not be used because, being large and non-indexed, would be a performance drain.  If you need this, you should probably use a regular MagmaCollection."

	self shouldNotImplement! !

!MagmaArray methodsFor: 'do not use' stamp: 'cmm 3/21/2005 12:38'!
occurrencesOf: anObject
	"This should not be used because, being large and non-indexed, would be a performance drain.  If you need this, you should probably use a regular MagmaCollection."

	self shouldNotImplement! !

!MagmaArray methodsFor: 'initialize' stamp: 'cmm 3/22/2005 12:40'!
initialize

	super initialize.
	self pageSize: 125! !

!MagmaCollection methodsFor: 'add / remove' stamp: 'cmm 2/1/2016 16:29'!
add: anObject 
	"Note that although a MagmaCollection can hold the same object more than once, it can only do so via separate commits."
	changes
		add: anObject
		at: (indexes collect: [ : each | each indexHashesFor: anObject ]).
	self changed: #added.
	^ anObject! !

!MagmaCollection methodsFor: 'add / remove' stamp: 'cmm 7/31/2002 00:15'!
canAdd: anObject

	^self canIndex: anObject! !

!MagmaCollection methodsFor: 'add / remove' stamp: 'cmm 4/15/2005 16:18'!
remove: anObject

	changes
		remove: anObject
		at: (indexes collect: [ :each | each indexHashesFor: anObject ]).
	self changed: #removed.
	^ anObject! !

!MagmaCollection methodsFor: 'add / remove' stamp: 'cmm 8/22/2012 20:47'!
removeAll: aCollection 
	aCollection do: [ : each | self remove: each ].
	^ aCollection! !

!MagmaCollection methodsFor: 'advanced' stamp: 'cmm 2/1/2016 16:29'!
add: anObject alsoAt: indexableObject 
	"anObject is known to NOT be committed as a member of this collection.  Ensure anObject is added to the receiver but use indexableObject to supply the index values to point to anObject in my indices.  Like #add:, anObject may only be added once per commit.
	Note:  If both anObject and the receiver are already persistent in the repository, AND anObject is already a member of this collection, it will be added again.  It is the users responsibility to avoid this by using #index:alsoAt:."
	changes
		add: anObject
		alsoAt: (indexes collect: [ : each | each indexHashesFor: indexableObject ])! !

!MagmaCollection methodsFor: 'advanced' stamp: 'cmm 12/5/2014 14:29'!
index: anObject alsoAt: indexableObject 
	"anObject is an object known to be in this collection.  Now use indexableObject to supply its additional index values to point to anObject in my indices.
	Note:  If anObjectis not a member of this collection, but is persistent elsewhere in the repository AND the receiver is persistent, then anObject will NOT be added as a member of the collection even though it would be indexed at values of indexableObject.  That is an abnormal situation the user is responsible to avoid this by using #add:alsoAt:, if necessary."
	(session notNil and: [ session isPersistent: anObject ])
		ifTrue:
			[ indexes do:
				[ : eachIndex | changes
					add: (session oidFor: anObject)
					at: (eachIndex indexHashesFor: indexableObject)
					toIndexForAttribute: eachIndex attribute ] ]
		ifFalse:
			[ self
				add: anObject
				alsoAt: indexableObject ]! !

!MagmaCollection methodsFor: 'indexing' stamp: 'cmm 9/28/2008 13:44'!
addIndex: aMagmaCollectionIndex 
	(self hasIndexNamed: aMagmaCollectionIndex attribute) ifTrue: 
		[ MagmaUserError signal: 'You already have an index on ' , aMagmaCollectionIndex attribute ].
	self isNewCollection ifFalse: [ self lock ].
	indexes add: aMagmaCollectionIndex.
	aMagmaCollectionIndex asDescription in: 
		[ : desc | 
		changes addIndex: desc.
		descriptions add: desc ]! !

!MagmaCollection methodsFor: 'indexing' stamp: 'cmm 2/22/2004 19:21'!
canIndex: anObject

	^indexes allSatisfy: [ :each | each canIndex: anObject ]
! !

!MagmaCollection methodsFor: 'indexing' stamp: 'cmm 5/31/2005 13:31'!
hasIndexNamed: attributeSymbol

	^ indexes anySatisfy: [ : each | each attribute = attributeSymbol ]! !

!MagmaCollection methodsFor: 'indexing' stamp: 'cmm 2/1/2005 22:49'!
indexNamed: attributeSymbol

	^indexes
		detect: [ :each | each attribute = attributeSymbol ]
		ifNone: [ MagmaUserError signal: attributeSymbol , ' is not an indexed attribute' ]! !

!MagmaCollection methodsFor: 'indexing' stamp: 'cmm 6/23/2007 17:08'!
removeIndexNamed: attributeSymbol 
	self lock.
	changes removeIndexNamed: attributeSymbol.
	indexes remove: (indexes detect: [ : each | each attribute = attributeSymbol ]).
	descriptions remove: (descriptions detect: [ : each | each attribute = attributeSymbol ])! !

!MagmaCollection methodsFor: 'converting' stamp: 'cmm 10/1/2006 23:35'!
asArray: anInteger
	| answer x size |
	answer _ Array new: (size _ (self size min: anInteger)).
	x _ 1.
	self
		maDo: [ : each | answer at: x put: each. x _ x + 1 ]
		while: [ x <= size ].
	^ answer! !

!MagmaCollection methodsFor: 'private' stamp: 'cmm 11/8/2006 00:10'!
beNotPersistent
	changes beNotPersistent ! !

!MagmaCollection methodsFor: 'private' stamp: 'cmm 11/15/2008 17:39'!
buildIndexes: aCollection ignoring: objectOidsAlreadyIndexed 
	"aCollection of MaIndexDefinitions."
	MagmaNotification signal: 'About to build ' , aCollection size printString , ' indexes.'.
	session begin.
	self segmentsDo: 
		[ : each | 
		[ each objects do: 
			[ : eachObject | 
			| oid |
			oid _ session oidFor: eachObject.
			(MaOidCalculator isOidForNewObject: oid) ifTrue: [ MagmaSoftwareError signal: 'expected a persistent object' ].
			(objectOidsAlreadyIndexed includes: oid) ifFalse: 
				[ aCollection do: 
					[ : eachIndex | 
					changes 
						add: oid
						at: (eachIndex indexHashesFor: eachObject)
						toIndexForAttribute: eachIndex attribute ] ] ].
		session commitAndBegin ] 
			on: MagmaCommitConflictError
			do: 
				[ : err | 
				changes resetNewIndexValues.
				err retry ] ].
	[ session commit ] 
		on: MagmaCommitConflictError
		do: [ : err | err retry ].
	self commitUnlock.
	MagmaNotification signal: 'Indexes built.'! !

!MagmaCollection methodsFor: 'private' stamp: 'cmm 12/7/2004 13:44'!
commitUnlock

	[ session commit: [ self unlock ] ]
		on: MagmaCommitError
		do:
			[ :error |
			error messageText:
				error messageText,
				'Abnormal condition.  The enumeration completed, but your session was unable to unlock the collection.  No one can update the collection until it is unlocked.  ' ]! !

!MagmaCollection methodsFor: 'private' stamp: 'cmm 8/6/2006 20:55'!
getTrunk: aMaTerm 
	^ session 
		getTrunkFor: self
		expression: aMaTerm! !

!MagmaCollection methodsFor: 'private' stamp: 'cmm 7/18/2002 15:05'!
indexes

	^indexes
! !

!MagmaCollection methodsFor: 'private' stamp: 'cmm 10/16/2006 11:08'!
load: aMagmaCollection from: aMagmaCollectionReader makeDistinct: aBoolean 
	"reset aMagmaCollection changes only to set isNewCollection false, because that really means 'is local collection', and we need it to go to the server for its contents.."
	session 
		load: aMagmaCollection
		from: aMagmaCollectionReader
		makeDistinct: aBoolean.
	aMagmaCollection changes reset.
	changes additionsDo: 
		[ : eachObject : eachHash | 
		(aMagmaCollectionReader expression evaluate: eachObject) ifTrue: [ aMagmaCollection add: eachObject ] ].
	changes removedDo: 
		[ : eachObject : eachHash | 
		(aMagmaCollectionReader expression evaluate: eachObject) ifTrue: [ aMagmaCollection remove: eachObject ] ]! !

!MagmaCollection methodsFor: 'private' stamp: 'cmm 12/7/2004 13:21'!
lock

	changes setLocked: true! !

!MagmaCollection methodsFor: 'private' stamp: 'cmm 7/30/2006 10:45'!
refreshSegment: aMagmaCollectionReaderSegment where: aMaTerm pageSize: anInteger using: aMaReadStrategy loadObjects: aBoolean 
	"Answer a MagmaCollectionSegment."
	self isNewCollection 
		ifTrue: 
			[ changes 
				refreshSegment: aMagmaCollectionReaderSegment
				where: aMaTerm ]
		ifFalse: 
			[ "if refreshing the local 'segment' it will have its old page of objects, clear it out."
			aMagmaCollectionReaderSegment initializeObjects.
			session 
				refreshSegment: aMagmaCollectionReaderSegment
				of: self
				where: aMaTerm
				pageSize: anInteger
				using: aMaReadStrategy
				loadObjects: aBoolean ]! !

!MagmaCollection methodsFor: 'private' stamp: 'cmm 11/16/2004 23:09'!
species

	^ Bag! !

!MagmaCollection methodsFor: 'private' stamp: 'cmm 12/7/2004 13:22'!
unlock

	changes setLocked: false! !

!MagmaCollection methodsFor: 'enumerating' stamp: 'cmm 5/28/2007 21:19'!
descriptionsDo: aBlock
	descriptions do: aBlock! !

!MagmaCollection methodsFor: 'enumerating' stamp: 'cmm 10/1/2004 14:43'!
indexesDo: aBlock

	indexes do: aBlock! !

!MagmaCollection methodsFor: 'accessing' stamp: 'cmm 7/26/2006 20:26'!
fractionLoaded
	^ self isNewCollection 
		ifTrue: [ 1 ]
		ifFalse: [ session fractionLoaded: self ]! !

!MagmaCollection methodsFor: 'accessing' stamp: 'cmm 9/28/2008 21:38'!
locker
	"Answer the MagmaClientConnection that has this collection locked or nil if it's not locked."
	^ self isNewCollection ifFalse: [ session lockerOf: self ]! !

!MagmaCollection methodsFor: 'accessing' stamp: 'cmm 2/17/2008 11:09'!
newReader
	^ MagmaCollectionOptimizedReader new
		collection: self ;
		yourself! !

!MagmaCollection methodsFor: 'accessing' stamp: 'cmm 12/7/2004 13:44'!
occurrencesOf: anObject

	| newOccurrences |

	newOccurrences _ changes occurrencesOf: anObject.
	(session isNil or:
		[ (session isPersistent: anObject) not or: [ (session isPersistent: self) not ] ])
			ifTrue:
				[ ^newOccurrences ].
	^(session
		occurrencesOf: anObject
		in: self) + newOccurrences
! !

!MagmaCollection methodsFor: 'accessing' stamp: 'brp 7/18/2006 20:11'!
read: attributeSymbol
	"Answers a MaLargeCollectionReader ordered on attributeSymbol"

	^ self read: attributeSymbol descending: false
! !

!MagmaCollection methodsFor: 'accessing' stamp: 'cmm 2/14/2008 13:13'!
read: attributeSymbol descending: aBoolean 
	"Answers a MaLargeCollectionReader ordered on attributeSymbol"
	| index reader |
	index _ self indexNamed: attributeSymbol.
	reader _ self newReader.
	reader 
		readIndex: index
		fromHash: index lowestPossibleKey
		toHash: index highestPossibleKey.
	reader descending: aBoolean.
	^ reader! !

!MagmaCollection methodsFor: 'accessing' stamp: 'cmm 4/13/2005 12:14'!
size

	^ session isNil
		ifTrue:
			[ changes deltaSize ]
		ifFalse:
			[ (session sizeOfLargeCollection: self) + changes deltaSize ]! !

!MagmaCollection methodsFor: 'accessing' stamp: 'cmm 7/23/2011 17:59'!
stopLoading
	self session ifNotNil:
		[ : sess | sess stopLoading: self ]! !

!MagmaCollection methodsFor: 'accessing' stamp: 'cmm 2/14/2008 13:14'!
where: aBlock 
	| reader |
	reader _ self newReader.
	aBlock value: reader.
	^ reader normalize! !

!MagmaCollection methodsFor: 'accessing' stamp: 'cmm 8/8/2006 11:07'!
where: aBlock distinct: makeDistinct sortBy: attributeSymbol descending: shouldDescend 
	^ ((self where: aBlock)
		sortBy: attributeSymbol makeDistinct: makeDistinct)
		descending: shouldDescend ;
		yourself! !

!MagmaCollection methodsFor: 'accessing' stamp: 'cmm 8/7/2006 22:06'!
where: aBlock distinct: makeDistinct sortedBy: attributeSymbol descending: shouldDescend 
	| answer |
	answer _ self 
		where: aBlock
		distinct: makeDistinct
		sortBy: attributeSymbol
		descending: shouldDescend.
	[ answer sortComplete ] whileFalse: [ (Delay forMilliseconds: 400) wait ].
	^ answer! !

!MagmaCollection methodsFor: 'testing' stamp: 'cmm 12/7/2004 13:44'!
includes: anObject

	(changes includesObject: anObject) ifTrue: [ ^true ].
	session isNil ifTrue: [ ^false ].
	^(self occurrencesOf: anObject) > 0! !

!MagmaCollection methodsFor: 'testing' stamp: 'cmm 9/28/2008 21:38'!
isLocked
	^ self locker notNil! !

!MagmaCollection methodsFor: 'initializing' stamp: 'cmm 5/30/2007 22:38'!
initialize
	super initialize.
	indexes _ OrderedCollection new.
	descriptions _ OrderedCollection new! !

!MagmaCollection methodsFor: 'validating' stamp: 'cmm 2/1/2005 23:48'!
validateCanAdd: anObject

	(self canIndex: anObject) ifFalse: [
		MagmaUserError signal:
			anObject printString , ' cannot be added to ' , self printString ,
			' because it does not support all of the indexable attributes.' ]! !

!MagmaCollection class methodsFor: 'initialize-release' stamp: 'jpb 5/7/2021 21:57:30'!
initialize
	"
	Smalltalk hasMaui ifTrue:
		[ (Smalltalk classNamed: #MauiWorld) current registry
			register: (Smalltalk classNamed: #MauiCollectionMorph)
			forAny: self ]"! !

!MagmaSet methodsFor: 'add / remove' stamp: 'cmm 2/16/2015 20:35'!
add: anObject 
	(self includes: anObject)
		ifTrue: [ MagmaDuplicateObjectInCollection signal: anObject printString , ' cannot be added to ' , self printString ]
		ifFalse: [ super add: anObject ]! !

!MagmaSet methodsFor: 'add / remove' stamp: 'cmm 7/30/2007 21:25'!
remove: anObject 
	^ (self equivalentOf: anObject) in: 
		[ : equivalent | 
		equivalent 
			ifNotNil: [ super remove: equivalent ]
			ifNil: 
				[ MagmaEquivalentObjectNotInCollection signal: anObject printString , ' is not in ' , self printString ] ]! !

!MagmaSet methodsFor: 'private' stamp: 'cmm 5/6/2013 20:58'!
changesClass
	^ MagmaSetChanges! !

!MagmaSet methodsFor: 'private' stamp: 'cmm 7/19/2010 16:33'!
newReader
	^ MagmaSetReader new
		collection: self ;
		yourself! !

!MagmaSet methodsFor: 'private' stamp: 'cmm 7/16/2010 15:27'!
readerFor: anObject 
	^ self where:
		[ : rdr | | nextTerm attr |
		attr _ equivalenceAttributes first.
		nextTerm _ rdr
			read: attr
			at: (anObject perform: attr).
		(equivalenceAttributes copyWithout: equivalenceAttributes first) do:
			[ : each | nextTerm &
				(rdr
					read: each
					at: (anObject perform: each)) ] ]! !

!MagmaSet methodsFor: 'initializing' stamp: 'cmm 7/18/2006 21:41'!
equivalenceAttributes: anArray 
	"Optimize my searches for equivalence objects by specifying which of my indexes can be used to minimize the set of unique instances."
	equivalenceAttributes _ anArray! !

!MagmaSet methodsFor: 'initializing' stamp: 'cmm 8/16/2006 22:29'!
initialize
	super initialize.
	equivalenceAttributes _ #()! !

!MagmaSet methodsFor: 'testing' stamp: 'cmm 7/19/2010 16:08'!
equivalentOf: anObject 
	"Answer the object in me equivalent to anObject."
	equivalenceAttributes isEmpty ifTrue: [ MagmaUserError signal: 'MagmaSets are not practical without at least one equivalenceAttribute defined.' ].
	(changes objectEqualTo: anObject) ifNotNilDo: [ : obj | ^ obj ].
	(changes removed includesKey: anObject) ifTrue: [ ^ nil ].
	self isNewCollection ifTrue: [ ^ nil ].
	(self canIndex: anObject) ifFalse: [ ^ nil ].
	^ (self readerFor: anObject)
		detect: [ : each | each = anObject ]
		ifNone: [ nil ]! !

!MagmaSet methodsFor: 'testing' stamp: 'cmm 7/12/2006 23:48'!
includes: anObject 
	^ (self equivalentOf: anObject) notNil! !

!MagmaSet class methodsFor: 'create' stamp: 'cmm 7/18/2006 22:35'!
equivalenceAttributes: anArray
	"anArray specifies the attributes to optimize the lookup for equivalent objects."
	^ self new
		equivalenceAttributes: anArray ;
		yourself! !

!MagmaSet class methodsFor: 'private' stamp: 'cmm 7/17/2010 11:20'!
indexOnHash
	^ (MaIntegerIndex attribute: #hash32)
		keySize: 32 ;
		yourself! !

!MagmaOldDictionary methodsFor: 'add / remove' stamp: 'apg 4/25/2005 14:42'!
add: anAssociation

	self validateCanAdd: anAssociation.
	changes
		add: anAssociation
		at: (indexes collect: [ :each | each indexHashesFor: anAssociation key ]).
	^ anAssociation! !

!MagmaOldDictionary methodsFor: 'add / remove' stamp: 'cmm 7/16/2010 16:09'!
at: key put: anObject 
	"Set the value at key to be anObject.  If key is not found, create a new entry for key and set is value to anObject. Answer anObject."
	(self scanFor: key)
		ifNil:
			[ self add:
				(MagmaDictionaryAssociation
					key: key
					value: anObject) ]
		ifNotNilDo: [ : assoc | assoc value: anObject ].
	^ anObject! !

!MagmaOldDictionary methodsFor: 'add / remove' stamp: 'cmm 7/15/2010 21:42'!
remove: anAssociation
	self shouldNotImplement! !

!MagmaOldDictionary methodsFor: 'add / remove' stamp: 'apg 4/21/2005 17:21'!
removeKey: key 
	"Remove key from the receiver.
	If key is not in the receiver, notify an error."

	^ self removeKey: key ifAbsent: [self errorKeyNotFound]! !

!MagmaOldDictionary methodsFor: 'add / remove' stamp: 'apg 4/25/2005 14:49'!
removeKey: key ifAbsent: aBlock 
	"Remove key (and its associated value) from the receiver. If key is not in 
	the receiver, answer the result of evaluating aBlock. Otherwise, answer 
	the value externally named by key."

	^ (self scanFor: key)
		ifNil: [ aBlock value ]
		ifNotNilDo: [ :assoc | self remove: assoc ]
! !

!MagmaOldDictionary methodsFor: 'accessing' stamp: 'apg 4/21/2005 17:24'!
associationAt: key 

	^ self associationAt: key ifAbsent: [self errorKeyNotFound]! !

!MagmaOldDictionary methodsFor: 'accessing' stamp: 'apg 4/25/2005 14:00'!
associationAt: key ifAbsent: aBlock 
	"Answer the association with the given key.
	If key is not found, return the result of evaluating aBlock."

	^ (self scanFor: key) ifNil: [ aBlock value ]! !

!MagmaOldDictionary methodsFor: 'accessing' stamp: 'apg 4/21/2005 17:26'!
associations
	"Answer a Collection containing the receiver's associations."
	| out |
	out _ WriteStream on: (Array new: self size).
	self associationsDo: [:value | out nextPut: value].
	^ out contents! !

!MagmaOldDictionary methodsFor: 'accessing' stamp: 'apg 4/21/2005 17:26'!
at: key 
	"Answer the value associated with the key."

	^ self at: key ifAbsent: [self errorKeyNotFound]! !

!MagmaOldDictionary methodsFor: 'accessing' stamp: 'apg 4/25/2005 14:00'!
at: key ifAbsent: aBlock 
	"Answer the value associated with the key or, if key isn't found,
	answer the result of evaluating aBlock."

	^ (self scanFor: key)
			ifNil: [ aBlock value ] ifNotNilDo: [ :assoc | assoc value ]! !

!MagmaOldDictionary methodsFor: 'accessing' stamp: 'apg 4/21/2005 17:27'!
at: key ifAbsentPut: aBlock 
	"Return the value at the given key. 
	If key is not included in the receiver store the result 
	of evaluating aBlock as new value."

	^ self at: key ifAbsent: [self at: key put: aBlock value]! !

!MagmaOldDictionary methodsFor: 'accessing' stamp: 'apg 4/21/2005 17:27'!
at: key ifPresent: aBlock
	"Lookup the given key in the receiver. 
	If it is present, answer the value of evaluating the given block 
	with the value associated with the key. Otherwise, answer nil."

	| v |
	v _ self at: key ifAbsent: [^ nil].
	^ aBlock value: v
! !

!MagmaOldDictionary methodsFor: 'accessing' stamp: 'cmm 10/28/2011 15:54'!
at: anObject ifPresent: oneArgBlock ifAbsent: zeroArgBlock 
	^ oneArgBlock value:
		(self
			at: anObject
			ifAbsent: [ ^ zeroArgBlock value ])! !

!MagmaOldDictionary methodsFor: 'accessing' stamp: 'apg 4/21/2005 17:27'!
keyAtValue: value 
	"Answer the key that is the external name for the argument, value. If 
	there is none, answer nil."

	^ self keyAtValue: value ifAbsent: [self errorValueNotFound]! !

!MagmaOldDictionary methodsFor: 'accessing' stamp: 'apg 4/21/2005 17:28'!
keyAtValue: value ifAbsent: exceptionBlock
	"Answer the key that is the external name for the argument, value. If 
	there is none, answer the result of evaluating exceptionBlock.
	Use =, not ==, so strings like 'this' can be found."
 
	self associationsDo: 
		[ :association | value = association value ifTrue: [^association key] ].
	^ exceptionBlock value! !

!MagmaOldDictionary methodsFor: 'accessing' stamp: 'apg 4/21/2005 17:28'!
keys
	"Answer a Set containing the receiver's keys."
	| aSet |
	aSet _ Set new: self size.
	self keysDo: [ :key | aSet add: key ].
	^ aSet! !

!MagmaOldDictionary methodsFor: 'accessing' stamp: 'apg 4/21/2005 17:28'!
values
	"Answer a Collection containing the receiver's values."
	| out |
	out _ WriteStream on: (Array new: self size).
	self valuesDo: [ :value | out nextPut: value ].
	^ out contents! !

!MagmaOldDictionary methodsFor: 'enumerating' stamp: 'cmm 7/23/2010 10:20'!
associationsDo: aBlock 
	"Evaluate aBlock for each of the receiver's elements (key/value associations)."
	self 
		slowlyDo: aBlock
		pageBoundariesDo: [  ]! !

!MagmaOldDictionary methodsFor: 'enumerating' stamp: 'cmm 7/23/2010 10:17'!
do: aBlock
	self valuesDo: aBlock! !

!MagmaOldDictionary methodsFor: 'enumerating' stamp: 'apg 4/21/2005 17:20'!
keysAndValuesDo: aBlock

	^ self associationsDo: [ :assoc | aBlock value: assoc key value: assoc value ].! !

!MagmaOldDictionary methodsFor: 'enumerating' stamp: 'apg 4/21/2005 17:20'!
keysDo: aBlock 
	"Evaluate aBlock for each of the receiver's keys."

	self associationsDo: [ :association | aBlock value: association key]! !

!MagmaOldDictionary methodsFor: 'enumerating' stamp: 'apg 4/21/2005 17:21'!
valuesDo: aBlock 
	"Evaluate aBlock for each of the receiver's values."

	self associationsDo: [ :association | aBlock value: association value ]! !

!MagmaOldDictionary methodsFor: 'private' stamp: 'apg 4/21/2005 17:18'!
errorKeyNotFound

	self error: 'key not found'! !

!MagmaOldDictionary methodsFor: 'private' stamp: 'apg 4/21/2005 17:18'!
errorValueNotFound

	self error: 'value not found'! !

!MagmaOldDictionary methodsFor: 'private' stamp: 'cmm 7/16/2010 17:01'!
scanFor: anObject 
	"Answer the Association keyed by anObject or nil"
	^ self equivalentOf: (MagmaDictionaryAssociation key: anObject)! !

!MagmaOldDictionary methodsFor: 'testing' stamp: 'cmm 7/15/2010 21:40'!
includes: anObject 
	(changes includesObject: anObject) ifTrue: [ ^ true ].
	session isNil ifTrue: [ ^ false ].
	self do:
		[ : each | each = anObject ifTrue: [ ^ true ] ].
	^ false! !

!MagmaOldDictionary methodsFor: 'testing' stamp: 'apg 4/21/2005 17:23'!
includesAssociation: anAssociation

	^ (self   
		associationAt: anAssociation key
		ifAbsent: [ ^ false ]) value = anAssociation value
! !

!MagmaOldDictionary methodsFor: 'testing' stamp: 'apg 4/21/2005 17:23'!
includesKey: key 
	"Answer whether the receiver has a key equal to the argument, key."
	
	self at: key ifAbsent: [^false].
	^ true! !

!MagmaOldDictionary methodsFor: 'validating' stamp: 'cmm 7/15/2010 21:37'!
validateCanAdd: anAssociation 
	anAssociation maIsAssociation ifFalse: [ MagmaUserError signal: 'When using #add: with a Dictionary, it must be an Association.' ].
	(equivalenceAttributes allSatisfy:
		[ : each | anAssociation key respondsTo: each ]) ifFalse: [ MagmaUserError signal: anAssociation printString , ' cannot be added to ' , self printString , ' because its key does not respond to all of the indexed attributes.' ].
	(self canIndex: anAssociation key) ifFalse: [ MagmaUserError signal: anAssociation printString , ' cannot be added to ' , self printString , ' because its key does not support all' , ' of the indexable attributes.' ]! !

!MagmaOldDictionary class methodsFor: 'create' stamp: 'cmm 7/16/2010 16:47'!
equivalenceAttributes: anArray
	self error: 'Only supported for MagmaSet''s, not MagmaDictionarys''s'! !

!MagmaOldDictionary class methodsFor: 'create' stamp: 'cmm 7/17/2010 11:18'!
new
	^ super new
		equivalenceAttributes: #(#hash32 ) ;
		addIndex: self indexOnHash ;
		yourself! !

!MaBasicReadStrategy methodsFor: 'new/old' stamp: 'cmm 1/25/2005 23:53'!
beNew
	"Be in a state that indicates I have changed and am different than my cached version on the server."

	isNew _ true! !

!MaBasicReadStrategy methodsFor: 'new/old' stamp: 'cmm 1/25/2005 14:55'!
beOld
	"Indicate that I have been checked against my classDefinitions and all possible depthSpecifications have been converted to the required server format (id's instead of classes)."
	isNew _ false! !

!MaBasicReadStrategy methodsFor: 'new/old' stamp: 'cmm 1/25/2005 23:53'!
isNew
	"Answer whether I have changed and now need to be cached in my session on the server."
	^isNew! !

!MaBasicReadStrategy methodsFor: 'copying' stamp: 'cmm 2/8/2005 23:03'!
copyWithoutSpecifications

	^ self copy! !

!MaBasicReadStrategy methodsFor: 'private' stamp: 'cmm 8/8/2006 22:59'!
initialize

	super initialize.
	isNew _ true.
	minimumDepth _ 1! !

!MaBasicReadStrategy methodsFor: 'accessing' stamp: 'cmm 4/7/2005 15:14'!
isBasic
	^ true! !

!MaBasicReadStrategy methodsFor: 'accessing'!
minimumDepth

	^minimumDepth
! !

!MaBasicReadStrategy methodsFor: 'building' stamp: 'cmm 1/26/2005 00:02'!
makeReadyForUseUsing: aMaClassIdManager
	"nothing to do for MaBasicReadStrategy's."! !

!MaBasicReadStrategy methodsFor: 'building' stamp: 'cmm 1/25/2005 23:52'!
minimumDepth: anInteger

	minimumDepth _ anInteger.
	self beNew! !

!MaBasicReadStrategy class methodsFor: 'creation'!
deep

	^self minimumDepth: 99999
! !

!MaBasicReadStrategy class methodsFor: 'creation'!
minimumDepth: anInteger

	^self new minimumDepth: anInteger
! !

!MaReadStrategy methodsFor: 'private' stamp: 'cmm 3/17/2010 21:21'!
convertSpecificationsToIdsUsing: aMaClassIdManager 
	"Convert the classes in the receiver to classId's, since that is what the server goes by."
	| specifiedClassNames |
	specifiedClassNames _ (depthSpecifications keys collect: [ : each | each name ]) asSet.
	aMaClassIdManager classDefinitionsById do: 
		[ : eachDefinitions | 
		eachDefinitions do: 
			[ : eachDefinition | 
			(specifiedClassNames includes: eachDefinition name) ifTrue: 
				[ | depthSpec |
				depthSpec _ depthSpecifications at: eachDefinition classObject.
				self beNew.
				depths 
					at: {  (eachDefinition id). (eachDefinition version)  }
					put: 
						(depthSpec isInteger 
							ifTrue: [ depthSpec ]
							ifFalse: [ self instVarMapFor: eachDefinition ]) ] ] ]! !

!MaReadStrategy methodsFor: 'private' stamp: 'cmm 6/10/2004 22:27'!
depthDictionaryOfSize: arraySize

	^ Dictionary new: arraySize! !

!MaReadStrategy methodsFor: 'private' stamp: 'cmm 4/26/2010 21:19'!
depthSpecifications
	^ depthSpecifications! !

!MaReadStrategy methodsFor: 'private' stamp: 'cmm 9/24/2009 20:43'!
inheritDeeperDepthsUsing: aMaClassIdManager 
	"When the user specifies:
		myReadStrategy
			forVariableNamed: 'submorphs'
			onAny: Morph
			readToDepth: 999
	then we need to ensure that any subclasses of Morph also read to 99999 for that variable.  Since each class has its own entire set of depth specs, we update the subclasses with the greater depth between their own and that of all their superclasses."
	depths keysAndValuesDo: 
		[ : eachIdAndVersion : eachDepths | 
		| eachDefinition |
		eachDefinition _ aMaClassIdManager 
			definitionForClassId: eachIdAndVersion first
			version: eachIdAndVersion last.
		eachDefinition allSuperclassDefinitionsDo: 
			[ : eachSuperclassDefinition | 
			eachDefinition 
				inheritDeeperDepthsFrom: eachSuperclassDefinition
				using: depths ] ]! !

!MaReadStrategy methodsFor: 'private' stamp: 'cmm 2/9/2005 10:14'!
initialize

	super initialize.
	"depths:  key is converted to the classId, value is either
	anInteger for depth of all instVars or an Array detailing the
	depth of each instVar."
	self 
		resetDepths ;
		initializeDefaultSpecifications! !

!MaReadStrategy methodsFor: 'private' stamp: 'cmm 5/15/2018 16:42'!
initializeDefaultSpecifications
	depthSpecifications _ Dictionary new.
	self
		
		onAny: MaRootAnchor
		readToDepth: 1 ;

		onAny: BlockClosure
		readToDepth: 1 ;

		onAny: Context
		readToDepth: 1 ;

		onAny: Collection
		readToDepth: 1 ;

		onAny: Timespan
		readToDepth: 1 ;

		onAny: DateAndTime
		readToDepth: 1 ;

		onAny: Rectangle
		readToDepth: 1 ;

		forVariableNamed: 'next'
		onAny: MaAssociation
		readToDepth: 1 ;

		forVariablesNamed: #('package' 'info' 'dependencies' )
		onAny: MCVersion
		readToDepth: 1 ;

		forVariablesNamed: #('name' 'author' )
		onAny: MCVersionInfo
		readToDepth: 1 ;

		onAny: MCDefinition
		readToDepth: 1 ;

		onAny: SOLHashTable
		readToDepth: 1 ;

		forVariableNamed: 'pointers'
		onAny: SOLHashSegment
		readToDepth: 1 ;

		forVariableNamed: 'selector'
		onAny: MessageSend
		readToDepth: 1 ;

		forVariableNamed: 'arguments'
		onAny: MessageSend
		readToDepth: 1.

	"Try to avoid regular Dictionary's full of proxies."
	#('key' 'value' ) do:
		[ : each | self
			forVariableNamed: each
			onAny: Association
			readToDepth: 1 ].
	self
		forVariablesNamed: (MagmaRepositoryDefinition allInstVarNames copyWithoutAll: #('codeBase' 'attributes' ))
		onAny: MagmaRepositoryDefinition
		readToDepth: 99.
	#(#MagmaLocation #MagmaId #MagmaNode #MagmaCollection #MagmaCollectionReader #MagmaPreallocatedDictionary #MaClassDefinition #Project #Color #Duration #Point #Time #TimeZone #Form #BitMap #FileDirectory #DiskProxy #CompiledMethod #MaClassReference #ScaledDecimal #Fraction #LargePositiveInteger #FillStyle ) do:
		[ : each | (self maOriginalClass environment hasClassNamed: each) ifTrue:
			[ self
				onAny: (self maOriginalClass environment classNamed: each)
				readToDepth: 99 ] ]! !

!MaReadStrategy methodsFor: 'private' stamp: 'cmm 10/28/2011 15:39'!
instVarMapFor: aMaClassDefinition 
	"Answer an Array with an instVarMap of aMaClassDefinition according to user-declared read depths."
	^ (Array new: aMaClassDefinition namedInstSize) in: 
		[ : arr | 
		arr atAllPut: 0.
		depthSpecifications 
			at: aMaClassDefinition classObject
			ifPresent: 
				[ : specifiedDepth | 
				specifiedDepth keysAndValuesDo: 
					[ : eachInstVarName : eachDepth | 
					| instVarIndex |
					instVarIndex _ aMaClassDefinition allInstVarNames indexOf: eachInstVarName.
					instVarIndex > 0 ifTrue: 
						[ arr 
							at: instVarIndex
							put: eachDepth ] ].
				arr ]
			ifAbsent: [ arr ] ]! !

!MaReadStrategy methodsFor: 'private' stamp: 'cmm 9/24/2009 20:31'!
makeReadyForUseUsing: aMaClassIdManager 
	self
		resetDepths ;
		convertSpecificationsToIdsUsing: aMaClassIdManager ;
		inheritDeeperDepthsUsing: aMaClassIdManager ;
		unspecifiedClassesInheritUsing: aMaClassIdManager! !

!MaReadStrategy methodsFor: 'private' stamp: 'cmm 6/30/2004 17:14'!
resetDepths

	depths _ Dictionary new! !

!MaReadStrategy methodsFor: 'private' stamp: 'cmm 10/28/2011 15:54'!
unspecifiedClassesInheritUsing: aMaClassIdManager 
	"All of the classes explicitly specified for this ReadStrategy have inherited deeper depths of specified superclasses.  Now we want all *subclasses* which were not explicitly specified, to inherit the specified depths of their superclasses."
	aMaClassIdManager classDefinitionsById do: 
		[ : eachDefinitions | 
		eachDefinitions do: 
			[ : eachClassDefinition | 
			depths 
				at: { 
						(eachClassDefinition id).
						(eachClassDefinition version)
					 }
				ifPresent: [ : foundSpec |  ]
				ifAbsent: 
					[ "Look through his superclasses to see whether he should be inheriting"
					eachClassDefinition allSuperclassDefinitions reversed do: 
						[ : eachSuperclassDefinition | 
						depths 
							at: { 
									(eachSuperclassDefinition id).
									(eachSuperclassDefinition version)
								 }
							ifPresent: 
								[ : foundSuperSpec | 
								depths 
									at: { 
											(eachClassDefinition id).
											(eachClassDefinition version)
										 }
									put: (foundSuperSpec isInteger 
											ifTrue: [ foundSuperSpec ]
											ifFalse: [ self instVarMapFor: eachClassDefinition ]).
								eachClassDefinition 
									inheritDeeperDepthsFrom: eachSuperclassDefinition
									using: depths ]
							ifAbsent: [ "do nothing" ] ] ] ] ]! !

!MaReadStrategy methodsFor: 'specifications' stamp: 'cmm 5/13/2011 14:12'!
copyForOtherSession
	^ self copy
		resetDepths ;
		yourself! !

!MaReadStrategy methodsFor: 'specifications' stamp: 'cmm 5/2/2005 22:12'!
copyWithoutSpecifications

	^ self copy
		resetSpecifications ;
		yourself! !

!MaReadStrategy methodsFor: 'specifications' stamp: 'cmm 9/23/2004 15:55'!
resetSpecifications

	depthSpecifications _ nil! !

!MaReadStrategy methodsFor: 'building' stamp: 'cmm 10/28/2011 15:39'!
forVariableNamed: aString onAny: aClass readToDepth: anInteger 
	| depthDict |
	({Dictionary. 
	Set} includes: aClass) ifTrue: [ MagmaUserError signal: 'Set and Dictionary are treated logically by Magma, just use #onAny: ' , aClass name , ' readToDepth:' ].
	self beNew.
	depthDict _ depthSpecifications
		at: aClass
		ifPresent:
			[ : foundSpec | foundSpec isInteger
				ifTrue:
					[ depthSpecifications
						at: aClass
						put: (self depthDictionaryOfSize: aClass instSize) ]
				ifFalse: [ foundSpec ] ]
		ifAbsent:
			[ depthSpecifications
				at: aClass
				put: (self depthDictionaryOfSize: aClass instSize) ].
	depthDict
		at: aString
		put: anInteger! !

!MaReadStrategy methodsFor: 'building' stamp: 'cmm 3/14/2011 17:02'!
forVariablesNamed: arrayOfStrings onAny: aClass readToDepth: anInteger 
	arrayOfStrings do:
		[ : each | self
			forVariableNamed: each
			onAny: aClass
			readToDepth: anInteger ]! !

!MaReadStrategy methodsFor: 'building' stamp: 'cmm 4/26/2010 21:21'!
mergeSpecificationsFrom: aMaReadStrategy 
	aMaReadStrategy depthSpecifications keysAndValuesDo: 
		[ : eachClass : eachDictionary | 
		self beNew.
		depthSpecifications 
			at: eachClass
			put: eachDictionary ]! !

!MaReadStrategy methodsFor: 'building' stamp: 'cmm 9/24/2009 16:21'!
onAny: aClass readToDepth: anInteger 
	self beNew.
	^ depthSpecifications 
		at: aClass
		put: anInteger! !

!MaReadStrategy methodsFor: 'accessing' stamp: 'cmm 4/7/2005 15:14'!
isBasic
	^ false! !

!MaChangedKeySpecification methodsFor: 'accessing'!
attribute

	^attribute! !

!MaChangedKeySpecification methodsFor: 'accessing' stamp: 'cmm 12/5/2002 17:54'!
newHashValues

	^newHashValues! !

!MaChangedKeySpecification methodsFor: 'accessing'!
object

	^object! !

!MaChangedKeySpecification methodsFor: 'accessing'!
oid

	^object
! !

!MaChangedKeySpecification methodsFor: 'accessing' stamp: 'cmm 12/5/2002 17:54'!
oldHashValues

	^oldHashValues! !

!MaChangedKeySpecification methodsFor: 'private building'!
attribute: aSymbol

	attribute _ aSymbol
! !

!MaChangedKeySpecification methodsFor: 'private building' stamp: 'cmm 12/5/2002 18:00'!
newHashValues: anArray

	newHashValues _ anArray! !

!MaChangedKeySpecification methodsFor: 'private building'!
object: anObject

	object _ anObject
! !

!MaChangedKeySpecification methodsFor: 'private building' stamp: 'cmm 12/5/2002 18:00'!
oldHashValues: anArray

	oldHashValues _ anArray! !

!MaChangedKeySpecification methodsFor: 'building' stamp: 'cmm 11/19/2002 22:42'!
serializeUsing: aMaObjectSerializer

	object _ aMaObjectSerializer oidFor: object! !

!MaChangedKeySpecification class methodsFor: 'creation' stamp: 'cmm 7/18/2005 13:19'!
object: anObject attribute: aSymbol oldHashValues: oldHashValueInteger newHashValues: newHashValueInteger

	^self new
		object: anObject ;
		attribute: aSymbol ;
		oldHashValues: oldHashValueInteger ;
		newHashValues: newHashValueInteger ;
		yourself! !

!MaCommitPackage methodsFor: 'accessing' stamp: 'cmm 8/13/2007 21:58'!
addLargeCollectionChanges: aMagmaLargeCollectionChanges
	^ self allLargeCollectionChanges add: aMagmaLargeCollectionChanges! !

!MaCommitPackage methodsFor: 'accessing' stamp: 'cmm 4/5/2005 21:38'!
allLargeCollectionChanges

	^ allLargeCollectionChanges ifNil: [ allLargeCollectionChanges _ Set new ]! !

!MaCommitPackage methodsFor: 'accessing'!
objects

	^objects! !

!MaCommitPackage methodsFor: 'accessing' stamp: 'cmm 10/16/2006 12:34'!
objects: aMaSerializedGraphBuffer
	objects _ aMaSerializedGraphBuffer! !

!MaCommitPackage methodsFor: 'accessing' stamp: 'cmm 11/26/2012 16:46'!
size
self maMarked: 'delete'.
	^objects size! !

!MaCommitPackage methodsFor: 'building' stamp: 'cmm 8/19/2007 20:41'!
addLargeCollectionChanges: aMaLargeCollectionChanges using: aMagmaSession
	"Add a copy of the changes instead of the originals because each serialization mutates the changes from first-class objects into oids."
	self addLargeCollectionChanges: aMaLargeCollectionChanges copyForSerialization.
	"Make sure we get new objects that may only be referenced by a LargeCollection."
	aMaLargeCollectionChanges
		addNewAdditionsTo: self
		using: aMagmaSession! !

!MaCommitPackage methodsFor: 'building'!
addObject: anObject

	^objects add: anObject
! !

!MaCommitPackage methodsFor: 'building'!
allLargeCollectionChanges: aSet

	allLargeCollectionChanges _ aSet
! !

!MaCommitPackage methodsFor: 'building' stamp: 'cmm 3/27/2005 20:52'!
removeObject: anObject

	objects
		remove: anObject
		ifAbsent: [ "no problem" ]! !

!MaCommitPackage methodsFor: 'building' stamp: 'cmm 10/31/2018 15:53'!
serializeObjectsUsing: aMagmaSession 
	"Serialize my 'objects' into a MaSerializedGraphBuffer since the server does not deal with objects, just their buffers."
	| mustReserialize serializer numberOfClassesBefore |
	serializer _ aMagmaSession serializer.
	numberOfClassesBefore _ serializer classIdManager numberOfClasses.
	mustReserialize _ false.
	
	[ objects _ serializer 
		serializeGraph: objects
		do: 
			[ : each | 
			"Determine if class definition of each has changed."
			(serializer classIdManager hasClassDefinitionFor: each maSerializationClass) ifFalse: 
				[ mustReserialize _ true.
				serializer classIdManager assimilateInImageDefinition: each maSerializationClass ].
			(each maIsLargeCollection and: 
				[ self allLargeCollectionChanges noneSatisfy: [ : eachChanges | eachChanges collectionOid = each changes collectionOid ] ]) ifTrue: 
				[ mustReserialize _ mustReserialize or: [ (aMagmaSession isMonitoringLargeCollection: each) not ].
				aMagmaSession monitorLargeCollection: each ].
			each isSymbol ifTrue: 
				[ mustReserialize _ (aMagmaSession definition symbols ifAbsentAdd: each) or: [mustReserialize] ].
			each isMagmaId ifTrue: 
				[ | canonicalizedId |
				(aMagmaSession definition hasCanonicalizedMagmaId: each) ifFalse: [ mustReserialize _ true ].
				canonicalizedId _ aMagmaSession definition ensureCanonicalizedMagmaId: each.
				canonicalizedId ~~ each realObjectIfMutatingProxy ifTrue: 
					[ "This only occurs when an application creates mulitple ForwardingProxy instances to remote objects in another repository.  We want every equivalent instance in the model replaced with THE canoncalized one in the RepositoryDefinition so node updates are seen by all."
					serializer cleanObject: each.
					each 
						becomeForward: canonicalizedId
						copyHash: false.
					mustReserialize _ true ] ] ] ] 
		on: MaTraverseProxyNotification
		do: 
			[ : error | 
			error proxy mutatingProxySession = aMagmaSession 
				ifTrue: [ error resume ]
				ifFalse: 
					[ MagmaSoftwareError signal: 'You should only share copies, not the same instances, across sessions.' ] ].
	self serializeLargeCollectionsChangesUsingCopyOf: serializer.
	^ mustReserialize or: [ serializer classIdManager numberOfClasses > numberOfClassesBefore ]! !

!MaCommitPackage methodsFor: 'enumerate' stamp: 'cmm 4/5/2005 21:39'!
allLargeCollectionChangesDo: aBlock

	allLargeCollectionChanges ifNotNil: [ allLargeCollectionChanges do: aBlock ]! !

!MaCommitPackage methodsFor: 'enumerate' stamp: 'cmm 1/15/2007 15:35'!
newIndexesDo: oneArgBlock
	"For all largeCollections that have had one or more indexes added on this
	transaction, evaluate oneArgBlock with the instance of MagmaCollectionChanges that hasAddedIndexes."
	self allLargeCollectionChangesDo:
		[ :eachChanges |
		eachChanges hasAddedIndexes
			ifTrue:
				[ oneArgBlock value: eachChanges ] ]! !

!MaCommitPackage methodsFor: 'enumerate'!
newObjectsDo: aBlock
	"This can only be used after the receiver has serialialized his objects
	(via #serializeObjectsUsing:)."

	| isRootBuffer |
	"Skip the first buffer because that is the receivers objects OC itself, not part of any client objects."
	isRootBuffer _ true.
	objects buffersDo:
		[ :each |
		isRootBuffer
			ifTrue:
				[ isRootBuffer _ false ]
			ifFalse:
				[ (MaOidCalculator isOidForNewObject: each oid) ifTrue: [ aBlock value: each ] ] ]
! !

!MaCommitPackage methodsFor: 'enumerate' stamp: 'cmm 12/19/2002 23:25'!
objectsDo: aBlock

	objects isCollection
		ifTrue:
			[ objects do: aBlock ]
		ifFalse:
			[ | isRootBuffer |
			"Skip the first buffer because that is the receivers objects OC itself, not part of any client objects."
			isRootBuffer _ true.
			objects buffersDo:
				[ :each |
				isRootBuffer ifTrue: [ isRootBuffer _ false ] ifFalse: [ aBlock value: each ] ] ]! !

!MaCommitPackage methodsFor: 'enumerate'!
persistentObjectsDo: aBlock
	"This can only be used after the receiver has serialialized his objects
	(via #serializeObjectsUsing:)."

	| isRootBuffer |
	"Skip the first buffer because that is the receivers objects OC itself, not part of any client objects."
	isRootBuffer _ true.
	objects buffersDo:
		[ :each |
		isRootBuffer
			ifTrue:
				[ isRootBuffer _ false ]
			ifFalse:
				[ (MaOidCalculator isOidForNewObject: each oid) ifFalse: [ aBlock value: each ] ] ]
! !

!MaCommitPackage methodsFor: 'enumerate' stamp: 'cmm 11/26/2002 22:14'!
removedIndexesDo: twoArgBlock
	"For all largeCollections that have had one or more indexes removed on this transaction, evaluate twoArgBlock.  The first argument is the collection (or oid of the collection if the receiver has serialized itself, the second is a collection of the indexes)."

	self allLargeCollectionChangesDo:
		[ :eachChanges |
		eachChanges hasRemovedIndexes
			ifTrue:
				[ twoArgBlock
					value: eachChanges collection
					value: eachChanges removedIndexes ] ]! !

!MaCommitPackage methodsFor: 'copying'!
copyWithNewLargeCollectionChanges

	^self copy
		allLargeCollectionChanges: (self allLargeCollectionChanges collect: [ :each | each copy ])
! !

!MaCommitPackage methodsFor: 'testing'!
hasNewIndexes
	"Don't use conform: or detect: because it forces creation of a collection for
	the new indexes."

	self
		allLargeCollectionChangesDo: [ :eachChanges | eachChanges hasAddedIndexes ifTrue: [ ^true ] ].
	^false
! !

!MaCommitPackage methodsFor: 'testing' stamp: 'cmm 11/26/2002 22:18'!
hasRemovedIndexes

	self
		allLargeCollectionChangesDo: [ :eachChanges | eachChanges hasRemovedIndexes ifTrue: [ ^true ] ].
	^false! !

!MaCommitPackage methodsFor: 'testing' stamp: 'cmm 1/18/2014 14:46'!
includesObject: anObject
	^ objects includes: anObject! !

!MaCommitPackage methodsFor: 'private' stamp: 'cmm 11/14/2002 21:35'!
serializeLargeCollectionsChangesUsingCopyOf: aMaObjectSerializer
	"The objects are serialized, now serialize the allLargeCollectionChanges of
	the receiver."

	| copiedSerializer |
	copiedSerializer _ nil.
	self allLargeCollectionChangesDo:
		[ :eachChanges | 
		copiedSerializer ifNil: [ copiedSerializer _ aMaObjectSerializer copyWithNewBuffer ].
		eachChanges serializeUsing: copiedSerializer ]
! !

!MaCommitPackage methodsFor: 'private' stamp: 'cmm 3/22/2010 18:25'!
setSize: anInteger 
	objects _ MaIdentitySet new: anInteger! !

!MaCommitPackage methodsFor: 'private' stamp: 'cmm 8/21/2008 17:37'!
trimLargeCollectionChanges
	self allLargeCollectionChanges: nil! !

!MaCommitPackage class methodsFor: 'creation'!
new
	"Don't have unnecessarily large physicalSize.  Keep the work on the client."

	^self new: 8
! !

!MaCommitPackage class methodsFor: 'creation'!
new: anInteger

	^super new setSize: anInteger
! !

!MaQueryTrunk methodsFor: 'initializing' stamp: 'cmm 5/31/2006 20:19'!
addClause: aMaQueryTrunkClause 
	^ clauses add: aMaQueryTrunkClause! !

!MaQueryTrunk methodsFor: 'initializing' stamp: 'cmm 5/31/2006 20:36'!
initialize
	super initialize.
	clauses _ OrderedCollection new! !

!MaQueryTrunk methodsFor: 'accessing' stamp: 'cmm 7/2/2006 21:12'!
sortAttribute
	"My clauses are reduced to just the ones that must be enumerated to find the result.  If that reduction was down to one then the order will be per that indexed attribute."
	^ clauses size = 1 ifTrue: [ clauses first attribute ]! !

!MaQueryTrunk methodsFor: 'accessing' stamp: 'cmm 5/31/2006 20:11'!
trunkSize
	^ clauses inject: 0 into: [ : sum : each | sum + each lastKnownSize ]! !

!MaQueryTrunk methodsFor: 'enumerating' stamp: 'cmm 5/31/2006 21:58'!
trunkDo: aBlock
	clauses do: aBlock! !

!MaRecoveryRecord methodsFor: 'private' stamp: 'cmm 6/5/2005 16:47'!
bodySize
	"Subclasses override"

	^ 0! !

!MaRecoveryRecord methodsFor: 'private' stamp: 'cmm 6/3/2005 14:21'!
bufferPositionOfPhysicalSize
	"This field is 3-bytes."

	^ 0! !

!MaRecoveryRecord methodsFor: 'private' stamp: 'cmm 7/15/2009 15:37'!
bufferPositionOfRecordType
	^ 4! !

!MaRecoveryRecord methodsFor: 'private' stamp: 'cmm 9/21/2005 09:53'!
calculatedCheckSum

	^ ReusableSha 
		maHashMessage: byteArray
		from: 1
		to: self physicalSize - self checkSumSize! !

!MaRecoveryRecord methodsFor: 'private' stamp: 'cmm 9/21/2005 09:53'!
checkSum: anInteger

	^ byteArray
		maUint: 160
		at: self physicalSize - self checkSumSize
		put: anInteger! !

!MaRecoveryRecord methodsFor: 'private' stamp: 'cmm 9/21/2005 09:53'!
checkSumPosition
	^ self physicalSize - self checkSumSize + 1! !

!MaRecoveryRecord methodsFor: 'private' stamp: 'cmm 9/21/2005 09:53'!
checkSumSize
	^ 20 "bytes"! !

!MaRecoveryRecord methodsFor: 'private' stamp: 'cmm 9/21/2005 09:53'!
ensureCanHold: numberOfBytes

	byteArray size >= (self headerSize + numberOfBytes + self checkSumSize)
		ifFalse:
			[ | newByteArray |
			newByteArray _ ByteArray new: self headerSize + numberOfBytes + self checkSumSize.
			newByteArray
				replaceFrom: 1
				to: byteArray size
				with: byteArray
				startingAt: 1.
			byteArray _ newByteArray ]! !

!MaRecoveryRecord methodsFor: 'private' stamp: 'cmm 7/15/2009 17:27'!
headerSize
	^ 5! !

!MaRecoveryRecord methodsFor: 'private' stamp: 'cmm 7/31/2011 20:51'!
physicalSize: anInteger 
	byteArray
		maUint: 32 "self class sizeOfPhysicalSizeField*4"
		at: self bufferPositionOfPhysicalSize
		put: anInteger! !

!MaRecoveryRecord methodsFor: 'private' stamp: 'cmm 3/20/2009 18:15'!
resetChecksum
	"Calculate my checksum which is used during recovery to ensure my byteArray was written completely and correctly."
	self checkSum: self calculatedCheckSum! !

!MaRecoveryRecord methodsFor: 'accessing' stamp: 'cmm 6/3/2005 14:22'!
bufferSize
	^ byteArray size! !

!MaRecoveryRecord methodsFor: 'accessing' stamp: 'cmm 6/3/2005 14:21'!
byteArray
	^ byteArray! !

!MaRecoveryRecord methodsFor: 'accessing' stamp: 'cmm 9/21/2005 09:54'!
checkSum

	^ byteArray
		maUint: 160
		at: self checkSumPosition-1 "-1 to convert to 0-based"! !

!MaRecoveryRecord methodsFor: 'accessing' stamp: 'cmm 9/8/2015 15:17'!
physicalSize
	^ byteArray
"		maUint: 32" "[self class sizeOfPhysicalSizeField * 8] once"
		maUnsigned32At: self bufferPositionOfPhysicalSize +1! !

!MaRecoveryRecord methodsFor: 'accessing' stamp: 'cmm 7/16/2005 18:34'!
record

	| startOfRecord |
	startOfRecord _ self headerSize+1 "because bufferPositionOfRecord is 0-based".
	^ byteArray
		copyFrom: startOfRecord
		to: startOfRecord + self recordSize - 1! !

!MaRecoveryRecord methodsFor: 'accessing' stamp: 'cmm 7/4/2005 22:53'!
record: aByteArray

	self
		record: aByteArray
		size: aByteArray size
		startingAt: 1! !

!MaRecoveryRecord methodsFor: 'accessing' stamp: 'cmm 9/21/2005 09:54'!
record: aByteArray size: anInteger startingAt: startPos

	self ensureCanHold: anInteger.
	byteArray
		replaceFrom: self headerSize+1
		to: self headerSize + anInteger
		with: aByteArray
		startingAt: startPos.
	self physicalSize: self headerSize + anInteger + self checkSumSize! !

!MaRecoveryRecord methodsFor: 'accessing' stamp: 'cmm 9/21/2005 09:54'!
recordSize

	^ self physicalSize - self headerSize - self checkSumSize! !

!MaRecoveryRecord methodsFor: 'accessing' stamp: 'cmm 9/8/2015 15:18'!
recordType
	"record type indicates what kind of MaRecoveryRecord this is.  See the class-side hierarchy, #assignedRecordType methods for the values."
	^ byteArray
"		maUint: 8"
		byteAt: self bufferPositionOfRecordType+1! !

!MaRecoveryRecord methodsFor: 'initialize-release' stamp: 'cmm 6/3/2005 14:21'!
byteArray: aByteArray

	byteArray _ aByteArray! !

!MaRecoveryRecord methodsFor: 'initialize-release' stamp: 'cmm 9/21/2005 09:54'!
initialize

	super initialize.
	byteArray _ ByteArray new: self headerSize + self bodySize + self checkSumSize.
	self isFixed ifTrue: [ self physicalSize: byteArray size ].
	self recordType: self class assignedRecordType! !

!MaRecoveryRecord methodsFor: 'initialize-release' stamp: 'cmm 7/5/2005 23:28'!
recordType: anInteger
	"record type indicates what kind of MaRecoveryRecord this is.  See the class-side hierarchy, #assignedRecordType methods for the values."

	^ byteArray
		maUint: 8
		at: self bufferPositionOfRecordType
		put: anInteger! !

!MaRecoveryRecord methodsFor: 'testing' stamp: 'cmm 5/27/2007 20:29'!
hasValidCheckSum
	^ self checkSumPosition > self headerSize and: [ self calculatedCheckSum = self checkSum ]! !

!MaRecoveryRecord methodsFor: 'testing' stamp: 'cmm 5/27/2007 20:54'!
isApplyToFile
	^ false! !

!MaRecoveryRecord methodsFor: 'testing' stamp: 'cmm 6/3/2005 16:57'!
isBeginApply
	^ false! !

!MaRecoveryRecord methodsFor: 'testing' stamp: 'cmm 6/3/2005 16:58'!
isEndApply
	^ false! !

!MaRecoveryRecord methodsFor: 'copying' stamp: 'cmm 6/3/2005 14:33'!
independentCopy
	^ self copy
		byteArray: (byteArray copyFrom: 1 to: self physicalSize) ;
		yourself! !

!MaRecoveryRecord methodsFor: 'printing' stamp: 'cmm 5/27/2007 20:32'!
maPrintAbbreviatedOn: aStream
	super maPrintAbbreviatedOn: aStream.
	self
		maPrintAttributes: #(physicalSize recordType)
		on: aStream! !

!MaRecoveryRecord class methodsFor: 'accessing' stamp: 'cmm 6/5/2005 16:54'!
assignedRecordType
	^ 0! !

!MaRecoveryRecord class methodsFor: 'accessing' stamp: 'cmm 7/15/2009 17:15'!
sizeOfPhysicalSizeField
	"this field, in particular, has its size defined this way because of the potential dual-read required should the initial default read not be large enough."

	^ 4! !

!MaRecoveryRecord class methodsFor: 'create' stamp: 'cmm 6/5/2005 16:46'!
byteArray: aByteArray
	^ self new
		byteArray: aByteArray ;
		yourself! !

!MaRecoveryRecord class methodsFor: 'create' stamp: 'cmm 6/5/2005 16:46'!
new: anInteger
	^ self byteArray: (ByteArray new: anInteger)! !

!MaRecoveryRecord class methodsFor: 'class initialization' stamp: 'cmm 6/5/2005 13:38'!
initialize
	super initialize.
	self initializeReusableSha ! !

!MaRecoveryRecord class methodsFor: 'class initialization' stamp: 'cmm 6/3/2005 14:41'!
initializeReusableSha

	ReusableSha _ SecureHashAlgorithm new! !

!MaCommitLogRecord methodsFor: 'accessing' stamp: 'cmm 9/8/2015 15:07'!
branchCode
	^ byteArray maUnsigned32At: self bufferPositionOfBranchCode + 1! !

!MaCommitLogRecord methodsFor: 'accessing' stamp: 'cmm 6/19/2007 22:58'!
branchCode: anInteger 
	byteArray 
		maUint: 32
		at: self bufferPositionOfBranchCode
		put: anInteger! !

!MaCommitLogRecord methodsFor: 'accessing' stamp: 'cmm 9/8/2015 15:07'!
commitNumber
	^ byteArray maUnsigned48At: self bufferPositionOfCommitNumber + 1! !

!MaCommitLogRecord methodsFor: 'accessing' stamp: 'cmm 5/27/2007 20:09'!
commitNumber: anInteger 
	byteArray 
		maUint: 48
		at: self bufferPositionOfCommitNumber 
		put: anInteger! !

!MaCommitLogRecord methodsFor: 'accessing' stamp: 'cmm 7/15/2009 19:37'!
headerSize
	"super headerSize + size of commitNumber, timestamp and branchCode fields."
	^ 20! !

!MaCommitLogRecord methodsFor: 'accessing' stamp: 'cmm 9/8/2015 15:07'!
timestamp
	"By storing the timestamp we can restore to a paritcular point-in-time."
	^ DateAndTime fromSeconds: 
		(byteArray maUnsigned40At: self bufferPositionOfTimestamp+1)	"DateAndTime fromSeconds: (2 raisedTo: 40)"! !

!MaCommitLogRecord methodsFor: 'accessing' stamp: 'cmm 6/11/2007 20:02'!
timestamp: aDateAndTime
	"By storing the timestamp we can restore to a paritcular point-in-time."
	^ byteArray 
		maUint: 40  "DateAndTime fromSeconds: (2 raisedTo: 40)"
		at: self bufferPositionOfTimestamp
		put: aDateAndTime asSeconds! !

!MaCommitLogRecord methodsFor: 'private' stamp: 'cmm 7/15/2009 15:43'!
bufferPositionOfBranchCode
	^ 16! !

!MaCommitLogRecord methodsFor: 'private' stamp: 'cmm 7/15/2009 15:43'!
bufferPositionOfCommitNumber
	"This field is 6 bytes."
	^ 5! !

!MaCommitLogRecord methodsFor: 'private' stamp: 'cmm 7/15/2009 15:43'!
bufferPositionOfTimestamp
	^ 11! !

!MaCommitLogRecord methodsFor: 'printing' stamp: 'cmm 6/19/2007 22:58'!
maPrintAbbreviatedOn: aStream
	super maPrintAbbreviatedOn: aStream.
	self
		maPrintAttributes: #(commitNumber timestamp branchCode)
		on: aStream! !

!MaCommitLogRecord class methodsFor: 'accessing' stamp: 'cmm 7/8/2005 11:05'!
assignedRecordType
	^ 6! !

!MaTerm methodsFor: 'expressions' stamp: 'brp 4/9/2006 11:36'!
& aMaTerm

	^ self connect: aMaTerm operator: #&! !

!MaTerm methodsFor: 'expressions' stamp: 'brp 4/9/2006 11:36'!
| aMaTerm

	^ self connect: aMaTerm operator: #|! !

!MaTerm methodsFor: 'expressions' stamp: 'cmm 4/13/2006 22:48'!
normalize
	"do nothing by default"! !

!MaTerm methodsFor: 'private' stamp: 'cmm 4/13/2006 23:12'!
addTermsTo: aCollection
	self subclassResponsibility! !

!MaTerm methodsFor: 'private' stamp: 'cmm 1/20/2013 17:28'!
connect: aMaTerm operator: aSymbol 
	self subclassResponsibility! !

!MaTerm methodsFor: 'copying' stamp: 'cmm 6/29/2012 10:38'!
copy
	^ self veryDeepCopy! !

!MaTerm methodsFor: 'evaluate' stamp: 'cmm 12/13/2009 21:02'!
evaluate: aTeCellAddress
	self subclassResponsibility! !

!MaTerm methodsFor: 'testing' stamp: 'cmm 5/30/2006 22:00'!
hasDisjunctions
	^ false! !

!MaTerm methodsFor: 'testing' stamp: 'cmm 6/5/2007 15:57'!
isClause
	^ false! !

!MaTerm methodsFor: 'testing' stamp: 'brp 4/9/2006 11:51'!
isExpression

	^ false! !

!MaTerm methodsFor: 'testing' stamp: 'cmm 7/19/2007 22:20'!
validateUsing: aMagmaCollectionReader
	self subclassResponsibility ! !

!MagmaTerm methodsFor: 'testing' stamp: 'cmm 2/18/2008 17:04'!
ascendingSortBlock
	"This is used for sorting 'objects' in MagmaCollectionReaderSegment."
	^ [ : a : b | a key < b key ]! !

!MagmaTerm methodsFor: 'private' stamp: 'cmm 1/20/2013 18:49'!
connect: aMaTerm operator: aSymbol 
	| expression |
	expression _ (MagmaExpression reader: reader)
		operator: aSymbol ;
		addTerm: self ;
		addTerm: aMaTerm ;
		yourself.
	reader expression: expression.
	^ expression! !

!MagmaTerm methodsFor: 'private' stamp: 'cmm 12/9/2014 14:33'!
reader
	^ reader! !

!MagmaTerm methodsFor: 'private' stamp: 'cmm 5/28/2006 22:03'!
reader: aMagmaExpressionReader 

	reader _ aMagmaExpressionReader ! !

!MagmaTerm methodsFor: 'evaluate' stamp: 'cmm 7/16/2006 17:17'!
evaluate: anObject 
	^ (self evaluationCount: anObject) > 0! !

!MagmaTerm methodsFor: 'evaluate' stamp: 'cmm 7/15/2006 14:51'!
evaluationCount: anObject
	self subclassResponsibility ! !

!MagmaTerm methodsFor: 'serialization' stamp: 'cmm 8/5/2011 13:26'!
maTransientVariables
	^ #('reader')! !

!MagmaTerm methodsFor: 'copying' stamp: 'cmm 1/30/2013 16:07'!
veryDeepInner: aDeepCopier 
	"Overridden or else DeepCopier will clone all variables, but we want to share them."
	super veryDeepInner: aDeepCopier! !

!MagmaTerm class methodsFor: 'create' stamp: 'cmm 11/26/2007 09:20'!
reader: aMagmaCollectionReader 
	^ self new
		reader: aMagmaCollectionReader ;
		yourself! !

!MagmaClause methodsFor: 'operators' stamp: 'cmm 8/8/2006 23:09'!
< anObject
	self upTo: anObject! !

!MagmaClause methodsFor: 'operators' stamp: 'cmm 8/8/2006 23:09'!
<= anObject
	self to: anObject! !

!MagmaClause methodsFor: 'operators' stamp: 'cmm 5/30/2006 21:34'!
> anObject
	lowKey _ (self index indexHashForIndexObject: anObject)+1.
	highKey _ self index highestPossibleKey! !

!MagmaClause methodsFor: 'operators' stamp: 'cmm 5/30/2006 21:34'!
>= anObject
	self from: anObject! !

!MagmaClause methodsFor: 'operators' stamp: 'cmm 8/8/2006 23:08'!
at: anObject 
	self 
		from: anObject
		to: anObject! !

!MagmaClause methodsFor: 'operators' stamp: 'cmm 8/8/2006 23:07'!
between: lowObject and: highObject 
	self 
		from: lowObject
		to: highObject! !

!MagmaClause methodsFor: 'operators' stamp: 'cmm 8/8/2006 23:08'!
equals: anObject 
	self 
		from: anObject
		to: anObject! !

!MagmaClause methodsFor: 'operators' stamp: 'gk 5/26/2006 13:28'!
from: anObject

	lowKey _ self index indexHashForIndexObject: anObject.
	highKey _ self index highestPossibleKey ! !

!MagmaClause methodsFor: 'operators' stamp: 'gk 5/26/2006 13:28'!
from: lowObject to: highObject

	lowKey _ self index indexHashForIndexObject: lowObject.
	highKey _ self index indexHashForIndexObject: highObject! !

!MagmaClause methodsFor: 'operators' stamp: 'gk 5/26/2006 13:28'!
from: lowObject upTo: highObject

	lowKey _ self index indexHashForIndexObject: lowObject.
	highKey _ (self index indexHashForIndexObject: highObject) - 1 max: 0.! !

!MagmaClause methodsFor: 'operators' stamp: 'cmm 8/8/2006 23:19'!
in: aCollection
	self includesAnyOf: aCollection! !

!MagmaClause methodsFor: 'operators' stamp: 'cmm 1/20/2013 18:49'!
includesAllOf: aCollection 
	aCollection 
		ifEmpty: 
			[ lowKey _ self index lowestPossibleKey.
			highKey _ self index highestPossibleKey ]
		ifNotEmpty: 
			[ aCollection size = 1 
				ifTrue: [ self at: aCollection anyOne ]
				ifFalse: 
					[ | expression |
					expression _ (MagmaExpression reader: reader)
						operator: #& ;
						yourself.
					aCollection do: [ : each | expression addTerm: (self copy at: each) ].
					self
						ensureFilteredReader ;
						become: expression ] ]! !

!MagmaClause methodsFor: 'operators' stamp: 'cmm 1/20/2013 18:49'!
includesAllPrefixes: aCollection 
	"A special purpose operator for MaKeywordIndexes.  Same as includesAllOf: except allows keywords to be searched by aCollection of specified *prefixes* instead of requiring the client to guess entire keywords exactly."
	aCollection 
		ifEmpty: 
			[ lowKey _ self index lowestPossibleKey.
			highKey _ self index highestPossibleKey ]
		ifNotEmpty: 
			[ aCollection size = 1 
				ifTrue: 
					[ self 
						from: aCollection anyOne
						to: aCollection anyOne maAlphabeticalNext ]
				ifFalse: 
					[ | expression |
					expression _ (MagmaExpression reader: reader)
						operator: #& ;
						yourself.
					aCollection do: 
						[ : eachString | 
						expression addTerm: (self copy 
								from: eachString
								to: eachString maAlphabeticalNext) ].
					self
						ensureFilteredReader ;
						become: expression ] ]! !

!MagmaClause methodsFor: 'operators' stamp: 'cmm 1/20/2013 18:49'!
includesAnyOf: aCollection 
	aCollection 
		ifEmpty: 
			[ "Must always answer false to match Collection behavior."
			self beAlwaysFalse ]
		ifNotEmpty: 
			[ aCollection size = 1 
				ifTrue: [ self at: aCollection anyOne ]
				ifFalse: 
					[ | expression |
					expression _ (MagmaExpression reader: reader)
						operator: #| ;
						yourself.
					aCollection do: [ : each | expression addTerm: (self copy at: each) ].
					self
						ensureFilteredReader ;
						become: expression ] ]! !

!MagmaClause methodsFor: 'operators' stamp: 'cmm 1/20/2013 18:49'!
includesAnyPrefix: aCollection 
	"A special purpose operator for MaKeywordIndexes.  Same as includesAnyOf: except allows keywords to be searched by aCollection of specified *prefixes* instead of requiring the client to guess entire keywords exactly."
	aCollection 
		ifEmpty: [ self beAlwaysFalse ]
		ifNotEmpty: 
			[ aCollection size = 1 
				ifTrue: 
					[ self 
						from: aCollection anyOne
						to: aCollection anyOne maAlphabeticalNext ]
				ifFalse: 
					[ | expression |
					expression _ (MagmaExpression reader: reader)
						operator: #| ;
						yourself.
					aCollection do: 
						[ : eachString | 
						expression addTerm: (self copy 
								from: eachString
								to: eachString maAlphabeticalNext) ].
					self
						ensureFilteredReader ;
						become: expression ] ]! !

!MagmaClause methodsFor: 'operators' stamp: 'gk 5/26/2006 13:28'!
to: anObject

	lowKey _ 0.
	highKey _ self index indexHashForIndexObject: anObject.! !

!MagmaClause methodsFor: 'operators' stamp: 'cmm 6/13/2006 20:55'!
upTo: highObject
	lowKey _ 0.
	highKey _ (self index indexHashForIndexObject: highObject) - 1 max: 0.! !

!MagmaClause methodsFor: 'comparing' stamp: 'cmm 1/28/2013 17:40'!
= anObject 
	^ (anObject isKindOf: self maOriginalClass) 
		ifFalse: [ self equals: anObject ]
		ifTrue: 
			[ self == anObject
			or: [ anObject maOriginalClass = self maOriginalClass 
			and: [ attribute = anObject attribute 
			and: [ lowKey = anObject lowKey 
			and: [ highKey = anObject highKey ] ] ] ] ]! !

!MagmaClause methodsFor: 'comparing' stamp: 'cmm 4/10/2006 22:45'!
hash
	"try to be fast and avoid tons of collisions"
	^ attribute hash bitOr: (lowKey bitOr: highKey)! !

!MagmaClause methodsFor: 'private' stamp: 'cmm 4/13/2006 23:12'!
addTermsTo: aCollection
	aCollection add: self! !

!MagmaClause methodsFor: 'private' stamp: 'cmm 7/5/2008 21:31'!
beAlwaysFalse
	"Force me to evaluate false."
	highKey _ 1.
	lowKey _ 0! !

!MagmaClause methodsFor: 'private' stamp: 'cmm 3/25/2008 22:35'!
connect: aMaTerm operator: aSymbol 
	| answer |
	answer _ super 
		connect: aMaTerm
		operator: aSymbol.
	self ensureFilteredReader.
	^ answer! !

!MagmaClause methodsFor: 'private' stamp: 'cmm 3/25/2008 22:35'!
ensureFilteredReader
	reader isFiltered ifFalse: 
		[ reader removeListener.
		reader become: reader asFilteredReader.
		reader setUpListener ]! !

!MagmaClause methodsFor: 'private' stamp: 'cmm 7/5/2008 21:31'!
isAlwaysFalse
	"Needed to guarantee a clause will report false.  See #beFalse."
	^ lowKey > highKey! !

!MagmaClause methodsFor: 'converting' stamp: 'cmm 6/3/2006 14:46'!
asTrunkClause
	^ MaQueryTrunkClause new
		attribute: attribute ;
		lowKey: lowKey ;
		highKey: highKey ;
		yourself! !

!MagmaClause methodsFor: 'accessing' stamp: 'cmm 4/7/2006 16:39'!
attribute
	^ attribute! !

!MagmaClause methodsFor: 'accessing' stamp: 'cmm 4/7/2006 16:38'!
attribute: aByteSymbol 
	attribute _ aByteSymbol! !

!MagmaClause methodsFor: 'accessing' stamp: 'brp 4/6/2006 12:10'!
highKey

	^ highKey
! !

!MagmaClause methodsFor: 'accessing' stamp: 'cmm 4/7/2006 16:15'!
index
	^ reader indexNamed: attribute ! !

!MagmaClause methodsFor: 'accessing' stamp: 'brp 4/6/2006 12:09'!
lowKey

	^ lowKey
! !

!MagmaClause methodsFor: 'evaluating' stamp: 'cmm 12/8/2014 14:59'!
evaluationCount: anObject 
	^ (self index indexHashesFor: anObject) count: 
		[ : each | 
		each 
			between: lowKey
			and: highKey ]! !

!MagmaClause methodsFor: 'evaluating' stamp: 'cmm 12/31/2014 14:41'!
qualifyingHashesOf: anObject 
	| answer |
	"Initial size of 1 to support scaling of Tephra cubes with many dimensions."
	answer _ OrderedCollection new: 1.
	(self index indexHashesFor: anObject) do: 
		[ : each | 
		(each 
			between: lowKey
			and: highKey) ifTrue: [ answer add: attribute -> each ] ].
	^ answer! !

!MagmaClause methodsFor: 'initialize-release' stamp: 'brp 4/6/2006 11:22'!
highKey: anInteger

	highKey _ anInteger! !

!MagmaClause methodsFor: 'initialize-release' stamp: 'brp 4/6/2006 11:23'!
lowKey: anInteger

	lowKey _ anInteger! !

!MagmaClause methodsFor: 'testing' stamp: 'cmm 6/5/2007 15:57'!
isClause
	^ true! !

!MagmaClause methodsFor: 'testing' stamp: 'cmm 7/19/2007 22:21'!
validateUsing: aMagmaCollectionReader 
	(aMagmaCollectionReader collection hasIndexNamed: attribute) ifFalse: 
		[ MagmaUserError signal: attribute , ' is not an indexed attribute of this collection.' ]! !

!MaQueryTrunkClause methodsFor: 'accessing' stamp: 'cmm 6/3/2006 14:34'!
lastKnownSize
	^ lastKnownSize! !

!MaQueryTrunkClause methodsFor: 'accessing' stamp: 'cmm 6/3/2006 16:56'!
lastKnownSize: anInteger
	lastKnownSize _ anInteger! !

!MagmaExpression methodsFor: 'comparing' stamp: 'cmm 4/10/2006 22:10'!
= aMaExpression
	aMaExpression maOriginalClass = self maOriginalClass ifFalse: [ ^ false ].
	^ operator = aMaExpression operator
	and: [ self terms = aMaExpression terms ]! !

!MagmaExpression methodsFor: 'comparing' stamp: 'cmm 3/7/2014 10:49'!
hash
	^operator hash bitXor: self terms hash! !

!MagmaExpression methodsFor: 'accessing' stamp: 'cmm 1/20/2013 18:34'!
addTerm: aMaTerm 
	terms
		add: aMaTerm ;
		changed.
	^ aMaTerm! !

!MagmaExpression methodsFor: 'accessing' stamp: 'brp 4/6/2006 12:07'!
operator

	^ operator
! !

!MagmaExpression methodsFor: 'accessing' stamp: 'brp 4/9/2006 11:22'!
operator: aSymbol

	operator _ aSymbol
! !

!MagmaExpression methodsFor: 'accessing' stamp: 'brp 4/9/2006 11:58'!
terms

	^ terms ifNil: [ terms _ OrderedCollection new ]! !

!MagmaExpression methodsFor: 'private' stamp: 'cmm 4/13/2006 23:12'!
addTermsTo: aCollection
	aCollection addAll: self terms! !

!MagmaExpression methodsFor: 'private' stamp: 'cmm 10/8/2006 20:51'!
normalizeOverlappingValues
	"We don't do this because this is how we do keyword searches:
		myCollection where: [ :rdr | (rdr read: #keywords at: 'term1') | (rdr read: #keywords at: 'term2')]"! !

!MagmaExpression methodsFor: 'private' stamp: 'cmm 1/21/2013 21:21'!
normalizePrecedence
	"Collate conditions with like operators."
	self terms do:
		[ : t | t normalize ].
	((self terms select:
		[ : t | t isExpression ]) allSatisfy:
		[ : t | t operator = self operator ]) ifTrue:
		[ | all |
		all _ OrderedCollection new.
		self terms do:
			[ : t | t addTermsTo: all ].
		terms _ all ].
	terms _ self terms asArray! !

!MagmaExpression methodsFor: 'private' stamp: 'cmm 3/8/2013 18:11'!
reader: aMagmaCollectionReader 
	reader _ aMagmaCollectionReader.
	self terms do: [ : each | each reader: aMagmaCollectionReader ]! !

!MagmaExpression methodsFor: 'enumerating' stamp: 'cmm 1/21/2013 20:58'!
do: aBlock
	"depth-first traversal"
self maMarked: 'delete'.
	self terms do: [ :t | t do: aBlock ].
	aBlock value: self


! !

!MagmaExpression methodsFor: 'evaluating' stamp: 'cmm 7/16/2006 11:25'!
evaluationCount: anObject 
	"Answer how many hashes cause anObject to qualify for the reiver expression."
	^ self isConjunction 
		ifTrue: 
			[ self terms 
				inject: self terms size
				into: [ : min : eachTerm | min min: (eachTerm evaluationCount: anObject) ] ]
		ifFalse: 
			[ self terms 
				inject: 0
				into: [ : sum : eachTerm | sum + (eachTerm evaluationCount: anObject) ] ]! !

!MagmaExpression methodsFor: 'evaluating' stamp: 'cmm 2/18/2008 14:31'!
qualifyingHashesOf: anObject 
	"Answer an OrderedCollection of Associations detailing which indexes and hashes cause anObject to qualify for the receiver expression.  An empty OC means anObject does not qualify."
	| answer |
	answer _ OrderedCollection new.
	self isConjunction 
		ifTrue: 
			[ | subQualifyingHashes |
			subQualifyingHashes _ OrderedCollection new.
			self terms do: 
				[ : each | 
				subQualifyingHashes _ each qualifyingHashesOf: anObject.
				subQualifyingHashes ifEmpty: [ ^ OrderedCollection new ] ].
			answer addAll: subQualifyingHashes ]
		ifFalse: 
			[ | subQualifyingHashes |
			subQualifyingHashes _ OrderedCollection new.
			self terms do: 
				[ : each | 
				subQualifyingHashes _ each qualifyingHashesOf: anObject.
				answer addAll: subQualifyingHashes ] ].
	^ answer! !

!MagmaExpression methodsFor: 'testing' stamp: 'cmm 4/10/2006 21:53'!
isConjunction
	^ operator = #&! !

!MagmaExpression methodsFor: 'testing' stamp: 'cmm 4/10/2006 21:55'!
isDisjunction
	^ operator = #|! !

!MagmaExpression methodsFor: 'testing' stamp: 'brp 4/9/2006 11:52'!
isExpression

	^ true! !

!MagmaExpression methodsFor: 'testing' stamp: 'cmm 7/19/2007 22:22'!
validateUsing: aMagmaCollectionReader 
	terms do: [ : each | each validateUsing: aMagmaCollectionReader ]! !

!MagmaExpression methodsFor: 'expressions' stamp: 'cmm 4/13/2006 23:10'!
normalize
	super normalize.
	self 
		normalizePrecedence ;
		normalizeOverlappingValues



! !

!MagmaExpression methodsFor: 'copying' stamp: 'cmm 1/30/2013 16:08'!
veryDeepInner: aDeepCopier 
	super veryDeepInner: aDeepCopier.
	operator _ operator veryDeepCopyWith: aDeepCopier.
	terms _ terms veryDeepCopyWith: aDeepCopier! !

!MaTransactionLogEntry methodsFor: 'accessing' stamp: 'cmm 10/15/2004 16:58'!
connection

	^ result connection
! !

!MaTransactionLogEntry methodsFor: 'accessing' stamp: 'cmm 5/14/2005 17:46'!
id
	^ id! !

!MaTransactionLogEntry methodsFor: 'accessing' stamp: 'cmm 5/14/2005 17:46'!
id: anInteger
	id _ anInteger! !

!MaTransactionLogEntry methodsFor: 'accessing'!
result

	^result! !

!MaTransactionLogEntry methodsFor: 'accessing' stamp: 'cmm 8/15/2008 15:04'!
sessionId
	^ result ifNotNil: [ result sessionId ]! !

!MaTransactionLogEntry methodsFor: 'accessing' stamp: 'cmm 10/15/2004 16:58'!
startTime

	^ result startTime
! !

!MaTransactionLogEntry methodsFor: 'initialize-release' stamp: 'cmm 3/25/2013 20:43'!
initialize
	"of MaTransactionLogEntries or MaCommitLogEntries that challenge me."
	super initialize.
	self
		initializeResult ;
		initializeChallengers ;
		initializeServerNotifications! !

!MaTransactionLogEntry methodsFor: 'initialize-release' stamp: 'cmm 3/25/2013 21:09'!
initializeChallengers
	challengingEntries _ OrderedCollection new.
	self connection ifNotNil: [ : conn | conn resetChallengingBytes ]! !

!MaTransactionLogEntry methodsFor: 'initialize-release'!
initializeResult

	result _ MaRefreshViewResult new
! !

!MaTransactionLogEntry methodsFor: 'initialize-release' stamp: 'cmm 5/19/2004 00:20'!
initializeServerNotifications

	serverNotifications _ Dictionary new! !

!MaTransactionLogEntry methodsFor: 'testing'!
isCommitEntry

	^false
! !

!MaTransactionLogEntry methodsFor: 'testing' stamp: 'cmm 3/3/2002 19:00'!
isForSameSessionAs: aMaTransactionLogEntry

	^self connection == aMaTransactionLogEntry connection
! !

!MaTransactionLogEntry methodsFor: 'testing' stamp: 'cmm 10/16/2006 00:29'!
isSystem
	"Answer whether I am for the servers session."
	^ result isSystem! !

!MaTransactionLogEntry methodsFor: 'printing' stamp: 'cmm 11/24/2008 17:22'!
maPrintAbbreviatedOn: aStream 
	aStream
		maPrint: result userId ;
		maPrint: '(' ;
		maPrint: self sessionId ;
		maPrint: ') '! !

!MaTransactionLogEntry methodsFor: 'recovery' stamp: 'cmm 12/30/2008 21:09'!
postTrimmedCopy
	"We do this for performance.  We no longer need these fields, and we're about to serialize the receiver."
	challengingEntries _ nil.
	result _ result trimmedCopy! !

!MaTransactionLogEntry methodsFor: 'recovery' stamp: 'cmm 7/8/2005 16:10'!
trimmedCopy
	"Make a copy without things needed merely to applyToCache: so that serialization to the commitPackages recovery file will be quicker."

	^ self copy postTrimmedCopy! !

!MaTransactionLogEntry class methodsFor: 'creation' stamp: 'cmm 5/14/2005 17:48'!
id: anInteger connection: aMagmaClientConnection

	^ self new 
		id: anInteger ;
		connection: aMagmaClientConnection ;
		yourself! !

!MaCommitLogEntry methodsFor: 'accessing' stamp: 'cmm 10/14/2008 18:16'!
commitNumber
	^ result commitNumber! !

!MaCommitLogEntry methodsFor: 'accessing' stamp: 'cmm 5/9/2005 21:24'!
commitPackage
	^ commitPackage! !

!MaCommitLogEntry methodsFor: 'private'!
committed

	^committed! !

!MaCommitLogEntry methodsFor: 'initializing' stamp: 'cmm 5/20/2004 21:36'!
initialize

	super initialize.
	committed _ Dictionary new.
	didCommitSpecialOid _ false! !

!MaCommitLogEntry methodsFor: 'initializing'!
initializeResult

	result _ MaCommitResult new
! !

!MagmaIndexDescription methodsFor: 'accessing' stamp: 'cmm 5/28/2007 10:22'!
attribute
	^attribute! !

!MagmaIndexDescription methodsFor: 'accessing' stamp: 'cmm 5/28/2007 10:22'!
attribute: aSymbol
	attribute _ aSymbol! !

!MagmaIndexDescription methodsFor: 'accessing' stamp: 'cmm 5/28/2007 10:22'!
keySize
	^keySize! !

!MagmaIndexDescription methodsFor: 'accessing' stamp: 'cmm 5/28/2007 10:22'!
keySize: anInteger
	keySize _ anInteger! !

!MagmaIndexDescription methodsFor: 'accessing' stamp: 'cmm 5/28/2007 10:22'!
recordSize
	^recordSize! !

!MagmaIndexDescription methodsFor: 'accessing' stamp: 'cmm 5/28/2007 10:22'!
recordSize: anInteger
	recordSize _ anInteger! !

!MagmaIndexDescription class methodsFor: 'create' stamp: 'cmm 8/14/2007 23:02'!
attribute: aSymbol keySize: keySize recordSize: recordSize 
	^ self new
		attribute: aSymbol ;
		keySize: keySize ;
		recordSize: recordSize ;
		yourself! !

!MagmaLargeCollectionChanges methodsFor: 'override' stamp: 'cmm 3/18/2005 13:29'!
add: anObject at: indexOrKey

	self subclassResponsibility! !

!MagmaLargeCollectionChanges methodsFor: 'override' stamp: 'cmm 3/18/2005 14:00'!
addNewAdditionsTo: aMaCommitPackage using: aMagmaSession

	self subclassResponsibility! !

!MagmaLargeCollectionChanges methodsFor: 'accessing' stamp: 'cmm 6/22/2009 15:09'!
added
	"On the client, answers an IdentityDictionary whose key is the object to be added, value is a collection of its calculated hashIndex values.  On the server, the key is the oid of the object, not the object itself."
	^ changes
		at: #added
		ifAbsentPut: [ MaIdentityDictionary new ]! !

!MagmaLargeCollectionChanges methodsFor: 'accessing' stamp: 'cmm 6/22/2009 14:38'!
added: anIdentityDictionary 
	changes 
		at: #added
		put: anIdentityDictionary! !

!MagmaLargeCollectionChanges methodsFor: 'accessing' stamp: 'cmm 3/16/2005 14:54'!
additionsDo: twoArgBlock
	"The first argument is each object that has been added during the current
	transaction, the second is a collection of hash-index values for each index."

	self hasAdditions ifFalse: [ ^self ].
	self added keysAndValuesDo: twoArgBlock
! !

!MagmaLargeCollectionChanges methodsFor: 'accessing' stamp: 'cmm 3/16/2005 14:54'!
changes: aDictionary

	changes _ aDictionary
! !

!MagmaLargeCollectionChanges methodsFor: 'accessing' stamp: 'cmm 3/16/2005 14:54'!
collection

	^ collection! !

!MagmaLargeCollectionChanges methodsFor: 'accessing' stamp: 'cmm 3/16/2005 14:55'!
collection: aMagmaLargeCollection

	collection _ aMagmaLargeCollection! !

!MagmaLargeCollectionChanges methodsFor: 'accessing' stamp: 'cmm 3/16/2005 14:55'!
collectionOid

	^collectionOid
! !

!MagmaLargeCollectionChanges methodsFor: 'accessing' stamp: 'cmm 3/16/2005 14:55'!
collectionOid: anInteger

	collectionOid _ anInteger
! !

!MagmaLargeCollectionChanges methodsFor: 'accessing' stamp: 'cmm 3/16/2005 14:56'!
hasAdditions

	^(changes includesKey: #added) and: [ self added notEmpty ]
! !

!MagmaLargeCollectionChanges methodsFor: 'accessing' stamp: 'cmm 7/16/2010 17:11'!
objectEqualTo: anObject 
	"Answer the object equal to anObject, or nil if none."
	^ self hasAdditions ifTrue:
		[ (self added
			associationAt: anObject
			ifAbsent: [ nil ]) ifNotNilDo:
			[ : assoc | assoc key ] ]! !

!MagmaLargeCollectionChanges methodsFor: 'accessing' stamp: 'brp 4/6/2005 21:18'!
removedDo: twoArgBlock
	"The base class does not support removals, so do nothing."
! !

!MagmaLargeCollectionChanges methodsFor: 'accessing' stamp: 'cmm 8/6/2006 22:07'!
session
	^ collection session! !

!MagmaLargeCollectionChanges methodsFor: 'initialize-release' stamp: 'cmm 3/16/2005 14:54'!
beNewCollection

	isNewCollection _ true
! !

!MagmaLargeCollectionChanges methodsFor: 'initialize-release' stamp: 'cmm 3/17/2005 21:48'!
initialize
	super initialize.
	self reset! !

!MagmaLargeCollectionChanges methodsFor: 'initialize-release' stamp: 'cmm 8/5/2011 13:27'!
maTransientVariables 
	^ #( 'collection' )! !

!MagmaLargeCollectionChanges methodsFor: 'initialize-release' stamp: 'cmm 3/16/2005 15:11'!
reset

	changes _ Dictionary new.
	isNewCollection _ false! !

!MagmaLargeCollectionChanges methodsFor: 'copying' stamp: 'cmm 3/28/2005 22:30'!
copyForSerialization

	| newChanges |

	newChanges _ changes species new.
	changes keysAndValuesDo:
		[ :eachKey :eachValue |
		newChanges
			at: eachKey
			put: eachValue copy ].
	^self copy changes: newChanges
! !

!MagmaLargeCollectionChanges methodsFor: 'testing' stamp: 'cmm 3/17/2005 23:10'!
hasAddedIndexes

	^ false! !

!MagmaLargeCollectionChanges methodsFor: 'testing' stamp: 'cmm 3/17/2005 22:01'!
hasChanges

	^ self isNewCollection or: [ self hasAdditions ]! !

!MagmaLargeCollectionChanges methodsFor: 'testing' stamp: 'brp 4/6/2005 20:50'!
hasRemoved

	^ false! !

!MagmaLargeCollectionChanges methodsFor: 'testing' stamp: 'cmm 3/18/2005 11:02'!
hasRemovedIndexes

	^ false! !

!MagmaLargeCollectionChanges methodsFor: 'testing' stamp: 'cmm 7/16/2010 15:43'!
includesObject: anObject 
	^ self hasAdditions and: [ self added includesKey: anObject ]! !

!MagmaLargeCollectionChanges methodsFor: 'testing' stamp: 'cmm 3/20/2005 20:57'!
isForMagmaArray
	^ false! !

!MagmaLargeCollectionChanges methodsFor: 'testing' stamp: 'cmm 3/16/2005 15:10'!
isNewCollection

	^isNewCollection
! !

!MagmaLargeCollectionChanges methodsFor: 'testing' stamp: 'cmm 11/7/2006 23:52'!
isNotPersistent
	"see subclass comment"
	^ false! !

!MagmaLargeCollectionChanges methodsFor: 'testing' stamp: 'cmm 9/24/2009 10:53'!
validate
	self subclassResponsibility! !

!MagmaLargeCollectionChanges methodsFor: 'reading' stamp: 'cmm 7/30/2006 13:55'!
localSegment
	"Populate a segment from the uncommitted changes."
	| matching |
	matching _ OrderedCollection new.
	self additionsDo: [ : object : hashes | matching add: object ].
	^ MagmaCollectionSegment new
		lastKnownSize: matching size ;
		objects: matching ;
		startIndex: 1 ;
		yourself! !

!MagmaLargeCollectionChanges methodsFor: 'serializing' stamp: 'cmm 3/18/2005 13:42'!
serializeAddedUsing: aMaObjectSerializer

	self subclassResponsibility! !

!MagmaLargeCollectionChanges methodsFor: 'serializing' stamp: 'cmm 3/17/2005 22:04'!
serializeUsing: aMaObjectSerializer

	self serializeAddedUsing: aMaObjectSerializer! !

!MagmaLargeCollectionChanges class methodsFor: 'create' stamp: 'cmm 3/17/2005 21:42'!
collection: aMagmaCollection

	^self new collection: aMagmaCollection
! !

!MagmaArrayChanges methodsFor: 'overriding' stamp: 'cmm 8/31/2010 23:16'!
add: anObject at: indexInteger 
	maxIndex _ maxIndex max: indexInteger.
	self added
		at: indexInteger
		put: anObject! !

!MagmaArrayChanges methodsFor: 'overriding' stamp: 'cmm 3/18/2005 14:02'!
addNewAdditionsTo: aMaCommitPackage using: aMagmaSession

	self additionsDo:
		[ : eachIndex : eachObject |
		(aMagmaSession isPersistent: eachObject) ifFalse: [ aMaCommitPackage addObject: eachObject ] ]! !

!MagmaArrayChanges methodsFor: 'overriding' stamp: 'cmm 3/24/2005 17:36'!
at: anIndex ifAbsent: aBlock

	self hasAdditions ifFalse: [ ^ aBlock value ].
	^ self added
		at: anIndex
		ifAbsent: aBlock! !

!MagmaArrayChanges methodsFor: 'overriding' stamp: 'cmm 7/30/2006 14:10'!
localSegment
	"Populate a segment from the uncommitted changes."
	| matching |
	matching _ OrderedCollection new.
	self additionsDo: [ : index : object | matching add: object ].
	^ MagmaCollectionSegment new
		lastKnownSize: matching size ;
		objects: matching ;
		startIndex: 1 ;
		yourself! !

!MagmaArrayChanges methodsFor: 'overriding' stamp: 'cmm 8/31/2010 23:19'!
maxIndex
	^ maxIndex! !

!MagmaArrayChanges methodsFor: 'overriding' stamp: 'cmm 8/31/2010 23:17'!
reset
	super reset.
	maxIndex _ 0! !

!MagmaArrayChanges methodsFor: 'testing' stamp: 'cmm 3/20/2005 20:57'!
isForMagmaArray
	^ true! !

!MagmaArrayChanges methodsFor: 'testing' stamp: 'cmm 9/24/2009 10:53'!
validate
	self additionsDo: 
		[ : index : eachObject | 
		index > 0 ifFalse: 
			[ MagmaUserError signal: 'Cannot add to a MagmaArray at position ' , index asString ] ]! !

!MagmaArrayChanges methodsFor: 'serializing' stamp: 'cmm 3/18/2005 13:47'!
serializeAddedUsing: aMaObjectSerializer

	| added |
	self hasAdditions ifFalse: [ ^self ].
	(added _ self added) keysAndValuesDo: 
		[ : eachIndex : eachObject |
		added
			at: eachIndex
			put: (aMaObjectSerializer oidFor: eachObject) ]! !

!MagmaCollectionChanges methodsFor: 'overriding' stamp: 'cmm 12/5/2014 16:55'!
add: anObject alsoAt: hashIndexValues 
	| removed |
	((removed _ self removed) includesKey: anObject)
		ifTrue: [ removed removeKey: anObject ]
		ifFalse:
			[ self added
				at: anObject
				ifPresent:
					[ : existingHashValues | existingHashValues
						with: hashIndexValues
						do: [ : eachExisting : eachAdditional | eachExisting addAll: eachAdditional ] ]
				ifAbsentPut: [ hashIndexValues ] ]! !

!MagmaCollectionChanges methodsFor: 'overriding' stamp: 'cmm 3/16/2005 11:32'!
add: anObject at: hashIndexValuesOrArrayIndex

	| removed |

	((removed _ self removed) includesKey: anObject)
		ifTrue:
			[ removed removeKey: anObject ]
		ifFalse:
			[ self added
				at: anObject
				put: hashIndexValuesOrArrayIndex ]
! !

!MagmaCollectionChanges methodsFor: 'overriding' stamp: 'cmm 3/18/2005 14:01'!
addNewAdditionsTo: aMaCommitPackage using: aMagmaSession

	self additionsDo:
		[ :eachObject :eachHashIndexValues |
		(aMagmaSession isPersistent: eachObject) ifFalse: [ aMaCommitPackage addObject: eachObject ] ]! !

!MagmaCollectionChanges methodsFor: 'added indexes' stamp: 'cmm 12/18/2014 17:14'!
add: oid at: indexHashValues toIndexForAttribute: aSymbol 
	(self newIndexValues 
		at: aSymbol
		ifAbsentPut: [ OrderedCollection new: 1 ]) add: 
			(Association 
				key: indexHashValues
				value: oid)! !

!MagmaCollectionChanges methodsFor: 'added indexes' stamp: 'cmm 12/20/2010 14:56'!
addIndex: aMagmaIndexDescription 
	self addedIndexes add: aMagmaIndexDescription.
	self appendIndexValuesFor: (collection indexNamed: aMagmaIndexDescription attribute)! !

!MagmaCollectionChanges methodsFor: 'added indexes'!
addedIndexes

	^changes
		at: #addedIndexes
		ifAbsentPut: [ OrderedCollection new ]
! !

!MagmaCollectionChanges methodsFor: 'added indexes' stamp: 'cmm 4/21/2002 23:10'!
newIndexValues
	"A dictionary of Dictionarys, (attribute Symbol -> (key->oid)...) used to
	populate all new indexes being built in this transaction."

	^changes
		at: #newIndexValues
		ifAbsentPut: [ Dictionary new ]
! !

!MagmaCollectionChanges methodsFor: 'added indexes'!
newIndexValuesDo: aBlock

	self hasNewIndexValues ifFalse: [ ^self ].
	self newIndexValues do: aBlock
! !

!MagmaCollectionChanges methodsFor: 'added indexes' stamp: 'cmm 6/4/2007 10:16'!
resetNewIndexValues
	^ changes removeKey: #newIndexValues! !

!MagmaCollectionChanges methodsFor: 'private' stamp: 'cmm 12/9/2002 20:21'!
appendIndexValuesFor: aMaIndexDefinition
	"An index has been added.  Since the server processes all added and removed indexes prior to all added and removed objects, we need to make sure additions and removals have hash-index values for all indexes."

	self additionsDo:
		[ :eachObject :eachCollection |
		eachCollection add: (aMaIndexDefinition indexHashesFor: eachObject) ].
	self removedDo:
		[ :eachObject :eachCollection |
		eachCollection add: (aMaIndexDefinition indexHashesFor: eachObject) ]! !

!MagmaCollectionChanges methodsFor: 'private' stamp: 'cmm 11/7/2006 23:58'!
beNotPersistent
	"see isNotPersistent for explanation."
	^ changes 
		at: #notPersistent
		put: nil! !

!MagmaCollectionChanges methodsFor: 'private' stamp: 'cmm 11/7/2006 23:51'!
isNotPersistent
	"private - Not mutually exclusive with #isNewCollection, isPersistent indicates I am referenced by the persistent model.  I can gain a 'permanent oid' and still not be referenced by the persistent model when I am a result set of a query that required one of the 'luxury' features like distinctness or sorting by a different attribute.  See MagmaSession>>#load:from:makeDistinct:."
	^ changes includesKey: #notPersistent! !

!MagmaCollectionChanges methodsFor: 'private' stamp: 'cmm 2/18/2008 17:28'!
refreshSegment: aMagmaCollectionReaderSegment where: aMaTerm 
	aMagmaCollectionReaderSegment initializeObjects.
	self additionsDo: 
		[ : eachObject : eachHashes | 
		"To be consistent with persistent readers, for each condition which satisfies the expression, the object is included."
		(aMaTerm qualifyingHashesOf: eachObject) do: 
			[ : eachAttributeAndHash | 
			aMagmaCollectionReaderSegment addObject: eachAttributeAndHash value -> eachObject ] ].
	aMagmaCollectionReaderSegment
		startIndex: 1 ;
		endIndex: aMagmaCollectionReaderSegment objects size ;
		lastKnownSize: aMagmaCollectionReaderSegment objects size! !

!MagmaCollectionChanges methodsFor: 'private' stamp: 'cmm 12/7/2004 13:47'!
removeIndexValuesFor: aMaIndexDefinition
	"An index is being removed.  We need to make sure we remove
	the hash index values to the objects that have already been added or
	removed from the receiver."

	| position |

	position _ collection indexes indexOf: aMaIndexDefinition.
	self additionsDo: [ :eachObject :eachCollection | eachCollection removeAt: position ].
	self removedDo: [ :eachObject :eachCollection | eachCollection removeAt: position ]
! !

!MagmaCollectionChanges methodsFor: 'changed keys'!
changedKeySpecificationsDo: oneArgBlock

	self hasChangedKeys ifFalse: [ ^self ].
	self changedKeys do: oneArgBlock
! !

!MagmaCollectionChanges methodsFor: 'changed keys' stamp: 'cmm 12/18/2014 17:14'!
changedKeys
	"answer an OrderedCollection of MaChangedKeySpecification's."

	^changes
		at: #changedKeys
		ifAbsentPut: [ OrderedCollection new: 1 ]! !

!MagmaCollectionChanges methodsFor: 'accessing' stamp: 'cmm 10/26/2010 19:36'!
deltaSize
	^ self added size - self removed size! !

!MagmaCollectionChanges methodsFor: 'accessing'!
occurrencesOf: anObject

	| numberAdded numberRemoved |

	numberAdded _ 0.
	self additionsDo:
		[ :eachObject :eachHashIndexValues |
		eachObject = anObject ifTrue: [ numberAdded _ numberAdded + 1 ] ].
	numberRemoved _ 0.
	self removedDo:
		[ :eachObject :eachHashIndexValues |
		eachObject = anObject ifTrue: [ numberRemoved _ numberRemoved + 1 ] ].
	^numberAdded - numberRemoved
! !

!MagmaCollectionChanges methodsFor: 'testing'!
hasAddedIndexes

	^(changes includesKey: #addedIndexes) and: [ self addedIndexes notEmpty ]
! !

!MagmaCollectionChanges methodsFor: 'testing'!
hasChangedKeys

	^(changes includesKey: #changedKeys) and: [ self changedKeys notEmpty ]
! !

!MagmaCollectionChanges methodsFor: 'testing' stamp: 'cmm 7/7/2008 22:11'!
hasChanges
	^ super hasChanges
		or: [ self hasChangedKeys
		or: [ self hasLockSpecified
		or: [ self hasAddedIndexes
		or: [ self hasNewIndexValues
		or: [ self hasRemoved
		or: [ self hasRemovedIndexes ] ] ] ] ] ]! !

!MagmaCollectionChanges methodsFor: 'testing' stamp: 'cmm 8/21/2002 16:44'!
hasLockSpecified

	^changes includesKey: #lock! !

!MagmaCollectionChanges methodsFor: 'testing' stamp: 'cmm 8/22/2002 14:00'!
hasNewIndexValues

	^changes includesKey: #newIndexValues! !

!MagmaCollectionChanges methodsFor: 'testing'!
hasRemoved

	^(changes includesKey: #removed) and: [ self removed notEmpty ]
! !

!MagmaCollectionChanges methodsFor: 'testing'!
hasRemovedIndexes

	^(changes includesKey: #removedIndexes) and: [ self removedIndexes notEmpty ]
! !

!MagmaCollectionChanges methodsFor: 'testing' stamp: 'cmm 10/27/2002 21:34'!
isLocked

	^(changes includesKey: #lock) and: [ changes at: #lock ]! !

!MagmaCollectionChanges methodsFor: 'testing' stamp: 'cmm 9/24/2009 13:04'!
validate
	self additionsDo: 
		[ : eachObject : indexHashes | 
		(indexHashes anySatisfy: [ : eachArr | eachArr anySatisfy: [ : eachHash | eachHash < 0 ] ]) ifTrue: 
			[ MagmaUserError signal: indexHashes asString , ' is not a valid index hash (may not be negative).' ] ]! !

!MagmaCollectionChanges methodsFor: 'removed' stamp: 'cmm 7/30/2006 21:51'!
hasRemoved: anObject
	^ self hasRemoved and: [self removed includesKey: anObject]! !

!MagmaCollectionChanges methodsFor: 'removed'!
remove: anObject at: hashIndexesCollection

	| added |

	((added _ self added) includesKey: anObject)
		ifTrue:
			[ added removeKey: anObject ]
		ifFalse:
			[ self removed
				at: anObject
				put: hashIndexesCollection ]
! !

!MagmaCollectionChanges methodsFor: 'removed' stamp: 'cmm 3/22/2010 18:24'!
removed
	"Answer the dictionary of objects that have been removed in the local client, but not yet committed to the repository."
	^ changes
		at: #removed
		ifAbsentPut: [ MaIdentityDictionary new ]! !

!MagmaCollectionChanges methodsFor: 'removed'!
removedDo: twoArgBlock
	"The first argument is each object that has been added during the current
	transaction, the second is a collection of hash-index values for each index."

	self hasRemoved ifFalse: [ ^self ].
	self removed keysAndValuesDo: twoArgBlock
! !

!MagmaCollectionChanges methodsFor: 'removed' stamp: 'cmm 8/6/2006 22:07'!
removedOids
	^ self hasRemoved 
		ifTrue: [ self removed keys collect: [ : each | self session oidFor: each ] ]
		ifFalse: 
			[ #() ]! !

!MagmaCollectionChanges methodsFor: 'building' stamp: 'cmm 12/7/2002 12:18'!
move: anObject from: oldHashValues to: newHashValues forIndexedAttribute: aSymbol

	self changedKeys
		add: (
			MaChangedKeySpecification
				object: anObject
				attribute: aSymbol
				oldHashValues: oldHashValues
				newHashValues: newHashValues)! !

!MagmaCollectionChanges methodsFor: 'building' stamp: 'cmm 8/22/2002 12:16'!
setLocked: aBoolean

	self hasLockSpecified
		ifTrue:
			[ self isLocked ~= aBoolean
				ifTrue:
					[ changes removeKey: #lock ] ]
		ifFalse:
			[ changes
				at: #lock
				put: aBoolean ]! !

!MagmaCollectionChanges methodsFor: 'removed indexes' stamp: 'cmm 6/20/2009 10:48'!
removeIndexNamed: attributeSymbol 
	self removeIndexValuesFor: (collection indexNamed: attributeSymbol).
	self hasAddedIndexes 
		ifTrue: 
			[ self addedIndexes 
				maDetect: [ : each | each attribute = attributeSymbol ]
				ifFound: [ : foundIndex | self addedIndexes remove: foundIndex ]
				ifNone: [ self removedIndexes add: attributeSymbol ] ]
		ifFalse: [ self removedIndexes add: attributeSymbol ]! !

!MagmaCollectionChanges methodsFor: 'removed indexes'!
removedIndexes

	^changes
		at: #removedIndexes
		ifAbsentPut: [ OrderedCollection new ]
! !

!MagmaCollectionChanges methodsFor: 'removed indexes'!
removedIndexesDo: oneArgBlock

	self hasRemovedIndexes ifFalse: [ ^self ].
	self removedIndexes do: oneArgBlock
! !

!MagmaCollectionChanges methodsFor: 'serializing' stamp: 'cmm 6/22/2009 14:47'!
serializeAddedUsing: aMaObjectSerializer 
	| added newAdded |
	self hasAdditions ifFalse: [ ^ self ].
	added _ self added.
	newAdded _ added maOriginalClass new.
	added keysAndValuesDo: 
		[ : eachObject : eachHashIndexValues | 
		newAdded 
			at: (aMaObjectSerializer oidFor: eachObject)
			put: eachHashIndexValues ].
	self added: newAdded! !

!MagmaCollectionChanges methodsFor: 'serializing' stamp: 'cmm 11/19/2002 22:39'!
serializeChangedIndexValuesUsing: aMaObjectSerializer

	self changedKeySpecificationsDo: [ :eachSpec | eachSpec serializeUsing: aMaObjectSerializer ]! !

!MagmaCollectionChanges methodsFor: 'serializing'!
serializeRemovedUsing: aMaObjectSerializer

	| removed |

	self hasRemoved ifFalse: [ ^self ].
	(removed _ self removed) copy keysAndValuesDo:
		[ :eachObject :eachHashIndexValues |
		removed
			at: (aMaObjectSerializer oidFor: eachObject)
			put: eachHashIndexValues;
			removeKey: eachObject ]
! !

!MagmaCollectionChanges methodsFor: 'serializing' stamp: 'cmm 6/1/2007 12:36'!
serializeUsing: aMaObjectSerializer 
	super serializeUsing: aMaObjectSerializer.
	self
		serializeRemovedUsing: aMaObjectSerializer ;
		serializeChangedIndexValuesUsing: aMaObjectSerializer! !

!MagmaSetChanges methodsFor: 'accessing' stamp: 'brp 5/30/2008 15:49'!
added
	"On the client, answers an Dictionary whose key is the object to be added, value is a collection of its calculated hashIndex values.  On the server, the key is the oid of the object, not the object itself."

	^ changes
		at: #added
		ifAbsentPut: [ Dictionary new ]! !

!MagmaSetChanges methodsFor: 'accessing' stamp: 'brp 5/30/2008 15:50'!
removed
	"Answer the dictionary of objects that have been removed in the local client, but not yet committed to the repository."

	^ changes
		at: #removed
		ifAbsentPut: [ Dictionary new ]! !

!MagmaServerResult methodsFor: 'testing' stamp: 'cmm 1/28/2005 00:14'!
hasServerNotifications

	^ serverNotifications isEmptyOrNil not! !

!MagmaServerResult methodsFor: 'testing' stamp: 'cmm 1/28/2005 00:15'!
isMagmaServerResult

	^ true! !

!MagmaServerResult methodsFor: 'copying' stamp: 'cmm 7/15/2005 14:23'!
postTrimmedCopy

	serverNotifications _ nil! !

!MagmaServerResult methodsFor: 'copying' stamp: 'cmm 7/15/2005 14:23'!
trimmedCopy

	^ self copy postTrimmedCopy! !

!MagmaServerResult methodsFor: 'printing' stamp: 'cmm 7/25/2013 10:08'!
printDetailsOn: aStream
	"This message normally shouldn't be sent to anything but a FailedCommiitResult, but I have seen it happen."! !

!MagmaServerResult methodsFor: 'accessing' stamp: 'cmm 1/18/2005 21:53'!
serverNotifications

	^ serverNotifications! !

!MagmaServerResult methodsFor: 'accessing' stamp: 'cmm 1/18/2005 21:54'!
serverNotifications: aDictionary

	serverNotifications _ aDictionary! !

!MaReadResult methodsFor: 'accessing' stamp: 'cmm 12/16/2002 21:18'!
byteArray

	^byteArray! !

!MaReadResult methodsFor: 'private' stamp: 'cmm 12/17/2002 00:49'!
byteArray: aByteArray

	byteArray _ aByteArray! !

!MaReadResult class methodsFor: 'as yet unclassified' stamp: 'cmm 12/16/2002 21:18'!
byteArray: aByteArray

	^self new byteArray: aByteArray; yourself! !

!MaRefreshViewResult methodsFor: 'accessing' stamp: 'cmm 7/15/2008 14:44'!
commitNumber
	^commitNumber! !

!MaRefreshViewResult methodsFor: 'accessing' stamp: 'cmm 7/15/2008 14:45'!
commitNumber: anInteger
	commitNumber _ anInteger! !

!MaRefreshViewResult methodsFor: 'accessing' stamp: 'cmm 10/16/2006 00:29'!
isSystem
	"Answer whether I am for the results session."
	^ isSystem! !

!MaRefreshViewResult methodsFor: 'accessing' stamp: 'cmm 12/22/2008 13:21'!
oidCount
	"The number of oids allocated by this repository.  The total number of objects ever committed, even if some have since been garbage-collected."
	^ oidCount! !

!MaRefreshViewResult methodsFor: 'accessing' stamp: 'cmm 12/22/2008 13:22'!
oidCount: anInteger
	"The number of oids allocated by this repository.  The total number of objects ever committed, even if some have since been garbage-collected."
	oidCount _ anInteger! !

!MaRefreshViewResult methodsFor: 'accessing' stamp: 'cmm 12/2/2004 13:52'!
permanentOids

	^nil
! !

!MaRefreshViewResult methodsFor: 'accessing' stamp: 'cmm 8/15/2008 15:05'!
sessionId
	^ self connection ifNotNilDo: [ : conn | conn sessionId ]! !

!MaRefreshViewResult methodsFor: 'accessing' stamp: 'cmm 8/15/2008 15:07'!
userId
	^ self connection ifNotNilDo: [ : conn | conn userId ]! !

!MaRefreshViewResult methodsFor: 'initializing' stamp: 'cmm 7/16/2002 21:25'!
connection

	^connection! !

!MaRefreshViewResult methodsFor: 'initializing' stamp: 'cmm 6/20/2004 20:32'!
initialize

	super initialize.
	self toBeRefreshed: (Dictionary new: 50)! !

!MaRefreshViewResult methodsFor: 'building' stamp: 'cmm 10/16/2006 00:28'!
connection: aMagmaClientConnection
	connection _ aMagmaClientConnection.
	isSystem _ aMagmaClientConnection isSystem! !

!MaRefreshViewResult methodsFor: 'building' stamp: 'cmm 10/8/2004 16:52'!
toBeRefreshed: aDictionary

	toBeRefreshed _ aDictionary
! !

!MaRefreshViewResult methodsFor: 'private' stamp: 'cmm 3/9/2014 21:27'!
populateConflictingObjectsFromOidsUsing: aMaObjectSerializer
	"MagmaNoTransactionError will only have a MaRefreshViewResult."! !

!MaRefreshViewResult methodsFor: 'copying' stamp: 'cmm 9/26/2008 10:05'!
postTrimmedCopy
	super postTrimmedCopy.
	connection _ connection trimmedCopy.
	toBeRefreshed _ nil! !

!MaRefreshViewResult methodsFor: 'actions' stamp: 'cmm 1/10/2014 16:50'!
refresh: aMagmaSession includingLocal: aBoolean
	aMagmaSession
		refreshChangedObjects: toBeRefreshed includingLocal: aBoolean ;
		commitNumber: commitNumber ;
		oidCount: oidCount! !

!MaCommitResult methodsFor: 'converting' stamp: 'cmm 6/4/2009 13:27'!
asFailedResult
	^ self as: MaFailedCommitResult! !

!MaCommitResult methodsFor: 'building' stamp: 'cmm 10/10/2004 21:46'!
changedObjectBuffers: aDictionary

	changedObjectBuffers _ aDictionary! !

!MaCommitResult methodsFor: 'building' stamp: 'cmm 5/9/2005 22:45'!
recordNewObjectBuffer: aMaObjectBuffer

	newObjectBuffers 
		at: aMaObjectBuffer oid
		put: aMaObjectBuffer! !

!MaCommitResult methodsFor: 'testing'!
hasConflicts

	^false
! !

!MaCommitResult methodsFor: 'initializing' stamp: 'cmm 7/11/2005 12:56'!
initialize

	super initialize.
	newObjectBuffers _ Dictionary new.
	changedObjectBuffers _ Dictionary new! !

!MaCommitResult methodsFor: 'accessing' stamp: 'cmm 5/9/2005 22:47'!
newObjectBuffers

	^ newObjectBuffers! !

!MaCommitResult methodsFor: 'accessing' stamp: 'cmm 12/2/2004 13:35'!
permanentOids
	"A Dictionary.  Key is the new-object oid, value is the permanent oid."

	^ permanentOids! !

!MaCommitResult methodsFor: 'accessing' stamp: 'cmm 12/2/2004 13:35'!
permanentOids: aDictionary
	"A Dictionary.  Key is the new-object oid, value is the permanent oid."

	permanentOids _ aDictionary! !

!MaCommitResult methodsFor: 'copying' stamp: 'cmm 7/24/2007 13:11'!
postTrimmedCopy
	| withBuffers |
	super postTrimmedCopy.
	changedObjectBuffers _ nil.
	withBuffers _ newObjectBuffers.
	newObjectBuffers _ withBuffers class new: withBuffers size.
	withBuffers keysAndValuesDo: 
		[ : eachOid : eachObject | 
		newObjectBuffers 
			at: eachOid
			put: nil ]! !

!MaCommitResult methodsFor: 'actions' stamp: 'cmm 1/10/2014 16:51'!
refresh: aMagmaSession includingLocal: aBoolean 
	aMagmaSession assignPermanentOidsFrom: permanentOids.
	super
		refresh: aMagmaSession
		includingLocal: aBoolean.
	aMagmaSession
		 recordObjects: newObjectBuffers ;
		 recordObjects: changedObjectBuffers! !

!MaFailedCommitResult methodsFor: 'converting'!
asFailedResult

	^self
! !

!MaFailedCommitResult methodsFor: 'private' stamp: 'cmm 3/28/2013 13:30'!
attributeColumn
	^ (MaFixedWidthReportColumn dataAccessBlock:
		[ : anAssociation | anAssociation key ])
		 headingText: nil ;
		 alignLeft ;
		 width: 20 ;
		 repeatDuplicateValues: true ;
		 yourself! !

!MaFailedCommitResult methodsFor: 'private' stamp: 'cmm 3/28/2013 13:46'!
comparisonSpec
	^ MaFixedWidthRowSpecification new
		addColumn: self oidColumn ;
		addColumn: self objectColumn ;
		yourself! !

!MaFailedCommitResult methodsFor: 'private' stamp: 'cmm 3/28/2013 13:47'!
conflictReport
	^ MaFixedWidthReport new
		for: MagmaCommitConflict
		use: self conflictSpec ;
		for: MagmaCommitConflict
		subReportOn: [ : eachConflict | eachConflict comparisons ] ;

		for: MaObjectComparison
		use: self comparisonSpec ;
		for: MaObjectComparison
		subReportOn: [ : eachComparison | eachComparison differences ] ;

		for: Association
		use: self differenceSpec ;
		yourself! !

!MaFailedCommitResult methodsFor: 'private' stamp: 'cmm 3/27/2013 21:56'!
conflictSpec
	^ MaFixedWidthRowSpecification new
		addColumn: self sessionIdColumn ;
		addColumn: self userIdColumn ;
		yourself! !

!MaFailedCommitResult methodsFor: 'private' stamp: 'cmm 3/28/2013 13:43'!
differenceSpec
	^ MaFixedWidthRowSpecification new
		addColumn: self attributeColumn ;
		addColumn: self winningValueColumn ;
		addColumn: self losingValueColumn ;
		yourself! !

!MaFailedCommitResult methodsFor: 'private' stamp: 'cmm 3/28/2013 13:42'!
losingValueColumn
	^ (MaFixedWidthReportColumn dataAccessBlock:
		[ : anAssociation | anAssociation value second ])
		 headingText: nil ;
		 alignLeft ;
		 width: 50 ;
		 repeatDuplicateValues: true ;
		 yourself! !

!MaFailedCommitResult methodsFor: 'private' stamp: 'cmm 4/5/2013 10:02'!
objectColumn
	^ (MaFixedWidthReportColumn dataAccessBlock:
		[ : aMaObjectComparison | aMaObjectComparison object1 ])
		 headingText: nil ;
		 alignLeft ;
		 width: 120 ;
		 repeatDuplicateValues: true ;
		 yourself! !

!MaFailedCommitResult methodsFor: 'private' stamp: 'cmm 4/5/2013 10:01'!
oidColumn
	^ (MaFixedWidthReportColumn dataAccessBlock:
		[ : aMaObjectComparison | 'oid:  ', aMaObjectComparison object1 magmaOid asString ])
		 headingText: nil ;
		 alignLeft ;
		 width: 20 ;
		 repeatDuplicateValues: false ;
		 yourself! !

!MaFailedCommitResult methodsFor: 'private' stamp: 'cmm 6/26/2002 00:33'!
populateConflictingObjectsFromOidsUsing: aMaObjectSerializer

	commitConflicts do: [ :each | each initializeConflictingObjectsUsing: aMaObjectSerializer ]
! !

!MaFailedCommitResult methodsFor: 'private' stamp: 'cmm 4/5/2013 09:54'!
sessionIdColumn
	^ (MaFixedWidthReportColumn dataAccessBlock:
		[ : aMagmaCommitConflict | aMagmaCommitConflict connection sessionId ])
		 headingText: 'sessionId' ;
		 alignLeft ;
		 width: UUID new asString size ;
		 repeatDuplicateValues: false ;
		 yourself! !

!MaFailedCommitResult methodsFor: 'private' stamp: 'cmm 4/5/2013 09:59'!
userIdColumn
	^ (MaFixedWidthReportColumn dataAccessBlock:
		[ : aMagmaCommitConflict | aMagmaCommitConflict connection userId ])
		 headingText: 'userId' ;
		 alignLeft ;
		 width: 50 ;
		 repeatDuplicateValues: true ;
		 useEllipsisOnTruncate: true ;
		 yourself! !

!MaFailedCommitResult methodsFor: 'private' stamp: 'cmm 3/28/2013 13:42'!
winningValueColumn
	^ (MaFixedWidthReportColumn dataAccessBlock:
		[ : anAssociation | anAssociation value first ])
		 headingText: nil ;
		 alignLeft ;
		 width: 50 ;
		 repeatDuplicateValues: true ;
		 yourself! !

!MaFailedCommitResult methodsFor: 'accessing' stamp: 'cmm 6/26/2002 22:16'!
commitConflicts

	^commitConflicts! !

!MaFailedCommitResult methodsFor: 'accessing' stamp: 'cmm 5/9/2013 10:55'!
comparisons
	^ Array streamContents:
		[ : stream | self conflictingObjectsDo:
			[ : each | stream nextPut:
				(MaObjectComparison
					with: each key
					with: each value) ] ]! !

!MaFailedCommitResult methodsFor: 'accessing' stamp: 'cmm 2/28/2013 10:47'!
comparisonsDo: aBlock 
	commitConflicts do:
		[ : each | aBlock value:
			(MaObjectComparison
				with: each key
				with: each value) ]! !

!MaFailedCommitResult methodsFor: 'accessing' stamp: 'cmm 1/22/2015 16:47'!
conflictMessage
	"This method demonstrates how the structure of a MaCommitResult might be utilized to
	provide a message to an end-user."
	^ String streamContents:
		[ : stream | commitConflicts do:
			[ : each | stream
				 maPrint: each connection userId ;
				 maPrint: ' has committed changes to ' ;
				
				appendProperlyPluralized: 'object'
				for: each conflictingOids size ;
				 maPrint: ' with ' ;
				
				maPrint: 'oid'
				pluralizeIf: [ each conflictingOids size > 1 ] ;
				 space ;
				 appendAndedList: each conflictingOids ;
				 maPrint: '; ' ].
		stream maPrint: ' while you were working on those same objects.  Please review and reapply your changes if necessary.' ]! !

!MaFailedCommitResult methodsFor: 'accessing' stamp: 'cmm 1/17/2014 16:05'!
conflictingObjects
	"Answer a collection of Associations whose keys are the persistent database object (updated) and whose values are a shallowCopy of that object with the local changes."
	^ Array streamContents:
		[ : stream | self conflictingObjectsDo:
			[ : each | stream nextPut: each ] ]! !

!MaFailedCommitResult methodsFor: 'accessing' stamp: 'cmm 10/2/2012 13:25'!
conflictingObjectsDo: aBlock 
	commitConflicts do:
		[ : each | each conflictingObjects do: aBlock ]! !

!MaFailedCommitResult methodsFor: 'printing' stamp: 'cmm 10/14/2013 20:25'!
detailedPrintString
	^ String streamContents: [ : stream | self printDetailsOn: stream ]! !

!MaFailedCommitResult methodsFor: 'printing' stamp: 'cmm 3/28/2013 13:51'!
printDetailsOn: aStream 
	self conflictReport
		write: commitConflicts
		to: aStream! !

!MaFailedCommitResult methodsFor: 'testing' stamp: 'cmm 1/17/2014 15:11'!
hasConflicts
	^ commitConflicts notEmpty! !

!MaFailedCommitResult methodsFor: 'initializing' stamp: 'cmm 12/24/2002 15:42'!
initialize

	super initialize.
	commitConflicts _ OrderedCollection new! !

!MaFailedCommitResult methodsFor: 'actions' stamp: 'cmm 7/9/2014 08:21'!
mergeConflicts
	"Let all conflicts merge from their conflictors.  After doing this, answer a collection of Associations of objects still in conflict.  The keys are the now-committed versions of the objects, the values are MY sessions versions of these objects."
	^self conflictingObjects reject:
		[ : eachAssoc | | eachChanged eachMine classDefs |
		eachChanged _ eachAssoc key.
		eachMine _ eachAssoc value.
		classDefs _ eachChanged magmaSession definition classDefinitions.
		eachChanged == classDefs or: [ (classDefs includesIdentity: eachChanged) or: [ eachChanged mergeConflicting: eachMine ] ] ]! !

!MaFailedCommitResult methodsFor: 'actions' stamp: 'cmm 10/15/2004 16:19'!
recordObjectConflictWith: aMagmaClientConnection on: oidInteger

	(commitConflicts
		detect: [ : each | each conflictingConnection = aMagmaClientConnection ]
		ifNone: [ commitConflicts add: (MagmaCommitConflict connection: aMagmaClientConnection) ])
			addConflictingOid: oidInteger.
	^ self! !

!MaFailedCommitResult class methodsFor: 'as yet unclassified' stamp: 'cmm 6/4/2009 17:01'!
newFrom: aMaCommitResult 
	^ self new
		copySameFrom: aMaCommitResult ;
		yourself! !

!MagmaLargeCollectionSegment methodsFor: 'accessing' stamp: 'cmm 6/6/2006 00:02'!
actualPageSize
	^ self endIndex - startIndex + 1! !

!MagmaLargeCollectionSegment methodsFor: 'accessing' stamp: 'cmm 11/2/2010 15:49'!
at: anInteger ifAbsent: aBlock 
	^ objects
		at: anInteger - startIndex + 1
		ifAbsent: [ ^ aBlock value ]! !

!MagmaLargeCollectionSegment methodsFor: 'accessing' stamp: 'cmm 6/6/2006 00:00'!
endIndex
	self subclassResponsibility ! !

!MagmaLargeCollectionSegment methodsFor: 'accessing' stamp: 'cmm 7/20/2006 00:21'!
lastKnownSize
	^ lastKnownSize! !

!MagmaLargeCollectionSegment methodsFor: 'accessing' stamp: 'cmm 7/20/2006 00:22'!
lastKnownSize: anInteger
	lastKnownSize _ anInteger
! !

!MagmaLargeCollectionSegment methodsFor: 'accessing'!
objects

	^objects! !

!MagmaLargeCollectionSegment methodsFor: 'accessing' stamp: 'cmm 3/22/2005 10:20'!
startIndex
	"Answers the logical index within the range of indices applicable to my Readers specified range."

	^ startIndex! !

!MagmaLargeCollectionSegment methodsFor: 'building' stamp: 'cmm 5/31/2006 12:35'!
addObject: anObject
	objects add: anObject! !

!MagmaLargeCollectionSegment methodsFor: 'building' stamp: 'cmm 4/17/2005 22:11'!
objects: aSequenceableCollection

	objects _ aSequenceableCollection
! !

!MagmaLargeCollectionSegment methodsFor: 'building' stamp: 'cmm 6/4/2006 16:48'!
startIndex: anInteger
	"Set the index position within the result set."
	startIndex _ anInteger
! !

!MagmaLargeCollectionSegment methodsFor: 'testing' stamp: 'cmm 6/5/2006 23:25'!
atEnd
	self subclassResponsibility! !

!MagmaLargeCollectionSegment methodsFor: 'testing' stamp: 'cmm 2/17/2008 17:12'!
includesIndex: anInteger 
	"Answer whether logical anInteger-index falls within the range of indices currently covered by me."
	^ self endIndex notNil and: 
		[ anInteger 
			between: startIndex
			and: self endIndex ]! !

!MagmaLargeCollectionSegment methodsFor: 'testing' stamp: 'cmm 11/2/2010 15:54'!
includesObject: anObject 
	^ objects anySatisfy: [ : each | each = anObject ]! !

!MagmaLargeCollectionSegment methodsFor: 'testing' stamp: 'cmm 4/15/2005 10:05'!
isEmpty

	^ objects isEmpty! !

!MagmaLargeCollectionSegment methodsFor: 'initialize-release' stamp: 'cmm 6/4/2006 20:53'!
initialize
	super initialize.
	self initializeObjects! !

!MagmaLargeCollectionSegment methodsFor: 'initialize-release' stamp: 'cmm 6/4/2006 20:53'!
initializeObjects
	objects _ OrderedCollection new! !

!MagmaLargeCollectionSegment methodsFor: 'printing' stamp: 'cmm 7/29/2006 18:13'!
maPrintAbbreviatedOn: aStream 
	super maPrintAbbreviatedOn: aStream.
	aStream
		space ;
		maPrint: startIndex ;
		maPrint: '..' ;
		maPrint: self endIndex ! !

!MagmaCollectionReaderSegment methodsFor: 'initialize-release' stamp: 'cmm 7/29/2006 15:44'!
adjustLastKnownSize: anInteger 
	self lastKnownSize ifNotNil: [ self lastKnownSize: self lastKnownSize - anInteger ]! !

!MagmaCollectionReaderSegment methodsFor: 'initialize-release' stamp: 'cmm 2/17/2008 16:00'!
advanceLastKnownSize: anInteger 
	lastKnownSize ifNotNil: [ self lastKnownSize: lastKnownSize + anInteger ]! !

!MagmaCollectionReaderSegment methodsFor: 'initialize-release' stamp: 'cmm 2/17/2008 21:55'!
initialize
	super initialize.
	lowestKey _ 0.
	highestKey _ 1 bitShift: 4096.
	self resetMergedCount! !

!MagmaCollectionReaderSegment methodsFor: 'initialize-release' stamp: 'cmm 7/29/2006 09:56'!
resetMergedCount
	mergedCount _ 0! !

!MagmaCollectionReaderSegment methodsFor: 'private' stamp: 'cmm 2/18/2008 12:59'!
advanceEnd: count 
	endIndex _ endIndex + count.
	mergedCount _ mergedCount + count.
	self advanceLastKnownSize: count! !

!MagmaCollectionReaderSegment methodsFor: 'private' stamp: 'cmm 7/29/2006 09:55'!
advanceStart: count
	startIndex _ startIndex + count.
	self advanceEnd: count! !

!MagmaCollectionReaderSegment methodsFor: 'private' stamp: 'cmm 7/13/2009 18:07'!
nextSegment
	"In an empty MagmaCollection, we can't have any real segments, just one with no trunkEnd, so no need to try to get the 'next' one until we get our first valid one."
	^ self isFitted 
		ifTrue: 
			[ self maOriginalClass new
				startIndex: endIndex + 1 ;
				trunkStart: trunkEnd + 1 ;
				trunk: trunk ;
				yourself ]
		ifFalse: [ self ]! !

!MagmaCollectionReaderSegment methodsFor: 'private' stamp: 'cmm 11/10/2014 10:30'!
refreshFrom: anotherMagmaCollectionReaderSegment 
	"I prefer this to become:.."
	1 
		to: self class instSize
		do: 
			[ : n | 
			self 
				slotAt: n
				put: (anotherMagmaCollectionReaderSegment slotAt: n) ]! !

!MagmaCollectionReaderSegment methodsFor: 'private' stamp: 'cmm 10/26/2010 20:12'!
sortObjects: sortBlock 
	objects sort: sortBlock! !

!MagmaCollectionReaderSegment methodsFor: 'accessing' stamp: 'cmm 11/2/2010 15:49'!
at: anInteger ifAbsent: aBlock 
	^ (objects 
		at: anInteger - startIndex + 1
		ifAbsent: [ ^ aBlock value ]) value! !

!MagmaCollectionReaderSegment methodsFor: 'accessing' stamp: 'cmm 6/6/2006 00:00'!
endIndex
	"Answer the index within the large-collection or reader of the last element in the receivers objects collection."
	^ endIndex! !

!MagmaCollectionReaderSegment methodsFor: 'accessing' stamp: 'cmm 6/6/2006 00:00'!
endIndex: anInteger
	endIndex _ anInteger! !

!MagmaCollectionReaderSegment methodsFor: 'accessing' stamp: 'cmm 6/7/2006 23:25'!
highestKey
	^highestKey! !

!MagmaCollectionReaderSegment methodsFor: 'accessing' stamp: 'cmm 6/7/2006 23:25'!
highestKey: anInteger
	highestKey _ anInteger! !

!MagmaCollectionReaderSegment methodsFor: 'accessing' stamp: 'cmm 2/16/2008 17:24'!
lowestKey
	^lowestKey! !

!MagmaCollectionReaderSegment methodsFor: 'accessing' stamp: 'cmm 2/16/2008 17:24'!
lowestKey: anInteger
	lowestKey _ anInteger! !

!MagmaCollectionReaderSegment methodsFor: 'accessing' stamp: 'cmm 7/29/2006 09:55'!
mergedCount
	^ mergedCount! !

!MagmaCollectionReaderSegment methodsFor: 'accessing' stamp: 'cmm 6/5/2006 23:38'!
trunk
	^ trunk ! !

!MagmaCollectionReaderSegment methodsFor: 'accessing' stamp: 'cmm 6/5/2006 23:38'!
trunk: aMaQueryTrunk
	trunk _ aMaQueryTrunk! !

!MagmaCollectionReaderSegment methodsFor: 'accessing' stamp: 'cmm 8/13/2007 23:50'!
trunkEnd: anInteger 
	"The query trunk can be accessed by logical index position.  Set the end position within the trunk of this segment."
	trunkEnd _ anInteger! !

!MagmaCollectionReaderSegment methodsFor: 'accessing' stamp: 'cmm 7/10/2006 23:33'!
trunkStart
	"The query trunk can be accessed by logical index position.  Answer the start position within the trunk of this segment."
	^ trunkStart! !

!MagmaCollectionReaderSegment methodsFor: 'accessing' stamp: 'cmm 7/10/2006 23:31'!
trunkStart: anInteger 
	"of the query trunk"
	trunkStart _ anInteger! !

!MagmaCollectionReaderSegment methodsFor: 'testing' stamp: 'cmm 7/20/2006 00:29'!
atEnd
	"Answer whether I contain the last element that satisfies the original expression."
	^ trunkEnd isNil "empty" 
	or: [ lastKnownSize notNil ]! !

!MagmaCollectionReaderSegment methodsFor: 'testing' stamp: 'cmm 2/19/2008 22:25'!
atEndForOptimized
	"Answer whether I contain the last element that satisfies the original expression.  The implementation is different for Optmized vs. Filtered Readers, this is for the optimized."
	^ trunkEnd + mergedCount >= lastKnownSize! !

!MagmaCollectionReaderSegment methodsFor: 'testing' stamp: 'cmm 2/16/2008 20:00'!
includesKey: anInteger 
	^ anInteger 
		between: lowestKey
		and: highestKey! !

!MagmaCollectionReaderSegment methodsFor: 'testing' stamp: 'cmm 2/18/2008 17:08'!
includesObject: anObject 
	^ objects anySatisfy: [ : each | each value = anObject ]! !

!MagmaCollectionReaderSegment methodsFor: 'testing' stamp: 'cmm 7/10/2006 23:30'!
isFitted
	"Answer whether I've been loaded with a valid range by the server."
	^ trunkEnd notNil! !

!MagmaCollectionReaderSegment methodsFor: 'printing' stamp: 'cmm 8/20/2007 21:44'!
maPrintAbbreviatedOn: aStream 
	super maPrintAbbreviatedOn: aStream.
	lastKnownSize ifNotNil: 
		[ aStream
			maPrint: ' of ' ;
			maPrint: lastKnownSize ].
	aStream
		maPrint: ' | ' ;
		maPrint: mergedCount! !

!MagmaCollectionSegment methodsFor: 'testing' stamp: 'cmm 6/6/2006 00:05'!
atEnd
	^ self endIndex = lastKnownSize! !

!MagmaCollectionSegment methodsFor: 'accessing' stamp: 'cmm 6/6/2006 00:00'!
endIndex
	^ startIndex + objects size - 1! !

!MagmaServerStatistics methodsFor: 'chart' stamp: 'cmm 8/17/2014 17:48'!
countProcessingTimesChart
	^ StackedPlotMorph new
		 addPlot: (self newIngressPlotOn: #count) ;
		 addPlot: (self newProcessingPlotOn: #count) ;
		 addPlot: (self newEgressPlotOn: #count)! !

!MagmaServerStatistics methodsFor: 'chart' stamp: 'cmm 8/18/2014 13:58'!
countSizesChart
	^ StackedPlotMorph new
		 addPlot: (self newQueueSizesPlotOn: #count) ;
		 addPlot: (self newRequestResponseSizesPlotOn: #count) ;
		"connections plot must use total."
		 addPlot: (self newConnectionsPlotOn: #total)! !

!MagmaServerStatistics methodsFor: 'chart' stamp: 'cmm 8/21/2014 15:21'!
maxSizesChart
	^ StackedPlotMorph new
		 addPlot: (self newQueueSizesPlotOn: #max) ;
		 addPlot: (self newRequestResponseSizesPlotOn: #max) ;
		 addPlot: (self newConnectionsPlotOn: #max)! !

!MagmaServerStatistics methodsFor: 'chart' stamp: 'cmm 8/17/2014 17:41'!
meanProcessingTimesChart
	^ StackedPlotMorph new
		 addPlot: (self newIngressPlotOn: #mean) ;
		 addPlot: (self newProcessingPlotOn: #mean) ;
		 addPlot: (self newEgressPlotOn: #mean)! !

!MagmaServerStatistics methodsFor: 'chart' stamp: 'cmm 8/17/2014 18:07'!
meanSizesChart
	^ StackedPlotMorph new
		 addPlot: (self newQueueSizesPlotOn: #mean) ;
		 addPlot: (self newRequestResponseSizesPlotOn: #mean) ;
		 addPlot: (self newConnectionsPlotOn: #mean)! !

!MagmaServerStatistics methodsFor: 'chart' stamp: 'cmm 8/17/2014 17:45'!
totalProcessingTimesChart
	^ StackedPlotMorph new
		 addPlot: (self newIngressPlotOn: #total) ;
		 addPlot: (self newProcessingPlotOn: #total) ;
		 addPlot: (self newEgressPlotOn: #total)! !

!MagmaServerStatistics methodsFor: 'chart' stamp: 'cmm 8/17/2014 18:06'!
totalSizesChart
	^ StackedPlotMorph new
		 addPlot: (self newQueueSizesPlotOn: #total) ;
		 addPlot: (self newRequestResponseSizesPlotOn: #total) ;
		 addPlot: (self newConnectionsPlotOn: #total)! !

!MagmaServerStatistics methodsFor: 'historys' stamp: 'cmm 5/7/2008 17:37'!
flushTimeHistory
	"Several seconds after a commit the Magma server flushes it (and all other commits in that time) to disk in a secure, atomic way.  This history captures how much time is spent doing that."
	^ flushTimeHistory! !

!MagmaServerStatistics methodsFor: 'private' stamp: 'cmm 5/7/2008 17:31'!
historysDo: aBlock 
	super historysDo: aBlock.
	aBlock value: flushTimeHistory! !

!MagmaServerStatistics methodsFor: 'initialize-release' stamp: 'cmm 5/7/2008 17:37'!
initialize
	super initialize.
	flushTimeHistory _ MaStatHistory name: 'Flush-to-Disk Times'! !

!MagmaServerStatistics methodsFor: 'chart-private' stamp: 'cmm 8/17/2014 18:05'!
newConnectionsPlotOn: operatorSymbol
	^ self newDateAndTimeBySizesPlot
		 title: 'Connections / Disconnections' ;
		 addSeries: ((numberOfClientConnectionsHistory seriesOn: operatorSymbol) color: Color green) ;
		 addSeries: ((clientTimeoutsHistory seriesOn: operatorSymbol) color: Color red) ;
		 yourself! !

!MagmaServerStatistics methodsFor: 'chart-private' stamp: 'cmm 8/17/2014 17:53'!
newEgressPlotOn: operatorSymbol
	^ (operatorSymbol = #count
		ifTrue: [ self newDateAndTimeBySizesPlot ]
		ifFalse: [ self newDateAndTimeBySecondsPlot ])
		title: 'Egress Times (', operatorSymbol asString, ')' ;
		 addSeries: ((timeToSerializeHistory seriesOn: operatorSymbol) color: Color cyan twiceDarker) ;
		 addSeries: ((timeToSendResponsesHistory seriesOn: operatorSymbol) color: (Color cyan muchLighter)) ;
		 addSeries: ((timeToLoadBuffersHistory seriesOn: operatorSymbol) color: Color red muchDarker) ;
		 yourself! !

!MagmaServerStatistics methodsFor: 'chart-private' stamp: 'cmm 8/17/2014 17:49'!
newIngressPlotOn: operator 
	^ (operator = #count
		ifTrue: [ self newDateAndTimeBySizesPlot ]
		ifFalse: [ self newDateAndTimeBySecondsPlot ])
		 title: 'Ingress Times (' , operator asString , ')' ;
		 addSeries: ((timeWaitingInSocketQueueHistory seriesOn: operator) color: Color magenta twiceDarker) ;
		 addSeries: ((extractTimeHistory seriesOn: operator) color: Color green twiceDarker) ;
		 addSeries: ((timeWaitingInRequestQueueHistory seriesOn: operator) color: Color blue) ;
		 addSeries: ((timeToMaterializeHistory seriesOn: operator) color: Color cyan) ;
		 yourself! !

!MagmaServerStatistics methodsFor: 'chart-private' stamp: 'cmm 8/17/2014 17:53'!
newProcessingPlotOn: operatorSymbol
	^ (operatorSymbol = #count
		ifTrue: [ self newDateAndTimeBySizesPlot ]
		ifFalse: [ self newDateAndTimeBySecondsPlot ])
		title: 'Processing Times (', operatorSymbol asString, ')' ;
		 addSeries: ((requestProcessingTimeHistory seriesOn: operatorSymbol) color: Color yellow twiceDarker) ;
		 addSeries: ((idleTimeHistory seriesOn: operatorSymbol) color: Color green twiceDarker) ;
		 addSeries: ((flushTimeHistory seriesOn: operatorSymbol) color: Color red twiceDarker) ;
		 addSeries: ((houseCleaningTimeHistory seriesOn: operatorSymbol) color: Color red muchDarker) ;
		 yourself! !

!MagmaServerStatistics methodsFor: 'chart-private' stamp: 'cmm 8/17/2014 18:05'!
newQueueSizesPlotOn: operatorSymbol
	^ self newDateAndTimeBySizesPlot
		 title: 'Queue Sizes' ;
		 addSeries: ((socketsQueuedHistory seriesOn: operatorSymbol) color: Color blue) ;
		 addSeries: ((requestsQueuedHistory seriesOn: operatorSymbol) color: Color blue muchLighter) ;
		 yourself! !

!MagmaServerStatistics methodsFor: 'chart-private' stamp: 'cmm 8/17/2014 18:09'!
newRequestResponseSizesPlotOn: operatorSymbol
	^ self newDateAndTimeBySizesPlot
		 title: operatorSymbol, ' Bytes Received / Sent' ;
		 addSeries: ((requestSizeHistory seriesOn: operatorSymbol) color: Color green) ;
		 addSeries: ((responseSizeHistory seriesOn: operatorSymbol) color: Color red) ;
		 yourself! !

!MagmaMutatingProxy methodsFor: 'testing' stamp: 'cmm 10/25/2010 13:27'!
= object 
	"The only way to answer correctly is for the fully-materialized objects to tell you.  However, if object is the same object as me, it would be true.  Getting two separate mutating-proxies for the same object is possible when a storage-object refers to a persistent object (i.e., MaCompiledMethodStorage>>'className')."
	self == object ifTrue: [ ^ true ].
	^ object maIsMutatingProxy
		ifTrue:
			[ (self maRealObjectIsReified and: [ object maRealObjectIsReified ])
				ifTrue: [ self realObjectIfMutatingProxy = object realObjectIfMutatingProxy ]
				ifFalse:
					[ (self mutatingProxySession magmaId = object mutatingProxySession magmaId and: [ self maOid = object maOid ]) or: [ self realObjectIfMutatingProxy = object ] ] ]
		ifFalse: [ self realObjectIfMutatingProxy = object ]! !

!MagmaMutatingProxy methodsFor: 'testing' stamp: 'cmm 5/22/2013 16:27'!
compareSafely: anObject 
	^ false! !

!MagmaMutatingProxy methodsFor: 'testing' stamp: 'cmm 4/28/2013 16:12'!
isLiteral
	^ self realObjectIfMutatingProxy isLiteral! !

!MagmaMutatingProxy methodsFor: 'testing' stamp: 'cmm 5/5/2013 16:17'!
maIsLargeCollection
	^ self realObjectIfMutatingProxy maIsLargeCollection! !

!MagmaMutatingProxy methodsFor: 'testing' stamp: 'cmm 12/9/2010 21:55'!
maRealObjectIsReified
	^ realObject ~~ nil! !

!MagmaMutatingProxy methodsFor: 'testing' stamp: 'cmm 5/7/2013 18:40'!
maRequiresOwnBuffer
	^ self maRealObjectIsReified and: [ self realObjectIfMutatingProxy maRequiresOwnBuffer ]! !

!MagmaMutatingProxy methodsFor: 'testing' stamp: 'cmm 5/22/2013 16:43'!
shouldFollowOutboundPointers
	^ true! !

!MagmaMutatingProxy methodsFor: 'private' stamp: 'cmm 3/20/2015 15:15'!
doesNotUnderstand: aMessage
	| theReal | theReal _ self realObjectIfMutatingProxy realObject.
	aMessage lookupClass: theReal class.
	^ aMessage sendTo: theReal! !

!MagmaMutatingProxy methodsFor: 'private' stamp: 'cmm 3/22/2013 16:07'!
fixSession
	"It shouldn't happen, but if session's become nil'd out (maybe due to a becomeForward: nil), then this will attempt to restore it."
	session ifNil:
		[ realObject magmaSession ifNotNil:
			[ : sess | session _ sess.
			session addProxy: self ] ]! !

!MagmaMutatingProxy methodsFor: 'accessing' stamp: 'cmm 5/22/2013 17:13'!
instVarAt: instVarIndex 
	"Overriding for speed, to avoid having to go through #doesNotUnderstand:."
	^ MagmaPreferences debugProxies
		ifTrue: [ self primInstVarAt: instVarIndex ]
		ifFalse: [ self realObjectIfMutatingProxy instVarAt: instVarIndex ]! !

!MagmaMutatingProxy methodsFor: 'accessing' stamp: 'cmm 10/25/2010 12:58'!
instVarAt: instVarIndex put: anObject 
	"Overriding for speed, to avoid having to go through #doesNotUnderstand:."
	^ self realObjectIfMutatingProxy
		instVarAt: instVarIndex
		put: anObject! !

!MagmaMutatingProxy methodsFor: 'accessing' stamp: 'cmm 7/14/2008 16:30'!
maOid
	^ oid! !

!MagmaMutatingProxy methodsFor: 'accessing' stamp: 'cmm 7/14/2008 16:30'!
maOid: anInteger 
	oid _ anInteger! !

!MagmaMutatingProxy methodsFor: 'accessing' stamp: 'cmm 4/23/2013 17:08'!
maOriginalClass
	"This is called by maSelectPreMadeObjectBufferFrom:, so overriding for speed, to avoid having to go through DNU."
	^ self realObjectIfMutatingProxy maOriginalClass! !

!MagmaMutatingProxy methodsFor: 'accessing' stamp: 'cmm 3/26/2013 09:05'!
magmaOid
	^ oid! !

!MagmaMutatingProxy methodsFor: 'accessing' stamp: 'cmm 2/3/2013 11:49'!
magmaSession
	"Answer the connected MagmaSession that the receiver was retrieved in.  If I am not an object retrieved from any session, answer nil."
	^ session ifNil: [ realObject magmaSession ]! !

!MagmaMutatingProxy methodsFor: 'accessing' stamp: 'cmm 1/18/2005 16:16'!
mutatingProxySession
	"This has such an ugly name so as not to conflict with other API named #session, to which I need to invoke my doesNotUnderstand: logic."
	^session! !

!MagmaMutatingProxy methodsFor: 'accessing' stamp: 'cmm 1/18/2005 16:20'!
mutatingProxySession: aMagmaSession

	session _ aMagmaSession
! !

!MagmaMutatingProxy methodsFor: 'accessing' stamp: 'cmm 5/22/2013 17:08'!
primInstVarAt: instVarIndex
	"Primitive. Answer a fixed variable in an object. The numbering of the 
	variables corresponds to the named instance variables. Fail if the index 
	is not an Integer or is not the index of a fixed variable. Essential. See 
	Object documentation whatIsAPrimitive."

	<primitive: 73>
	"Access beyond fixed variables."
	^self basicAt: instVarIndex - self class instSize! !

!MagmaMutatingProxy methodsFor: 'accessing' stamp: 'cmm 7/23/2013 13:02'!
quickMagmaSession
	"Answer the connected MagmaSession that the receiver was retrieved in.  If I am not an object retrieved from any session, answer nil."
	^ session! !

!MagmaMutatingProxy methodsFor: 'accessing' stamp: 'cmm 8/28/2013 20:05'!
realObjectIfMutatingProxy
	"The hideous selector is to make sure to avoid any chance of name-space collision with objects that I may need to represent.  I want my client to get the messages, not handle them myself."
	^  realObject ifNil:
		[ | sess theReal | "Reference session in a temp just in case realObjectFor: might cause the thisContexts receiver to be becomed:, at which point 'session' refers to the 1st instVar of the object becomed to."
		sess _ session.
		theReal _ session realObjectFor: oid.
		self maIsMutatingProxy ifTrue: [ realObject _ theReal ].
		sess preferences signalProxyMaterializations ifTrue: [ MagmaProxyMaterialization signalMaterializedObject: realObject ].
		theReal ]! !

!MagmaMutatingProxy methodsFor: 'accessing' stamp: 'cmm 3/22/2013 16:15'!
setRealObjectTo: anObject
	realObject _ anObject.
	session addProxy: self! !

!MagmaMutatingProxy methodsFor: 'accessing' stamp: 'cmm 11/10/2014 10:30'!
slotAt: instVarIndex put: anObject 
	"Overriding for speed, to avoid having to go through #doesNotUnderstand:."
	^ self realObjectIfMutatingProxy
		slotAt: instVarIndex
		put: anObject! !

!MagmaMutatingProxy methodsFor: 'accessing' stamp: 'cmm 11/22/2016 14:39'!
yourself
	"Short-cut to the object, rather than going through doesNotUnderstand:."
	^ [ self realObjectIfMutatingProxy ] ensure:
		[ session ifNotNil: [ session statistics houseCleaningTimeHistory addValue: (Time millisecondsToRun: [ session bulkBecomeProxies ]) ] ]! !

!MagmaMutatingProxy methodsFor: 'debugging' stamp: 'cmm 5/22/2013 17:08'!
outboundPointersDo: aBlock
"do aBlock for every object I point to, exactly how the garbage collector would. Adapted from PointerFinder >> #followObject:"
	aBlock value: self class.
	1 to: self class instSize do: [:i | aBlock value: (self primInstVarAt: i)]! !

!MagmaMutatingProxy methodsFor: 'commenting'!
whyNoHash

	"Because we don't want to allow the receiver to ever be added to a hashed
	collection.  We want it to mutate and then be added, otherwise we'd have to
	know which hashed collections to rehash once the receiver was mutated."
! !

!MagmaMutatingProxy class methodsFor: 'creation' stamp: 'cmm 7/14/2008 16:30'!
session: aMagmaSession oid: anInteger 
	^ self new
		mutatingProxySession: aMagmaSession ;
		maOid: anInteger

	"no yourself because it causes materialization of the proxy!!"! !

!MagmaForwardingProxy methodsFor: 'testing' stamp: 'cmm 4/11/2009 16:53'!
= anObject 
	^ (anObject maIsForwardingProxy and: [ self fpRemoteMagmaId notNil or: [ anObject fpRemoteMagmaId notNil ] ]) 
		ifTrue: 
			[ (self == anObject or: 
				[ self fpRemoteMagmaId = anObject fpRemoteMagmaId and: [ self fpRemoteOid = anObject fpRemoteOid ] ]) or: [ self realObject = anObject realObject ] ]
		ifFalse: [ self realObject = anObject realObject ]! !

!MagmaForwardingProxy methodsFor: 'testing' stamp: 'cmm 6/9/2010 13:34'!
hash
	^ self realObject hash! !

!MagmaForwardingProxy methodsFor: 'testing' stamp: 'cmm 12/8/2010 14:03'!
isInMagma
	^ session notNil! !

!MagmaForwardingProxy methodsFor: 'testing' stamp: 'cmm 1/13/2005 17:15'!
maIsForwardingProxy

	^ true! !

!MagmaForwardingProxy methodsFor: 'testing' stamp: 'cmm 7/5/2009 20:00'!
maOriginalClass
	"Serialization wants to know this."
	^ self class! !

!MagmaForwardingProxy methodsFor: 'testing' stamp: 'cmm 4/27/2014 20:48'!
maRealObjectIsReified
	^ cachedObject notNil! !

!MagmaForwardingProxy methodsFor: 'testing' stamp: 'cmm 1/16/2005 23:52'!
maRequiresOwnBuffer

	^ true! !

!MagmaForwardingProxy methodsFor: 'testing' stamp: 'cmm 7/5/2009 19:58'!
respondsTo: aSymbol 
	"Serialization wants to know whether I #respondsTo: aSymbol."
	^ (self class canUnderstand: aSymbol) or: [ self realObject respondsTo: aSymbol ]! !

!MagmaForwardingProxy methodsFor: 'converting' stamp: 'cmm 7/14/2008 17:58'!
asMagmaForwardingProxy
	^ self! !

!MagmaForwardingProxy methodsFor: 'accessing'!
basicSize
	"Primitive. Answer the number of indexable variables in the receiver. 
	This value is the same as the largest legal subscript. Essential. Do not 
	override in any subclass. See Object documentation whatIsAPrimitive."

	<primitive: 62>
	"The number of indexable fields of fixed-length objects is 0"
	^0 ! !

!MagmaForwardingProxy methodsFor: 'accessing' stamp: 'cmm 12/25/2002 00:44'!
instVarAt: index 
	"Primitive. Answer a fixed variable in an object. The numbering of the 
	variables corresponds to the named instance variables. Fail if the index 
	is not an Integer or is not the index of a fixed variable. Essential. See 
	Object documentation whatIsAPrimitive."

	"Access beyond fixed variables."

	<primitive: 73>
	self primitiveFailed! !

!MagmaForwardingProxy methodsFor: 'accessing' stamp: 'cmm 8/10/2011 16:28'!
instVarAt: anInteger put: anObject 
	"Primitive. Store a value into a fixed variable in the receiver. The 
	numbering of the variables corresponds to the named instance variables. 
	Fail if the index is not an Integer or is not the index of a fixed variable. 
	Answer the value stored as the result. Using this message violates the 
	principle that each object has sovereign control over the storing of 
	values into its instance variables. Essential. See Object documentation 
	whatIsAPrimitive."

	<primitive: 74>
	"Access beyond fixed fields"
	^nil error: 'primitive failed updating object'! !

!MagmaForwardingProxy methodsFor: 'initialize-release' stamp: 'cmm 11/18/2009 13:41'!
cachedObject: anObject 
	anObject maIsForwardingProxy ifTrue: 
		[ MaError signal: 'ForwardingProxy should not reference a ForwardingProxy.' ].
	cachedObject _ anObject.
	anObject magmaSession ifNotNilDo: 
		[ : sess | 
		oid _ sess oidFor: anObject.
		magmaId _ sess magmaId veryDeepCopy	"so we don't share the same object between two repositories." ]! !

!MagmaForwardingProxy methodsFor: 'private' stamp: 'cmm 1/13/2005 16:21'!
doesNotUnderstand: aMessage

	^ self
		forward: aMessage
		to: self realObject! !

!MagmaForwardingProxy methodsFor: 'private' stamp: 'cmm 10/22/2010 20:26'!
forward: aMessage to: anObject 
	"Intercept any MagmaSessionRequests signaled within the boundaries of anObject's domain and let its own session handle them."
	^ [ aMessage sendTo: anObject ]
		on: MagmaSessionRequest
		do: [ : notification | notification handleAndResumeUsing: self remoteSession ]! !

!MagmaForwardingProxy methodsFor: 'private' stamp: 'cmm 4/11/2009 17:26'!
fpRemoteMagmaId
	"Answers the MagmaId of the repository which my realObject belongs."
	"The only time my magmaId should be nil is if a non-persistent object is sent #asMagmaForwardingProxy."
	^ magmaId! !

!MagmaForwardingProxy methodsFor: 'private' stamp: 'cmm 4/11/2009 16:51'!
fpRemoteMagmaId: aMagmaId
	magmaId _ aMagmaId! !

!MagmaForwardingProxy methodsFor: 'private' stamp: 'cmm 4/11/2009 16:53'!
fpRemoteOid
	"Answers the oid of the repository which my realObject belongs."
	"The only time my oid should be nil is if a non-persistent object is sent #asMagmaForwardingProxy."
	^ oid! !

!MagmaForwardingProxy methodsFor: 'private' stamp: 'cmm 12/8/2010 23:09'!
realObject
	^ cachedObject ifNil:
		[ | existing |
		existing _ [ self remoteSession
			ifNil: [ MagmaEnvironmentError signal: 'Could not create a session to remote object.' ]
			ifNotNilDo:
				[ : sess | sess
					objectWithOid: self fpRemoteOid
					ifAbsent: [ MagmaGarbageCollectedObject signal: 'This object has been dereferenced and subsequently garbage collected.' ] ] ]
			on: MagmaUserRequiredNotification
			do:
				[ : noti | noti resume:
					(MagmaUser id:
						(self magmaSession
							ifNil: [ 'auto-created session to materialize ' , self fpRemoteOid asString ]
							ifNotNilDo:
								[ : sess | sess userId ifNil: [ 'reconnected session' ] ])) ].
		self remoteSession magmaId = magmaId ifFalse: [ MagmaEnvironmentError signal: 'Wrong db for remote object.' ].
		existing maIsForwardingProxy ifTrue: [ MagmaSoftwareError signal: 'A ForwardingProxy should not reference a ForwardingProxy.' ].
		cachedObject _ existing ]! !

!MagmaForwardingProxy methodsFor: 'private' stamp: 'cmm 7/24/2018 22:20'!
remoteSession
	"This is the session which my realObject is retrieved from."
	^ session ifNil:
		[ session _ magmaId ifNotNil:
			[ self magmaSession
				ifNil: [ magmaId findSession ]
				ifNotNil:
					[ : sess | (sess preferredLocationFor: magmaId)
						ifNil: [ magmaId findSession ]
						ifNotNil: [ : loc | loc newSession ] ] ] ]! !

!MagmaForwardingProxy methodsFor: 'private' stamp: 'cmm 1/17/2005 13:02'!
size

	^ self doesNotUnderstand: (Message selector: #size)! !

!MagmaForwardingProxy methodsFor: 'private' stamp: 'cmm 11/9/2014 12:34'!
slotAt: index 
	"Access the nth slot of an object.  Use the instVarAt: primitive for speed with fixed, non-variable objects."

	<primitive: 73>
	"Access beyond fixed variables."
	^self basicAt: index - self class instSize! !

!MagmaForwardingProxy methodsFor: 'private' stamp: 'cmm 11/10/2014 10:27'!
slotAt: anInteger put: anObject
	"Primitive. Store a value into a fixed variable in the receiver. The 
	numbering of the variables corresponds to the named instance variables, followed by the indexed variables.
	Fail if the index is not an Integer or is not the index of a fixed variable. 
	Answer the value stored as the result. Using this message violates the 
	principle that each object has sovereign control over the storing of 
	values into its instance variables. Essential. See Object documentation 
	whatIsAPrimitive."

	<primitive: 74>
	"Access beyond fixed fields"
	^self basicAt: anInteger - self class instSize put: anObject! !

!MagmaForwardingProxy methodsFor: 'private' stamp: 'cmm 1/17/2005 21:57'!
value

	^ self doesNotUnderstand: (Message selector: #value)! !

!MagmaForwardingProxy methodsFor: 'serialization' stamp: 'cmm 8/11/2012 15:00'!
ensureReferencePopulated
	magmaId ifNil: 
		[ cachedObject magmaSession 
			ifNil: 
				[ MagmaUserError signal: 'Remote object must be persistent before remote reference to them can be calculated.' ]
			ifNotNilDo: 
				[ : sess | 
				"Copy the target object's magmaId, so we don't share instances between sessions.  MagmaCommitPackage will ensureCanonicalizedMagmaId:."
				magmaId _ sess magmaId veryDeepCopy.
				magmaId ifNil: [ MagmaSoftwareError signal: 'Expected session to have definition' ].
				oid _ sess oidFor: cachedObject ].
		(MaOidCalculator isOidForNewObject: oid) ifTrue: 
			[ MagmaSoftwareError signal: 'Expected cachedObject to be persistent at this point.' ] ]! !

!MagmaForwardingProxy methodsFor: 'serialization' stamp: 'cmm 8/5/2011 13:27'!
maTransientVariables 
	^ #( 'session' 'cachedObject' )! !

!MagmaForwardingProxy class methodsFor: 'create' stamp: 'cmm 11/18/2009 14:37'!
for: anObject 
	"Create a new forwarding-proxy for anObject.  Any messages sent to the proxy will be forwarded on to anObject and the answer returned.  This way, models may continue to run with or without a repository, but with the same Magma-aware code-base."
	^ self new
		cachedObject: anObject realObject ";
		yourself"  "do not include yourself this time, it forwards it to anObject!!"! !

!MagmaSessionStatistics methodsFor: 'historys' stamp: 'cmm 5/9/2008 17:07'!
clientSideCommitTimeHistory
	"The time this client spends serializing commit-packages, excluding the time spent waiting for a response (for that, see timeToSubmitHistoryFor: MaWriteRequest) and also excludes the time to refresh the client view, which happens for commits, aborts or begins and is captured in my #refreshViewHistory."
	^clientSideCommitTimeHistory! !

!MagmaSessionStatistics methodsFor: 'historys' stamp: 'cmm 5/9/2008 17:09'!
clientSideConnectionTimeHistory
	"This stat represents the time for the client to connect, but without including the #refreshAll, which is captured separately in my #refreshAllTimeHistory."
	^clientSideConnectionTimeHistory! !

!MagmaSessionStatistics methodsFor: 'historys' stamp: 'cmm 5/9/2008 17:15'!
clientSideMcPageReadsTimeHistory
	"The time loading pages of objects due to paging through a MagmaCollectionReader or enumerating an entire MagmaCollection.  This includes only the client-side materialization time, not the time waiting for the server to return the buffers.  For that, add in the time from my #timeToSubmitHistoryFor: MaRefreshSegmentRequest for reader pages or MaSegmentByIndexRequest for enumerating an entire collection."
	^clientSideMcPageReadsTimeHistory! !

!MagmaSessionStatistics methodsFor: 'historys' stamp: 'cmm 5/9/2008 17:18'!
clientSideProxyMaterializationTimeHistory
	"The time spent materializing proxys.  This is especially useful for seeing how effective your readStrategies are.  If the counts and timings are very high on this stat then use a more aggressive readStrategy."
	^clientSideProxyMaterializationTimeHistory! !

!MagmaSessionStatistics methodsFor: 'historys' stamp: 'cmm 11/15/2010 14:10'!
objectBytesReadPerSecond
	"This stat represents the speed at which this client session is pulling objects from the server, including server round-trip time, in Bytes per second."
	^objectBytesReadPerSecond! !

!MagmaSessionStatistics methodsFor: 'historys' stamp: 'cmm 11/15/2010 14:11'!
objectsReadPerSecond
	"This stat represents the speed at which this client is reading objects from the server, including server round-trip time, in terms of the number of objects read per second."
	^objectsReadPerSecond! !

!MagmaSessionStatistics methodsFor: 'historys' stamp: 'cmm 5/9/2008 17:28'!
refreshAllTimeHistory
	"When the images is saved while connected to a MagmaSession, the session is automatically disconnected and reconnected when the image starts again.  While disconnected, the in-image persistent objects become stale as commits by other users continue to occur to the repository.  All persistent in-image objects must be refreshed when reconnecting to the repository.  Currently this operation can take some time and is captured as a separate stat.  To find the total connection time, add this stat to my clientSideConnectionTimeHistory."
	^refreshAllTimeHistory! !

!MagmaSessionStatistics methodsFor: 'historys' stamp: 'cmm 5/9/2008 17:24'!
refreshViewHistory
	"The time required to refresh the clients view of the repository.  This is ONLY the time spent on the client-side, it does not include the time waiting for the server to process the associated begin, commit or abort request.  For those times, see timeToSubmitHistoryFor: MaWriteRequest, MaTransactionRequest or MaAbortTransactionRequest."
	^refreshViewHistory! !

!MagmaSessionStatistics methodsFor: 'enumerate' stamp: 'cmm 11/15/2010 14:13'!
historysDo: aBlock 
	super historysDo: aBlock.
	{ 
		clientSideConnectionTimeHistory.
		refreshAllTimeHistory.
		clientSideMcPageReadsTimeHistory.
		clientSideProxyMaterializationTimeHistory.
		clientSideCommitTimeHistory.
		objectsReadPerSecond.
		objectBytesReadPerSecond.
		refreshViewHistory
	 } do: aBlock! !

!MagmaSessionStatistics methodsFor: 'initialize-release' stamp: 'cmm 11/6/2013 21:27'!
initialize
	super initialize.
	clientSideConnectionTimeHistory _ MaStatHistory name: 'Connection Time'.
	refreshAllTimeHistory _ MaStatHistory name: 'Connection refresh time'.
	clientSideMcPageReadsTimeHistory _ MaStatHistory name: 'MagmaCollection Page Reads'.
	clientSideProxyMaterializationTimeHistory _ MaStatHistory name: 'Proxy Materializations'.
	clientSideCommitTimeHistory _ MaStatHistory name: 'Time to Serialize Commit Packages'.
	objectsReadPerSecond _ MaStatHistory name: 'Objects per second read'.
	objectBytesReadPerSecond _ MaStatHistory name: 'Bytes per second read'.
	refreshViewHistory _ MaStatHistory name: 'Time to Refresh View'! !

!MagmaSessionStatistics methodsFor: 'initialize-release' stamp: 'cmm 12/22/2008 15:22'!
release
	self noteStop.
	super release! !

!MagmaSessionStatistics methodsFor: 'copying' stamp: 'cmm 12/22/2008 16:25'!
postArchivalCopy
	super postArchivalCopy.
	self noteStop! !

!MagmaStat methodsFor: 'accessing' stamp: 'cmm 12/13/2016 20:44'!
addValue: aMagnitude 
	super addValue: aMagnitude.
	last _ last asFloat.
	"Check for overflow.  Magma pulls the numbers straight from my Buffer and performs the arithmetic as a pre-write adjustment on the server, therefore I cannot support beyond the range of immediate Integers (e.g., SmallInteger range)."
	(deltaCount + count) > 1073741823 ifTrue: [ MaOverflowError signal ]! !

!MagmaStat methodsFor: 'accessing' stamp: 'cmm 1/3/2014 09:53'!
count
	^ super count + deltaCount! !

!MagmaStat methodsFor: 'accessing' stamp: 'cmm 1/9/2014 16:14'!
deltaCount
	"The number of values which have not yet been committed to my repository."
	^ deltaCount! !

!MagmaStat methodsFor: 'accessing' stamp: 'cmm 1/9/2014 13:30'!
deltaSum
	"The portion of my #sum which is not yet committed to my repository."
	^ deltaSum! !

!MagmaStat methodsFor: 'accessing' stamp: 'cmm 7/29/2015 17:11'!
max
	^ max = Float negativeInfinity ifFalse: [ max ]! !

!MagmaStat methodsFor: 'accessing' stamp: 'cmm 4/28/2014 19:36'!
min
	^ min = Float infinity ifFalse: [ min ]! !

!MagmaStat methodsFor: 'accessing' stamp: 'cmm 1/3/2014 09:53'!
sum
	^ super sum + deltaSum! !

!MagmaStat methodsFor: 'private' stamp: 'cmm 1/3/2014 13:54'!
adjustCount: anInteger sum: aFloat 
	"Don't call super, we want to add to the delta's instead of count and sum."
	deltaSum _ deltaSum + aFloat.
	deltaCount _ deltaCount + anInteger! !

!MagmaStat methodsFor: 'private' stamp: 'cmm 1/3/2014 13:55'!
adjustValues: aFloat 
	"Don't call super, we want to add to the delta's instead of count and sum."
	self
		adjustCount: 1
		sum: aFloat! !

!MagmaStat methodsFor: 'private' stamp: 'cmm 1/10/2014 14:18'!
captureLocalValues
	deltaCount isZero ifFalse:
		[ self
			
			attributeNamed: #deltaCountBeforeRefresh
			put: deltaCount ;
			
			attributeNamed: #deltaSumBeforeRefresh
			put: deltaSum ]! !

!MagmaStat methodsFor: 'private' stamp: 'cmm 1/16/2014 14:09'!
postRefreshUsing: aMaObjectBuffer for: aMagmaSession 
	"Filter MagmaStat's from being removed from the commitPackage when using WriteBarrier."
	aMagmaSession allowWriteBarrier ifFalse:
		[ super
			postRefreshUsing: aMaObjectBuffer
			for: aMagmaSession ]! !

!MagmaStat methodsFor: 'private' stamp: 'cmm 11/10/2014 10:30'!
refreshFrom: aMaObjectBuffer using: aMagmaSession includingLocal: aBoolean 
	"An important implementation awareness:  Remember that aMaObjectBuffer may already include its #prewriteAdjustmentTo:from:, or it may not.  CommitLogRecords are written PRIOR to the adjustment, whereas buffers in the DB are written AFTER the adjustment.  The adjustment itself is simply the transfer of the delta-values to the shared-values, and zero'ing out the deltas.
	This method doesn't know where aMaObjectBuffer came from, so doing the same 'adjustment' right here is the correct behavior."
	| sharedMin sharedMax |
	"Update my 'attributes', 'count' and 'sum'."
	1
		to: 3
		do:
			[ : instVarIndex | self
				slotAt: instVarIndex
				put: (aMagmaSession serializer objectWithOid: (aMaObjectBuffer maInstVarAt: instVarIndex)) ].
	"Now add-in the deltas from the buffer."
	count _ count + (MaOidCalculator integerFromOid: (aMaObjectBuffer maInstVarAt: 7)).
	sum _ sum + (MaOidCalculator floatFromOid: (aMaObjectBuffer maInstVarAt: 8)).
	sharedMin _ MaOidCalculator floatFromOid: (aMaObjectBuffer maInstVarAt: 4).
	min _ aBoolean
		ifTrue: [ sharedMin ]
		ifFalse: [ min min: sharedMin ].
	sharedMax _ MaOidCalculator floatFromOid: (aMaObjectBuffer maInstVarAt: 5).
	max _ aBoolean
		ifTrue: [ sharedMax ]
		ifFalse: [ max max: sharedMax ].
	aBoolean ifTrue:
		[ last _ MaOidCalculator floatFromOid: (aMaObjectBuffer maInstVarAt: 6).
		deltaCount _ 0.
		deltaSum _ 0.0 ]! !

!MagmaStat methodsFor: 'private' stamp: 'cmm 1/10/2014 14:16'!
restoreLocalValues: aBoolean

	! !

!MagmaStat methodsFor: 'initialize-release' stamp: 'cmm 1/20/2014 13:57'!
initialize
	super initialize.
	deltaSum _ Float zero.
	deltaCount _ Integer zero.
	min _ Float infinity.
	max _ Float infinity negated! !

!MaTransaction methodsFor: 'writebarrier' stamp: 'cmm 12/1/2011 20:52'!
add: anObject
	"Handle special processing required by Dictionary's."
	anObject addSelfToWriteBarrier: self! !

!MaTransaction methodsFor: 'writebarrier' stamp: 'cmm 12/1/2011 21:09'!
addHashedCollection: aHashedCollection 
	super add: aHashedCollection.
	super add: aHashedCollection array.
	dictionaryArrays
		at: aHashedCollection array
		put: aHashedCollection! !

!MaTransaction methodsFor: 'writebarrier' stamp: 'cmm 8/21/2012 21:14'!
modified: anObject 
	ignoreModifiedSignals ifFalse:
		[ | obj |
		obj _ (anObject isArray and: [ dictionaryArrays includesKey: anObject ])
			ifTrue: [ dictionaryArrays at: anObject ]
			ifFalse: [ anObject ].
		commitPackage addObject: obj ]! !

!MaTransaction methodsFor: 'writebarrier' stamp: 'cmm 1/17/2013 20:19'!
newBuilderForClass: aClass
	^ MagmaWbClassBuilder
		target: aClass 
		barrier: self! !

!MaTransaction methodsFor: 'writebarrier' stamp: 'cmm 7/14/2009 14:33'!
suspendWriteBarrierModifiedsWhile: aBlock 
	"Employ 'priorValue' to support nested suspendWriteBarrierModifiedsWhile: 's."
	| priorValue |
	priorValue _ ignoreModifiedSignals.
	ignoreModifiedSignals _ true.
	^ aBlock ensure: [ ignoreModifiedSignals _ priorValue ]! !

!MaTransaction methodsFor: 'writebarrier' stamp: 'cmm 5/22/2018 23:43'!
useWriteBarrierOn: anObject 
	^ anObject maAllowsWriteBarrier and: [ session allowWriteBarrier ]! !

!MaTransaction methodsFor: 'writebarrier' stamp: 'cmm 3/27/2005 22:56'!
validateWriteBarrier: aBoolean
	"We can't allow them to stop using the writeBarrier in the middle of a transaction in which objects are already changed.."

	aBoolean
		ifFalse:
			[ commitPackage objects notEmpty
				ifTrue:
					[ MagmaUserError signal: 'Cannot stop using writeBarrier in the middle of a transaction.' ] ]! !

!MaTransaction methodsFor: 'private' stamp: 'cmm 8/21/2012 21:13'!
addChangesFromReadSet
	readSet keysAndValuesDo:
		[ : eachCurrent : eachBuffer | | didChange | 
		eachCurrent ifNotNil:
			[ didChange _ self
				didChange: eachCurrent
				from: eachBuffer.
			didChange ifTrue: [ commitPackage addObject: eachCurrent ] ] ]! !

!MaTransaction methodsFor: 'private' stamp: 'cmm 3/27/2005 17:02'!
addLargeCollectionChangesTo: aMaCommitPackage

	largeCollectionChanges do:
		[ :each |
		each hasChanges
			ifTrue:
				[ aMaCommitPackage
					addLargeCollectionChanges: each
					using: session ] ]! !

!MaTransaction methodsFor: 'private' stamp: 'cmm 12/1/2011 21:03'!
addNormalObject: anObject
	"ugh"
	super add: anObject! !

!MaTransaction methodsFor: 'private' stamp: 'cmm 9/18/2008 17:18'!
bufferFor: anObject ifAbsent: aBlock 
	^ readSet 
		at: anObject
		ifAbsent: aBlock! !

!MaTransaction methodsFor: 'private' stamp: 'cmm 5/25/2013 17:21'!
bufferFor: anObject is: aMaObjectBuffer 
	anObject isBehindWriteBarrier ifTrue: [ MagmaSoftwareError signal: 'should not add objects behind WB to the readSet!!' ].
	readSet
		at: anObject
		put: aMaObjectBuffer trimByteArray! !

!MaTransaction methodsFor: 'private' stamp: 'cmm 7/15/2008 14:58'!
commitNumber
	^ commitNumber ! !

!MaTransaction methodsFor: 'private' stamp: 'cmm 7/15/2008 14:56'!
commitNumber: anInteger
	commitNumber _ anInteger! !

!MaTransaction methodsFor: 'private' stamp: 'cmm 7/10/2009 14:52'!
commitPackage
	^ commitPackage! !

!MaTransaction methodsFor: 'private' stamp: 'cmm 7/10/2009 13:48'!
modifiedObjects
	"Answers the collection of objects already in the commitPackage.  When WriteBarrier is in use, many objects are added *as* they are changed, via my #modified: method."
	^ commitPackage objects! !

!MaTransaction methodsFor: 'private' stamp: 'cmm 9/25/2012 19:59'!
resetNewLargeCollections
	largeCollectionChanges _ largeCollectionChanges reject:
		[ : each | (MaOidCalculator isOidForNewObject: each collectionOid) and:
			[ each collectionOid: nil.
			true ] ]! !

!MaTransaction methodsFor: 'private'!
session: aMagmaSession

	session _ aMagmaSession
! !

!MaTransaction methodsFor: 'private' stamp: 'cmm 4/10/2005 18:00'!
warnOfTruncationsIn: aCollection 
	aCollection isEmptyOrNil 
		ifFalse: 
			[MagmaTruncationWarning 
				signal: (String streamContents: 
							[:stream | 
							stream nextPutAll: 'Your definition of '.
							(aCollection collect: [:each | each maOriginalClass name]) asSet do: 
									[:each | 
									stream
										nextPutAll: each;
										nextPutAll: ', '].
							stream 
								nextPutAll: 'are missing instance variables present in the repository-version.  If you proceed with this commit, information in one or more of these instances will be lost.'])]! !

!MaTransaction methodsFor: 'building' stamp: 'cmm 3/22/2010 18:24'!
captureOldHashesFor: anObject 
	largeCollectionChanges do: 
		[ : eachChanges | 
		(eachChanges collection canIndex: anObject) ifTrue: 
			[ eachChanges collection indexesDo: 
				[ : eachIndex | 
				| oldKeys oldHashes |
				oldKeys _ potentialKeysChange 
					at: anObject
					ifAbsentPut: [ MaIdentityDictionary new ].
				oldHashes _ oldKeys 
					at: eachIndex attribute
					ifAbsentPut: [ OrderedCollection new ].
				oldHashes add: { 
						eachChanges.
						eachIndex.
						(eachIndex indexHashesFor: anObject)
					 } ] ] ]! !

!MaTransaction methodsFor: 'building' stamp: 'cmm 11/12/2011 12:06'!
markRead: anObject using: aMaObjectBuffer 
	(session immutabilityStrategy
		isImmutable: anObject
		using: self) ifTrue: [ ^ anObject ].
	anObject isImmutableInMagma ifTrue: [ ^ anObject ].
	(self useWriteBarrierOn: anObject)
		ifTrue:
			[ anObject isBehindWriteBarrier ifFalse: [ self add: anObject ].
			commitPackage removeObject: anObject ]
		ifFalse:
			[ self
				bufferFor: anObject
				is: aMaObjectBuffer ].
	anObject maIsLargeCollection ifTrue:
		[ self monitorLargeCollectionChanges: anObject changes.
		anObject session: session ].
	^ anObject! !

!MaTransaction methodsFor: 'building' stamp: 'cmm 3/16/2005 12:43'!
monitorLargeCollectionChanges: aMaLargeCollectionChanges

	largeCollectionChanges add: aMaLargeCollectionChanges
! !

!MaTransaction methodsFor: 'building' stamp: 'brp 12/22/2005 18:32'!
recordPotentialKeyChanges

	potentialKeysChange keysAndValuesDo:
		[ :eachObject :eachKeys |
			eachKeys valuesDo: 
				[ :eachHashes |
					eachHashes do: 
						[ :eachCio | "#( changes index, oldHash )"
							self
								recordPotentialKeyChangesFrom: eachCio last
								of: eachObject
								index: eachCio second
								in: eachCio first ] ] ]
! !

!MaTransaction methodsFor: 'building' stamp: 'cmm 8/2/2009 17:32'!
recordPotentialKeyChangesFrom: oldHashValues of: anObject index: aMaIndexDefinition in: aMagmaCollectionChanges 
	| newHashValues |
	anObject ifNil: [ ^ self ].
	newHashValues _ aMaIndexDefinition indexHashesFor: anObject.
	"If hash index value has changed."
	(oldHashValues maConsistsOf: newHashValues) ifFalse: 
		[ | common |
		common _ oldHashValues intersection: newHashValues.
		aMagmaCollectionChanges 
			move: anObject
			from: (oldHashValues copyWithoutAll: common)
			to: (newHashValues copyWithoutAll: common)
			forIndexedAttribute: aMaIndexDefinition attribute ]! !

!MaTransaction methodsFor: 'building' stamp: 'cmm 11/23/2008 17:24'!
remove: anObject 
	super remove: anObject.
	readSet 
		removeKey: anObject
		ifAbsent: 
			[ "do nothing"
			 ]! !

!MaTransaction methodsFor: 'accessing' stamp: 'cmm 4/5/2005 21:31'!
changedObjects

	| preservedCommitPackage answer |
	"this method must be non-destructive to the my commitPackage because it may be requested again."
	preservedCommitPackage _ commitPackage copyWithNewLargeCollectionChanges.  "It should actually be ok to share its 'objects'."
	self
		addChangesFromReadSet ;  "another potential truncation warning"
		recordPotentialKeyChanges ;
		addLargeCollectionChangesTo: commitPackage.
	answer _ commitPackage.
	commitPackage _ preservedCommitPackage.
	^ answer! !

!MaTransaction methodsFor: 'accessing' stamp: 'cmm 1/19/2012 20:18'!
commitPackageCountByClass
	^ (commitPackage objects asArray collect: [ : each | each maOriginalClass ]) asBag sortedCounts! !

!MaTransaction methodsFor: 'accessing'!
largeCollectionChanges

	^largeCollectionChanges! !

!MaTransaction methodsFor: 'accessing' stamp: 'cmm 5/8/2013 22:00'!
readSetCountByClass
	^ (readSet keys collect:
		[ : each | (each maIsMutatingProxy and: [ each maRealObjectIsReified ])
			ifTrue: [ each maOriginalClass ]
			ifFalse: [ each class ] ]) asBag sortedCounts! !

!MaTransaction methodsFor: 'initializing' stamp: 'cmm 6/23/2013 15:07'!
cleanUpWriteBarrier
	self resetCommitPackage.
	WeakArray removeWeakDependent: builders! !

!MaTransaction methodsFor: 'initializing' stamp: 'cmm 12/1/2011 20:59'!
initialize
	super initialize.
	readSet _ MaObjectSerializerPreferences newWeakIdentityKeyDictionary.
	largeCollectionChanges _ WeakSet new.
	self resetCommitPackage.
	ignoreModifiedSignals _ false.
	"Conveniently initialized to avoid nil check in code."
	commitNumber _ 0.
	dictionaryArrays _ MaObjectSerializerPreferences newWeakIdentityKeyDictionary! !

!MaTransaction methodsFor: 'initializing' stamp: 'cmm 6/27/2013 09:49'!
installWriteBarrierUsing: aMagmaSession
	"Remove and re-add all objects to move them from the readSet into a WriteBarrier."
	| changedObjects |
	WeakArray addWeakDependent: builders.
	changedObjects _ self changedObjects.
	self writeBarrierStatusChangedFor: aMagmaSession.
	changedObjects objects do: [ : each | self modified: each ]! !

!MaTransaction methodsFor: 'initializing' stamp: 'cmm 3/22/2010 18:24'!
resetCommitPackage
	commitPackage _ MaCommitPackage new.
	"potentialKeyChanges are only ever part of a single commit-package, so reset those too."
	potentialKeysChange _ MaIdentityDictionary new! !

!MaTransaction methodsFor: 'initializing' stamp: 'cmm 6/23/2013 15:07'!
writeBarrierStatusChangedFor: aMagmaSession 
	"Enumerate all persistent objects and put them appropriately either into my writeBarrier or readSet."
	aMagmaSession serializer objectsDo:
		[ : each | | buffer |
		buffer _ aMagmaSession bufferFor: each.
		self
			 remove: each ;
			
			markRead: each
			using: buffer ]! !

!MaTransaction methodsFor: 'testing' stamp: 'cmm 2/17/2014 15:56'!
didChange: anObject 
	"Answer whether anObject has changed for this transaction."
	(session immutabilityStrategy
		isImmutable: anObject
		using: self) ifTrue: [ ^ false ].
	anObject isImmutableInMagma ifTrue: [ ^ false ].
	^ anObject isBehindWriteBarrier
		ifTrue: [ commitPackage includesObject: anObject ]
		ifFalse:
			[ "Under very heavy loads, its possible for a client to get disconnected during a long series of reads.  One of those reads could be in the middle of a materialization (maEstablishPointerReferencesFor:using:.  But since this happens before the call to #markRead:using:, it isn't in the readSet yet!!)"
			self
				didChange: anObject
				from: (readSet at: anObject ifAbsent: [ ^ false ]) ]! !

!MaTransaction methodsFor: 'testing' stamp: 'cmm 5/6/2013 20:23'!
didChange: anObject from: aMaObjectBuffer 
	"Answer whether anObject has changed for this transaction."
	^ aMaObjectBuffer 
		isDifferent: anObject realObjectIfMutatingProxy
		using: session serializer! !

!MaTransaction methodsFor: 'testing' stamp: 'cmm 10/12/2009 13:17'!
isMonitoring: aMagmaLargeCollectionChanges
	^ largeCollectionChanges includes: aMagmaLargeCollectionChanges! !

!MaTransaction methodsFor: 'actions' stamp: 'cmm 3/7/2011 20:17'!
ensureOldHashesCapturedFor: anObject 
	"What we need to do here is capture the before-keys of any object which, potentially belonging to a MagmaCollection, potentially changing its key by way of its instVars being changed so that we may, in modified: actually determine whether we should record the changed-key in my commitPackage."
	(potentialKeysChange includesKey: anObject yourself) ifTrue: [ ^ self ].
	self captureOldHashesFor: anObject yourself! !

!MaTransaction methodsFor: 'actions' stamp: 'cmm 5/3/2005 12:56'!
ensureOldHashesCleanedFor: anObject
	"What we need to do here is capture the before-keys of any object which, potentially belonging to a MagmaCollection, potentially changing its key by way of its instVars being changed so that we may, in modified: actually determine whether we should record the changed-key in my commitPackage."

	potentialKeysChange 
		removeKey: anObject
		ifAbsent: [ "do nothing" ]! !

!MaTransaction methodsFor: 'actions' stamp: 'cmm 5/22/2018 23:37'!
finalizeOids
	builders finalizeValues.
	dictionaryArrays finalizeValues.
	readSet finalizeValues! !

!MaTransaction methodsFor: 'actions' stamp: 'cmm 1/10/2014 16:46'!
restore
	"restore all changed objects to their state as read from the repository."
	largeCollectionChanges do: [ : each | each reset ].
	self suspendWriteBarrierModifiedsWhile: 
		[ readSet keysAndValuesDo: 
			[ : eachOriginal : eachBackup | 
			eachBackup
				refresh: eachOriginal realObjectIfMutatingProxy
				using: session
				includingLocal: true ] ]! !

!MaTransaction class methodsFor: 'creation'!
session: aMagmaSession

	^self new session: aMagmaSession
! !

!MagmaWbClassBuilder methodsFor: 'as yet unclassified' stamp: 'cmm 12/3/2011 16:55'!
addPrimitiveOverride: methodSelector 
	| mb |
	mb _ WBMethodBuilder
		selector: methodSelector
		class: class
		fields: Array empty.
	mb
		 generateSignature ;
		 generateTemporaryDeclarations ;
		 generateCallSuperSendingToArgs: #realObjectIfMutatingProxy ;
		 generateReturn.
	class
		compileSilently: mb streamContents
		classified: 'overriding'! !

!MagmaWbClassBuilder methodsFor: 'as yet unclassified' stamp: 'cmm 11/11/2016 14:39'!
installMagmaOverrides
	class
		compileSilently:
'maOriginalClass
	^ self class superclass'
		classified: 'accessing'.
	class
		compileSilently:
'xxxClass
	^ self class superclass'
		classified: 'accessing'.
	class class
		compileSilently:
'theNonWriteBarrierClass
	^ self superclass'
		classified: 'accessing'.! !

!MagmaWbClassBuilder methodsFor: 'as yet unclassified' stamp: 'cmm 6/12/2012 22:40'!
installOverrides
	super installOverrides.
	self
		 installMagmaOverrides ;
		 installPrimitiveOverrides! !

!MagmaWbClassBuilder methodsFor: 'as yet unclassified' stamp: 'cmm 5/30/2018 22:50'!
installPrimitiveOverrides
	"Override all primitive methods which take an argument to be sure not to send it a MagmaMutatingProxy."
	"skip ones already overridden elsewhere."
	| skip |
	skip _ #(#at:put: #instVarAt:put:).
	class allSuperclassesDo:
		[ : eachClass | eachClass methodDictionary do:
			[ : eachMethod | ((skip includes: eachMethod selector) not and:
				[ eachMethod primitive > 0 and:
					[ eachMethod selector isUnary not and: [ (class theNonWriteBarrierClass methodDictionary includesKey: eachMethod selector) not ] ] ]) ifTrue: [ self addPrimitiveOverride: eachMethod selector ] ] ]! !

!MagmaWbClassBuilder methodsFor: 'as yet unclassified' stamp: 'cmm 4/10/2005 19:55'!
migrateFromTarget: oldSuperclass to: newSuperclass

	| oldClass |
self halt.
	oldClass _ class.
	"Was the immediate WriteBarrier superclass modified (or was it a superclass of that)?"
	(oldClass superclass == newSuperclass)
		ifTrue:
			[ oldClass superclass: oldSuperclass.
			class _ self createSubclassOf: newSuperclass.
			class updateInstancesFrom: oldClass ]
		ifFalse:
			[ "Although my class refers to the proper superclass, it must be rebuilt because its format has changed and must now be updated."
			class _ self createSubclassOf: oldClass superclass.
			ClassBuilder new mutate: oldClass to: class
"			self
				updateInstancesOf: oldClass
				to:  class" ]! !

!ProtoObject methodsFor: '*magma-client' stamp: 'cmm 3/16/2005 12:37'!
maIsLargeCollection 

	^ false
! !

!ProtoObject methodsFor: '*magma-client' stamp: 'cmm 8/30/2010 19:09'!
magmaSession
	"Answer the connected MagmaSession that the receiver was retrieved in.  If I am not an object retrieved from any session, answer nil."
	^ self quickMagmaSession ifNil:
		[ MagmaSession allClientInstances
			detect: [ : each | each isPersistent: self ]
			ifNone: [ nil ] ]! !

!ProtoObject methodsFor: '*magma-client' stamp: 'cmm 7/16/2010 10:46'!
quickMagmaSession
	"Answer the connected MagmaSession that the receiver was retrieved in.  If I am not an object retrieved from any connected session, answer nil."
	^ MagmaSession connectedSessions 
		detect: [ : each | each isPersistent: self ]
		ifNone: [ nil ]! !

!ProtoObject methodsFor: '*magma-client' stamp: 'cmm 11/10/2014 10:31'!
refreshFrom: aMaObjectBuffer using: aMagmaSession includingLocal: aBoolean 
	| inImageDefinition linkDescriptionDefinition classIdManager |
	classIdManager _ aMagmaSession serializer classIdManager.
	inImageDefinition _ classIdManager inImageDefinition: self maSerializationClass.
	linkDescriptionDefinition _ classIdManager
		definitionForClassId: (classIdManager idForClass: self maSerializationClass)
		version: aMaObjectBuffer classVersion.
	aMaObjectBuffer instVarsDoWithIndex:
		[ : sourceOid : sourceIndex |  | targetIndex |
		targetIndex _ 
			inImageDefinition
				indexOfInstVarCorrespondingTo: sourceIndex
				of: linkDescriptionDefinition.
		targetIndex > 0
			ifTrue:
				[ (self maIsTransient: targetIndex) ifFalse:
					[ self
						slotAt: targetIndex
						put: (aMagmaSession serializer objectWithOid: sourceOid) ] ] ]! !

!ProtoObject methodsFor: '*magma-client' stamp: 'cmm 4/13/2005 14:04'!
wantsMagmaEvents
	"If true, this object will listen to #magmaAboutToRefresh events from the event-listener mechanism (see Object 'events' method category).  After overriding with true in your class, you may then use #when:send:to: to direct the events to your purpose.  For example:
	
	self when: #magmaAboutToRefresh send: #doSomething to: anyObject
	self when: #magmaRefreshed send: #changed to: self
	self when: #materializedFromMagma send: #upgrade: to: self  (arg is a MagmaMaterializationEvent)"

	^ false! !

!Object methodsFor: '*magma-client' stamp: 'cmm 12/1/2011 20:44'!
addSelfToWriteBarrier: aMaxTransaction
	aMaxTransaction addNormalObject: self! !

!Object methodsFor: '*magma-client' stamp: 'cmm 2/24/2009 16:26'!
asMagmaForwardingProxy
	^ MagmaForwardingProxy for: self! !

!Object methodsFor: '*magma-client' stamp: 'cmm 5/23/2013 10:32'!
conflictingObjectCopy
	^ self shallowCopy! !

!Object methodsFor: '*magma-client' stamp: 'cmm 7/17/2010 11:16'!
hash32
	"Answer my hash, ensuring not to exceed 32-bits."
	^ self hash \\ (1 bitShift: 32)! !

!Object methodsFor: '*magma-client' stamp: 'cmm 11/13/2011 16:02'!
immutabilityStrategy
	^ MaImmutabilityStrategy new
		treatAny: String
		asImmutableIf: [ : string | true ] ; 
		yourself! !

!Object methodsFor: '*magma-client' stamp: 'cmm 4/28/2014 10:10'!
isDirtyInMagma
	"If I was read from a Magma database, and I've changed since being read, answer true.  Otherwise, false."
	^ self magmaSession isDirty: self! !

!Object methodsFor: '*magma-client' stamp: 'cmm 4/8/2005 12:40'!
isImmutableInMagma
	"This is used to help determine whether I should be stored in Magma's 'readSet', which is used to track changes.  But changes to some objects, such as Symbols, Blocks, CompiledMethods or logically-referenced globals are not tracked.  Therefore, there is no reason to bloat the readSet (not to mention when refreshPersistentObjectsEvenWhenChangedOnlyByMe is true, it won't try to refresh the unrefreshable."

	^ self maInstSize = 0! !

!Object methodsFor: '*magma-client' stamp: 'cmm 7/6/2009 21:21'!
isMagmaId
	^ false! !

!Object methodsFor: '*magma-client' stamp: 'cmm 1/28/2005 00:16'!
isMagmaServerResult

	^ false! !

!Object methodsFor: '*magma-client' stamp: 'cmm 5/22/2018 22:35'!
maAllowsWriteBarrier
	"Override in subclasses, if desired."
	"Objects *can* change during serialization (such as when the first instance of a new class is added, the classDefinitions will change), so we cannot #suspendWriteBarrierModifiedsWhile: serializing.  However, we don't want to pick up changes due to #maWantsPreSerialization, because that hook does not cause the readSet to expand when not using WriteBarrier, therefore we don't want it to when using the WriteBarrier (we want the behavior to be consistent)."
	^ self isImmutableInMagma not and: [ self maWantsPreSerialization not ]! !

!Object methodsFor: '*magma-client' stamp: 'apg 4/25/2005 10:06'!
maIsAssociation

	^ false! !

!Object methodsFor: '*magma-client' stamp: 'cmm 11/8/2014 12:25'!
maIsChangedFrom: aMaVariableObjectBuffer using: aMaObjectSerializer 
	"I am variable."

	aMaVariableObjectBuffer isPointers 
		ifFalse: 
			[MagmaSoftwareError signal: self maOriginalClass name 
						, ' should implement maIsChangedFrom:using:.'].
	1 to: self maInstSize
		do: 
			[:index | 
			(index > self maOriginalClass instSize 
				or: [(self maIsTransient: index) not]) 
					ifTrue: 
						[(aMaObjectSerializer oidFor: (self slotAt: index)) 
							~= (aMaVariableObjectBuffer maInstVarAt: index) ifTrue: [^true]]].
	^false! !

!Object methodsFor: '*magma-client' stamp: 'cmm 11/10/2014 10:31'!
maRefreshTo: aMaVariableBuffer using: aMagmaSession 
	"I am variable."
	self maOriginalClass isBytes
		ifTrue:
			[ self
				replaceFrom: 1
				to: self size
				with: aMaVariableBuffer asByteArray
				startingAt: 1 ]
		ifFalse:
			[ "I am pointers or words."
			aMaVariableBuffer instVarsDoWithIndex:
				[ : eachOid : eachIndex |
				self
					slotAt: eachIndex
					put: (aMagmaSession serializer objectWithOid: eachOid) ] ]! !

!Object methodsFor: '*magma-client' stamp: 'cmm 6/30/2013 17:42'!
magmaBuffer
	"The database buffer representing this object."
	^ self magmaSession ifNotNil:
		[ : sess | sess bufferFor: self ]! !

!Object methodsFor: '*magma-client' stamp: 'cmm 6/19/2013 14:05'!
magmaCommitLogEntry
	^ self magmaSession ifNotNil: [ : sess | sess commitLogEntryAt: self magmaCommitNumber ]! !

!Object methodsFor: '*magma-client' stamp: 'cmm 6/19/2013 14:00'!
magmaCommitLogRecord
	^ self magmaSession ifNotNil: [ : sess | sess commitLogRecordAt: self magmaCommitNumber ]! !

!Object methodsFor: '*magma-client' stamp: 'cmm 6/19/2013 13:51'!
magmaCommitNumber
	"The database buffer representing this object."
	^ self magmaBuffer ifNotNil: [ : buffer | buffer commitNumber ]! !

!Object methodsFor: '*magma-client' stamp: 'cmm 6/20/2013 18:43'!
magmaCommitPackage
	"The package of objects which were part of the same commit as this objects last commit."
	^ self magmaSession ifNotNil: [ : sess | sess commitPackageAt: self magmaCommitNumber ]! !

!Object methodsFor: '*magma-client' stamp: 'cmm 6/20/2013 18:42'!
magmaLastUpdated
	"The DateAndTime this object was lastUpdated.  If this information is no longer available in the commit logs, nil."
	^ self magmaCommitLogRecord ifNotNil:
		[ : rec | rec timestamp ]! !

!Object methodsFor: '*magma-client' stamp: 'cmm 6/20/2013 18:52'!
magmaLastUpdaterSessionId
	"The sessionId (UUID) of the last session that updated this object.  If this information is no longer available in the commit logs, nil."
	^ self magmaCommitLogEntry ifNotNil:
		[ : entry | entry connection sessionId ]! !

!Object methodsFor: '*magma-client' stamp: 'cmm 6/20/2013 18:52'!
magmaLastUpdaterUserId
	"The userId of the last session that updated this object.  If this information is no longer available in the commit logs, nil."
	^ self magmaCommitLogEntry ifNotNil:
		[ : entry | entry connection userId ]! !

!Object methodsFor: '*magma-client' stamp: 'cmm 3/23/2009 18:00'!
magmaOid
	^ self magmaSession ifNotNilDo: [ : sess | sess oidFor: self ]! !

!Object methodsFor: '*magma-client' stamp: 'cmm 12/22/2012 14:06'!
mergeConflicting: anObject
	^ false! !

!Object methodsFor: '*magma-client' stamp: 'cmm 7/10/2014 13:03'!
needsRepair
	"Generic implementation of a #needsRepair.  If proper convention of signaling a MagmaRepairNotification every time a piece of bad data is found, then no MagmaDataRepair's should need to specify any check block other than 'each needsRepair'."
	[ self repair ]
		on: MagmaRepairNotification
		do:
			[ : noti | "Let the repair notification be printed to the log."
			MagmaRepairNotification signal: noti messageText.
			^ true ].
	^ false! !

!Object methodsFor: '*magma-client' stamp: 'cmm 1/16/2014 14:10'!
postRefreshUsing: aMaObjectBuffer for: aMagmaSession
	aMagmaSession transaction
		markRead: self
		using: aMaObjectBuffer! !

!Object class methodsFor: '*magma-client' stamp: 'cmm 10/7/2014 19:36'!
at: aMagmaRemoteLocation as: userId 
	^ aMagmaRemoteLocation newSession
		 connectAs: userId ;
		 root! !

!Object class methodsFor: '*magma-client' stamp: 'cmm 10/7/2014 19:36'!
at: host port: port as: userId 
	^ self
		at:
			(MagmaRemoteLocation
				host: host
				port: port)
		as: userId! !

!Boolean methodsFor: '*magma-client' stamp: 'cmm 10/29/2009 13:11'!
asMagmaForwardingProxy
	"No."
	^ self! !

!Color methodsFor: '*magma-client' stamp: 'cmm 8/23/2011 18:28'!
isImmutableInMagma 
	^ true! !

!UndefinedObject methodsFor: '*magma-client' stamp: 'cmm 10/28/2009 23:39'!
asMagmaForwardingProxy
	"No."
	^ self! !

!UndefinedObject methodsFor: '*magma-client' stamp: 'cmm 9/20/2005 11:19'!
maIsChangedFrom: aMaByteObjectBuffer using: aMaObjectSerializer
	"Because nil keys develop in WeakKeyDictionaries, this method is necessary."
	^ false! !

!UndefinedObject methodsFor: '*magma-client' stamp: 'cmm 9/20/2005 11:19'!
maRefreshTo: aMaStorageObjectBuffer using: aMagmaSession
	"Because nil keys develop in WeakKeyDictionaries, this method is necessary."
	^ self! !

!Behavior methodsFor: '*magma-client' stamp: 'cmm 5/2/2005 17:54'!
isImmutableInMagma 

	^ true! !

!BasicClassOrganizer methodsFor: '*magma-client' stamp: 'cmm 4/8/2005 12:33'!
isImmutableInMagma

	^ true! !

!SystemOrganizer methodsFor: '*magma-client' stamp: 'cmm 4/8/2005 12:33'!
isImmutableInMagma

	^ true! !

!Number methodsFor: '*magma-client' stamp: 'cmm 12/23/2010 14:55'!
isImmutableInMagma
	^ true! !

!Float methodsFor: '*magma-client' stamp: 'cmm 10/29/2009 13:09'!
asMagmaForwardingProxy
	"No."
	^ self! !

!Float methodsFor: '*magma-client' stamp: 'cmm 12/31/2014 13:59'!
hashKey32
	"Used for MaFloatIndex.
	Implementation:  32-bit Floats asIEEE32Bit Integers map as follows:
		-Infinity =  4286578688
		-negative floats = 4286578687 --  2147483649
		-0.0 =  2147483648
		0.0 = 0
		positive floats = 1- 2139095039
		+Infinity =  2139095040.
	This method maps
		 -Infinity<----->+Infinity to 0<------>(2^32)-1"
	self > 0.0 ifTrue: [
		^16r80000003 + ((FloatArray basicNew: 1) at: 1 put: self; basicAt: 1) ].
	self < 0.0 ifTrue: [
		^16rFF800000 - ((FloatArray basicNew: 1) at: 1 put: self; basicAt: 1) ].
	self = self ifFalse: [ ^16rFFFFFFFF "NaN" ].
	(self at: 1) = 0 ifTrue: [ ^16r80000003 "Zero" ].
	^16r7F800000 "Negative zero"! !

!LargePositiveInteger methodsFor: '*magma-client' stamp: 'cmm 3/27/2005 23:12'!
maAllowsWriteBarrier 
	"No reason to."
	^ false! !

!SmallInteger methodsFor: '*magma-client' stamp: 'cmm 10/29/2009 13:09'!
asMagmaForwardingProxy
	"No."
	^ self! !

!DateAndTime methodsFor: '*magma-client' stamp: 'cmm 10/28/2010 10:38'!
isImmutableInMagma 
	"These don't change once they're created, so don't bother to record them in magma's readSet."
	^ true! !

!Duration methodsFor: '*magma-client' stamp: 'cmm 11/2/2010 11:24'!
isImmutableInMagma
	^ true! !

!Time methodsFor: '*magma-client' stamp: 'cmm 12/24/2011 16:09'!
isImmutableInMagma 
	^ true! !

!Association methodsFor: '*magma-client' stamp: 'cmm 4/8/2005 12:36'!
isImmutableInMagma
	"Magma does not track changes to globals.  Therefore, if I am one of the entries in the Smalltalk global dictionary, I am immutable, otherwise I'm not."

	^ self maUsesStandardStorage not! !

!Association methodsFor: '*magma-client' stamp: 'apg 4/25/2005 10:06'!
maIsAssociation

	^ true! !

!Association methodsFor: '*magma-client' stamp: 'cmm 2/8/2005 16:08'!
maIsChangedFrom: aMaByteObjectBuffer using: aMaObjectSerializer
	"If I was an Association for a known global (see #maAsStorageObject), then I am being stored as a Proxy.  Changes to these global relationships are not tracked."

	^ false! !

!Association methodsFor: '*magma-client' stamp: 'cmm 9/3/2014 16:54'!
mergeConflicting: anAssociation 
	^ self key realObjectIfMutatingProxy = anAssociation key realObjectIfMutatingProxy and: [ self value realObjectIfMutatingProxy = anAssociation value realObjectIfMutatingProxy ]! !

!Character methodsFor: '*magma-client' stamp: 'cmm 10/29/2009 13:12'!
asMagmaForwardingProxy
	"No."
	^ self! !

!Timespan methodsFor: '*magma-client' stamp: 'cmm 10/28/2010 10:41'!
isImmutableInMagma 
	"These don't change once they're created, so don't bother to record them in magma's readSet."
	^ true! !

!BlockClosure methodsFor: '*magma-client' stamp: 'cmm 8/4/2011 10:05'!
isImmutableInMagma 
	^ true! !

!BlockClosure methodsFor: '*magma-client' stamp: 'cmm 11/8/2014 12:24'!
valueWhileObservingStateChange
	"Handle the situation where the user used commit: [ someInstVar _ somevalue].  In that case, the commit happens in the super call of WB before it had a chance to compare and send #modified:."
	| receiver preState result |
	receiver _ self home receiver.
	(receiver isBehindWriteBarrier not or: [ receiver class instSize isZero ]) ifTrue: [ ^ self value ].
	preState _ receiver shallowCopy.
	result _ self value.
	1
		to: receiver class instSize
		do:
			[ : varIndex | ((receiver slotAt: varIndex) ~~ (preState slotAt: varIndex) and: [ (receiver maIsTransient: varIndex) not ]) ifTrue:
				[ receiver writeBarrier modified: receiver.
				^ result ] ].
	^ result! !

!InstructionStream methodsFor: '*magma-client' stamp: 'cmm 8/4/2011 10:04'!
isImmutableInMagma 
	^ true! !

!InstructionStream methodsFor: '*magma-client' stamp: 'cmm 9/15/2011 21:11'!
maTransientVariables 
	^ super maTransientVariables , #('sender')! !

!ProcessorScheduler methodsFor: '*magma-client' stamp: 'cmm 4/8/2005 12:37'!
isImmutableInMagma

	^ true! !

!Collection methodsFor: '*magma-client' stamp: 'cmm 7/17/2010 14:01'!
asMagmaArray
	| answer index |
	answer _ MagmaArray new.
	index _ 0.
	self do:
		[ : each | answer
			at: (index _ index + 1)
			put: each ].
	^ answer! !

!Collection methodsFor: '*magma-client' stamp: 'brp 5/10/2005 14:23'!
read: attributeSymbol at: key
	"Allows Smalltalk collection to be used interchangeably with MagmaCollections"

	^ self select: [ :each | (each perform: attributeSymbol) = key ]
! !

!String methodsFor: '*magma-client' stamp: 'cmm 1/17/2007 23:08'!
asMagmaLocalLocation
	^ MagmaLocalLocation path: self! !

!String methodsFor: '*magma-client' stamp: 'cmm 3/28/2005 12:39'!
maAllowsWriteBarrier
	"Primitive failed when attempted."

	^ false! !

!String methodsFor: '*magma-client' stamp: 'cmm 10/17/2004 14:24'!
maIsChangedFrom: aMaByteObjectBuffer using: aMaObjectSerializer

	^self ~= aMaByteObjectBuffer asString! !

!Symbol methodsFor: '*magma-client' stamp: 'cmm 4/8/2005 12:34'!
isImmutableInMagma

	^ true! !

!Symbol methodsFor: '*magma-client' stamp: 'cmm 10/8/2004 17:19'!
maRefreshTo: aMaByteObjectBuffer using: aMagmaSession
	"Never try to refresh a Symbol.  They cannot change."
! !

!Symbol methodsFor: '*magma-client' stamp: 'cmm 6/23/2013 15:17'!
magmaOid
	| sessions |
	sessions _ MagmaSession connectedSessions select:
		[ : eachSession | eachSession isPersistent: self ].
	^ sessions size > 1
		ifTrue: [ MagmaUserError signal: self printString , ' is persistent in more than one connected Magma repository, therefore its #magmaOid would be ambiguous.  Please change the code to ask the correct Session instance, #oidFor: ' , self printString ]
		ifFalse:
			[ sessions isEmpty ifFalse: [ sessions anyOne oidFor: self ] ]! !

!Symbol methodsFor: '*magma-client' stamp: 'cmm 9/12/2013 17:16'!
magmaSession
	| sessions |
	sessions _ MagmaSession connectedSessions select:
		[ : eachSession | eachSession isPersistent: self ].
	^ sessions size > 1
		ifTrue: [ MagmaUserError signal: self printString , ' is persistent in more than one connected Magma repository, therefore its #magmaSession would be ambiguous.  Please change the code to use the correct Session instance.' ]
		ifFalse:
			[ sessions isEmpty ifFalse: [ sessions anyOne ] ]! !

!Array methodsFor: '*magma-client' stamp: 'cmm 6/27/2005 15:12'!
isImmutableInMagma
	"If I am one of the special global constant Array's, I am immutable, otherwise I'm not."

	^ self maUsesStandardStorage not! !

!Array methodsFor: '*magma-client' stamp: 'cmm 5/26/2018 23:24'!
maAllowsWriteBarrier
"Temporary test to see if this fixes #testCounterBlock"
	^ false! !

!Array methodsFor: '*magma-client' stamp: 'cmm 2/8/2005 16:42'!
maIsChangedFrom: aMaByteObjectBuffer using: aMaObjectSerializer
	"Because I got here, I am one of the shared special Array's in the system (see maAsStorageObject).  Changes are not tracked for logically referenced objects."

	^ self maUsesStandardStorage
		and:
			[ super
				maIsChangedFrom: aMaByteObjectBuffer
				using: aMaObjectSerializer ]! !

!ByteArray methodsFor: '*magma-client' stamp: 'cmm 4/10/2005 16:01'!
maAllowsWriteBarrier
	"Primitive failed when attempted."

	^ false! !

!ByteArray methodsFor: '*magma-client' stamp: 'cmm 10/9/2004 21:11'!
maIsChangedFrom: aMaByteObjectBuffer using: aMaObjectSerializer

	^self ~= aMaByteObjectBuffer asByteArray! !

!CompiledMethod methodsFor: '*magma-client' stamp: 'cmm 4/8/2005 12:34'!
isImmutableInMagma

	^ true! !

!UUID methodsFor: '*magma-client' stamp: 'cmm 4/8/2005 12:34'!
isImmutableInMagma

	^ true! !

!Bitmap methodsFor: '*magma-client' stamp: 'cmm 1/2/2012 11:09'!
maAllowsWriteBarrier
	"Used as argument to #primAddGradientFill:from:along:normal:radial:, so can't use behind WriteBarrier."
	^ false! !

!Bitmap methodsFor: '*magma-client' stamp: 'cmm 5/1/2005 23:59'!
maIsChangedFrom: aMaStorageObjectBuffer using: aMaObjectSerializer

	| graphBuffer |
	graphBuffer _ MaSerializedGraphBuffer byteArray: aMaStorageObjectBuffer asByteArray.
	graphBuffer buffersDo:
		[ : firstAndOnlyBuffer |
		^ self compressToByteArray ~= firstAndOnlyBuffer asByteArray ]! !

!Bitmap methodsFor: '*magma-client' stamp: 'cmm 5/2/2005 00:06'!
maRefreshTo: aMaStorageObjectBuffer using: aMagmaSession

	| graphBuffer |
	graphBuffer _ MaSerializedGraphBuffer byteArray: aMaStorageObjectBuffer asByteArray.
	graphBuffer buffersDo:
		[ : firstAndOnlyBuffer |  | s byteArray |
		byteArray _ firstAndOnlyBuffer asByteArray.
		s _ ReadStream on: byteArray.
		self class decodeIntFrom: s.
		self 
			decompress: self 
			fromByteArray: byteArray 
			at: s position+1 ]! !

!Interval methodsFor: '*magma-client' stamp: 'cmm 5/24/2018 17:55'!
isImmutableInMagma 
	^ false! !

!Set methodsFor: '*magma-client' stamp: 'cmm 5/23/2013 10:32'!
conflictingObjectCopy
	^ self copy! !

!Set methodsFor: '*magma-client' stamp: 'cmm 3/27/2005 23:16'!
maIsChangedFrom: aMaVariableObjectBuffer using: aMaObjectSerializer

	| oidSet |
	aMaVariableObjectBuffer objectInstSize ~= self size ifTrue: [ ^ true ].
	oidSet _ Set new: aMaVariableObjectBuffer objectInstSize.
	aMaVariableObjectBuffer instVarsDoWithIndex: [ : eachOid : x | oidSet add: eachOid ].
	self do: [ :each | (oidSet includes: (aMaObjectSerializer oidFor: each)) ifFalse: [ ^ true ] ].
	^ false! !

!Set methodsFor: '*magma-client' stamp: 'cmm 9/16/2014 18:04'!
maRefreshTo: aMaVariableObjectBuffer using: aMagmaSession 
	| save |
	"prevent GC of my items until we get it refreshed.."
	save _ self copy.
	"prevent compiler from optimizing it out.."
	save size.
	self removeAll.
	aMaVariableObjectBuffer instVarsDoWithIndex:
		[ : each : x | self add: (aMagmaSession objectWithOid: each) ]! !

!Set methodsFor: '*magma-client' stamp: 'cmm 10/14/2013 20:41'!
mergeConflicting: aSet
	"aSet contains my version of the receiver, which was changed by another session."
	self addAll: aSet.
	^ true! !

!Dictionary methodsFor: '*magma-client' stamp: 'cmm 5/23/2013 10:33'!
conflictingObjectCopy
	^ self copy! !

!Dictionary methodsFor: '*magma-client' stamp: 'cmm 10/28/2011 15:37'!
maIsChangedFrom: aMaVariableObjectBuffer using: aMaObjectSerializer

	| logicalInstSize oidDict |
	logicalInstSize _ aMaVariableObjectBuffer objectInstSize.
	self size*2 = logicalInstSize ifFalse: [ ^ true ].
	oidDict _ Dictionary new: logicalInstSize / 2.
	1 to: logicalInstSize by: 2 do:
		[ :index | 
		oidDict 
			at: (aMaVariableObjectBuffer maInstVarAt: index)
			put: (aMaVariableObjectBuffer maInstVarAt: index+1) ].
	self keysAndValuesDo:
		[ : eachKey : eachValue |
		oidDict
			at: (aMaObjectSerializer oidFor: eachKey)
			ifPresent:
				[ : valueOid |
				valueOid = (aMaObjectSerializer oidFor: eachValue) ifFalse: [ ^true ] ]
			ifAbsent: [ ^ true ] ].
	^ false! !

!Dictionary methodsFor: '*magma-client' stamp: 'cmm 9/17/2014 10:09'!
maRefreshTo: aMaVariableObjectBuffer using: aMagmaSession
	"The linkedOids in aMaVariableObjectBuffer are in key->value pairs."
	| save transformationBlock |
	save _ self copy.  "prevent GC of my elements until I get repopulated."
	save size. "prevent compiler from optimizing out."
	self removeAll.
	"Unlike Set, in case this transformation block would possibly return a Proxy, which if for the key would be immediately materialized, if it was for the value, it wouldn't need to be."
	transformationBlock _ [ :oid | aMagmaSession serializer objectWithOid: oid ].
	1
		to: aMaVariableObjectBuffer objectInstSize
		by: 2
		do:
			[ :eachKeyIndex | | eachKey eachValue |
			eachKey _ aMaVariableObjectBuffer maInstVarAt: eachKeyIndex.
			eachValue _ aMaVariableObjectBuffer maInstVarAt: eachKeyIndex + 1.
			self
				at: (transformationBlock value: eachKey)
				put: (transformationBlock value: eachValue) ]! !

!Dictionary methodsFor: '*magma-client' stamp: 'cmm 1/4/2016 14:36'!
mergeConflicting: aDictionary 
	"aDictionary is my version, the receiver is updated to the other session's version.  First check whether we conflict on the same key.  If not, go ahead and merge my keys from aDictionary into the receiver and retry."
	aDictionary keysAndValuesDo:
		[ : eachKey : eachValue | self
			at: eachKey
			ifPresent:
				[ : committedByOther |
				"Must check for #== first because Float nan ~= Float nan!!!!"
				(eachValue == committedByOther realObjectIfMutatingProxy or: [eachValue = committedByOther realObjectIfMutatingProxy]) ifFalse: [ ^ false ] ]
			ifAbsent:
				[ self
					at: eachKey
					put: eachValue ] ].
	^ true! !

!SystemDictionary methodsFor: '*magma-client' stamp: 'cmm 4/8/2005 12:35'!
isImmutableInMagma

	^ true! !

!ReadWriteStream methodsFor: '*magma-client' stamp: 'cmm 5/3/2005 14:01'!
maAllowsWriteBarrier
	"Sigh..  We cannot allow this because I override #= and use my #class as part of that determination.  Therefore, a ReadWriteStream behind a WriteBarrier will report false against an equivalent not behind a WriteBarrier.  I wonder whether objects behind WriteBarriers can answer their original class and then require it to override and use #basicClass or something like that to get its WriteBarrier subclass."

	^ false! !

!DisplayScreen methodsFor: '*magma-client' stamp: 'cmm 4/8/2005 12:35'!
isImmutableInMagma

	^ true! !

!Point methodsFor: '*magma-client' stamp: 'cmm 8/22/2011 22:13'!
isImmutableInMagma
	^ true! !

!Rectangle methodsFor: '*magma-client' stamp: 'cmm 4/6/2010 20:03'!
maAllowsWriteBarrier 
	"Primitive failed when attempted change class of a rectangle."
	^ false! !

!AbstractFont methodsFor: '*magma-client' stamp: 'cmm 8/24/2005 16:23'!
isImmutableInMagma

	^ true! !

!Morph methodsFor: '*magma-client' stamp: 'cmm 2/25/2005 17:23'!
aboutToRefreshFromMagma: aMagmaRefreshEvent

	| restoreData |
	self isInWorld ifFalse: [ "no need"  ^ self ].
	self isWorldMorph ifTrue: [ "not supported"  ^ self ].
	"capture position and index, then delete so it can be updated 'offline'."
	restoreData _ Dictionary new.
	restoreData
		at: #owner put: owner ;
		at: #index put: (owner submorphs indexOf: self) ;
		at: #wasStepping put: (self isWorldMorph or: [ self isStepping ]).
	aMagmaRefreshEvent restoreData: restoreData.
	self delete! !

!Morph methodsFor: '*magma-client' stamp: 'cmm 11/29/2008 17:20'!
refreshedFromMagma: aMagmaRefreshEvent

	aMagmaRefreshEvent hasRestoreData
		ifTrue:
			[ (aMagmaRefreshEvent restoreData at: #owner)
				addMorph: self
				asElementNumber: (aMagmaRefreshEvent restoreData at: #index).
			owner isWorldMorph
				ifTrue: 
					[ owner startSteppingSubmorphsOf: self ]
				ifFalse:
					[ (aMagmaRefreshEvent restoreData at: #wasStepping)
						ifTrue: [ self startStepping ] ] ]! !

!Morph methodsFor: '*magma-client' stamp: 'cmm 2/22/2005 21:10'!
wantsMagmaEvents
	^ true! !

!HandMorph methodsFor: '*magma-client' stamp: 'cmm 4/8/2005 12:37'!
isImmutableInMagma

	^ true! !

!ScrollBar methodsFor: '*magma-client' stamp: 'cmm 4/13/2005 14:11'!
isImmutableInMagma 
	"disallow one clients scrolling to affect other clients."

	^ true! !

!ScrollBar methodsFor: '*magma-client' stamp: 'cmm 4/13/2005 14:10'!
wantsMagmaEvents
	"We don't refresh scrollbars.  Although this technically isn't necessary as long I answer true to isImmutableInMagma, this will prevent my updatableActionMap from getting the event-listeners put in there unnecessarily."

	^ false! !

!ChangeSet methodsFor: '*magma-client' stamp: 'cmm 4/8/2005 12:33'!
isImmutableInMagma

	^ true! !

!SOLHashFrame methodsFor: '*magma-client' stamp: 'cmm 4/11/2011 13:33'!
at: srchKey ifAbsentPut: aBlock from: aNode 
	"Return an old value that compares: equal to srchVal if one is present, otherwise return nil to indicate a successful insertion."
	(self
		locate: srchKey
		in: aNode) ifTrue: [ ^ curr value ].
	self insert:
		(SOLHashNode
			key: srchKey
			value: aBlock value).
	^ nil! !

!SOLHashTable methodsFor: '*magma-client' stamp: 'cmm 4/11/2011 17:00'!
at: hashKey ifAbsentAdd: aBlock 
	"Add anObject at hashKey, if hashKey does not already exist."
	| hn |
	hn _ self headNodeFor: hashKey.
	^ (frame
		at: (self regularKey: hashKey)
		ifAbsentPut: aBlock
		from: hn) ifNil:
		[ numElements _ numElements + 1.
		self checkSize.
		self firstAt: hashKey ]! !

!SOLHashTable methodsFor: '*magma-client' stamp: 'cmm 4/10/2011 19:27'!
maPostMaterialize
	self initializeFrame! !

!SOLHashTable methodsFor: '*magma-client' stamp: 'cmm 4/9/2011 17:31'!
maTransientVariables
	^ #('frame')! !

!SOLHashTable methodsFor: '*magma-client' stamp: 'cmm 4/10/2011 19:26'!
maWantsPostMaterialization 
	^ true! !

!ClassBinding methodsFor: '*magma-client' stamp: 'cmm 4/19/2013 11:24'!
isImmutableInMagma
	"ClassBinding will not allow instVarAt: put: so make it immutable in magma."
	^ true! !

!Environment methodsFor: '*magma-client' stamp: 'cmm 2/26/2016 15:23'!
isImmutableInMagma
	"Environments are maintained by code, simply referenced by name in Magma."
	^ true! !

!FileDirectory methodsFor: '*magma-client' stamp: 'cmm 4/6/2010 22:57'!
asMagmaLocalLocation
	^ MagmaLocalLocation path: self pathName! !

!HashedCollection methodsFor: '*magma-client' stamp: 'cmm 12/1/2011 20:52'!
addSelfToWriteBarrier: aMaxTransaction
	aMaxTransaction addHashedCollection: self! !

!HashedCollection methodsFor: '*magma-client' stamp: 'cmm 9/16/2014 16:40'!
postRefreshUsing: aMaObjectBuffer for: aMagmaSession 
	self rehash.
	^ super
		postRefreshUsing: aMaObjectBuffer
		for: aMagmaSession! !

!MCAddition methodsFor: '*magma-client-private' stamp: 'cmm 11/20/2013 15:27'!
canonicalizeFor: aMCVersion using: aMcModel 
	definition _ aMcModel
		canonicalizedDefinition: definition
		of: self! !

!MCAncestry methodsFor: '*magma-client' stamp: 'cmm 11/20/2013 14:15'!
canonicalizedUsing: aMcModel 
	"Replace my ancestors with the ones in aMcModel, if they exist, or add them if they don't.  Descend the ancestry-tree until we are connected to canonicalized instances."
	^ aMcModel
		infoAssociationFor: self
		ifPresent:
			[ : existingAssoc | existingAssoc value ]
		ifAbsent:
			[ aMcModel addInfo: self.
			self ancestors withIndexDo:
				[ : each : index | ancestors
					at: index
					put: (each canonicalizedUsing: aMcModel) ].
			self ]! !

!MCClassDefinition methodsFor: '*magma-client' stamp: 'cmm 5/2/2011 14:39'!
dateAndTime
	| subStrings |
	subStrings _ self commentStamp subStrings.
	^ subStrings size >= 3
		ifTrue:
			[ DateAndTime
				date: subStrings second asDate
				time: subStrings third asTime ]
		ifFalse: [ DateAndTime epoch ]! !

!MCClassDefinition methodsFor: '*magma-client' stamp: 'cmm 11/20/2013 15:24'!
ensureHistoricalEntryIn: aMcModel
	^ aMcModel ensureHistoricalEntry: self! !

!MCConfiguration methodsFor: '*magma-client-private' stamp: 'cmm 4/23/2011 14:41'!
postStoreCleanUpFor: aMCMagmaRepository
	"Don't do anything for MCConfigurations."! !

!MCConfiguration methodsFor: '*magma-client-private' stamp: 'cmm 4/25/2011 08:15'!
removeFrom: aMcModel
	^ aMcModel primRemoveConfiguration: self! !

!MCConfiguration methodsFor: '*magma-client' stamp: 'cmm 4/23/2011 11:26'!
storeInto: aMcModel 
	aMcModel addConfiguration: self! !

!MCConfiguration methodsFor: '*magma-client-private' stamp: 'cmm 4/23/2011 14:25'!
versionName
	^ self name asMCVersionName! !

!MCDefinition methodsFor: '*magma-client' stamp: 'cmm 11/20/2013 15:24'!
ensureHistoricalEntryIn: aMcModel
	"Only Class and Method definitions do this."! !

!MCDefinition methodsFor: '*magma-client' stamp: 'cmm 3/10/2011 18:31'!
isImmutableInMagma 
	"A MCDefinition, once saved in a version, never changes.  Magma will not bother to track changes to these types of objects, improving performance."
	^ true! !

!MCDiffyVersion methodsFor: '*magma-client-private' stamp: 'cmm 11/20/2013 15:13'!
canonicalizeReferencesUsing: aMcModel 
	"Make sure that, for all definitions in aMCVersion, we refer to an already-persistent equivalent, if present, and add it, if not."
	super canonicalizeReferencesUsing: aMcModel.
	base _ base canonicalizedUsing: aMcModel.
	patch
		canonicalizeFor: self
		using: aMcModel! !

!MCMethodDefinition methodsFor: '*magma-client' stamp: 'cmm 3/14/2011 15:39'!
dateAndTime
	| subStrings |
	subStrings _ self timeStamp subStrings.
	^ subStrings size >= 3
		ifTrue:
			[ DateAndTime
				date: subStrings second asDate
				time: subStrings third asTime ]
		ifFalse: [ DateAndTime epoch ]! !

!MCMethodDefinition methodsFor: '*magma-client' stamp: 'cmm 11/20/2013 15:24'!
ensureHistoricalEntryIn: aMcModel
	^ aMcModel ensureHistoricalEntry: self! !

!MCModification methodsFor: '*magma-client-private' stamp: 'cmm 11/20/2013 15:28'!
canonicalizeFor: aMCVersion using: aMcModel 
	obsoletion _ aMcModel
		canonicalizedDefinition: obsoletion
		of: self.
	modification _ aMcModel
		canonicalizedDefinition: modification
		of: self! !

!MCOperationsList methodsFor: '*magma-client-private' stamp: 'cmm 11/20/2013 15:12'!
canonicalizeFor: aMCVersion using: aMcModel 
	operations do:
		[ : each | each
			canonicalizeFor: aMCVersion
			using: aMcModel ]! !

!MCPackage methodsFor: '*magma-client' stamp: 'cmm 3/10/2011 18:28'!
isImmutableInMagma 
	"A MCPackage, once created, never changes.  Magma will not bother to track changes to these types of objects, improving performance."
	^ true! !

!MCPatchOperation methodsFor: '*magma-client-private' stamp: 'cmm 11/20/2013 15:13'!
canonicalizeFor: aMCVersion using: aMcModel
	self subclassResponsibility! !

!MCRemoval methodsFor: '*magma-client-private' stamp: 'cmm 11/20/2013 15:27'!
canonicalizeFor: aMCVersion using: aMcModel 
	definition _ aMcModel
		canonicalizedDefinition: definition
		of: self! !

!MCSnapshot methodsFor: '*magma-client' stamp: 'cmm 3/10/2011 18:29'!
isImmutableInMagma 
	"A MCSnapshot, once created, never changes.  Magma will not bother to track changes to these types of objects, improving performance."
	^ true! !

!MCSnapshot methodsFor: '*magma-client' stamp: 'cmm 3/6/2011 22:17'!
setDefinitions: anOrderedCollection
	"Magma-hosted MC repositories canonicalize all of their objects.  This is used to replace my 'definitions' instances with the canonicalized instances."
	definitions _ anOrderedCollection! !

!MCVersion methodsFor: '*magma-client' stamp: 'cmm 2/25/2011 16:36'!
author
	^ info author! !

!MCVersion methodsFor: '*magma-client-private' stamp: 'cmm 11/20/2013 14:39'!
canonicalizeReferencesUsing: aMcModel 
	"Make sure that, for all definitions in aMCVersion, we refer to an already-persistent equivalent, if present, and add it, if not."
	package _ aMcModel canonicalizedPackageFor: self.
	info _ info canonicalizedUsing: aMcModel.
	snapshot setDefinitions: (aMcModel canonicalizedDefinitionsFor: self)! !

!MCVersion methodsFor: '*magma-client' stamp: 'cmm 3/15/2011 14:45'!
dateAndTime
	^ info dateAndTime! !

!MCVersion methodsFor: '*magma-client' stamp: 'cmm 3/10/2011 09:37'!
definitions
	^ self snapshot definitions! !

!MCVersion methodsFor: '*magma-client' stamp: 'cmm 3/15/2011 14:44'!
hasAncestor: aMCVersion
	^ info hasAncestor: aMCVersion info! !

!MCVersion methodsFor: '*magma-client' stamp: 'cmm 2/25/2011 15:51'!
id
	^ info id! !

!MCVersion methodsFor: '*magma-client-private' stamp: 'cmm 3/10/2011 18:29'!
isImmutableInMagma 
	"A MCVersion, once created, never changes.  Magma will not bother to track changes to these types of objects, improving performance."
	^ true! !

!MCVersion methodsFor: '*magma-client' stamp: 'cmm 3/6/2011 14:21'!
message
	^ info message! !

!MCVersion methodsFor: '*magma-client' stamp: 'cmm 3/6/2011 12:34'!
packageName
	^ self versionName packageName! !

!MCVersion methodsFor: '*magma-client-private' stamp: 'cmm 4/23/2011 14:40'!
postStoreCleanUpFor: aMCMagmaRepository
	"Occasionally stubOut the missingVersions so we don't end up referencing too many versions."
	self info versionNumber \\ 10 = 0 ifTrue: [ aMCMagmaRepository trim ]! !

!MCVersion methodsFor: '*magma-client-private' stamp: 'cmm 4/25/2011 08:15'!
removeFrom: aMcModel
	^ aMcModel primRemoveVersion: self! !

!MCVersion methodsFor: '*magma-client-private' stamp: 'cmm 3/10/2011 20:03'!
setPackage: aMCPackage definitions: anOrderedCollection info: aMCVersionInfo
	"Magma-hosted MC repositories canonicalize all of their objects.  This is used to replace my 'definitions' instances with the canonicalized instances."
	package _ aMCPackage.
	snapshot setDefinitions: anOrderedCollection.
	info _ aMCVersionInfo! !

!MCVersion methodsFor: '*magma-client-private' stamp: 'cmm 3/24/2015 16:59'!
storeInto: aMcModel 
"	self versionName isValid ifFalse: [ MagmaUserError signal: 'Cannot support mal-named versions.' ]."  "<---- Why not?"
	(aMcModel includesVersion: self) ifTrue: [ ^ aMcModel ].
	MagmaPreferences suspendStatusViaCursorWhile:
		[ self canonicalizeReferencesUsing: aMcModel.
		aMcModel
			 addVersion: self ;
			 adjustMissingVersions: self info ]! !

!MCVersion methodsFor: '*magma-client' stamp: 'cmm 3/6/2011 12:33'!
versionName
	^ info versionName! !

!MCVersion methodsFor: '*magma-client' stamp: 'cmm 4/21/2011 20:44'!
versionNumber
	^ info versionNumber! !

!MCVersionDependency methodsFor: '*magma-client' stamp: 'cmm 3/10/2011 18:34'!
isImmutableInMagma 
	"A once saved in a repository, this object never changes.  Magma will not bother to track changes to these types of objects, improving performance."
	^ true! !

!MCVersionInfo methodsFor: '*magma-client' stamp: 'cmm 3/10/2011 18:28'!
isImmutableInMagma 
	"A MCVersionInfo, once created, never changes.  Magma will not bother to track changes to these types of objects, improving performance."
	^ true! !

!MorphicTransform methodsFor: '*magma-client' stamp: 'cmm 5/24/2010 16:43'!
maAllowsWriteBarrier 
	"Had a problem where this guy was losing his writeBarrier (nil) and so was blowing when it was modified.  Thought it had something to do with the fact that I was copied, but my testing shows the copy maintains access to the same WriteBarrier."

	^ false
	
"Seems like it should be ok..  What gives??
| mt1 mt2 mt3 mt4 wb |
wb _ WriteBarrier new.
mt1 _ self offset: 2@3.
wb add: mt1.
mt2 _ mt1 withOffset: 3@4.
mt3 _ mt2 withOffset: 4@5.
mt4 _ mt1 withOffset: 5@6.
{ mt1. mt2. mt3. mt4 } do: [ : e | e setAngle: Float pi ].
{ mt1. mt2. mt3. mt4 } do: [ : e | e writeBarrier == wb ifFalse: [ self halt ] ].
{ mt1. mt2. mt3. mt4 } do: [ : e | wb remove: e ]
"! !

!ScrollPane methodsFor: '*magma-client' stamp: 'cmm 4/13/2005 14:11'!
isImmutableInMagma 
	"disallow one clients scrolling to affect other clients."

	^ true! !

!ScrollPane methodsFor: '*magma-client' stamp: 'cmm 4/13/2005 14:11'!
wantsMagmaEvents
	"We don't refresh scrollbars.  Although this technically isn't necessary as long I answer true to isImmutableInMagma, this will prevent my updatableActionMap from getting the event-listeners put in there unnecessarily."

	^ false! !

!SmalltalkImage methodsFor: '*magma-client' stamp: 'cmm 7/29/2018 21:36'!
initializeGarbageCollectorSettingsForMagma
        "Initialize the memory and GC settings to be more liberal with memory in order to reduce garbage-collector impact on the processor."
	
     "The following settings affect the rate incremental GCs and tenuring"
     
     "Limit incremental GC activity to run every 100k allocations"
 "    self vmParameterAt: 5 put: 100000." "allocations between GCs (default: 4000)"
     "Limit tenuring threshold to only tenure w/ > 35k survivors"
     self vmParameterAt: 6 put: 35000. "tenuring threshold (default: 2000)"
     
     "These settings affect overall memory usage"
     
     "Only give memory back to the OS when we have more than 16MB free"
     self vmParameterAt: 24 put: 16*1024*1024. "default 8MB"
     "Try to keep 8MB headroom at all times"
     self vmParameterAt: 25 put: 8*1024*1024. "default 4MB"
     
     "These settings describe what to do when we're close to running out of free space"
     self isRunningSpur ifFalse:
          [ "Tell the VM that we'd rather grow than spinning in tight GC loops"
"          self setGCBiasToGrow: 1." "default: false"
          "Tell the VM to do a fullGC for good measure if the above growth exceeded 16MB"
"          self setGCBiasToGrowGCLimit: 16*1024*1024." "default: 0"]! !

!SmalltalkImage methodsFor: '*magma-client' stamp: 'cmm 3/12/2010 17:51'!
isImmutableInMagma
	^ true! !

!DirectoryEntryDirectory methodsFor: '*magma-client' stamp: 'cmm 7/21/2016 15:59'!
asMagmaLocalLocation
	^ MagmaLocalLocation path: self directoryName! !

!TTFontDescription methodsFor: '*magma-client' stamp: 'cmm 4/8/2005 12:37'!
isImmutableInMagma

	^ true! !

!TranscriptStream methodsFor: '*magma-client' stamp: 'cmm 4/8/2005 12:37'!
isImmutableInMagma

	^ true! !

!MaClassDefinition methodsFor: '*magma-client' stamp: 'cmm 9/6/2012 17:55'!
beKnownAs: newClassName
	self className ifNotNil: [ aliases add: self className ].
	self className: newClassName! !

!MaClassDefinition methodsFor: '*magma-client' stamp: 'cmm 10/28/2011 15:38'!
inheritDeeperDepthsFrom: superMaClassDefinition using: depthsDictionary 
	"Look in depthsDictionary for a depthSpec (anInteger or Array of Integers) for superMaClassDefinition.  If has been specified,  answer an enhanced 'spec' that is the deeper between it and the depth-spec for me."
	superMaClassDefinition allInstVarNames withIndexDo: 
		[ : each : index | 
		depthsDictionary 
			at: { 
					(superMaClassDefinition id).
					(superMaClassDefinition version)
				 }
			ifPresent: 
				[ : superSpec | 
				| mySpec superDepth |
				superDepth _ superSpec isInteger 
					ifTrue: [ superSpec ]
					ifFalse: [ superSpec at: index ].
				mySpec _ depthsDictionary at: {  id. version  }.
				mySpec isInteger 
					ifTrue: 
						[ depthsDictionary 
							at: {  id. version  }
							put: (mySpec max: superDepth) ]
					ifFalse: 
						[ mySpec 
							at: index
							put: ((mySpec at: index) max: superDepth) ] ]
			ifAbsent: 
				[ "No spec for this superclass, nothing to inherit."
				 ] ]! !

!MaObjectBuffer methodsFor: '*magma-client' stamp: 'cmm 8/27/2008 18:48'!
bufferPositionOfCommitNumber
	^ self bpMap bufferPositionOfCommitNumber! !

!MaObjectBuffer methodsFor: '*magma-client' stamp: 'cmm 8/27/2008 18:48'!
commitNumber
	^ self 
		uint: 48
		at: self bufferPositionOfCommitNumber! !

!MaObjectBuffer methodsFor: '*magma-client' stamp: 'cmm 8/27/2008 18:53'!
commitNumber: anInteger 
	^ self 
		uint: 48
		at: self bufferPositionOfCommitNumber
		put: anInteger! !

!MaObjectBuffer methodsFor: '*magma-client' stamp: 'cmm 11/23/2004 23:19'!
isDifferent: anObject using: aMaObjectSerializer
	self subclassResponsibility! !

!MaObjectBuffer methodsFor: '*magma-client' stamp: 'cmm 1/10/2014 17:03'!
refresh: anObject using: aMaObjectSerializer includingLocal: aBoolean
	self subclassResponsibility! !

!MaFixedObjectBuffer methodsFor: '*magma-client' stamp: 'cmm 11/13/2014 09:22'!
isDifferent: anObject using: aMaObjectSerializer 
	"Only report anObject different if any of its *recorded* instVars changed, or if any of its *new* instVars is not nil."
	| classIdManager inImageDefinition bufferDefinition |
	classIdManager _ aMaObjectSerializer classIdManager.
	inImageDefinition _ classIdManager inImageDefinition: anObject maSerializationClass.
	bufferDefinition _ classIdManager
		definitionForClassId: self classId
		version: self classVersion.
	bufferDefinition id = inImageDefinition id ifFalse: [ ^ true ].
	1
		to: anObject maInstSize
		do:
			[ : index | | instVarIndexInBackup |
			(anObject maIsTransient: index) ifFalse:
				[ instVarIndexInBackup _ bufferDefinition
					indexOfInstVarCorrespondingTo: index
					of: inImageDefinition.
				instVarIndexInBackup == 0
					ifTrue:
						[ (anObject slotAt: index) ~~ nil ifTrue: [ ^ true ] ]
					ifFalse:
						[ (aMaObjectSerializer oidFor: (anObject slotAt: index)) = (self maInstVarAt: instVarIndexInBackup) ifFalse: [ ^ true ] ] ] ].
	^ false! !

!MaFixedObjectBuffer methodsFor: '*magma-client' stamp: 'cmm 1/13/2014 16:29'!
refresh: anObject using: aMagmaSession includingLocal: aBoolean 
	"WeakKeyDictionaries can have nil keys."
	anObject ifNil: [ ^ self ].
	anObject realObjectIfMutatingProxy
		refreshFrom: self
		using: aMagmaSession
		includingLocal: aBoolean! !

!MaVariableBuffer methodsFor: '*magma-client' stamp: 'cmm 11/24/2004 09:23'!
isDifferent: anObject using: aMaObjectSerializer
	"To determine different for variable classes requires special-case, therefore dispatch."
	^ anObject
		maIsChangedFrom: self
		using: aMaObjectSerializer! !

!MaVariableBuffer methodsFor: '*magma-client' stamp: 'cmm 1/10/2014 17:03'!
refresh: variableObject using: aMagmaSession includingLocal: aBoolean
	"Collections require special-case behavior to handle this, dispatch."
	variableObject
		maRefreshTo: self
		using: aMagmaSession! !

!MaVariableWordBuffer methodsFor: '*magma-client' stamp: 'cmm 11/8/2014 12:23'!
isDifferent: anObject using: aMaObjectSerializer
	"To determine different for variable classes requires special-case, therefore dispatch."
	anObject maInstSize ~= self objectInstSize ifTrue: [ ^ true ].
	self instVarsDoWithIndex: 
		[ : eachWord : index |
		eachWord ~= (anObject slotAt: index) ifTrue: [ ^ true ] ].
	^ false! !

!MaVariableWordBuffer methodsFor: '*magma-client' stamp: 'cmm 11/10/2014 10:29'!
refresh: variableObject using: aMagmaSession includingLocal: aBoolean
	"Collections require special-case behavior to handle this, dispatch."
	self instVarsDoWithIndex:
		[ : eachWord : eachIndex |
		variableObject
			slotAt: eachIndex
			put: eachWord ]! !

!MaObjectSerializer methodsFor: '*magma-client' stamp: 'cmm 5/8/2003 13:50'!
cachedObjectCountByClass

	^oidManager objectCountByClass! !

!MaObjectSerializer methodsFor: '*magma-client' stamp: 'cmm 11/13/2011 18:20'!
cachedObjectsDo: aBlock
	"Enumerate all objects which are materialized in memory."
	oidManager objectsDo: aBlock! !

!MaObjectSerializer methodsFor: '*magma-client' stamp: 'cmm 9/2/2012 21:46'!
cleanObject: anObject
	oidManager cleanObject: anObject! !

!MaObjectSerializer methodsFor: '*magma-client' stamp: 'cmm 11/13/2011 20:11'!
initializeImmutabilityStrategy: aMaImmutabilityStrategy using: aMaTransaction 
	"Populate aMaImmutabilityStrategy's immutables as best we can from existing cached objects."
	aMaImmutabilityStrategy resetImmutables.
	self cachedObjectsDo:
		[ : each | aMaImmutabilityStrategy
			rememberImmutableReferencesFrom: each
			for: aMaTransaction ]! !

!MaObjectSerializer methodsFor: '*magma-client' stamp: 'cmm 4/20/2005 17:27'!
resetNewObjects

	oidManager resetNewObjects! !

!MaObjectSerializer methodsFor: '*magma-client' stamp: 'cmm 8/3/2009 20:43'!
validateNextOid
	oidManager validateNextOid! !

!MaOidCalculator class methodsFor: '*magma-client' stamp: 'cmm 12/3/2014 10:46'!
indexPositionForOid: anInteger 
	^ anInteger - FirstUserObjectOid + 1! !

!MaOidCalculator class methodsFor: '*magma-client-debugging' stamp: 'cmm 7/18/2005 10:53'!
infoFor: oidInteger

	| obj |
	obj _
		self
			objectWithOid: oidInteger
			ifNone:
				[ ^(self isOidForNewObject: oidInteger)
					ifTrue: [ 'new object' ]
					ifFalse: [ 'index position: ', (self indexPositionForOid: oidInteger) printString ] ].
	^'(' , obj printString , ')'! !

!MaOidCalculator class methodsFor: '*magma-client' stamp: 'cmm 12/2/2014 21:04'!
isOidForNewObject: anInteger 
	^ anInteger
		between: FirstNewObjectOid
		and: LastNewObjectOid! !

!MaOidCalculator class methodsFor: '*magma-client' stamp: 'cmm 12/3/2014 10:53'!
isOidForUserObject: anInteger
	"A 'user' object is a persistent object stored in a Magma database that does not have a special oid, such as SmallIntegers, Floats, Booleans, etc. have."
	^anInteger
		between: FirstUserObjectOid
		and: LastUserObjectOid! !

!MaOidCalculator class methodsFor: '*magma-client' stamp: 'cmm 12/3/2014 10:49'!
oidForFilePositionIndexPosition: anInteger 
	^ FirstUserObjectOid + anInteger! !

!MaOidManager methodsFor: '*magma-client' stamp: 'cmm 9/2/2012 21:46'!
cleanObject: anObject 
	objects
		removeKey:
			(oids
				removeKey: anObject
				ifAbsent: [ ^ self ])
		ifAbsent: [  ]! !

!MaOidManager methodsFor: '*magma-client' stamp: 'cmm 11/13/2011 18:19'!
objectsDo: oneArgBlock 
	oids keysDo:
		[ : each | (each maIsMutatingProxy not or: [ each maRealObjectIsReified ]) ifTrue: [ oneArgBlock value: each ] ]! !

!MaSerializedGraphBuffer methodsFor: '*magma-client' stamp: 'cmm 5/7/2013 09:49'!
newObjectBuffersMissingFromWhole
	^ Array streamContents:
		[ : stream | self
			buffersMissingFromWholeWhere:
				[ : oid | MaOidCalculator isOidForNewObject: oid ]
			do:
				[ : referencedOid : referencingBuffer | stream nextPut: referencedOid -> referencingBuffer copyWithSameBuffer ] ]! !

!MaMinimalObject methodsFor: '*magma-client' stamp: 'cmm 3/28/2005 17:02'!
maAllowsWriteBarrier

	^ false! !
MagmaPreferences initialize!
MagmaSession initialize!
MagmaCollectionReader initialize!
MagmaCollection initialize!
MaRecoveryRecord initialize!
