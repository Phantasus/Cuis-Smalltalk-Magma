'From Cuis 5.0 [latest update: #4579] on 14 May 2021 at 10:13:25 am'!
'Description Core of magma object oriented database

License: MIT
Original Author: Chris Muller (cmm)
Author: Josef Philip Bernhart (jpb)'!
!provides: 'Ma-Core' 1 16!
!requires: 'Cryptography-DigitalSignatures' 1 14 nil!
SystemOrganization addCategory: 'Ma-Core'!


!classDefinition: #MaCoreConstants category: 'Ma-Core'!
SharedPool subclass: #MaCoreConstants
	instanceVariableNames: ''
	classVariableNames: 'HasMagma'
	poolDictionaries: ''
	category: 'Ma-Core'!
!classDefinition: 'MaCoreConstants class' category: 'Ma-Core'!
MaCoreConstants class
	instanceVariableNames: ''!

!classDefinition: #MaError category: 'Ma-Core'!
Error subclass: #MaError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Core'!
!classDefinition: 'MaError class' category: 'Ma-Core'!
MaError class
	instanceVariableNames: ''!

!classDefinition: #MaCorruptionError category: 'Ma-Core'!
MaError subclass: #MaCorruptionError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Core'!
!classDefinition: 'MaCorruptionError class' category: 'Ma-Core'!
MaCorruptionError class
	instanceVariableNames: ''!

!classDefinition: #MaEnvironmentError category: 'Ma-Core'!
MaError subclass: #MaEnvironmentError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Core'!
!classDefinition: 'MaEnvironmentError class' category: 'Ma-Core'!
MaEnvironmentError class
	instanceVariableNames: ''!

!classDefinition: #MaKeyNotFoundError category: 'Ma-Core'!
MaError subclass: #MaKeyNotFoundError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Core'!
!classDefinition: 'MaKeyNotFoundError class' category: 'Ma-Core'!
MaKeyNotFoundError class
	instanceVariableNames: ''!

!classDefinition: #MaNetworkError category: 'Ma-Core'!
MaError subclass: #MaNetworkError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Core'!
!classDefinition: 'MaNetworkError class' category: 'Ma-Core'!
MaNetworkError class
	instanceVariableNames: ''!

!classDefinition: #MaConnectionClosedError category: 'Ma-Core'!
MaNetworkError subclass: #MaConnectionClosedError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Core'!
!classDefinition: 'MaConnectionClosedError class' category: 'Ma-Core'!
MaConnectionClosedError class
	instanceVariableNames: ''!

!classDefinition: #MaConnectionRefusedError category: 'Ma-Core'!
MaNetworkError subclass: #MaConnectionRefusedError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Core'!
!classDefinition: 'MaConnectionRefusedError class' category: 'Ma-Core'!
MaConnectionRefusedError class
	instanceVariableNames: ''!

!classDefinition: #MaConnectionTimedOutError category: 'Ma-Core'!
MaNetworkError subclass: #MaConnectionTimedOutError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Core'!
!classDefinition: 'MaConnectionTimedOutError class' category: 'Ma-Core'!
MaConnectionTimedOutError class
	instanceVariableNames: ''!

!classDefinition: #MaSoftwareError category: 'Ma-Core'!
MaError subclass: #MaSoftwareError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Core'!
!classDefinition: 'MaSoftwareError class' category: 'Ma-Core'!
MaSoftwareError class
	instanceVariableNames: ''!

!classDefinition: #MaUserError category: 'Ma-Core'!
MaError subclass: #MaUserError
	instanceVariableNames: 'page'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Core'!
!classDefinition: 'MaUserError class' category: 'Ma-Core'!
MaUserError class
	instanceVariableNames: ''!

!classDefinition: #MaWarning category: 'Ma-Core'!
Warning subclass: #MaWarning
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Core'!
!classDefinition: 'MaWarning class' category: 'Ma-Core'!
MaWarning class
	instanceVariableNames: ''!

!classDefinition: #MaNotification category: 'Ma-Core'!
Notification subclass: #MaNotification
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Core'!
!classDefinition: 'MaNotification class' category: 'Ma-Core'!
MaNotification class
	instanceVariableNames: ''!

!classDefinition: #MaTestCaseNotification category: 'Ma-Core'!
MaNotification subclass: #MaTestCaseNotification
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Core'!
!classDefinition: 'MaTestCaseNotification class' category: 'Ma-Core'!
MaTestCaseNotification class
	instanceVariableNames: ''!

!classDefinition: #MagmaSessionRequest category: 'Ma-Core'!
MaNotification subclass: #MagmaSessionRequest
	instanceVariableNames: 'doBlock'
	classVariableNames: ''
	poolDictionaries: 'MaCoreConstants'
	category: 'Ma-Core'!
!classDefinition: 'MagmaSessionRequest class' category: 'Ma-Core'!
MagmaSessionRequest class
	instanceVariableNames: ''!

!classDefinition: #MaRequest category: 'Ma-Core'!
Exception subclass: #MaRequest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Core'!
!classDefinition: 'MaRequest class' category: 'Ma-Core'!
MaRequest class
	instanceVariableNames: ''!

!classDefinition: #MaStringRequest category: 'Ma-Core'!
MaRequest subclass: #MaStringRequest
	instanceVariableNames: 'initialAnswer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Core'!
!classDefinition: 'MaStringRequest class' category: 'Ma-Core'!
MaStringRequest class
	instanceVariableNames: ''!

!classDefinition: #MaFileRequest category: 'Ma-Core'!
MaStringRequest subclass: #MaFileRequest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Core'!
!classDefinition: 'MaFileRequest class' category: 'Ma-Core'!
MaFileRequest class
	instanceVariableNames: ''!

!classDefinition: #MaTestCase category: 'Ma-Core'!
TestCase subclass: #MaTestCase
	instanceVariableNames: 'suite'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Core'!
!classDefinition: 'MaTestCase class' category: 'Ma-Core'!
MaTestCase class
	instanceVariableNames: ''!

!classDefinition: #MaLegacyClass category: 'Ma-Core'!
Object subclass: #MaLegacyClass
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Core'!
!classDefinition: 'MaLegacyClass class' category: 'Ma-Core'!
MaLegacyClass class
	instanceVariableNames: ''!

!classDefinition: #MaObject category: 'Ma-Core'!
Object subclass: #MaObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Core'!
!classDefinition: 'MaObject class' category: 'Ma-Core'!
MaObject class
	instanceVariableNames: ''!

!classDefinition: #MaAttributableObject category: 'Ma-Core'!
MaObject subclass: #MaAttributableObject
	instanceVariableNames: 'attributes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Core'!
!classDefinition: 'MaAttributableObject class' category: 'Ma-Core'!
MaAttributableObject class
	instanceVariableNames: ''!

!classDefinition: #MaCommandLineProcessor category: 'Ma-Core'!
MaObject subclass: #MaCommandLineProcessor
	instanceVariableNames: ''
	classVariableNames: 'QuitOnError'
	poolDictionaries: ''
	category: 'Ma-Core'!
!classDefinition: 'MaCommandLineProcessor class' category: 'Ma-Core'!
MaCommandLineProcessor class
	instanceVariableNames: ''!

!classDefinition: #MaObjectComparison category: 'Ma-Core'!
MaObject subclass: #MaObjectComparison
	instanceVariableNames: 'object1 object2 comparisonOperator differences'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Core'!
!classDefinition: 'MaObjectComparison class' category: 'Ma-Core'!
MaObjectComparison class
	instanceVariableNames: ''!

!classDefinition: #MaSingleton category: 'Ma-Core'!
MaObject subclass: #MaSingleton
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Core'!
!classDefinition: 'MaSingleton class' category: 'Ma-Core'!
MaSingleton class
	instanceVariableNames: 'current'!

!classDefinition: #MaTimer category: 'Ma-Core'!
MaObject subclass: #MaTimer
	instanceVariableNames: 'name process monitor expired delay'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Core'!
!classDefinition: 'MaTimer class' category: 'Ma-Core'!
MaTimer class
	instanceVariableNames: ''!

!classDefinition: #MauiPage category: 'Ma-Core'!
MaObject subclass: #MauiPage
	instanceVariableNames: 'text'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Core'!
!classDefinition: 'MauiPage class' category: 'Ma-Core'!
MauiPage class
	instanceVariableNames: ''!


!MaError commentStamp: '<historical>' prior: 0!
Base abstraction for errors that occur in Ma code.!

!MaSoftwareError commentStamp: 'cmm 5/4/2005 10:25' prior: 0!
A software error is a bug in the software.  Signal them when you have to code for something that "should never happen."  For example, if, based on your program logic, there should be an entry in a Dictionary, but it is not there, you would signal a software error.!

!MaUserError commentStamp: '<historical>' prior: 0!
I represent an error made by the user.!

!MagmaSessionRequest commentStamp: 'cmm 1/13/2005 23:08' prior: 0!
I am used to signal to the session controller a session directive, such as connect, commit, abort, disconnect, or others.

Use my class-side api in your domain code.  For example, in your setters:

	name: aString
		MagmaSessionRequest signalCommit: [ name _ aString ]

When Magma is not used, the session request has no effect.!

!MaStringRequest commentStamp: 'cmm 10/9/2005 12:01' prior: 0!
Some applications need to prompt the user for a String at an inopportune time; for example some operations may require the users privateKey file and we want to do this on a JIT basis.

The purpose of this class is to provide a default way to ask the user for a String while allowing programs to override with their own approach.!

!MaTestCase commentStamp: '<historical>' prior: 0!
Getting ready to try using "fixtureSpecs" so we can test against hundreds of fixtures easily.
!

!MaObject commentStamp: 'cmm 10/25/2005 22:43' prior: 0!
I provide automatic initialization (which was later added to Squeak 3.7), and the notion of a verbose (standard printOn:) and concise (maPrintAbbreviatedOn:) forms for brevity in collections.!

!MaAttributableObject commentStamp: 'cmm 10/7/2009 21:03' prior: 0!
Subclass from this abstract class to inherit an attribute Dictionary.!

!MaCommandLineProcessor commentStamp: 'cmm 5/25/2010 12:37' prior: 0!
MaCommandLineProcessor is a place for Smalltalk scripts to be called via command-line.!

!MaTimer commentStamp: 'cmm 5/2/2008 11:59' prior: 0!
A very simple class to perform a Block after a specified amount of time.  #cancel will stop the countdown.  #expired answers true if the timer expired and the do Block executed.!

!MaObject methodsFor: 'printing' stamp: 'cmm 4/22/2002 22:13'!
printOn: aStream

	super printOn: aStream.
	aStream space.
	self maPrintAbbreviatedOn: aStream
! !

!MaAttributableObject methodsFor: 'copying' stamp: 'cmm 1/3/2014 14:27'!
postCopy
	"At a minimum, we must copy my attributes."
	super postCopy.
	attributes _ attributes copy! !

!MaTimer methodsFor: 'access' stamp: 'cmm 6/5/2008 22:10'!
name
	^name! !

!MaCoreConstants class methodsFor: 'as yet unclassified' stamp: 'cmm 6/22/2012 13:13'!
initialize
	HasMagma _ false! !

!MaUserError methodsFor: 'testing' stamp: 'cmm 9/28/2008 18:18'!
isMaUserError

	^true! !

!MaUserError methodsFor: 'accessing' stamp: 'cmm 2/6/2008 16:21'!
page
	^ page ifNil: [ MauiPage text: self messageText ]! !

!MaUserError methodsFor: 'accessing' stamp: 'cmm 7/12/2010 23:36'!
page: aMauiPage 
	page _ aMauiPage.
	self messageText: aMauiPage string! !

!MaUserError class methodsFor: 'instance creation' stamp: 'cmm 2/6/2008 16:22'!
page: aMauiPage 
	^ self new
		page: aMauiPage ;
		yourself! !

!MaUserError class methodsFor: 'instance creation' stamp: 'cmm 2/6/2008 16:22'!
signalPage: aMauiPage 
	(self page: aMauiPage) signal! !

!MaWarning methodsFor: 'as yet unclassified' stamp: 'cmm 11/13/2013 20:39'!
defaultAction
	Smalltalk isHeadless
		ifTrue: [ self resume ]
		ifFalse: [ super defaultAction ]! !

!MaNotification methodsFor: 'as yet unclassified' stamp: 'cmm 10/11/2013 14:05'!
defaultAction
	self resume! !

!MaNotification methodsFor: 'as yet unclassified' stamp: 'jpb 5/12/2021 15:07:37'!
isResumable
	"Answer true. Notification exceptions by default are specified to be resumable."

	^true! !

!MaNotification methodsFor: 'as yet unclassified' stamp: 'cmm 11/28/2011 19:40'!
messageText

	^super messageText ifNil: [ self species name ]! !

!MagmaSessionRequest methodsFor: 'private' stamp: 'cmm 3/20/2003 01:05'!
doBlock: oneArgBlock

	doBlock _ oneArgBlock! !

!MagmaSessionRequest methodsFor: 'handler' stamp: 'cmm 9/8/2012 17:58'!
handleAndResumeUsing: aMagmaSession 
	self resume: (self handleUsing: aMagmaSession)! !

!MagmaSessionRequest methodsFor: 'handler' stamp: 'cmm 9/8/2012 17:57'!
handleUsing: aMagmaSession 
	aMagmaSession ifNotNil: [ doBlock value: aMagmaSession ]! !

!MagmaSessionRequest class methodsFor: 'private' stamp: 'cmm 4/22/2003 23:41'!
signal: aString do: oneArgBlock
	"oneArgBlock takes the session that you wish to do something to."

	^self new
		messageText: aString;
		doBlock: oneArgBlock;
		signal! !

!MagmaSessionRequest class methodsFor: 'signaling' stamp: 'cmm 4/24/2003 15:00'!
signalAbort

	self 
		signal: 'aborting transaction'
		do: [ :session | session abort ]! !

!MagmaSessionRequest class methodsFor: 'signaling' stamp: 'cmm 4/22/2003 23:42'!
signalBegin

	self 
		signal: 'beginning transaction'
		do: [ :session | session begin ]! !

!MagmaSessionRequest class methodsFor: 'signaling' stamp: 'cmm 9/3/2014 10:49'!
signalClean
	self 
		signal: 'cleaning session'
		do: [ :session | session clean ]! !

!MagmaSessionRequest class methodsFor: 'signaling' stamp: 'cmm 4/22/2003 23:43'!
signalCommit

	self 
		signal: 'committing transaction'
		do: [ :session | session commit ]! !

!MagmaSessionRequest class methodsFor: 'signaling' stamp: 'cmm 6/22/2012 13:08'!
signalCommit: aBlock 
	| result |
	self signalBegin.
	result _ HasMagma
		ifTrue: [ aBlock valueWhileObservingStateChange ]
		ifFalse: [ aBlock value ].
	self signalCommit.
	^ result! !

!MagmaSessionRequest class methodsFor: 'signaling' stamp: 'cmm 4/22/2003 23:50'!
signalCommitAndBegin

	self 
		signal: 'committing transaction and beginning a new one'
		do: [ :session | session commitAndBegin ]! !

!MagmaSessionRequest class methodsFor: 'signaling' stamp: 'cmm 9/12/2014 15:10'!
signalDisconnect
	self 
		signal: 'disconnecting session'
		do: [ :session | session disconnect ]! !

!MagmaSessionRequest class methodsFor: 'signaling' stamp: 'cmm 9/1/2010 13:09'!
signalNewGlobalReadStrategy: aMaReadStrategy
	self 
		signal: 'setting global read-strategy'
		do: [ :session | session globalReadStrategy: aMaReadStrategy ]! !

!MagmaSessionRequest class methodsFor: 'signaling' stamp: 'cmm 7/17/2010 17:56'!
signalNewReadStrategy: aMaReadStrategy
	self 
		signal: 'setting read-strategy'
		do: [ :session | session readStrategy: aMaReadStrategy ]! !

!MagmaSessionRequest class methodsFor: 'signaling' stamp: 'cmm 8/2/2009 17:06'!
signalNoteOldKeysFor: anObject 
	self 
		signal: 'noting old keys'
		do: [ : session | session noteOldKeysFor: anObject ]! !

!MagmaSessionRequest class methodsFor: 'signaling' stamp: 'cmm 11/18/2010 18:21'!
signalRefresh
	self
		signal: 'refreshing repository view'
		do: [ : session | session refresh ]! !

!MagmaSessionRequest class methodsFor: 'signaling' stamp: 'cmm 10/13/2012 23:00'!
signalSetRetrySeconds: anInteger
	self 
		signal: 'setting retrySeconds to ', anInteger
		do: [ :session | session retrySeconds: anInteger ]! !

!MagmaSessionRequest class methodsFor: 'signaling' stamp: 'cmm 7/4/2012 14:33'!
signalSetTimeoutSeconds: anInteger
	self 
		signal: 'setting timeout to ', anInteger, ' seconds'
		do: [ :session | session timeoutSeconds: anInteger ]! !

!MagmaSessionRequest class methodsFor: 'signaling' stamp: 'cmm 8/2/2009 17:06'!
signalStubOut: anObject 
	self 
		signal: 'stub out'
		do: [ : session | session stubOut: anObject ]! !

!MagmaSessionRequest class methodsFor: 'signaling' stamp: 'cmm 3/13/2013 15:15'!
signalStubOutAll: aCollection 
	self 
		signal: 'stub out ', aCollection size, ' objects.'
		do: [ : session | session stubOutAll: aCollection ]! !

!MaStringRequest methodsFor: 'initialize-release' stamp: 'cmm 12/7/2011 21:49'!
defaultAction
	self resume:
		(UIManager default 
			request: self messageText
			initialAnswer: self initialAnswer)! !

!MaStringRequest methodsFor: 'initialize-release' stamp: 'cmm 9/27/2005 00:49'!
initialAnswer: aString
	initialAnswer _ aString! !

!MaStringRequest methodsFor: 'accessing' stamp: 'jpb 5/12/2021 11:49:35'!
initialAnswer
	^ initialAnswer ifNil: [ '' ]! !

!MaStringRequest class methodsFor: 'create' stamp: 'cmm 9/27/2005 00:49'!
messageText: messageString initialAnswer: initialAnswerString

	^ (self messageText: messageString) 
		initialAnswer: initialAnswerString ;
		yourself! !

!MaFileRequest class methodsFor: 'create' stamp: 'cmm 11/16/2005 22:11'!
message: aString filename: filenameString initialDirectory: aFileDirectory

	^ self new
		messageText: aString, '.  Where is ', filenameString, '?' ;
		initialAnswer: aFileDirectory fullName ;
		yourself! !

!MaTestCase methodsFor: 'accessing' stamp: 'cmm 5/13/2010 18:53'!
defaultTimeout 
	^ 500 days asSeconds! !

!MaTestCase methodsFor: 'accessing' stamp: 'cmm 9/11/2008 19:44'!
environmentDirectory

	^ FileDirectory default! !

!MaTestCase methodsFor: 'accessing' stamp: 'cmm 1/3/2013 14:24'!
suite
	^ suite! !

!MaTestCase methodsFor: 'file management' stamp: 'jpb 5/10/2021 06:15:51'!
deleteFilesNamed: aCollection

	aCollection do: 	[ :each |
		| fileEntry |
		fileEntry _ each asFileEntry.
		
		StandardFileStream allInstances do: [ :eachStream |
			eachStream fullName = each ifTrue:
				[ self notify: 'closing a rogue FileStream for ', eachStream fullName.
				eachStream close ] ].
		
		self notify: 'deleting file ', fileEntry asString.
		 fileEntry delete ]! !

!MaTestCase methodsFor: 'private' stamp: 'cmm 1/5/2013 10:10'!
notify: aString 
	MaTestCaseNotification signal: DateAndTime now printString , ':  ' , aString! !

!MaTestCase methodsFor: 'private' stamp: 'cmm 8/19/2007 22:08'!
performTest
	[ self
		notify: 'running ' , self selector , '.. ' ;
		notify: 'time to run ' , self selector , ':  ' , [ super performTest ] durationToRun printString ] 
		on: MaNotification
		do: 
			[ : n | 
			Transcript
				cr ;
				show: n messageText.
			n resume ]! !

!MaTestCase methodsFor: 'initialize-release' stamp: 'cmm 1/3/2013 14:24'!
suite: aTestSuite
	suite _ aTestSuite! !

!MaTestCase class methodsFor: 'framework' stamp: 'cmm 1/3/2013 14:27'!
buildSuite
	| suite |
	suite _ super buildSuite.
	suite tests do: [ : each | each suite: suite ].
	^ suite! !

!MaTestCase class methodsFor: 'framework' stamp: 'cmm 4/8/2005 13:05'!
tearDownSuite
	"Counterpart to setUpSuite.  See that method for
	more info."

	Transcript cr; show: 'Tests complete.  Tearing down suite..'! !

!MaTestCase class methodsFor: 'testing' stamp: 'cmm 4/18/2002 00:11'!
shouldInheritSelectors

	^false! !

!MaObject methodsFor: 'printing' stamp: 'cmm 2/28/2013 21:00'!
abbreviation
	^ self maOriginalClass abbreviation! !

!MaObject methodsFor: 'private' stamp: 'cmm 8/7/2014 17:02'!
validateDomainVersion
	MaWarning signal: 'Not a MagmaWorld, cannot validate domainVersion.'! !

!MaObject class methodsFor: 'linux-scripts' stamp: 'cmm 12/4/2016 22:29'!
configsys
	"Script to install the HT-versions of Cog and Spur on a Ubuntu 14.04 system."

"Removed installation of libgl1-mesa-glx:i386 because it caused a package dependency failure on Ubuntu 14.04.02 LTS Desktop.  Was able to eliminate it and still install Spur, not sure if its needed for Ubuntu Server Edition though..."

	^ 'sudo dpkg-reconfigure tzdata
# sudo timedatectl set-timezone America/Chicago
echo adding 32-bit libraries to support Smalltalk VM
sudo dpkg --add-architecture i386
sudo apt-get -qq update
sudo apt-get install libuuid1:i386 libglu1-mesa:i386 libsm6:i386

echo installing Smalltalk VMs
./upgradespurht' -> [ ]! !

!MaObject class methodsFor: 'linux-scripts' stamp: 'cmm 7/30/2015 15:49'!
testAppend
	^ 'spur -vm display=none update-spur testAppend.st $1 > testAppend.log 2>&1' ->
		[ Smalltalk runAndQuit:
			[ : stringToAppend | FileStream
				fileNamed: 'testAppend.out'
				do:
					[ : stream | stream
						setToEnd ;
						lf ;
						maPrint: DateAndTime now ;
						space ;
						maPrint: stringToAppend ] ] ]! !

!MaObject class methodsFor: 'copyright' stamp: 'cmm 4/27/2014 22:04'!
copyright
	^ 'Copyright ', Date today year asString , ', Muller Automation LLC,, All Rights Reserved.'! !

!MaAttributableObject methodsFor: 'copying' stamp: 'jpb 5/12/2021 11:51:03'!
attributesNotToDeepCopy
	^ (self attributeNamed: #attributesNotToDeepCopy) ifNil: [ #() ]! !

!MaAttributableObject methodsFor: 'copying' stamp: 'jpb 5/12/2021 11:50:57'!
attributesNotToDeepCopy: anArray
	^ (self attributeNamed: #attributesNotToDeepCopy) ifNil: [#() ]! !

!MaAttributableObject methodsFor: 'copying' stamp: 'jpb 5/12/2021 11:50:51'!
attributesToDeepCopy
	"Subclasses override."
	^ (attributes
		ifNil: [ #() ]
		ifNotNil: [ attributes keys ]) copyWithoutAll: self attributesNotToDeepCopy! !

!MaAttributableObject methodsFor: 'copying' stamp: 'cmm 7/4/2013 20:25'!
veryDeepInner: aDeepCopier 
	super veryDeepInner: aDeepCopier.
	attributes _ attributes copy.
	self attributesToDeepCopy do:
		[ : eachAttribute | attributes
			at: eachAttribute
			ifPresent:
				[ : value | attributes
					at: eachAttribute
					put: (value veryDeepCopyWith: aDeepCopier) ]
			ifAbsent: [ self error: eachAttribute , ' is not an attribute.' ] ]! !

!MaAttributableObject methodsFor: 'attributes' stamp: 'cmm 4/9/2010 14:43'!
attributeNamed: aString 
	^ attributes ifNotNil: 
		[ attributes 
			at: aString
			ifAbsent: [ nil ] ]! !

!MaAttributableObject methodsFor: 'attributes' stamp: 'cmm 7/4/2013 20:18'!
attributeNamed: aString put: anObject 
	anObject ifNotNil: [ attributes ifNil: [ attributes _ Dictionary new ] ].
	^ anObject
		ifNil:
			[ self removeAttributeNamed: aString.
			anObject ]
		ifNotNil:
			[ attributes
				at: aString
				put: anObject ]! !

!MaAttributableObject methodsFor: 'attributes' stamp: 'cmm 4/9/2010 14:42'!
hasAttributeNamed: aString 
	^ attributes 
		ifNil: [ false ]
		ifNotNil: [ attributes includesKey: aString ]! !

!MaAttributableObject methodsFor: 'attributes' stamp: 'cmm 10/7/2009 21:02'!
removeAttributeNamed: aString 
	^ attributes ifNotNil: 
		[ | answer |
		answer _ attributes 
			removeKey: aString
			ifAbsent: [ nil ].
		attributes ifEmpty: [ attributes _ nil ].
		answer ]! !

!MaAttributableObject methodsFor: 'remember/restore' stamp: 'cmm 12/7/2009 17:02'!
rememberAttributes
	"Remember my current attributes as an attribute called, #priorAttributes."
	| priorAttributes |
	(self attributeNamed: #priorAttributes) ifNotNil: [ MaUserError signal: 'priorAttributes already present' ].
	priorAttributes _ attributes.
	attributes _ attributes copy.
	self 
		attributeNamed: #priorAttributes
		put: priorAttributes! !

!MaAttributableObject methodsFor: 'remember/restore' stamp: 'cmm 10/28/2011 15:38'!
restoreAttributes
	"Restore my prior-attributes which were remembered via #rememberAttributes."
	attributes 
		at: #priorAttributes
		ifPresent: [ : foundAttributes | attributes _ foundAttributes ]
		ifAbsent: 
			[ "there were no attributes when rememberAttributes was called"
			 ]! !

!MaCommandLineProcessor class methodsFor: 'api' stamp: 'jpb 5/12/2021 11:29:04'!
args
	"Answer an Array of the command-line arguments passed in."
	| stream |
self maMarked: 'delete'.
	stream _ WriteStream on: Array new.
	3
		to: 1000
		do:
			[ : n | (MaRegistry getImageInterface getSystemAttribute: n)
				ifNil: [ ^ stream contents ]
				ifNotNil:
					[ : arg | stream nextPut: arg ] ]! !

!MaCommandLineProcessor class methodsFor: 'api' stamp: 'cmm 4/1/2014 09:48'!
do: aBlock 
	self ensureStartedUp.
	[ [ aBlock valueWithAllArguments: Smalltalk arguments ]
		on: ProgressInitiationException
		do:
			[ : pie | "Don't want to log this notification."
			pie defaultAction ] ]
		on: Notification , Warning
		do:
			[ : noti | StandardFileStream stdout
				nextPutAll: DateAndTime now asString ;
				space ;
				nextPutAll: noti description ;
				cr ;
				flush.
			noti resume ]
		on: SyntaxErrorNotification
		do:
			[ : err | StandardFileStream stdout
				nextPutAll: err errorCode ;
				cr ;
				flush.
			self haltOrQuit ]
		on: Error
		do:
			[ : err | err printVerboseOn: StandardFileStream stderr.
			self haltOrQuit.
			err isResumable ifTrue: [ err resume ] ]! !

!MaCommandLineProcessor class methodsFor: 'api' stamp: 'cmm 10/30/2010 20:34'!
do: aBlock snapshotAs: imageName andQuit: shouldQuit 
	self do: aBlock.
	imageName
		ifNil:
			[ shouldQuit ifTrue:
				[ Smalltalk
					snapshot: false
					andQuit: shouldQuit ] ]
		ifNotNil:
			[ | fixedName |
			fixedName _ (imageName endsWith: '.image')
				ifTrue: [ imageName ]
				ifFalse: [ imageName , '.image' ].
			(FileDirectory default fullNameFor: fixedName) = Smalltalk imageName
				ifTrue:
					[ Smalltalk
						snapshot: true
						andQuit: shouldQuit ]
				ifFalse:
					[ Smalltalk maSaveAs: imageName.
					"Avoid instant-quit when relaunching by resaving."
					shouldQuit ifTrue:
						[ Smalltalk
							snapshot: true
							andQuit: shouldQuit ] ] ]! !

!MaCommandLineProcessor class methodsFor: 'api' stamp: 'cmm 10/30/2010 20:25'!
doAndQuit: aBlock 
	self
		do: aBlock
		snapshotAs: nil
		andQuit: true! !

!MaCommandLineProcessor class methodsFor: 'api' stamp: 'cmm 5/25/2010 12:39'!
quit
	SmalltalkImage current
		snapshot: false
		andQuit: true! !

!MaCommandLineProcessor class methodsFor: 'api' stamp: 'cmm 3/8/2013 12:04'!
quitOnError
	^ QuitOnError! !

!MaCommandLineProcessor class methodsFor: 'api' stamp: 'cmm 3/8/2013 12:04'!
quitOnError: aBoolean
	QuitOnError _ aBoolean! !

!MaCommandLineProcessor class methodsFor: 'private' stamp: 'cmm 4/2/2013 18:19'!
ensureStartedUp
	#(#FileStream #ThisOSProcess #MagmaRepositoryController ) do: [ : each | self ensureStartedUp: each ]! !

!MaCommandLineProcessor class methodsFor: 'private' stamp: 'cmm 6/21/2010 23:22'!
ensureStartedUp: className 
	(Smalltalk hasClassNamed: className) ifTrue: [ (Smalltalk classNamed: className) startUp: true ]! !

!MaCommandLineProcessor class methodsFor: 'private' stamp: 'cmm 11/13/2013 20:39'!
haltOrQuit
	(QuitOnError or: [ Smalltalk isHeadless ])
		ifTrue: [ self quit ]
		ifFalse: [ self halt ]! !

!MaCommandLineProcessor class methodsFor: 'initialize-release' stamp: 'cmm 5/13/2013 13:59'!
initialize
	QuitOnError _ true! !

!MaObjectComparison methodsFor: 'accessing' stamp: 'cmm 11/26/2012 21:11'!
comparisonOperator
	^ comparisonOperator! !

!MaObjectComparison methodsFor: 'accessing' stamp: 'cmm 11/26/2012 21:10'!
comparisonOperator: operatorSymbol
	comparisonOperator = operatorSymbol ifFalse:
		[ comparisonOperator _ operatorSymbol.
		self resetDifferences ]! !

!MaObjectComparison methodsFor: 'accessing' stamp: 'cmm 11/26/2012 21:06'!
object1
	^ object1! !

!MaObjectComparison methodsFor: 'accessing' stamp: 'cmm 11/26/2012 21:06'!
object2
	^ object2! !

!MaObjectComparison methodsFor: 'testing' stamp: 'cmm 4/6/2013 17:23'!
differenceKeys
	"The attributes which are different."
	^ self differences collect: [ : each | each key ]! !

!MaObjectComparison methodsFor: 'testing' stamp: 'cmm 12/19/2012 17:04'!
differences
	^ differences ifNil:
		[ differences _ self object1
			differencesWith: self object2
			using: comparisonOperator ]! !

!MaObjectComparison methodsFor: 'testing' stamp: 'jpb 5/12/2021 11:50:18'!
differencesFor: differencesKey 
	^ self differences
		at: differencesKey
		ifAbsent: [ #() ]! !

!MaObjectComparison methodsFor: 'testing' stamp: 'cmm 11/26/2012 21:12'!
differsBy: differencesKey
	^ self differences includesKey: differencesKey! !

!MaObjectComparison methodsFor: 'testing' stamp: 'cmm 4/6/2013 17:23'!
differsByOtherThan: allowedKeys 
	"Answer whether my objects differ by attributes _besides_ the ones specified by allowedKeys."
	| allowedCollection |
	allowedCollection _ allowedKeys asCollection.
	^ self differenceKeys anySatisfy:
		[ : each | (allowedCollection includes: each) not ]! !

!MaObjectComparison methodsFor: 'initializing' stamp: 'cmm 11/26/2012 21:16'!
initialize
	super initialize.
	comparisonOperator _ #=.
	self resetDifferences! !

!MaObjectComparison methodsFor: 'initializing' stamp: 'cmm 11/26/2012 21:07'!
setObject1: firstObject object2: secondObject 
	object1 _ firstObject.
	object2 _ secondObject! !

!MaObjectComparison methodsFor: 'private' stamp: 'cmm 11/26/2012 21:09'!
resetDifferences
	differences _ nil! !

!MaObjectComparison class methodsFor: 'create' stamp: 'cmm 11/26/2012 21:07'!
with: firstObject with: secondObject 
	^ self new
		
		setObject1: firstObject
		object2: secondObject ;
		 yourself! !

!MaSingleton methodsFor: 'actions' stamp: 'cmm 12/29/2015 10:39'!
beCurrent
	self class current: self! !

!MaSingleton class methodsFor: 'accessing' stamp: 'cmm 11/23/2010 23:51'!
current
	^ current ifNil:
		[ self current: self new.
		current ]! !

!MaSingleton class methodsFor: 'accessing' stamp: 'cmm 11/18/2010 13:11'!
current: anObject
	current _ anObject! !

!MaSingleton class methodsFor: 'actions' stamp: 'cmm 1/10/2005 21:54'!
initialize

	super initialize.
	self reset! !

!MaSingleton class methodsFor: 'actions' stamp: 'cmm 4/22/2011 14:31'!
reset
	self current: nil! !

!MaTimer methodsFor: 'access' stamp: 'cmm 6/4/2008 08:55'!
cancel
	"Only allow termination while the delay is running, not while the do block is running."
	process ifNil: [ ^ self ].
	expired ifTrue: 
		[ "There's no canceling now..!!"
		^ self ].
	"Don't allow process to terminate itself."
	process == Processor activeProcess ifTrue: [ MaSoftwareError signal: 'Do not cancel from this process!!' ].
	monitor 
		ifNil: [ process terminate ]
		ifNotNil: [ monitor critical: [ process terminate ] ].
	process _ nil! !

!MaTimer methodsFor: 'access' stamp: 'cmm 12/15/2008 17:42'!
expired
	"Answer whether the waiting period before executing my do block has elapsed.  It does not indicate whether the do block has executed or not."
	^ self started and: [ monitor critical: [ expired ] ]! !

!MaTimer methodsFor: 'access' stamp: 'jpb 5/12/2021 19:52:11'!
in: aDuration do: aBlock 
	process _ 
	[ monitor _ MaGuard new.
	expired _ false.
	delay _ (Delay forDuration: aDuration).
	delay wait.
	name ifNil: [ name _ 'MaTimer for ' , aDuration printString ].
	monitor critical: 
		[ expired _ true.
		aBlock value ] ] newProcess.
	process
		name: self name ;
		priority: Processor userInterruptPriority-1.
	process resume! !

!MaTimer methodsFor: 'access' stamp: 'cmm 9/16/2013 10:44'!
name: aString
	name _ aString! !

!MaTimer methodsFor: 'access' stamp: 'cmm 12/15/2008 17:42'!
resetDelay
	"If I am still counting down to ding, reset my Delay timer back to the original duration.  Otherwise, do nothing.  
	This might make me useful as a countdown timer to disconnect after a period of inactivity."
	self started ifFalse: [ ^ self ].	"not yet started.."
	monitor critical: [ delay ifNotNil: [ delay maReset ] ]! !

!MaTimer methodsFor: 'access' stamp: 'cmm 12/15/2008 17:41'!
started
	^ monitor notNil! !

!MaTimer methodsFor: 'initialize' stamp: 'cmm 3/7/2008 17:08'!
initialize
	super initialize.
	expired _ false! !

!MaTimer class methodsFor: 'as yet unclassified' stamp: 'cmm 5/10/2008 13:09'!
unload
	self allInstancesDo: [ : each | each cancel ]! !

!MauiPage methodsFor: 'access' stamp: 'cmm 4/1/2008 23:12'!
embeddedMorphs
	^ text embeddedMorphs! !

!MauiPage methodsFor: 'access' stamp: 'cmm 6/18/2011 15:07'!
maContextKeywordsDo: aBlock
	self subStrings do: aBlock! !

!MauiPage methodsFor: 'access' stamp: 'jpb 5/12/2021 11:49:03'!
string
	^ text ifNil: [ '' ] ifNotNil: [ text mauiPageString ]! !

!MauiPage methodsFor: 'access' stamp: 'cmm 11/19/2007 21:17'!
subStrings
	^ self string subStrings! !

!MauiPage methodsFor: 'access' stamp: 'jpb 5/11/2021 16:59:25'!
text
	"Returns text"
	^ text! !

!MauiPage methodsFor: 'access' stamp: 'cmm 12/20/2007 23:18'!
textStream
	^ TextStream with: self text! !

!MauiPage methodsFor: 'access' stamp: 'cmm 12/21/2007 00:21'!
textStreamDo: oneArgBlock 
	"Value oneArgBlock with a textStream that will then replace my 'text' contents."
	| modifiedTextStream |
	modifiedTextStream _ oneArgBlock value: self textStream.
	self text: modifiedTextStream contents! !

!MauiPage methodsFor: 'initialize' stamp: 'cmm 10/26/2007 13:33'!
text: aText
	text _ aText! !

!MauiPage methodsFor: 'copying' stamp: 'cmm 10/30/2007 12:15'!
veryDeepInner: aDeepCopier
	super veryDeepInner: aDeepCopier.
	text _ text veryDeepCopyWith: aDeepCopier! !

!MauiPage class methodsFor: 'create' stamp: 'cmm 4/19/2009 16:35'!
new
	"Create a new page."
	^ super new! !

!MauiPage class methodsFor: 'create' stamp: 'cmm 11/19/2007 14:34'!
streamContents: aBlock 
	^ self text: (Text streamContents: aBlock)! !

!MauiPage class methodsFor: 'create' stamp: 'cmm 11/19/2007 14:12'!
text: aText 
	^ self new
		text: aText asText ;
		yourself! !

!Object methodsFor: '*ma-core' stamp: 'cmm 12/30/2007 18:41'!
copyAttributes: anArray from: sourceObject

	anArray do:
		[ :each |
		self
			instVarNamed: each asString
			put: (sourceObject instVarNamed: each) copy ]! !

!Object methodsFor: '*ma-core' stamp: 'cmm 10/9/2012 20:29'!
differencesWith: anObject 
	^ self
		differencesWith: anObject
		using: #=! !

!Object methodsFor: '*ma-core' stamp: 'cmm 3/27/2013 21:43'!
differencesWith: anObject using: comparisonOperator 
	| differences c1 c2 |
	differences _ OrderedCollection new.
	self == anObject ifTrue: [ ^ differences ].
	c1 _ self maOriginalClass.
	c2 _ anObject maOriginalClass.
	c1 instSpec = c2 instSpec ifFalse:
		[ differences add:
			'class' ->
				(Array
					with: c1
					with: c2) ].
	(c1 isBytes and: [ self ~= anObject ]) ifTrue:
		[ differences add:
			'byte-content' ->
				(Array
					with: self
					with: anObject) ].
	(c1 isWords and:
		[ c1 isPointers not and: [ self ~= anObject ] ]) ifTrue:
		[ differences add:
			'word-content' ->
				(Array
					with: self
					with: anObject) ].
	(c1 allInstVarNames intersection: c2 allInstVarNames) do:
		[ : each | | my his | ((my _ (self instVarNamed: each) yourself)
			perform: comparisonOperator
			with: (his _ (anObject instVarNamed: each) yourself)) ifFalse:
			[ differences add:
				each ->
					(Array
						with: my
						with: his) ] ].
	(c1 allInstVarNames difference: c2 allInstVarNames) do:
		[ : each | differences add:
			each ->
				(Array
					with: (self instVarNamed: each) yourself
					with: 'no inst var named ' , each) ].
	(c2 allInstVarNames difference: c1 allInstVarNames) do:
		[ : each | differences add:
			each ->
				(Array
					with: 'no inst var named ' , each
					with: (anObject instVarNamed: each) yourself) ].
	1
		to: (self basicSize max: anObject basicSize)
		do:
			[ : index | index > self basicSize
				ifTrue:
					[ differences add:
						index ->
							(Array
								with: 'no reference at index ' , index asString
								with: (anObject basicAt: index) yourself) ]
				ifFalse:
					[ index > anObject basicSize
						ifTrue:
							[ differences add:
								index ->
									(Array
										with: (anObject basicAt: index) yourself
										with: 'no reference at index ' , index asString) ]
						ifFalse:
							[ ((self basicAt: index) yourself
								perform: comparisonOperator
								with: (anObject basicAt: index) yourself) ifFalse:
								[ differences add:
									index ->
										(Array
											with: (self basicAt: index) yourself
											with: (anObject basicAt: index) yourself) ] ] ] ].
	^ differences! !

!Object methodsFor: '*ma-core' stamp: 'cmm 10/9/2012 18:20'!
identityDifferencesWith: anObject 
	^ self
		differencesWith: anObject
		using: #==! !

!Object methodsFor: '*ma-core' stamp: 'jpb 5/10/2021 16:56:35'!
in: aBlock
	^aBlock value: self! !

!Object methodsFor: '*ma-core' stamp: 'cmm 3/28/2014 09:58'!
isBoolean
	^ false! !

!Object methodsFor: '*ma-core' stamp: 'cmm 5/15/2011 12:50'!
isEmptyOrNil
	^ false! !

!Object methodsFor: '*ma-core' stamp: 'cmm 11/15/2009 15:24'!
isInMagma
	^ (self respondsTo: #magmaSession) and: [ self magmaSession notNil ]! !

!Object methodsFor: '*ma-core' stamp: 'cmm 8/21/2004 15:53'!
maAbbreviatedString
	"This is intended to support two possible string representations for any object
	instead of just one.  The normal one and this abbreivated one.  The normal one provides type-information, the abbreviation provides the identifier.  An abbreviated
	provides a brevity that proves useful when looking at collections or
	other 'container' type objects.

	Suggested usage is to omit the objects type (e.g. class name) for printing abbreviated,
	but include it for standard printOn:"

	^ String streamContents: [ : stream | self maPrintAbbreviatedOn: stream ]! !

!Object methodsFor: '*ma-core' stamp: 'cmm 2/15/2002 00:02'!
maIsException

	^false
! !

!Object methodsFor: '*ma-core' stamp: 'cmm 7/15/2006 15:12'!
maIsSortedCollection
	^ false! !

!Object methodsFor: '*ma-core' stamp: 'cmm 11/10/2005 22:07'!
maMarked: aString
	"This is a marker method used to indicate that we wish to come back and re-examine
	code in the future for possible improvement.  For now, try to keep improvements categorized
	via anEsAtom that we can Browse References to, if necessary.  The possibilities should be:

		'ugly'
		'performance'
		'bug'
		'dev'
		'vmSpecific'
		'releaseSpecific'
		'otherPackageSupport'
		'system override'
		'deprecated'
		'magic'
		'debug'
	A *comment* then should follow to provide more detail."

	aString = 'delete' ifTrue: [ self halt: 'Oops..  looks like you still need this method.' ]! !

!Object methodsFor: '*ma-core' stamp: 'cmm 2/7/2008 16:56'!
maOriginalClass
	"Unfortunately, we don't have complete class-transparency with WriteBarrier.  #species isn't always the quite the thing needed.  In rare cases (browse my senders), my actual class is needed."
	^ self class! !

!Object methodsFor: '*ma-core' stamp: 'cm 12/29/2001 01:14'!
maPrintAbbreviatedOn: aStream
	"This is intended to support two possible string representations for any object
	instead of just one.  The normal one and this abbreivated one.  An abbreviated
	provides a brevity that proves useful when looking at collections or
	other 'container' type objects.

	Suggested usage is to omit the objects type (e.g. class name) for printing abbreviated,
	but include it for standard printOn:"
! !

!Object methodsFor: '*ma-core' stamp: 'cmm 7/10/2013 13:55'!
maPrintAttribute: aString on: aStream 
	aString isSymbol
		ifTrue:
			[ self
				maPrintSelector: aString
				on: aStream ]
		ifFalse:
			[ self
				maPrintInstVar: aString
				on: aStream ]! !

!Object methodsFor: '*ma-core'!
maPrintAttributes: arrayOfSymbols on: aStream

	arrayOfSymbols do:
		[ :each |
		self
			maPrintAttribute: each
			on: aStream ]
! !

!Object methodsFor: '*ma-core' stamp: 'cmm 1/31/2013 15:32'!
maPrintDescription
	^ self printString! !

!Object methodsFor: '*ma-core' stamp: 'cmm 12/19/2002 23:26'!
maPrintInstVar: aSymbol on: aStream

	| value |

	aStream
		cr;
		tab;
		nextPutAll: aSymbol;
		nextPutAll: ' = '.
	value _ self instVarNamed: aSymbol asString.
	(value isCollection and: [ value isString not ])
		ifTrue:
			[ value do:
				[ :each |
				aStream
					maPrint: each;
					space ] ]
		ifFalse:
			[ aStream maPrint: value ]
! !

!Object methodsFor: '*ma-core' stamp: 'cmm 7/30/2007 00:23'!
maPrintOn: aStream
	self printOn: aStream! !

!Object methodsFor: '*ma-core' stamp: 'cmm 7/10/2013 13:57'!
maPrintSelector: aSymbol on: aStream 
	| value |
	aStream
		 cr ;
		 tab ;
		 nextPutAll: aSymbol ;
		 nextPutAll: ' : '.
	value _ [ self perform: aSymbol ]
		on: Error
		do: [ : exc | exc return: (exc messageText ifNil: [ 'error' ]) ].
	aStream maPrint: value! !

!Object methodsFor: '*ma-core' stamp: 'cmm 7/24/2002 20:46'!
maShallowCopy

	^self shallowCopy! !

!Object methodsFor: '*ma-core' stamp: 'cmm 6/17/2010 15:28'!
maSuggestedFilename
	"Answer a name that would be suitable, if the receiver were to be saved in a file."
	^ self name asFileName ! !

!Object methodsFor: '*ma-core' stamp: 'cmm 7/9/2008 20:39'!
realObject
	"Balance API with MagmaForwardingProxy, so applications may sometimes choose to get hold of the actual object, not just a forwardingProxy."
	^ self! !

!Object methodsFor: '*ma-core' stamp: 'cmm 2/11/2016 14:12'!
validateIsKindOf: aClassOrClasses ifNotSignal: userErrorClass 
	(self isKindOf: aClassOrClasses) ifFalse:
		[ userErrorClass signalPage:
			(MauiPage streamContents:
				[ : stream | stream
					 maPrint: 'This message accepts a ' ;
					 maPrint: aClassOrClasses asString ]) ]! !

!Object class methodsFor: '*ma-core' stamp: 'cmm 11/20/2016 13:11'!
exportLinuxScripts
	self exportLinuxScripts: self linuxScriptSelectors! !

!Object class methodsFor: '*ma-core' stamp: 'cmm 11/20/2016 13:08'!
exportLinuxScripts: aCollection
	self
		exportLinuxScripts: aCollection
		to: FileDirectory default! !

!Object class methodsFor: '*ma-core' stamp: 'cmm 11/7/2018 23:28'!
exportLinuxScripts: aCollection to: aFileDirectory 
	aCollection do:
		[ : eachSelector | | eachPair |
		eachPair _ self perform: eachSelector asSymbol.
		aFileDirectory
			fileNamed: eachSelector
			do:
				[ : stream | stream
					 truncate: 0 ;
					 lineEndConvention: #lf ;
					 nextPutAll: eachPair key ].
		OSProcess waitForCommand: 'chmod u+rx ', eachSelector.
		eachPair value innerSourceString = 'nil' ifFalse:
			[ aFileDirectory
				fileNamed: eachSelector , '.st'
				do:
					[ : stream | stream
						 truncate: 0 ;
						 lineEndConvention: #lf ;
						 nextPutAll: eachPair value innerSourceString ] ] ].
	self exportSqueakConfTo: aFileDirectory! !

!Object class methodsFor: '*ma-core' stamp: 'cmm 6/26/2016 20:21'!
exportSqueakConfTo: aFileDirectory
	aFileDirectory
		fileNamed: 'squeak.conf'
		do:
			[ : stream | stream
				lineEndConvention: #lf ;
				maPrint:
'*       hard    rtprio  2
*       soft    rtprio  2' ]! !

!Object class methodsFor: '*ma-core' stamp: 'cmm 7/17/2016 11:53'!
linuxScriptSelectors
	| selectors |
	selectors _ Set new.
	self class withAllSuperclassesDo:
		[ : each | selectors
			 addAll: (each methodsInCategory: 'linux-scripts') ;
			 addAll: (each methodsInCategory: '*ma-core-linux-scripts') ].
	^ selectors! !

!Object class methodsFor: '*ma-core' stamp: 'jpb 5/13/2021 12:58:31'!
registerSelfAsFileReader
	MaRegistry registerAsFileReader: self.! !

!Object class methodsFor: '*ma-core' stamp: 'cmm 7/9/2016 18:21'!
stScriptNames
	^ Array streamContents:
		[ : stream | self linuxScriptSelectors do:
			[ : each | (self perform: each) value innerSourceString ~= 'nil' ifTrue: [ stream nextPut: each , '.st' ] ] ]! !

!Object class methodsFor: '*ma-core-linux-scripts' stamp: 'cmm 11/7/2018 16:13'!
upgradespur
	^ self upgradespur: 'vm/sqcogspur64linux'! !

!Object class methodsFor: '*ma-core' stamp: 'cmm 10/31/2018 16:05'!
upgradespur: programName
	^ ('#!!/bin/bash
NEW_VERSION="`basename ./vm/{1}/lib/squeak/[0-9.-]*`"
echo Upgrading Spur to $NEW_VERSION
mv ./vm/{1}/bin/squeak ./vm/{1}/bin/spur
cp -a *.sources ./vm/{1}/lib/squeak/$NEW_VERSION
chmod -R 775 ./vm/{1}/bin/spur ./vm/{1}/lib/squeak
chmod ugo-x ./vm/{1}/lib/squeak/$NEW_VERSION/*.sources
# install into Path locations
sudo cp -a ./vm/{1}/* /usr/local
# install thread-priorities for heartbeat thread
sudo cp -a squeak.conf /etc/security/limits.d/squeak.conf' format: {programName}) -> []! !

!Object class methodsFor: '*ma-core-linux-scripts' stamp: 'cmm 11/7/2018 16:13'!
upgradespurht
	^ self upgradespur: 'vm/sqcogspur64linuxht'! !

!TimeProfileBrowser class methodsFor: '*ma-core' stamp: 'cmm 12/24/2003 13:25'!
maOnBlock: block if: conditionBlock
	"Allows you to build up your sample set before invoking the profiler."
	^conditionBlock value 
		ifTrue: [ self onBlock: block ]
		ifFalse: [ block value ]! !

!Debugger class methodsFor: '*ma-core' stamp: 'cmm 6/25/2018 22:46'!
rememberExtent: aBoolean 
	"Set whether to try to remember the last size of the debugger."
	SavedExtent _ aBoolean ifTrue: [ SavedExtent ifNil: [ Debugger new initialExtent ] ]! !

!Boolean methodsFor: '*ma-core' stamp: 'cmm 3/28/2014 09:58'!
isBoolean
	^ true! !

!False methodsFor: '*ma-core' stamp: 'cmm 5/23/2012 20:34'!
hash
	"A value hash for false, so that it can be distinct from its #identityHash (which changed in 2009, causing its #hash to change too)."
	^ 826277888! !

!True methodsFor: '*ma-core' stamp: 'cmm 5/23/2012 20:34'!
hash
	"A value hash for true, so that it can be distinct from its #identityHash (which changed in 2009, causing its hash to change too)."
	^ 773324800! !

!Color methodsFor: '*ma-core' stamp: 'cmm 2/12/2016 16:10'!
highlighted
	"Answer a color which is a higlighted version of the receiver."
	^ self
		adjustSaturation: 0.10
		brightness:
			(self luminance > 0.5
				ifTrue: [ -0.15 ]
				ifFalse: [ 0.15 ])! !

!UndefinedObject methodsFor: '*ma-core' stamp: 'cmm 11/7/2018 20:57'!
commandOutput: aString
	"Execute aString as a command to the Linux host.  A redirect of stdout to a randomly named file is automatically appended (e.g., ' > _cmd-9p9o9v6lrwb3dtwy1bgs75nri.out') so the output of the command can be scooped up and returned here.
	Example: 
		OSProcess commandOutput: 'hostname' "
	^ (self commandToOutput: [ : fn | aString, ' > ', fn ]) withBlanksTrimmed! !

!UndefinedObject methodsFor: '*ma-core' stamp: 'cmm 11/7/2018 20:55'!
commandToOutput: oneArgBlock
	"The receiver passes the name of a temporary file to be used for the command output to oneArgBlock.  The user crafts their command to output to that file name, whose contents are then returned upon completion and the file automatically deleted afterward.  This covers the vast majority of uses of OSProcess command:.
	Example: 
		OSProcess cmd: [ : fn | 'hostname > ', fn ]"
	| filename |
	filename _ FileDirectory default fullNameFor: '_cmd-' , UUID new asString36 , '.out'.
	self waitForCommand: (oneArgBlock value: filename).
	^ [ FileStream
		fileNamed: filename
		do: [ : stream | stream contents withBlanksTrimmed ] ] ensure: [ FileDirectory default deleteFileNamed: filename ]! !

!UndefinedObject methodsFor: '*ma-core' stamp: 'cmm 10/31/2009 12:31'!
hand
	^ ActiveHand! !

!UndefinedObject methodsFor: '*ma-core' stamp: 'cmm 5/23/2012 21:37'!
hash
	"Squeak's hash for nil since 2009.  Allow this literal to have its own value hash independent of its identityHash, to be safer with distributed systems which may be using nil in a hash calculation."
	^ 1006632960! !

!UndefinedObject methodsFor: '*ma-core' stamp: 'cmm 3/3/2004 22:57'!
maDefault: aSystemNavigation

	Default _ aSystemNavigation! !

!UndefinedObject methodsFor: '*ma-core' stamp: 'cmm 3/19/2015 15:50'!
maPackages
	^ (self allPackages select: 
		[ : each | 
		(each packageName 
			maBeginsWith: 'Ma'
			caseSensitive: true) or: 
			[ {  'WriteBarrier' } anySatisfy: [ : eachAlt | eachAlt = each packageName ] ] ]) collect: [ : each | PackageInfo named: each packageName ]! !

!Behavior methodsFor: '*ma-core' stamp: 'cmm 12/2/2004 15:07'!
maAllInstVarNamesDo: aBlock

	superclass ifNotNil: [ superclass maAllInstVarNamesDo: aBlock ].
	self instVarNames do: aBlock! !

!Behavior methodsFor: '*ma-core' stamp: 'cmm 12/16/2004 01:26'!
maAllSelectorsDo: aBlock

	self selectorsDo: aBlock.
	superclass ifNotNil: [ superclass maAllSelectorsDo: aBlock ]! !

!Behavior methodsFor: '*ma-core' stamp: 'cmm 12/3/2007 21:13'!
maFirstCommentAt: selector 
	"A much more-convenient method than firstCommentAt:, which requires you to specify the exact class, a problem when the method is implemented in the superclass methodDict."
	^ (self methodDict includesKey: selector) 
		ifTrue: [ self firstCommentAt: selector ]
		ifFalse: 
			[ self superclass 
				ifNil: [ '' ]
				ifNotNil: [ self superclass maFirstCommentAt: selector ] ]! !

!Behavior methodsFor: '*ma-core' stamp: 'cmm 11/19/2003 22:53'!
maFirstCommentOrNilAt: selector
	"A much more-convenient method than firstCommentAt:, which requires you to specify the exact class, a problem when the method is implemented in the superclass methodDict."

	| string |
	^(string _ self maFirstCommentAt: selector) isEmpty
		ifTrue: [ nil ]
		ifFalse: [ string ]! !

!Class methodsFor: '*ma-core' stamp: 'cmm 6/14/2012 15:58'!
theNonWriteBarrierClass
	^ self! !

!Number methodsFor: '*ma-core' stamp: 'cmm 7/18/2007 21:04'!
maLog: anInteger
	^ self log: anInteger! !

!Number methodsFor: '*ma-core' stamp: 'cm 12/24/2001 16:40'!
maPrintAbbreviatedOn: aStream

	self printOn: aStream
! !

!Integer methodsFor: '*ma-core' stamp: 'cmm 11/19/2009 20:56'!
billion
	^self*1000000000! !

!Integer methodsFor: '*ma-core' stamp: 'cmm 11/19/2009 20:56'!
hundred
	^self*100! !

!Integer methodsFor: '*ma-core' stamp: 'cmm 3/22/2011 20:33'!
maBitClear: index 
	"Return the receiver with the bit at index cleared."
	^ self
		bitAt: index
		put: 0! !

!Integer methodsFor: '*ma-core' stamp: 'cmm 3/22/2011 20:33'!
maBitSet: index 
	"Return the receiver with the bit at index set."
	^ self
		bitAt: index
		put: 1! !

!Integer methodsFor: '*ma-core' stamp: 'cmm 9/1/2006 17:51'!
maIsBitClear: bitPosition 
	^ (self maIsBitSet: bitPosition) not! !

!Integer methodsFor: '*ma-core' stamp: 'cmm 9/1/2006 17:52'!
maIsBitSet: bitPosition 
	^ self 
		anyBitOfMagnitudeFrom: bitPosition
		to: bitPosition! !

!Integer methodsFor: '*ma-core' stamp: 'cmm 11/19/2009 20:56'!
million
	^self*1000000! !

!Integer methodsFor: '*ma-core' stamp: 'cmm 11/19/2009 20:56'!
thousand
	^self*1000! !

!LargePositiveInteger methodsFor: '*ma-core' stamp: 'cmm 6/13/2010 23:03'!
maLog: anInteger 
	"Answer the log base aNumber of the receiver."
	^ (self log: anInteger) in:
		[ : firstAttempt | firstAttempt = Float infinity
			ifTrue:
				[ | m |
				"Search for it."
				m _ 1023.
				(anInteger raisedTo: m) > self
					ifTrue:
						[ [ (anInteger raisedTo: m) < self ] whileFalse: [ m _ m - 1 ].
						(m - 1) asFloat ]
					ifFalse:
						[ [ (anInteger raisedTo: m) > self ] whileFalse: [ m _ m + 1 ].
						(m - 1) asFloat ] ]
			ifFalse: [ firstAttempt ] ]! !

!DateAndTime methodsFor: '*ma-core' stamp: 'cmm 8/13/2014 16:14'!
maPrintAbbreviatedOn: aStream 
	| date |
	(date _ self asDate) makeUTC = Date today
		ifTrue:
			[ self asTime
				print24: false
				showSeconds: false
				on: aStream ]
		ifFalse:
			[ aStream
				 maPrint: ((date printFormat: #(2 1 3 $/ 1 2 1 )) copyUpToLast: $/) ;
				 maPrint: $@.
			self asTime
				print24: false
				showSeconds: false
				on: aStream ]! !

!MessageTally class methodsFor: '*ma-core' stamp: 'cmm 11/10/2010 13:22'!
maSpyOn: spyBlock if: conditionBlock 
	^ conditionBlock
		ifTrue: [ self spyOn: spyBlock ]
		ifFalse: spyBlock! !

!MessageTally class methodsFor: '*ma-core' stamp: 'cmm 11/10/2010 13:41'!
maSpyOn: aBlock toFileNamed: fileName reportOtherProcesses: aBoolean if: conditionBlock 
	conditionBlock value
		ifTrue:
			[ self
				spyOn: aBlock
				toFileNamed: fileName
				reportOtherProcesses: aBoolean ]
		ifFalse: aBlock! !

!Character methodsFor: '*ma-core' stamp: 'cmm 7/30/2007 00:22'!
maPrintOn: aStream
	aStream nextPut: self! !

!Character methodsFor: '*ma-core' stamp: 'cmm 7/24/2002 20:44'!
maShallowCopy
	"Characters are unique."

	^self
! !

!Timespan methodsFor: '*ma-core' stamp: 'cmm 8/3/2010 22:58'!
maPrintAbbreviatedOn: aStream
	self printOn: aStream! !

!Date methodsFor: '*ma-core' stamp: 'cmm 7/29/2008 23:14'!
maAddYears: anInteger 
	"Answer a new date anInteger years after or, if anInteger is negative, before, the receiver."
	^ Date 
		newDay: self dayOfMonth
		month: self monthIndex
		year: self year + anInteger! !

!Date methodsFor: '*ma-core' stamp: 'cmm 6/17/2010 15:29'!
maSuggestedFilename 
	^ self yyyymmdd asFileName! !

!Month methodsFor: '*ma-core' stamp: 'cmm 8/3/2010 23:04'!
maPrintAbbreviatedOn: aStream 
	aStream
		 maPrint: self year asString ;
		 maPrint: $- ;
		 maPrint:
			(self monthIndex
				printPaddedWith: $0
				to: 2)! !

!Month methodsFor: '*ma-core' stamp: 'cmm 8/3/2010 23:33'!
maSuggestedFilename
	"Often, it is useful for month filenames to be sortable, therefore override the standard maSuggestedFilename which would otherwise answer, 'July', 'August', etc."
	^ String streamContents: [ : stream | self maPrintAbbreviatedOn: stream ]! !

!BlockClosure methodsFor: '*ma-core' stamp: 'cmm 8/6/2014 15:25'!
innerSourceString
	^ String streamContents: [ : stream | self printInnerSourceOn: stream ]! !

!BlockClosure methodsFor: '*ma-core' stamp: 'cmm 8/13/2009 21:33'!
maOn: exc1 do: block1 on: exc2 do: block2

	^[
		[ self value ]
			on: exc1
			do: block1 ]

		on: exc2
		do: block2! !

!BlockClosure methodsFor: '*ma-core' stamp: 'cmm 8/13/2009 21:33'!
maOn: exc1 do: block1 on: exc2 do: block2 on: exc3 do: block3

	^[
		[ self value ]
			on: exc1
			do: block1 ]

		maOn: exc2
		do: block2

		on: exc3
		do: block3! !

!BlockClosure methodsFor: '*ma-core' stamp: 'cmm 8/6/2014 15:24'!
printInnerSourceOn: aStream 
	self decompile
		ifNil: [ aStream nextPutall: '--source missing--' ]
		ifNotNil:
			[ : parseNode | parseNode statements anyOne
				printOn: aStream
				indent: 0 ]! !

!BlockClosure methodsFor: '*ma-core' stamp: 'cmm 11/19/2010 10:29'!
sentTo: anObject
	^ self value: anObject! !

!BlockClosure methodsFor: '*ma-core' stamp: 'cmm 10/7/2010 20:35'!
valueWithAllArguments: anArray 
	"Same as valueWithPossibleArgs: except for a one-arg block, which is sure to pass all of anArray rather than just the first of its arguments.  This is used to allow a large, variable number of arguments to be passed."
	^numArgs = 0
		ifTrue: [self value]
		ifFalse:
			[self valueWithPossibleArgs:
				(numArgs = anArray size
					ifTrue: [anArray]
					ifFalse:
						[numArgs > anArray size
							ifTrue: [anArray, (Array new: numArgs - anArray size)]
							ifFalse:
								[numArgs = 1
									ifTrue: [Array with: anArray]
									ifFalse: [anArray copyFrom: 1 to: numArgs]]])]! !

!Delay methodsFor: '*ma-core' stamp: 'cmm 9/1/2004 22:25'!
maReset
	"If I am already waiting, start my wait back at the beginning.  If I'm not yet waiting, no effect."
	resumptionTime _ Time millisecondClockValue + delayDuration! !

!Collection methodsFor: '*ma-core' stamp: 'cmm 4/3/2017 21:38'!
detect: aBlock bestMatching: aString
	"Detect the best-matching element which, when valued with aBlock, produces the best-match to aString.  The best match with aString is an exact match, the second best are those which the beginning of aString.  The third best are those which contain aString as a substring.
	If none match at least as a substring, answer nil."
	^ self
		detect: [ : each | (aBlock value: each) = aString ]
		ifNone:
			[ self
				detect:
					[ : each | (aBlock value: each)
						maBeginsWith: aString
						caseSensitive: false ]
				ifNone:
					[ self
						detect:
							[ : each | (aBlock value: each)
								includesSubstring: aString
								caseSensitive: false ]
						ifNone: [ nil ] ] ]! !

!Collection methodsFor: '*ma-core' stamp: 'cmm 7/9/2002 22:59'!
maConsistsOf: aCollection
	"Answer whether the receiver and aCollection reference all equal
	objects, including the same number of references to those objects.  Order
	is not a factor."

	^self size = aCollection size and: [ self maIncludesAll: aCollection ]
! !

!Collection methodsFor: '*ma-core' stamp: 'cmm 1/16/2002 16:48'!
maDetect: aBlock ifFound: foundBlock ifNone: exceptionBlock 
	"foundBlock takes one argument, the found object."

	self 
		do: [ :element | (aBlock value: element) ifTrue: [ ^foundBlock value: element ] ].
	^exceptionBlock value
! !

!Collection methodsFor: '*ma-core' stamp: 'cmm 7/24/2004 01:05'!
maDo: aBlock while: conditionBlock

	conditionBlock value ifFalse: [ ^ self ].
	self do:
		[ : each |
		aBlock value: each.
		conditionBlock value ifFalse: [ ^ self ] ]! !

!Collection methodsFor: '*ma-core' stamp: 'cmm 12/19/2002 21:32'!
maIncludesAll: aCollection
	"Return true if the receiver includes all elements in aCollection.
	If aCollection contains duplicate elements, the receiver must have
	one for each of them."

	| otherColl |

	aCollection size > self size ifTrue: [ ^false ].
	self size > 20
		ifTrue:
			[ ^self asBag maIncludesAll: aCollection ].
	otherColl _
		aCollection size > 20
			ifTrue: [ aCollection asBag ]
			ifFalse: [ aCollection ].
	otherColl do:
		[ :each | (self occurrencesOf: each) < (otherColl occurrencesOf: each) ifTrue: [ ^false ] ].
	^true! !

!Collection methodsFor: '*ma-core'!
maMatchesElementsOf: anotherCollection
	"Answer whether the receiver points to equivalent objects as
	anotherCollection.  In SequencableCollections, the order must be
	the same as well."

	^self maConsistsOf: anotherCollection
! !

!Collection methodsFor: '*ma-core' stamp: 'cmm 1/22/2015 16:45'!
maPrintDescription
	super mauiName size < 40 ifTrue: [ ^ super mauiName ].
	^ String streamContents:
		[ : stream |
		self isEmpty ifTrue:
			[ stream maPrint:
				(self class name first isVowel
					ifTrue: [ 'an ' ]
					ifFalse: [ 'a ' ]).
			stream maPrint: 'empty '.
			stream maPrint: self maOriginalClass name ].
		self isEmpty ifFalse:
			[ | lowestCommonSuperclass |
			"		stream maPrint: ' of '."
			stream
				 maPrint: self size ;
				 space.
			lowestCommonSuperclass _ self
				inject: self anyOne maOriginalClass
				into:
					[ : common : each | (each maOriginalClass == common or: [ each maOriginalClass inheritsFrom: common ])
						ifTrue: [ common ]
						ifFalse: [ each maOriginalClass maLowestCommonSuperclassWith: common ] ].
			stream
				maPrint: lowestCommonSuperclass name
				pluralizeIf: [ self size > 1 ] ] ]! !

!Collection methodsFor: '*ma-core'!
maRemoveAll: aCollection forEachAbsent: aBlock

	^aCollection do:
		[ :element |
		self
			remove: element
			ifAbsent: [ aBlock value: element ] ]
! !

!SequenceableCollection methodsFor: '*ma-core' stamp: 'cmm 5/18/2004 12:01'!
maMatchesElementsOf: anotherCollection
	"Answer whether the receiver points to equivalent objects as
	anotherCollection and in the same order."

	self == anotherCollection ifTrue: [ ^ true ].
	self size = anotherCollection size ifFalse: [ ^false ].
	self
		with: anotherCollection
		do: [ :eachInSelf :eachInOther | eachInSelf = eachInOther ifFalse: [ ^false ] ].
	^true
! !

!SequenceableCollection methodsFor: '*ma-core' stamp: 'cmm 1/20/2010 09:24'!
maPermutations
	^ Array streamContents: 
		[ : stream | 
		self maPermutationsDo: [ : eachCombo | stream nextPut: eachCombo copy ] ]! !

!SequenceableCollection methodsFor: '*ma-core' stamp: 'cmm 1/16/2010 18:49'!
maPermutationsDo: aBlock 
	"I am a collection of other SequenceableCollections.  For each combination of elements in my element-Collections, value aBlock with the arguments Array of each combination of elements."
	| numberOfCombinations args valueAtBlock permutationsSpec |
	permutationsSpec _ self select: [ : each | each notEmpty ].
	permutationsSpec ifEmpty: [ ^ self ].
	numberOfCombinations _ permutationsSpec 
		inject: 1
		into: [ : prod : each | each size * prod ].
	args _ Array new: permutationsSpec size.
	"Eliminate empty Array specifications, rather than complicate enumeration logic, below."
	valueAtBlock _ 
	[ : elementIndex | 
	1 
		to: permutationsSpec size
		do: 
			[ : innerIndex | 
			| eachInnerArray radix |
			eachInnerArray _ permutationsSpec at: innerIndex.
			radix _ 1.
			1 
				to: innerIndex - 1
				do: [ : eachOrder | radix _ radix * (permutationsSpec at: eachOrder) size ].
			args 
				at: innerIndex
				put: (eachInnerArray at: elementIndex // radix \\ eachInnerArray size + 1) ].
	aBlock value: args ].
	"With this formula, the last is the first, the first is the second."
	valueAtBlock value: numberOfCombinations.
	1 
		to: numberOfCombinations - 1
		do: valueAtBlock! !

!SequenceableCollection methodsFor: '*ma-core' stamp: 'cmm 10/7/2010 20:26'!
maPermutationsDo: aBlock separatedBy: separatorBlock 
	"I am a collection of other SequenceableCollections.  For each combination of elements in my element-Collections, value aBlock with the arguments Array of each combination of elements, and evaluate the separatorBlock between."
	| beforeFirst |
	beforeFirst _ true.
	self maPermutationsDo:
		[ : each | beforeFirst
			ifTrue: [ beforeFirst _ false ]
			ifFalse: [ separatorBlock value ].
		aBlock value: each ]! !

!SequenceableCollection methodsFor: '*ma-core' stamp: 'cmm 11/2/2010 15:09'!
maPermutationsSize
	"Assume I am an Array of Array's that will be permuted via maPermuationsDo:.  Progress-indication is useful in this situation."
	^ self
		inject: 1
		into:
			[ : prod : each | prod * (each size max: 1) ]! !

!SequenceableCollection methodsFor: '*ma-core' stamp: 'cmm 7/24/2011 16:46'!
maPermutationsWithIndexesDo: aBlock 
	"I am a collection of other SequenceableCollections.  For each combination of elements in my element-Collections, value aBlock with the arguments Array of each combination of elements."
	| numberOfCombinations args valueAtBlock permutationsSpec indexes |
	"Eliminate empty Array specifications, rather than complicate enumeration logic."
	permutationsSpec _ self select: [ : each | each notEmpty ].
	permutationsSpec ifEmpty: [ ^ self ].
	numberOfCombinations _ permutationsSpec maPermutationsSize.
	args _ Array new: permutationsSpec size.
	indexes _ Array new: permutationsSpec size.
	valueAtBlock _ 
	[ : elementIndex | 
	1 
		to: permutationsSpec size
		do: 
			[ : innerIndex | | eachInnerArray innerArrayIndex radix |
			eachInnerArray _ permutationsSpec at: innerIndex.
			radix _ 1.
			1 
				to: innerIndex - 1
				do: [ : eachOrder | radix _ radix * (permutationsSpec at: eachOrder) size ].
			innerArrayIndex _ elementIndex // radix \\ eachInnerArray size + 1.
			indexes at: innerIndex put: innerArrayIndex.
			args 
				at: innerIndex
				put: (eachInnerArray at: innerArrayIndex) ].
	aBlock value: args value: indexes ].
	"With this formula, the last is the first, the first is the second."
	valueAtBlock value: numberOfCombinations.
	1 
		to: numberOfCombinations - 1
		do: valueAtBlock! !

!String methodsFor: '*ma-core' stamp: 'cmm 11/29/2016 20:51'!
asFileDirectory
	^ FileDirectory on: self! !

!String methodsFor: '*ma-core' stamp: 'cmm 7/6/2006 12:11'!
between: minString and: maxString
	^ self >= minString  and: [self <= maxString ]! !

!String methodsFor: '*ma-core'!
maAsIntegerFromRadix: anInteger
	"Answer a Smalltalk Integer with an equivalent value of the receiver
	represented in radix anInteger."

	^self
		inject: 0
		into: [ :sum :character | (sum * anInteger) + character digitValue ]
! !

!String methodsFor: '*ma-core' stamp: 'cmm 8/6/2008 21:19'!
maAsNumber
	"Squeak..  Depending on *how* the receiver is not numeric, It sometimes answers 0, other times signals an error."
	| n |
	^ 
	[ n _ self asNumber.
	n = 0 ifFalse: [ n ] ] 
		on: Error
		do: [ : err | err return: nil ]! !

!String methodsFor: '*ma-core' stamp: 'cmm 2/27/2008 23:50'!
maBeginsWith: aString caseSensitive: aBoolean 
	"Returns true if the receiver begins with the elements in aString, while ignoring the case if aBoolean is true."
	self size < aString size ifTrue: [ ^ false ].
	"Optimization.  Most strings will differ on the first character.."
	self first asLowercase = aString first asLowercase ifFalse: [ ^ false ].
	^ (self 
		findSubstring: aString
		in: self
		startingAt: 1
		matchTable: (aBoolean 
				ifTrue: [ CaseSensitiveOrder ]
				ifFalse: [ CaseInsensitiveOrder ])) = 1! !

!String methodsFor: '*ma-core' stamp: 'cmm 2/28/2008 00:14'!
maEndsWith: aString caseSensitive: aBoolean 
	"Returns true if the receiver begins with the elements in aString,while ignoring the case if aBoolean is true."
	| extra |
	(extra _ self size - aString size) < 0 ifTrue: [ ^ false ].
	^ (self 
		findSubstring: aString
		in: self
		startingAt: extra + 1
		matchTable: (aBoolean 
				ifTrue: [ CaseSensitiveOrder ]
				ifFalse: [ CaseInsensitiveOrder ])) > 0! !

!String methodsFor: '*ma-core' stamp: 'cmm 2/7/2008 17:04'!
maFormattedForPlural: aNumber 
	"This is kind of a wing-nut method, but it can save you some
	redundant code if you care to make your programs user message
	plural and singular friendly.  It will add or remove an s based on
	aNumber and whether or not the receiver already ends in s."
	^ aNumber > 0 & (aNumber <= 1) 
		ifTrue: 
			[ "should not end in s"
			(self 
				maEndsWith: 's'
				caseSensitive: true) 
				ifTrue: 
					[ self 
						copyFrom: 1
						to: self size - 1 ]
				ifFalse: [ self ] ]
		ifFalse: 
			[ (self 
				maEndsWith: 's'
				caseSensitive: true) 
				ifTrue: 
					[ "should end in s"
					self ]
				ifFalse: [ self , 's' ] ]! !

!String methodsFor: '*ma-core' stamp: 'cmm 3/16/2014 19:21'!
maPrintAbbreviatedOn: aStream 
	self size > 80
		ifTrue:
			[ aStream
				 nextPutAll:
					(self
						copyFrom: 1
						to: 77) ;
				 nextPutAll: '...' ]
		ifFalse: [ aStream nextPutAll: self ]! !

!String methodsFor: '*ma-core' stamp: 'cmm 7/30/2007 00:22'!
maPrintOn: aStream
	aStream nextPutAll: self! !

!String methodsFor: '*ma-core' stamp: 'cmm 2/2/2008 16:55'!
occurrence: anInteger where: oneArgBlock 
	^ self 
		occurrence: anInteger
		where: oneArgBlock
		startingAt: 1! !

!String methodsFor: '*ma-core' stamp: 'cmm 2/2/2008 17:04'!
occurrence: anInteger where: oneArgBlock startingAt: startPos 
	"Answer the position of the anInteger'th Character, aCharacter, in the receiver.  If not found, answer 0."
	| pos count |
	count _ 0.
	pos _ startPos.
	[ pos < self size and: [ count < anInteger ] ] whileTrue: 
		[ (oneArgBlock value: (self at: pos)) ifTrue: [ count _ count + 1 ].
		pos _ pos + 1 ].
	^ count = anInteger 
		ifTrue: [ pos-1 ]
		ifFalse: [ 0 ]! !

!String methodsFor: '*ma-core' stamp: 'cmm 11/5/2007 01:00'!
smalltalkToWords
	"smalltalkString may be a Smalltalk class name, method name, or a parameter name (aString or smalltalkString).
	
	'MauiUserStrategy' answers 'Maui User Strategy'
	'smalltalkToWords:' answers 'Smalltalk To Words:'
	'aString' answers 'A String'
	'aMaObjectSerializer' answers 'A Ma Object Serializer'
	'aMagmaSession' answers 'A Magma Session'
	'A typical overridden name:' answers 'A typical overridden name:'"
	| smalltalkStream words |
	smalltalkStream _ self readStream.
	words _ String streamContents: 
		[ : stream | 
		[ smalltalkStream atEnd ] whileFalse: 
			[ (smalltalkStream peek isUppercase and: [ stream isEmpty not and: [ stream last ~= Character space ] ]) ifTrue: [ stream space ].
			stream isEmpty 
				ifTrue: [ stream nextPut: smalltalkStream next asUppercase ]
				ifFalse: [ stream nextPut: smalltalkStream next ] ] ].
	^ words! !

!String methodsFor: '*ma-core' stamp: 'cmm 7/10/2015 14:37'!
squeakToLinux
	^ self
		copyReplaceAll: (Character value: 13) asString
		with: (Character value: 10) asString! !

!String methodsFor: '*ma-core' stamp: 'cmm 11/5/2013 10:57'!
veryDeepCopy
	"Overridden for performance.  I can't imagine ever wanting to add dependents to a String."
	^ self! !

!Symbol methodsFor: '*ma-core' stamp: 'cmm 10/21/2015 10:20'!
messagePartsDo: oneArgBlock 
	self first isLetter
		ifTrue:
			[ | stream |
			stream _ ReadStream on: self.
			[ stream atEnd ] whileFalse: [ oneArgBlock value: (stream maUpToIncluding: $:) ] ]
		ifFalse: [ oneArgBlock value: self ]! !

!Symbol methodsFor: '*ma-core' stamp: 'cmm 10/21/2015 14:39:08'!
messagePartsWithIndexDo: twoArgBlock 
	| index |
	index _ 0.
	self messagePartsDo:
		[ : each | twoArgBlock
			value: each
			value: (index _ index + 1) ]! !

!ByteArray methodsFor: '*ma-core' stamp: 'cbc 8/8/2016 10:08'!
hostNumber
	"This is here for Pharo compatibility.  It is overridden by Pharo's SocketAddress."
	^ String streamContents: 
		[ : stream | 
		self do: 	[ : each | stream maPrint: each]
		      separatedBy: [ stream maPrint: $. ]]
! !

!ByteArray methodsFor: '*ma-core' stamp: 'cmm 6/8/2008 20:55'!
lzCompressed
	| compressor compressed |
	compressed _ RWBinaryOrTextStream on: ByteArray new.
	compressor _ GZipWriteStream on: compressed.
	compressor nextPutAll: self.
	compressor close.
	^ compressed contents! !

!ByteArray methodsFor: '*ma-core' stamp: 'cmm 6/8/2008 21:11'!
lzUncompressed
	"I am a ByteArray compressed with lzCompress.  Answer its original, uncompressed, form."
	| compressed |
	compressed _ ReadStream on: self.
	^ (GZipReadStream on: compressed) contents! !

!ByteArray methodsFor: '*ma-core' stamp: 'cmm 8/13/2009 21:53'!
maAsIpString
	"Answer the receiver as a dot-delimited ip address String."
	^ self hostNumber! !

!ByteArray methodsFor: '*ma-core' stamp: 'cmm 8/13/2009 22:31'!
maIsLocalHost
	"Host addresses are represented as ByteArray's in Squeak.  Answer whether this host-address represents a localhost address."
	"Efficiently check whether the initial host-address is 127, which is assumed to be the localhost."
	self maAsIpString in: 
		[ : str | 
		(str first = $1 and: [ str second = $2 and: [ str third = $7 ] ]) ifTrue: [ ^ true ] ].
	^ self = NetNameResolver localHostAddress! !

!ByteArray methodsFor: '*ma-core' stamp: 'cmm 3/16/2014 19:25'!
maPrintAbbreviatedOn: aStream 
	self size > 80
		ifTrue:
			[ | baPrint |
			baPrint _ (self
				copyFrom: 1
				to: 50) printString.
			"Strip off closing brace, because we're gonna insert an ellipsis before it."
			baPrint _ baPrint
				copyFrom: 1
				to: baPrint size - 1.
			aStream
				 maPrint: baPrint ;
				 maPrint: '...]' ]
		ifFalse: [ aStream maPrint: self ]! !

!ByteArray methodsFor: '*ma-core' stamp: 'cmm 8/10/2010 17:49'!
maUint: bits at: anInteger 
	"oids"
	| answer bytes |
	bits == 48 ifTrue: [ ^ self maUnsigned48At: anInteger + 1 ].
	"physicalSize, word buffers"
	bits == 32 ifTrue: 
		[ ^ self 
			unsignedLongAt: anInteger + 1
			bigEndian: false ].
	"control fields - bpMapIndex."
	bits == 8 ifTrue: [ ^ self byteAt: anInteger + 1 ].
	"class ids and classVersions"
	bits == 16 ifTrue: 
		[ ^ self 
			unsignedShortAt: anInteger + 1
			bigEndian: false ].
	bits == 24 ifTrue: [ ^ self maUnsigned24At: anInteger + 1 ].
	bits == 64 ifTrue: [ ^ self maUnsigned64At: anInteger + 1 ].
	bits == 40 ifTrue: [ ^ self maUnsigned40At: anInteger + 1 ].
	bits == 56 ifTrue: [ ^ self maUnsigned56At: anInteger + 1 ].
	bytes _ bits // 8.
	answer _ LargePositiveInteger new: bytes.
	1 
		to: bytes
		do: 
			[ : digitPosition | 
			answer 
				digitAt: digitPosition
				put: (self at: digitPosition + anInteger) ].
	^ answer normalize! !

!ByteArray methodsFor: '*ma-core' stamp: 'cmm 9/8/2015 20:22'!
maUint: bits at: position put: anInteger
	bits == 32 ifTrue: [ ^ self longAt: position+1 put: anInteger bigEndian: false ].
	bits == 64 ifTrue: [ ^ self unsignedLong64At: position+1 put: anInteger bigEndian: false ].
	position + 1
		to: position + (bits // 8)
		do:
			[ :pos |
			self
				at: pos
				put: (anInteger digitAt: pos-position) ].
	^anInteger! !

!ByteArray methodsFor: '*ma-core' stamp: 'cmm 9/8/2015 14:57'!
maUnsigned24At: index
	"Return a 24-bit unsigned integer quantity starting from the given byte index"
	| b0 b1 w |
	w _ self at: index.
	b1 _ self at: index+1.
	b0 _ self at: index+2.
	b1 = 0 ifFalse:[w _ (b1 bitShift: 8) + w].
	b0 = 0 ifFalse:[w _ (b0 bitShift: 16) + w].
	^w! !

!ByteArray methodsFor: '*ma-core' stamp: 'cmm 9/10/2015 10:52'!
maUnsigned32At: index
	"Return a 32-bit unsigned integer quantity starting from the given byte index"
	| v |
	(v _ self at: index + 3) <= 16r3F ifFalse: [
		^(LargePositiveInteger new: 4)
			replaceFrom: 1
				to: 4
				with: self
				startingAt: index;
			normalize ].
	^(((v bitShift: 8) + (self at: index + 2) bitShift: 8) + (self at: index + 1) bitShift: 8) + (self at: index)! !

!ByteArray methodsFor: '*ma-core' stamp: 'cmm 9/10/2015 10:51'!
maUnsigned40At: index
	"Return a 40-bit unsigned integer quantity starting from the given byte index"
	| v |
	(v _ self at: index + 4) = 0 ifFalse: [
		^(LargePositiveInteger new: 5)
			replaceFrom: 1
				to: 5
				with: self
				startingAt: index;
			normalize ].
	(v _ self at: index + 3) <= 16r3F ifFalse: [
		^(LargePositiveInteger new: 4)
			replaceFrom: 1
				to: 4
				with: self
				startingAt: index;
			normalize ].
	^(((v bitShift: 8) + (self at: index + 2) bitShift: 8) + (self at: index + 1) bitShift: 8) + (self at: index)! !

!ByteArray methodsFor: '*ma-core' stamp: 'cmm 9/10/2015 10:51'!
maUnsigned48At: index
	"Return a 48-bit unsigned integer quantity starting from the given byte index"
	| v |
	(v _ self at: index + 5) = 0 ifFalse: [
		^(LargePositiveInteger new: 6)
			replaceFrom: 1
				to: 6
				with: self
				startingAt: index;
			normalize ].
	(v _ self at: index + 4) = 0 ifFalse: [
		^(LargePositiveInteger new: 5)
			replaceFrom: 1
				to: 5
				with: self
				startingAt: index;
			normalize ].
	(v _ self at: index + 3) <= 16r3F ifFalse: [
		^(LargePositiveInteger new: 4)
			replaceFrom: 1
				to: 4
				with: self
				startingAt: index;
			normalize ].
	^(((v bitShift: 8) + (self at: index + 2) bitShift: 8) + (self at: index + 1) bitShift: 8) + (self at: index)! !

!ByteArray methodsFor: '*ma-core' stamp: 'cmm 9/10/2015 10:50'!
maUnsigned56At: index
	"Return a 56-bit unsigned integer quantity starting from the given byte index"
	| v |
	(v _ self at: index + 6) = 0 ifFalse: [
		^(LargePositiveInteger new: 7)
			replaceFrom: 1
				to: 7
				with: self
				startingAt: index;
			normalize ].
	(v _ self at: index + 5) = 0 ifFalse: [
		^(LargePositiveInteger new: 6)
			replaceFrom: 1
				to: 6
				with: self
				startingAt: index;
			normalize ].
	(v _ self at: index + 4) = 0 ifFalse: [
		^(LargePositiveInteger new: 5)
			replaceFrom: 1
				to: 5
				with: self
				startingAt: index;
			normalize ].
	(v _ self at: index + 3) <= 16r3F ifFalse: [
		^(LargePositiveInteger new: 4)
			replaceFrom: 1
				to: 4
				with: self
				startingAt: index;
			normalize ].
	^(((v bitShift: 8) + (self at: index + 2) bitShift: 8) + (self at: index + 1) bitShift: 8) + (self at: index)! !

!ByteArray methodsFor: '*ma-core' stamp: 'cmm 9/10/2015 10:49'!
maUnsigned64At: index
	"Return a 64-bit unsigned integer quantity starting from the given byte index"
	| v |
	(v _ self at: index + 7) = 0 ifFalse: [
		^(LargePositiveInteger new: 8)
			replaceFrom: 1
				to: 8
				with: self
				startingAt: index;
			normalize ].
	(v _ self at: index + 6) = 0 ifFalse: [
		^(LargePositiveInteger new: 7)
			replaceFrom: 1
				to: 7
				with: self
				startingAt: index;
			normalize ].
	(v _ self at: index + 5) = 0 ifFalse: [
		^(LargePositiveInteger new: 6)
			replaceFrom: 1
				to: 6
				with: self
				startingAt: index;
			normalize ].
	(v _ self at: index + 4) = 0 ifFalse: [
		^(LargePositiveInteger new: 5)
			replaceFrom: 1
				to: 5
				with: self
				startingAt: index;
			normalize ].
	(v _ self at: index + 3) <= 16r3F ifFalse: [
		^(LargePositiveInteger new: 4)
			replaceFrom: 1
				to: 4
				with: self
				startingAt: index;
			normalize ].
	^(((v bitShift: 8) + (self at: index + 2) bitShift: 8) + (self at: index + 1) bitShift: 8) + (self at: index)! !

!CompiledMethod methodsFor: '*ma-core' stamp: 'cmm 12/17/2008 20:29'!
maSourceString
	^ self getSource asString! !

!Interval methodsFor: '*ma-core' stamp: 'cmm 6/4/2005 17:22'!
maEnvelopes: anInterval 
	"Return true if anInterval fits entirely inside the receiver."

	^ (anInterval first between: start and: stop)
	and: [ anInterval last between: start and: stop ]! !

!Interval methodsFor: '*ma-core' stamp: 'cmm 6/4/2005 01:09'!
maIntersects: anInterval 
	"Return true if the receiver overlaps with anInterval."

	^(start between: anInterval first and: anInterval last) 
		or: [ anInterval first between: start and: stop ]! !

!Interval methodsFor: '*ma-core' stamp: 'cmm 4/26/2013 14:23'!
printRangeFor: aNumber withMarkAt: marker on: aStream 
	"The range of performance of this trade, with the final close enclosed in vertical bars.  The + sign marks the break-even point."
	(aNumber isNaN or: [ aNumber isInfinite ])
		ifTrue: [ aStream maPrint: 'n/a' ]
		ifFalse:
			[ | priorN markerChar decimalPlaces |
			markerChar _ $+.
			decimalPlaces _ ((step log: 10) roundTo: 1) abs.
			start > marker ifTrue: [ aStream maPrint: markerChar ].
			start = aNumber ifFalse: [ aStream maPrint: (start printShowingDecimalPlaces: decimalPlaces) ].
			priorN _ start.
			self do:
				[ : n | aStream nextPut:
					((marker
						between: priorN
						and: n)
						ifTrue: [ markerChar ]
						ifFalse: [ $- ]).
				(aNumber
					between: priorN
					and: n) ifTrue: [ aStream maPrint: (aNumber printShowingDecimalPlaces: decimalPlaces) ].
				priorN _ n ].
			aStream maPrint: (stop printShowingDecimalPlaces: decimalPlaces).
			stop < marker ifTrue: [ aStream maPrint: markerChar ] ]! !

!Interval methodsFor: '*ma-core' stamp: 'cmm 3/31/2016 20:11'!
scale: aNumber into: anotherInterval 
	"Answer the relative position of aNumber in anotherInterval, based on its position in the receiver."
	| fractionalPosition |
	fractionalPosition _ (aNumber - start) / (stop - start).
	^ anotherInterval last - anotherInterval first * fractionalPosition + anotherInterval first! !

!OrderedCollection methodsFor: '*ma-core' stamp: 'cm 1/7/2002 16:25'!
maAddAll: aSequenceableCollection afterIndex: integerIndex

	aSequenceableCollection reverseDo: [:each | self add: each afterIndex: integerIndex ].
	^aSequenceableCollection
! !

!OrderedCollection methodsFor: '*ma-core' stamp: 'cmm 1/9/2013 20:27'!
removeAllNoGarbage
	1 to: array size do: [ : n | array at: n put: nil ].
	self reset! !

!SortedCollection methodsFor: '*ma-core' stamp: 'cmm 7/15/2006 15:12'!
maIsSortedCollection
	^ true! !

!Text methodsFor: '*ma-core' stamp: 'cmm 2/26/2016 14:10'!
mauiPageString
	"Same as #string, but includes the printStrings of embedded objects."
	^ String streamContents:
		[ : stream | (1 to: self size) do:
			[ : n | | char | (char _ self at: n) = (Character value: 1)
				ifTrue:
					[ (self runs at: n) do:
						[ : eachAttr | eachAttr anchoredMorph ifNotNil:
							[ : morph | morph isMauiMorph ifTrue: [ stream maPrint: morph labelString ] ] ] ]
				ifFalse: [ stream nextPut: char ] ] ]! !

!Text methodsFor: '*ma-core' stamp: 'cmm 6/3/2018 16:57'!
withBlankLinesCondensed
	"Answer a copy of the receiver without blank lines."
	^ self class streamContents:
		[ : stream | | source currentNumberOfBlankLines initialBlanks |
		source _ ReadStream on: self.
		initialBlanks _ WriteStream on: String new.
		currentNumberOfBlankLines _ 0.
		[ source atEnd ] whileFalse:
			[ | char |
			char _ source next.
			({Character cr. Character lf} includes: char)
				ifTrue:
					[ (currentNumberOfBlankLines _ currentNumberOfBlankLines + 1) = 1
						ifTrue: [ stream nextPut: char ]
						ifFalse: [ initialBlanks reset ] ]
				ifFalse:
					[ char isSeparator
						ifTrue:
							[ currentNumberOfBlankLines = 0
								ifTrue: [ stream nextPut: char ]
								ifFalse: [ initialBlanks nextPut: char ] ]
						ifFalse:
							[ stream nextPutAll: initialBlanks contents.
							currentNumberOfBlankLines _ 0.
							initialBlanks reset.
							stream nextPut: char ] ] ] ]! !

!Bag methodsFor: '*ma-core' stamp: 'cmm 12/19/2002 21:33'!
maIncludesAll: aCollection
	"Return true if the receiver includes all elements in aCollection.
	If aCollection contains duplicate elements, the receiver must have
	one for each of them."

	| otherColl |

	aCollection size > self size ifTrue: [ ^false ].
	otherColl _
		aCollection size > 20
			ifTrue: [ aCollection asBag ]
			ifFalse: [ aCollection ].
	otherColl do:
		[ :each | (self occurrencesOf: each) < (otherColl occurrencesOf: each) ifTrue: [ ^false ] ].
	^true! !

!Bag methodsFor: '*ma-core' stamp: 'cmm 11/12/2007 00:01'!
printOn: aStream 
	aStream nextPutAll: 
		(self class name first isVowel 
			ifTrue: [ 'an ' ]
			ifFalse: [ 'a ' ]).
	self species printOn: aStream.
	contents keysAndValuesDo: 
		[ : eachKey : eachValue | 
		aStream
			cr ;
			tab ;
			maPrint: eachValue ;
			space ;
			nextPutAll: 'occurrencesOf: ' ;
			maPrint: eachKey ]! !

!Set methodsFor: '*ma-core' stamp: 'jpb 5/12/2021 14:39:20'!
maIfAbsentAdd: anObject
	"Ensure anObject is part of the receiver.  Answer whether its membership was newly acquired."
	| index |
	index _ self scanFor: anObject.
	
	(0 = index) ifTrue: [ self add: anObject. ^true ].
	
	^false! !

!Set methodsFor: '*ma-core' stamp: 'cmm 7/24/2002 20:41'!
maShallowCopy

	| copy |
	copy _ self species new: self size.
	self do: [ :each | copy add: each ].
	^copy! !

!Dictionary methodsFor: '*ma-core'!
maAllKeysAtValue: anObject

	| aCollection |

	aCollection _ OrderedCollection new.
	self keysAndValuesDo: [ :key :value | value = anObject ifTrue: [ aCollection add: key ] ].
	^aCollection! !

!Dictionary methodsFor: '*ma-core' stamp: 'cmm 10/27/2010 20:49'!
maBindingAtRandom
	| binding | binding _ nil.
	[ binding isNil ] whileTrue: [ binding _ array at: (1 to: array size) atRandom ].
	^ binding! !

!Dictionary methodsFor: '*ma-core' stamp: 'cmm 10/27/2010 20:50'!
maKeyAtRandom
	^ self maBindingAtRandom key! !

!Dictionary methodsFor: '*ma-core' stamp: 'cmm 7/24/2002 20:45'!
maShallowCopy

	| copy |
	copy _ self species new.  "new: seems buggy w/ Dictionaries.."
	self keysAndValuesDo: 
		[ :eachKey :eachValue | copy at: eachKey put: eachValue ].
	^copy! !

!SharedQueue methodsFor: '*ma-core' stamp: 'cmm 2/8/2005 23:34'!
notEmpty

	^ self isEmpty not! !

!Stream methodsFor: '*ma-core' stamp: 'cmm 7/9/2008 21:00'!
ensureOpen
	"Base squeak assumes the need for some releasing FileStream compatibility.  However, the initializing compatibility was overlooked.  This provides some."
	^ self! !

!Stream methodsFor: '*ma-core' stamp: 'cmm 7/9/2008 21:00'!
open
	"Base squeak assumes the need for some releasing FileStream compatibility.  However, the initializing compatibility was overlooked.  This provides some."
	^ self! !

!PositionableStream methodsFor: '*ma-core' stamp: 'cmm 4/2/2009 11:48'!
maReset
	"Reset my position back to the beginning."
	self reset.
	readLimit _ collection size! !

!ReadStream methodsFor: '*ma-core' stamp: 'cmm 7/1/2003 22:12'!
maUpToIncluding: anObject

	| start end |
	start _ position+1.
	end _ collection indexOf: anObject startingAt: start ifAbsent: [ 0 ].

	"not present--return rest of the collection"	
	end = 0 ifTrue: [ ^self upToEnd ].

	"skip to the end and return the data passed over"
	position _ end.
	^collection copyFrom: start to: end! !

!WriteStream methodsFor: '*ma-core' stamp: 'cmm 7/30/2007 00:23'!
maPrint: anObject 
	anObject maPrintOn: self! !

!WriteStream methodsFor: '*ma-core' stamp: 'cmm 1/22/2015 16:41'!
maPrint: anObject pluralizeIf: aBlock 
	anObject maPrintOn: self.
	aBlock value ifTrue:
		[ self maPrint:
			(self last asLowercase = $s
				ifTrue: [ $' ]
				ifFalse: [ $s ]) ]! !

!WriteStream methodsFor: '*ma-core' stamp: 'cm 12/24/2001 16:03'!
maPrintAbbreviated: aMaObject

	aMaObject maPrintAbbreviatedOn: self
! !

!Process methodsFor: '*ma-core' stamp: 'cmm 11/10/2010 14:19'!
everStarted
	^ self isSuspended not or: [ self isTerminated ]! !

!Exception methodsFor: '*ma-core' stamp: 'cmm 9/28/2008 18:18'!
isMaUserError

	^false! !

!Exception methodsFor: '*ma-core' stamp: 'cmm 8/11/2002 23:35'!
maIsException

	^true! !

!Exception class methodsFor: '*ma-core' stamp: 'cmm 9/18/2005 23:56'!
messageText: aString

	^ self new
		messageText: aString ;
		yourself! !

!Error methodsFor: '*ma-core' stamp: 'cmm 7/4/2013 22:43'!
printDetailsOn: aStream 
	| sender |
	sender _ self signalerContext sender receiver.
	((sender respondsTo: #magmaOid) and: [ sender isSymbol not ]) ifTrue:
		[ aStream
			 nextPutAll: 'magmaOid:  ' , sender magmaOid asString ;
			 cr ]! !

!DirectoryEntry methodsFor: '*ma-core' stamp: 'cmm 2/12/2009 18:56'!
directoryName
	"Answer the directory to shell to for this item."
	self subclassResponsibility ! !

!DirectoryEntry methodsFor: '*ma-core' stamp: 'jpb 5/12/2021 16:33:08'!
maFileNamed: aString do: oneArgBlock 
	"A convenient accessing method for accessing a file without having to open and close yourself.  The oneArgBlock argument is the fileStream."
	| fileStream |
	fileStream _ StandardFileStream new open: (self // aString) asString forWrite: true.
	fileStream ifNil: [ MaEnvironmentError signal: 'Could not open ' , aString , ' in use?' ].
	
	^ [ oneArgBlock value: fileStream ] ensure: [ fileStream close ]! !

!DirectoryEntry methodsFor: '*ma-core' stamp: 'cmm 11/27/2011 23:09'!
maFileSizeString
	"Answer my file size as an easy-to-read String."
	^ self fileSize asBytesDescription! !

!DirectoryEntry methodsFor: '*ma-core' stamp: 'cmm 11/27/2011 23:10'!
maTotalFileSizeString
	"Answer my file size as an easy-to-read String."
	^ self totalFileSize asBytesDescription! !

!Form methodsFor: '*ma-core' stamp: 'cmm 4/27/2016 13:04'!
colorPixels: aBlock
	"Value aBlock with each point of the receiver.  If aBlock answers a Color, recolor that pixel, otherwise leave it alone."
	self pixelsDo:
		[ : x : y | | point |
		point _ x @ y.
		self
			colorAt: point
			put: ((aBlock value: point) ifNil: (self colorAt: point)) ]! !

!Form methodsFor: '*ma-core' stamp: 'cmm 3/22/2016 14:33'!
pixelsDo: aBlock 
	0
		to: self width
		do:
			[ : eachCol | 0
				to: self height
				do:
					[ : eachRow | aBlock
						value: eachCol
						value: eachRow ] ]! !

!Point methodsFor: '*ma-core' stamp: 'cmm 4/9/2010 12:53'!
maCloseTo: aPoint 
	^ (x closeTo: aPoint x) and: [ y closeTo: aPoint y ]! !

!Point methodsFor: '*ma-core' stamp: 'cmm 6/29/2010 22:46'!
maHasZero
	^ x isZero or: [ y isZero ]! !

!Point methodsFor: '*ma-core' stamp: 'cmm 8/31/2010 13:34'!
maLongestSide
	^ x max: y! !

!Rectangle methodsFor: '*ma-core' stamp: 'cmm 10/30/2009 22:57'!
isInverted
	^ origin x > corner x! !

!Rectangle methodsFor: '*ma-core' stamp: 'cmm 4/9/2010 12:55'!
maCloseTo: aRectangle 
	^ (aRectangle topLeft maCloseTo: self topLeft) and: [ aRectangle bottomRight maCloseTo: self bottomRight ]! !

!Rectangle methodsFor: '*ma-core' stamp: 'cmm 6/5/2010 22:27'!
maLongestSide
	^ self width max: self height! !

!Rectangle methodsFor: '*ma-core' stamp: 'cmm 5/25/2015 15:42'!
maPointAtRandom
	^(self topLeft x + (self width * ThreadSafeRandom default next)) @ (self topLeft y + (self height * ThreadSafeRandom default next))! !

!Rectangle methodsFor: '*ma-core' stamp: 'cmm 3/27/2010 15:37'!
maPreciseCenter
	"Same as #center, but usable for Rectangles specified by Floating points, in that it does not truncate to an Integer as #center does."
	^self topLeft + self bottomRight / 2! !

!Rectangle class methodsFor: '*ma-core' stamp: 'cmm 9/30/2009 14:08'!
maFullyInverted
	^ self 
		origin: Float infinity @ Float infinity
		corner: Float infinity negated @ Float infinity negated! !

!MethodReference methodsFor: '*ma-core' stamp: 'cmm 12/3/2008 10:40'!
maActualMethod

	| class |
	^(class _ self actualClass)
		ifNil: [ nil ]
		ifNotNil:
			[ (class canUnderstand: self selector)
				ifTrue: [ class >> self selector ]
				ifFalse: [ nil ] ]! !

!MethodReference methodsFor: '*ma-core' stamp: 'jpb 5/12/2021 11:39:09'!
maAuthor
	"Answer the author initials of the current version of this method."
	^ self maActualMethod ifNotNil: 
		[ : cm | 
		cm timeStamp subStrings ifNotEmptyDo: [ : strings | strings first ] ]! !

!MethodReference methodsFor: '*ma-core' stamp: 'cmm 12/3/2008 00:00'!
maClassHierarchy
	^ self actualClass withAllSuperclasses reversed! !

!MethodReference methodsFor: '*ma-core' stamp: 'cmm 12/3/2008 19:07'!
maImplementors
	"Answer a collection of MethodReferences with the same selector as myself."
	^ self systemNavigation allImplementorsOf: self selector! !

!MethodReference methodsFor: '*ma-core' stamp: 'cmm 12/3/2008 19:09'!
maMethodHierarchy
	"Answer an OrderedCollection of methods in my class-hierarchy with the same selector as mine."
	| superclasses answer |
	answer _ OrderedCollection new.
	superclasses _ self actualClass allSuperclasses reverse.
	superclasses do: 
		[ : each | 
		(each includesSelector: self selector) ifTrue: [ answer add: (each >> self selector) methodReference ] ].
	self actualClass 
		allSubclassesWithLevelDo: 
			[ : eachClass : level | 
			(eachClass includesSelector: self selector) ifTrue: [ answer add: (eachClass >> self selector) methodReference ] ]
		startingLevel: 0.
	^ answer! !

!MethodReference methodsFor: '*ma-core' stamp: 'cmm 12/3/2008 17:46'!
maSenders
	"Answer a collection of MethodReferences that send my selector."
	^ self systemNavigation allCallsOn: self selector! !

!MethodReference methodsFor: '*ma-core' stamp: 'cmm 12/3/2008 17:46'!
maSentMessages
	"Answer a Collection of MethodReferences possibly called by this method."
	^ self maSentSelectors 
		inject: OrderedCollection new
		into: 
			[ : oc : each | 
			oc
				addAll: (self systemNavigation allImplementorsOf: each) ;
				yourself ]! !

!MethodReference methodsFor: '*ma-core' stamp: 'jpb 5/12/2021 11:30:04'!
maSentSelectors
	^ self maActualMethod 
		ifNil: 
			[ #() ]
		ifNotNil: [ : cm | cm messages ]! !

!MethodReference methodsFor: '*ma-core' stamp: 'jpb 5/12/2021 11:39:09'!
maTimeStamp
	"Answer the author initials of the current version of this method."
	^ self maActualMethod ifNotNil: 
		[ : cm | 
		cm timeStamp subStrings ifNotEmptyDo: 
			[ : strings | 
			DateAndTime 
				date: strings second asDate
				time: strings third asTime ] ]! !

!Archive methodsFor: '*ma-core' stamp: 'cmm 7/7/2015 20:18'!
addDirectoryTree: aFileDirectory relativeTo: baseFileDirectory as: prefixString
	self
		addDirectoryTree: aFileDirectory
		relativeTo: baseFileDirectory
		as: prefixString
		if: [ : path | true ]! !

!Archive methodsFor: '*ma-core' stamp: 'cmm 11/7/2018 21:44'!
addDirectoryTree: aFileDirectory relativeTo: baseFileDirectory as: prefixString if: conditionBlock 
	aFileDirectory directoryTreeDo:
		[ : path | (conditionBlock value: path) ifTrue:
			[ | eachEntry relativeName |
			eachEntry _ path last.
			relativeName _ prefixString, (eachEntry containingDirectory
				maNameFor: eachEntry name
				relativeTo: baseFileDirectory).
			relativeName ifNotEmpty:
				[ eachEntry isDirectory
					ifTrue:
						[ "self
							addDirectory: eachEntry fullName
							as: relativeName" ]
					ifFalse:
						[ self
							maAddFile: eachEntry fullName
							as: relativeName ] ] ] ]! !

!Archive methodsFor: '*ma-core' stamp: 'cmm 11/7/2018 21:54'!
maAddFile: filename as: anotherFileName 
	| member |
	member _ self
		addFile: filename
		as: anotherFileName.
	Smalltalk isLinux ifTrue: [ member saveLinuxPermissions ].
	^ member! !

!ZipArchive methodsFor: '*ma-core' stamp: 'cmm 10/30/2009 16:36'!
filesDo: aBlock tempDir: aFileDirectory 
	"Value aBlock with each DirectoryEntryFile in the receiver, after extracting it to aFileDirectory.  aFileDirectory is deleted after all members are valued."
	[ self extractAllTo: aFileDirectory ] ensure: [ self close ].
	
	[ self members do: [ : each | aBlock value: (aFileDirectory entryAt: each localFileName) ] ] ensure: 
		[ self members do: [ : each | aFileDirectory deleteFileNamed: each localFileName ] ]! !

!ZipArchiveMember methodsFor: '*ma-core' stamp: 'cmm 11/7/2018 22:08'!
linuxPermissions: lsOutputString
	self unixFileAttributes: (self linuxToZipPermissions: lsOutputString)! !

!ZipArchiveMember methodsFor: '*ma-core-private' stamp: 'cmm 11/7/2018 22:07'!
linuxToZipPermissions: linuxPermissionsString 
	^ (1 bitShift: 15) +
		('2r' ,
			(linuxPermissionsString collect:
				[ : each | each = $- ifTrue: [ $0 ] ifFalse: [ $1 ] ])) asNumber! !

!ZipArchiveMember methodsFor: '*ma-core' stamp: 'cmm 11/7/2018 22:08'!
saveLinuxPermissions
	"Set this Zip Member's file attributes to the same as the source file from which it came, and carrying forward to Linux systems in which it's unzipped."
	| fullName dir entry |
	fullName _ FileDirectory default fullNameFor: self sourceFileName.
	dir _ (FileDirectory on: fullName) containingDirectory.
	entry _ dir entryAt: (FileDirectory localNameFor: fullName).
	self linuxPermissions: entry linuxPermissions! !

!ZipArchiveMember methodsFor: '*ma-core' stamp: 'cmm 11/7/2018 21:56'!
sourceFileName
	"Answer the full filename of the original file from which the contents came."
	^ self stream fullName! !

!ZipArchiveMember methodsFor: '*ma-core' stamp: 'cmm 11/7/2018 21:58'!
stream
	self subclassResponsibility! !

!ZipFileMember methodsFor: '*ma-core' stamp: 'cmm 11/7/2018 21:58'!
stream
	^ stream! !

!ZipNewFileMember methodsFor: '*ma-core' stamp: 'cmm 11/7/2018 21:58'!
stream
	^ stream! !

!ZipStringMember methodsFor: '*ma-core' stamp: 'cmm 11/7/2018 21:58'!
stream
	^ stream! !
MaCoreConstants initialize!
MaCommandLineProcessor initialize!
MaSingleton initialize!
