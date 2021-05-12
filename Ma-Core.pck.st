'From Cuis 5.0 [latest update: #4579] on 12 May 2021 at 4:33:13 pm'!
'Description Core of magma object oriented database

License: MIT
Original Author: Chris Muller (cmm)
Author: Josef Philip Bernhart (jpb)'!
!provides: 'Ma-Core' 1 13!
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

!classDefinition: #MauiIconSet category: 'Ma-Core'!
MaObject subclass: #MauiIconSet
	instanceVariableNames: 'forms'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Core'!
!classDefinition: 'MauiIconSet class' category: 'Ma-Core'!
MauiIconSet class
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

!MaTimer methodsFor: 'access' stamp: 'cmm 12/25/2014 20:12'!
in: aDuration do: aBlock 
	process _ 
	[ monitor _ Mutex new.
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

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 12/16/2010 23:07'!
abort
	^ self 
		iconNamed: #abort
		ifAbsentPutFromString: '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'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 2/8/2013 14:21'!
addIcon
	^ self
		iconNamed: #addIcon
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAAA0AAAANCAYAAABy6+R8AAAAWElEQVR4XmPABhoulv8L3u/4
b9WDJf8YiAVhh7z+Sa1i+td3rW1Iauq50vAPHVtsUwNrCjnggiEHDhyQJCkY5AoGUNCiY80N
ImAF5luVMeRA0TEsg5wcTQBSzp/Bl+GQagAAAABJRU5ErkJggg=='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 10/27/2007 12:13'!
alignCentered
	^ self 
		iconNamed: #alignCentered
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAAA4AAAALCAYAAABPhbxiAAAAGElEQVR4XmMAgv9kYsrB4LNp
5PuR5n4EABlNR7k2RqUfAAAAAElFTkSuQmCC'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 10/27/2007 13:05'!
alignJustified
	^ self 
		iconNamed: #alignJustified
		ifAbsentPutFromString:  'iVBORw0KGgoAAAANSUhEUgAAAA4AAAALCAYAAABPhbxiAAAAGElEQVR4XmMAgv9kYsrB4LNp
5PuR5n4EABlNR7k2RqUfAAAAAElFTkSuQmCC'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 10/27/2007 13:06'!
alignLeft
	^ self 
		iconNamed: #alignLeft
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAAA4AAAALCAYAAABPhbxiAAAAGklEQVR4XmMAgv9kYvIB7W0g
18aR70ea+xEACGxHuXnIjwsAAAAASUVORK5CYII='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 10/27/2007 13:07'!
alignRight
	^ self 
		iconNamed: #alignRight
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAAA4AAAALCAYAAABPhbxiAAAAGElEQVR4XmMAgv9kYuoB2ts4
8v04aPwIACouR7mqZRDdAAAAAElFTkSuQmCC'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 6/20/2012 15:33'!
ascendingSort
	^ self 
		iconNamed: #ascendingSort
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAAAoAAAAKAgMAAADwXCcuAAAADFBMVEX///8AMmUAAAAAAADm
6jUPAAAABHRSTlP//wD//gy7CwAAAC5JREFUeF5jWLVqAcMqrlUMK4JWMSwMWcXQGqrFIMrq
wdCyUJFh0YoVQPlVIAwAJ0EPMMGmV58AAAAASUVORK5CYII='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 12/23/2016 15:42'!
blueSaveIcon32x32
	^ self 
		iconNamed: #blueSaveIcon32x32
		ifAbsentPutFromString: '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
AElFTkSuQmCC'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 10/27/2007 13:07'!
bold
	^ self 
		iconNamed: #bold
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAAAkAAAAJCAYAAADgkQYQAAAAG0lEQVR4XmMAgv8EMBxgE8QQ
o42iweAmguEEALyZOsbVb8GVAAAAAElFTkSuQmCC'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 12/23/2015 13:11'!
calendarIcon
	^ self 
		iconNamed: #calendarIcon
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABsAAAAWCAMAAAAGlBe5AAADAFBMVEXz/v+Em8PJ2vqkprf6
/f/X2Pi71/vFsMl0rfpQabS4yuvBp7Px7f7a8/9Xi/Nmm//NxNfr/v+nxMyaqsQtYLSXcIHr
9P+cstGorL6EpNPs6fzi7P6pu9Opt8c2bMWTq8+0zPRVfMLl+//Z7f/L4/5MWXNUaISZscTi
9P+KosWix/9vTVaIuPxneZDj5/+Dnbe75//+4+2/zuF7lLzq2+2Xmbra2Ouaqa+Zw/+txOr7
1+arhpTp2ffS6Prlx9eHp7gpQ2OIaoE9V3f98vuMr9Z9ov+MiKiZsrnL6v709f9nfptXeKpl
iMq5u9Hxx9Pb4fmkvODD4f6kmbDP3/Cwqcb72tx5k66Zm6tUht9kgbY4U2nS5f+EkaZ0jLSA
m9Hr4PMxS2uHjZ6Vt/rIzfat0v/y8vZqls5NZIC00ug2T3MoQ1mmr9Kxsc2fjqBbRlp4XHAW
Rl9VP1Tu0+Dqur3/0MsiPWF9o7Lg6vhshapslLB0fZ4rVnOAreKRtN/FxeD9/f0AAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAN
L4nNAAABAHRSTlP/////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2XBG
eQAAAh5JREFUeF51zmtT2lAQBuAlBFQk4iF6AgnhEmJJQAGNoSKiKVohCga84B2x4AVtpdW2
trb2/PWe/oA+u/N+2J2dWSDkv+CSlS6f2UuRDIn/BaMbBb1BMAPKDYfg9fU1vBEOdzrh4049
cV0fq49R9bFEYgp+56n0Ur//Ib00Oksr8P6fQGAiCuFaP9/v59NpupudXToapdOjADUahabh
0s91w2UYx8ed7e3rRDR6FJ2K0p4CN2uzpGFjDD4J7CyvKMDcY03lNrZh8or4SUMkLA6x2Lb3
bXJVcBdYh+FvQGYxsUMsaMkUAsc5tEV/YdMv9Yp6BYIIwHFLiLtdq2nZwu7F4sXkpqfXE4wB
VIOy3DAjkdTa92Aq5P40XpqeHo7sm+aLBUEF4WxDQ0o+yGF7cXz+YGf13cqKh+Er8BZY4t9n
AXFVhazPl+aphxXxtLXxC6og0R2RyuUqXn9cLh0crD5+EbO+5s/PkEJY7JlZSb3N7YnLO9NP
X3eeMquTfyK5E1iL8Ka5ec/ncm3ZvVsaZoaZzMPIrnk2dwchkADJOFnmhCTjcT56HI9zzzC+
uGDRXwA0WdM0TuCSSVVQa61WzMvEizELDjGgPT7JqV5dPWWK7VbNG9fj3nhTt8D9jMsLvKoy
Pl1Vvc2ctxVvuor0zOiCvLAg820hlmtvxfQ2DUE3zmMx14+tAZzNzc2c3J1YXcuqDGh2u9Y3
a9C1BpXuXx1dfRdnZZKYAAAAAElFTkSuQmCC'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 11/29/2012 16:44'!
chartIcon
	^ self 
		iconNamed: #chartIcon
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAACUAAAAhCAYAAABeD2IVAAABrElEQVR4XmMY+YAa4NSpU/MH
lYOam5v/nzx58v+gC6mR76iR76iR7ygKQEnFgv9a7lv7B42jtNy3JGi5bTmu5brFgGTNDg4O
VC2n9O3XC2i6bZ0PwiD2gEefhsc2C3DoAENpUKQpoGMqrAI3fNdx26Qx4Ald3n4/B9BBT1NK
Dvyna+7TdN1yA2Q5tvQDii7HiF2RdC0S1N23K2i6b3mLnrVBjrQNXv+frNxFqaNAiVbDbesi
Tfet75FDyzthzw9gKHkMSOEJytrgMgcYUhpumwvWrLnEAROnmYM+fPiAt5wChsZ9UBRqeW2R
AIbWdWg5FAB06PoBqWbAjgE6Cl4OAUMKFGJAx52nWVoi5ChQtCFHEyhNAflPaB5K+Bxl7r9h
L3rpDAyl7VQrIIlxFMgyUPSY+G6+DqT/A6PuIygtDVjTJSb3wBG6pBViQVD6rv9AB7VjK7VH
fssTBm7evDlvsDaHv4McRmO8n2KH/gcCGPvXr18C+OSJ0M9JtRCcM2dOErpYQUEB3LLly5cb
4tMfFxfnTvVo/fr1qyKBehOv/Ldv3+Dyb968+T8kRnsAp2laXWLn3egAAAAASUVORK5CYII='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 10/27/2007 13:07'!
chooseDefaultFont
	^ self 
		iconNamed: #chooseDefaultFont
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABIAAAANCAYAAACkTj4ZAAAAk0lEQVR4XmPABjJKOv4DKZxY
TcvoPwM+sO30O7jilXvu/p+z7gyYDTUYDEqbZqLwsYKo1HKYQSgugxpIPADZhiaEYjBZQFJG
ESNsfMNSSTMUFFbYwgeHa/G7GurN//3zd+NzBWGvQ70Bjj0GCsF/Y0tnygyBuoJweiEE0NMT
UaBp4iqURAfjQ1M5aVENDYv/lCRAAHQmc7YGk7XQAAAAAElFTkSuQmCC'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 10/27/2007 13:08'!
chooseSelectionFont
	^ self 
		iconNamed: #chooseSelectionFont
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABIAAAALCAYAAAByF90EAAAAQUlEQVR4XmPAAf4TiQmC/zgM
xqeGtgYxEGEQSeFBskEMHdM3YdNMyGuYlmIxiBivYYqTaRAmGFwGIRmCK7YIpmgAV3xNpMZc
KwUAAAAASUVORK5CYII='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 1/11/2016 22:48'!
closeBoxIcon
	^ self 
		iconNamed: #closeBoxIcon
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABj0lEQVR4Xq2TzUsCURTFZUJa
1UJ0oQiKoLugoDAIpJWbTNoEYqPlmJqFVNTMm9m1cafo/FOu/C/EDxR04346B54gzFQLe/DD
93HvOfc+3/gcx/E5O7BTsqcAxh5Ig3tgAgPcgVOe/SqAcQiegAXeQBPUJE0pdOApIJ0ZZAgh
6vF4vIJ5GRTD4XCx3W5zrYHCdiXbAizbwqhj/TWfz3WIaEhWJ5PJO/e63S4reQRHXgIPLJvO
i8VCZ8J0OjVGo9EH56vVykylUq+IaYCcl4ApWyjTGRUYTCTL5dJCso6zT1mB6hJQFEXIy2LP
6saZjMdjEYlEdGlQ8vv9BZdAKBSqU4AXtumZzmjD5Bx7IhaLsXwVMdcugUwmk6VDp9OpbPWs
0xkignu2bT8jpprP5y9cAgiKBgKBKv+qXq9XkxfGnpt07vf7L1wHg8HSbDaLej0kZTAYnCOg
LC+qIX9LkiqTh8NhmrE/PeX99Xp9pmnaVSKRuN08pGQyedNqtbI8Y8xfHxPVWeIxuJScyD3l
37/Gb5sKHbkMe5LZAAAAAElFTkSuQmCC'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 12/16/2010 23:07'!
commit
	^ self 
		iconNamed: #commit
		ifAbsentPutFromString: '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
SUVORK5CYII='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 2/8/2013 14:30'!
copyIcon
	^ self 
		iconNamed: #copyIcon
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAACZElEQVR4XqWVwY7aMBCGufS1
+hL7LH2APk8Pe9sb0lZ0DxV72ApWCwIEIhGgjQARxZatpJnOeGzHTrIt20X6NLZD5ifMJxjc
Dh/g9nq+fr75MmiD5x4AiKBDKMuyg9YlKKURBcvtDu7uH+FptjFB/xVQ1xBQGyqiqk3Y8GEC
x4uA52XinmZwDT6AGpUVIDVT816XNSi8Phq/YDLA8Szg13x7dYgPoEbcrO6sC6kxYOafKsOQ
8WRJAb+RT31zcfgAoSuQiFA1SGWrrt8jQK8EPiCXVQDuRQUXoeGjEviAc0FUcBZuXcIpbwJi
AbhWdl4qkGBqJYgC6NNkOaHxTQiuqWZn1TyBbeaaGiFIBJoVfrWjR5QAXxTyZCXwAVIqeD1r
ODhOXPenJkCFAmiqlaXGebEE7kUhTgIfsMNmu6OC9MjVrDMJjQTUqGogKawMBc5tNJ7D958z
uEedhw9T+Hb3w9zrA5KjhO2ritgchA8o3PClFUJwLez+ImLyQsQB1GxtkLDeS1OX+ybADd5L
EMhAcpyKUA6yTMcBK2y2SLHpTiBcFzsOYAns8LFmF5YhM+uytS5NpXuigHkqYJYUCNaU6zzh
AC/BqStCB3tOTx0HYPPnLbIRXA1NABmVBhKkWSCDP9d+3Ql42RQwRSbrHCZUzT73AUlGEgRk
Tor2GdMJ6Ps5cG9iCXj4qwNjRAhYWTFYEhEH/ItQgoWRgAXwpPEZrX0ALgz0s/sGVgIrQNKS
wZ2nIrjeExDS+tMwATMnQUeEft4dQDcZAQwkQQ7TNctA+6k9c3L4gPafNNEX8JYEf+PqgI/w
B1P9qGg+UuzcAAAAAElFTkSuQmCC'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 2/8/2013 14:30'!
cubeCell
	^ self 
		iconNamed: #cubeCell
		ifAbsentPutFromString: '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'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 2/8/2013 14:30'!
cubeIcon
	^ self 
		iconNamed: #cubeIcon
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAFTklEQVR4Xp3Ve0xTVxwH8Gpf
VBAmThlsokOj4rD3lqfIoyrKIxMRnQoOacQ3VmD4YIMYQFyEUpRpwMlEZBGHCAIVEBBoWSv4
AEFe5VEsyjQuZjNZsr+/O7cXuxhw6k7yvSfpvf19zjm3PYfzX00wa/p8W2+ezEHGO7M4m98l
/kWIPU0hCKleCq90R/WCOEGlXSg/1XYlT2blxJMyz3PeWdCHJ3M8yCtaVsA3UjV8UDdJKgSg
SoWm5PedQP5QGvIGSfRpyOlLQvIDGQ63R0DWuBqbq9zhp1jU5Z3qpPYId4nnmArGkYLFPCPV
zAXVMh1UPQ+UihSumkglyQ2BCcrpPQbl4BEo9UeQPUDSfxiKPpLeRJzuTULp6Hnc+b0Rz/4e
Q8EdBThMIe14PS4NKJHx8CBi2gIQol7EIrdI6khqeaCZ1PBwsjcWGfoDyBjYj/T+fUjv24f8
4XTUjF9B95/tePCHBqrnP0PRkwhxpjU4/hX2ODP0LYoM2SgxnEOZoQAtT1VQj9egcFiB5EfR
kN3zxZpWB9C3uUjui0ayPgqK4QQUjmahdvwqWp5V4+poHnL13+FodySO9mzD0QcRLLCqeAFS
9NFIG9qFkyP7kWmIQwbpFSMJuGDMQOFYFtQvVLj/UoOG52VofXkTF/Tf48rgORQN5OBUZwIS
27fiUPtGyO9vgLwzFPKu9Th4N3RiBufn4/DgZiQNRSJlJBqpBgI9JpDxEJRjich9moRTY3Kc
HN2PrJF4GP8aQpr2AOTN4eQXFYzd6kDs/nUddunWIqY9ADH31iCmYxV26lazgG+uI2IHgxE3
HIrEkU1IGt2GlMdRSDXGIGNsHzKfyKF8+g1ynyQhvj8MA6+6EKWSIqrWH1/X+2L7bR9sb1mJ
SI03IrVeiGjzROQ9d0S0erKA9+lPsXPQD3uH1iB2OAhxIwQybMIxM7TTBB03yOChE+HhSx02
33DHpmo3hNdIEH6LRnijGBublyNM44Iw7TKEtTljQ/MyFvDKsUfkgCt26FeYoD1maL0ZSiZQ
QKc9aO006F40IKTMGcEVSxBctRjBNYsQVOeEwIbPEdi0AOs08xGodSS9Iwt4KOdiY99SfNW/
fALyMkMHJqAt/WLQdzkmoPG3ckhL5kFa+hmk5Q7wr7KHn8oOfrVz4dswBz5Ns+GrsYWP7iMW
cMv+GEGP5mF9r5MZijBDvojWe8Otg2cGKo1F8Cy2hceVWfAotYF7uTXcK63gprKEa50Irg0W
cGsWwrWVzwKSrFmQdtkioPsTE/RlDwMtIZCLCfJ5OBN0B8cMlIycBV04A3QxSYkI9DUL0BVC
0FUC8kfkg67nQ9LEg0TDZQEq0waenRZYSQqxkJ0ZWt09ly1OQpHiVAMXeT3pHwYwF0nHNLh2
cM2QP4GkXbPZwjpSuJ7sUczGR3KiTQ66wBL05Q8EXoeFhJBoJzY8Ziet5puB49o9k4FyAlQS
4OZ7ADS5QV0nW3OJBahrwknAsdYdUwPMLMiOa5pJLYHq+G8CzAdUsQjUxRmgLoveCiSot04N
3JiYBQOQOmKFNVzSrF9xmAuVbwnqnBWoH0l/UTQZUP0LxDaGvQUgz5UJIT5rZRq5Q6jFGa7F
NBuO3VphqjhzJsRKkp9mvBPYfStoypdMke8yhRfutVSLHLjUpKNyjq8wfnG8VZf4B0uIi0Ts
ETkFsKN21RsAMxhmcMxK2LoJZJx3NQZjpuecYmUUF4rYo5KcZq+BbaoVJoC6RAqftXxzOT60
MVOdt0VU5KK0fEVdF5iOz/AKCcTkfYmzZk69HP+32XzBD2OwdXnO778cpP0DqZY7koDpbL4A
AAAASUVORK5CYII='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 12/23/2015 12:59'!
delete2Icon
	^ self 
		iconNamed: #delete2Icon
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAFI0lEQVR4XpVWi0+TdxStfwbq
5GHRTeZ0Vtdsigo6H9scbiJMgZmpYTqcRueqZi7GuBkTYyoIiC2WDigIRd6lCC3FUsUnrD42
ccoAxUo3oxATqon37tzyQdQ5w5qcnPvde875/b5fvz5Ur3mNKUtL1eatStBb1iR7rV+vC1Ru
2cSVm9NIasuaFG9eUqK+bEuaVrSq//Mq3bheY1j+SbPzx110v6GeBjxu7nc0UH+9jR/ZbfRI
ao+bfA317IDG8Nmy5tKNGzWjyR5jTkrQVX6TGuizVbO/pIjvH8vivqx09mem81+ZQ9wH+NC7
JzPRQCsec8oq3evuZkzOx0syPHt3070CM/UcOsB3Du6nXsB3cD/3gf0K+5Q+5twN7jp0gHoL
zNwCb86yJRmvXMQUv1zXvHM7d+oP0q29P1Dn3t3cBe4B7qK+B/YpfFfpd+G6Eyz6m6hvw+vS
fUemhM91L4SbV6/UnEhcEej4aQ//vmMbdwB/AN5vN3BTciJ3o+4B7igs138CTszaoRG9+K4J
79vDxciyIHPkaDIXznP9unM7eTdt4KubUuk6cGn9Gm468DPdPtdKzqQEvo1eJ8I6wVI7Vq+U
GTuhubDuS7qKmTctldoEu77nzIXzXcGjMq2I0xbHffRMRJfWpnD7V8l0dnU8Ofbv48DgID15
8oRunT3DjfFx1LEuhTvWJlMDavTo6dOnQQ205ElayZfgvQCcw+aKkCnZquzFsXrnqng+88UK
bgUuAJWLY7jD08KDg4MjuIlr+6dLg7j50ky0FYti+By8kuMGGpGZvShWr8qKjfY645aSa9kS
csPsAbcCYrjhbqbHjx8LWPhGi5uB4V6wf8N9mso/nE8eeN3wSY4TdSMyJVuVPj0qYF8QTQ2A
Y+FcbgKfBlpQW2e/R9ddTTQwMMD9/f0jPIzfXE1cCo3oXdA7lBw7ahv4MLJV6W+puep9DdUC
dR/MZPusaVT39iSyRU7guvCxZJmipmsuJz98+JCAYUaviQqjIrkWmhr1G1Q7dTLb4JWcauRU
gA+/OZFUGZGhbJ0+hU++M5nLJoXyyYhxXAFUAdXhY7kAIVecjfzgwd8v4IqjkfMxq4JG9OKz
AqXIsCKrBJnpyFZlRoYFCrEDC3ZyQgRhIVQGlMNojoqk9lP15Pf72e/ve46H0H7KznlR6qC+
FN4TYAtQgPoXZEq2yqB911uERj5gAYqBEuA4dnfZbmOfzzeCNgQKnu+JxghtseKXcDNQCEi2
KnvubH1FeAjlYWVZpBB8NGIcXbTVcm/vXVLAuKZcBOXiPZF6uC980VZD2RPHc37YUM5x5JQj
Mztaq1eZFsVoi8JCnplxRCZZXQSAddsW7u7qop6ebjpfU80GBBfj2Ioxk/p8TRVmPUGNdetm
MmKWp3glRzJNMXO0wa+KI5pprlNoGuVogDypYSjduplbqyr56BQ1F8gbrhyB1NKTmWgMuD6u
+A1APXBEM9U18q1qjpmjsagnBORpMGAHRuU2j4EzwseRLCi7G2HZpcwixnOOojco3gp5tJEl
mS98oxpi5+6ok0cOAsNzBjHLznLBuQobXwod1ou3TurYOTte+YNzZOa0DDsWcU5EkHK7o4Fo
xSPeTGS89lctd8E8ndxiGwzySZY336Ac1zAfU3Ytj6No2iKGjiV3QbRuVH8A5PyyZkxtLkeI
mC9jMTfYAXYgUOrLgGziJDSi/deZj+YPgDzCOficGLUzvCZ1aKAgLIQFUhvxIZJZ/tCj+J+7
/gcGYZGeUaNq1AAAAABJRU5ErkJggg=='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 2/8/2013 14:29'!
deleteIcon
	^ self 
		iconNamed: #deleteIcon
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAB7UlEQVR4Xq1S3UsUcRQ9OV+7
W7sa2Fb64EsYoa5REIGZJPQSBflgkdBiPiRIqUFRFhH0FoaBZoZhRJkFQREJ+if4rP+EoeHs
NDo7+3W6MyrM0q5BeGH4wdx7zrn33ItdjWag9hhQVy5/BIglgHjJZAOQvG8gM6DDbQTOlyCv
79Xw84GBnORvFyXrgepBAWfbm5n68Z6PqkKuEJ7bzgsgcS+qraU+jDLT0cqhEAoNPudWHAVq
ejRsuNWg/eIxzflPvBvV0k3AWSk8NRTTbPP7O1pfJpk7rLJXR0FGOVHUhRS33dKRzhwAf795
RvPbW/aHFedJpe6Ys9O0Pk8we0hhv+GrJ8v50D5gwM3G99D6+JLmzDjNuRla02PMHKygCORF
qGvHTXgG3hE/8qJmjz3l+vBDuvEK9um+eVf+uUpRuDASQZYyyloMNCvBtHhzU4cjc5/eESwj
XBqPIOeBl/eBSyq4qIC/hMgRkm4N9l/mBVrvmNyL/DZ4UcDXVTjPDeQ9Eq8bW0iSGsyEX16s
3DIVAHvKXSo25P8Z+a6Nyt49kpSMYwlJp4rVk0AkqH5xQZIr0U3w1S1wwJcbr8ObJPZ+UC62
4B1fUReXFUx9FfVOBetBcKDLvuEQ+CoMygmOlPRBZmtt9J+yJh8va+L/xh/KgsivEYu13gAA
AABJRU5ErkJggg=='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 6/20/2012 15:33'!
descendingSort
	^ self 
		iconNamed: #descendingSort
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAAAoAAAAKAgMAAADwXCcuAAAADFBMVEX///8AMmUAAAAAAADm
6jUPAAAABHRSTlP//wD//gy7CwAAAC5JREFUeF5jWLVqARCvYli0YhVDy0ItBlFWD4bWUEWG
hSErGFYErWJYxbUKJA8AOI0PML5ZXv0AAAAASUVORK5CYII='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 4/17/2014 17:04'!
dimensions
	^ self 
		iconNamed: #dimensions
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAADOElEQVR4XmMgBTQ0MLAVNAgI
MNAC1PZKGU5frnJ7/nrNpz2zpLKobkH7VKll5x56/wfhKYuUTlHdgpYJ4uErdxn92XHS+l/P
LOnpNAmmvnnyj6csUnzBQCswZanynXlrNO5TZMgaVlaTDWxsUasYGJhJsUDdt1tRO6QvQju0
gQ2n4du4uJKuSEu/v6+g8HcXD886Yi3QjZpo7FG86lly/8F/Vilz9+C0YBc396b3mpr/D/Dz
/9/Nw/MNaIMaIQvUfHtEDGKm3rBImfM/Y8qx/96la57IebcLYvcBN3fcFSmpNydFRP6dEhH5
fkJE5MkWTs6pwODiRLcAFBQGkZPbHHMW3w1r3vbDPHHWt7CmbV8tU+auxhsHQMN0VzAz+6xg
ZdXfzsV1+KKU1Ld9vLyXN3BwJE5ZIH9/3grVh9phE+Ot0xeci2rb9dsqbd4VnfBJmQoO/QIK
Xq0GDAz/GUmK9PUcHGn7+PiuHDEX+b5vndO/rUvU/yU2z/nqlLfsvkHU1AkyoX2cFCdPG9Mk
pa5y009/flz7/+pW+P+qLKv37kYxKhQbDHKdftSUXtfCFXfTmid92zBP7t/a6ez/ziiJf93P
z39tAzt79n8GBkYyjP7PqBMxOcM2Y8FFUDhbp827oBs6MWrKEsW781Zp3Aflkz28vBcvAeNn
JxfXEVDeIWikg0MDC7A8ZtII7bM3S5x9NKp1x3ennKW3gUmwHiyHlormMzBwbGFn7zsuLPzo
tJjY682cnEuBYgJLGBi0ljEwiKAYbhIzy885d+ktu8yFnzxL1n7wLl/z3Dh2xkKFgAYBQvlg
KQODPDCD7rggLv4J6Kv3V6WkPp0UFb2/iYPDHq7IOnXe7qL55/+DMDA9v9Tzm6BOalm0jo3N
/5CAwA9QRgXhHdzcKxE+SJjZGtu190dEy47vxrHT88gt7IC5f+0jJaW/wOLm3UYOjmgUSa2Q
fk+tkD5bfPE0dYnS/blr1B/hkt/PwMCynpU1AYjNSE5XHVPFffvnK/ycOF/hV+dUmWiq1wUd
06TXnrzj/v/ELff/PbNkNlPdgubJ4k6zV2vcnrtG427LFHF/mtRoWQ0MPLkNQnyk6AEAQqRh
/jRFuZQAAAAASUVORK5CYII='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 2/8/2013 14:33'!
doubleLeftArrows
	^ self 
		iconNamed: #doubleLeftArrows
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAB70lEQVR4XmMYnECxQbZEqUF6
Ai55yXJZd/l6mfUMDgwsGJIKVdKFjmtlX4cdU/qo3CDTjS4vUSbtaDhd9knqLZVfyk2yG1Ak
Zasksq0WSr8qeqfw332T3GulJtksZHnRQklbnX7px4VvFf6HHlf8pNwsNwkuKVUhlWI4Q/Jl
2j2p/45rpd8oNEgWIGsWKhK3UOuQfpxyV+q//36ZLwoNMjPhkmKlEnE6/eIvI8+L/LdaLvVW
vlq2BFmzSJ6ksVKz5KPwMyL/PbdJfgX6fy5Cc55YoEq72Avf/Xz/LReJv5OulKxC1sybKaUu
Wyfx0HsP33/HdaLfZGukF6L4W6xQyk2+SfSZ2w6e/6bzhN5Kl0u3Isvz54grylSJ33PZwvvf
bpXQN+kK6VVAYUYUQ4SLpQIUW0Seee7k/W8yW+ytRJlEPbI8T5akpky1xAP3HXz/bVeKfAWG
1zKM6BPKFQ1Rbhd97r2X77/xbPE3khWSlcjygplieiCveO3m+2+3QvQL0CWLMAwRL5SKUukQ
BYYH/3+j6UBDKlFjQiRH0kSuQeKR7z7+/zYrRD9JVUrNwjBEokA6QaNH7IXFEpEvUtWSGAqE
CqQtFRslHjuuF/otXSm1B2tSFS+SSZUql5qLKymL5ErYS5RJbWHwZGAf+IwHADNZoO8B743U
AAAAAElFTkSuQmCC'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 2/8/2013 14:34'!
doubleUpArrows
	^ self 
		iconNamed: #doubleUpArrows
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABEAAAAWCAYAAAAmaHdCAAAB0UlEQVR4XuXU7UtTcRjG8d5E
EBQFza0XtUmkRTbzGKbFkRQ1BxYmmNhWS4sIIgWlRfQAkSYs9mJiK5jOh6mbbup2UBSZlQ+z
Qy3bXJayP+abe+MbPah7mb/XFx9uuK/7t2+PvRe+Zkyd1aQMvPJbuCFlUPNNi8mZAvTG/5xS
7ylMyyrqVjVUL2i521mzc6h19DWiK53K+SMUOrIotF/kTlxN1Rcd9d2m7SFr4C35HTpKxg9y
uf0sU7Kf2Ep4HcrFGE2jclrLgx6zMtQ13cGF91ou9e8nz3YGKezdCP+MzyK2C9xeUnF9Qsez
ocatITk6g9Byjpy204zMuTeF5NgMoj0H0XGe0PeA8jRyNEQw7FEMyLEQnyPS7jYViX9lbNGd
ek+Wfs9R5BC41q9naLZr91ByI6JdWO+JmvuJ45T16hlZ6Ns5tPJX5opN4Ob8UQzSCSrGMqlb
01Di0iMteraHVtciFFgFSscPUeTR8LDbTLK9huEMzH/UFDv1TMo+ZSiR+EXeu1wKBg6Q7zrG
PadxI/xy2EK5L3kGaVz9lE3oR3BryBZoJcuqIvvDYYwfN9/J08EGynw6DMGTWLyNytM0uZ9Q
67ilGGgaeMyjnnr+49/vHwk5/gS7dCrsAAAAAElFTkSuQmCC'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 12/23/2015 12:56'!
drawIcon
	^ self 
		iconNamed: #drawIcon
		ifAbsentPutFromString: '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
SUVORK5CYII='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 12/16/2010 23:09'!
edit
	^ self 
		iconNamed: #edit
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAADkUlEQVR4XsXXW0iTcRzG8X9G
BJFUFxXURQTVRdFFBEEgQRKdoIvK6MKCoigspUgouslD57roJGtWIkRqp82ymc6p6QgPaV6I
WbOakNMtd948zMN8+r3v3uXcwf6rjQZfBd3ez+N431fGADB6rKD2xLkVICs43xd6AuL8kIzp
B/zoMaDH0AtDbx/6jEYYTSaYfvaj32yG2WKBxWqF1WaDzW6H3eGAg3I6nXC5XHC73RgYGMDg
4CCGhoYwPDwMj8eDkZERcYDyKntqe5Yo78tePyfigHjgo6OjcOuyYa1lGGidC492u9GauW51
2AHxwB2dF2Cp8eET5kzAlIxB1WKj/52YMiDWuP2ThLdM4uNf5sH8guHb1cT8kAExxTuzRNwd
iOt8+JdbDO9yWFbIgJji1WHwlwy6O5N4yIDY4NkwC/iHqbhFwfD1LkNtNrsQ8SqICa7x4d7+
AFzJ8P1eKB4y4N/wHB/ePIl7BbyUoTuP4fYhVvLHG9Hfn+0+3BWId82DlfAfMob3Rcf47oR/
i/dXhcFfMfTcp7e98DCam5v5BkSP5/rwpiD8NeFyBs2jg9BqtWhra+MbEDWuDsVtZYTnM1Tm
p0Kj0aCxsRHt7e18A/hPuIsi7mwMwt8wGAgvl+2HSqVCXV0dWlpa0N3dzTeA7y8Pg3+V8AcM
r++mQKFQQK1Wo6GhASa6u3L/O/4zfgk/K0Nxu4rwhwyKW7tRXFyMsrIytLa2iscYGxvjHzAd
3vvxBowVCXA2BOHlDL2PGJ7f3IXCwkIolUro9XpMTEyIuHA87gGRcKGaguP4/nbzVPwt4QUM
xdd2Qi6Xo6qqSnwXA3EL3V25B0TCXTYj2kvPoUudhc+VJ0XcUeHDn1zZBplMho6ODhEOxq10
d+UeEA4X0jUpYKi/Bn31ZXxUnEfH8yQYChII346SkhLx6omE2+nmxj0gHC4c8GxGKmqfEKzK
RT19L807gaLr+8QbjB+OhAvjuAeEw4XOpB9A+tG9ePX4JrS1ldDpdOIly4ML5wT3gHC40Pj4
uJjX6/0dLx7VVRAPXDivohoQa9z/uYBrQDzwqO6E8cCF13IP+J+fDf2fjlOo/VQqdZA6TB2h
jlFp1EkqgzoldTog/88ypOelSa87Ih1nHTWXmk0lBA+YQc2Ufik8aQG1iFpKLadWUWup9dRG
ahO1hdohtZVKppKoDRK2hlpJLaOWUAup+dQcapZ/xC/aEUk2F9wUZAAAAABJRU5ErkJggg=='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 12/23/2015 12:58'!
emptyDbIcon
	^ self 
		iconNamed: #emptyDbIcon
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAABw0lEQVR4XuWVSUuCQRzGWw4t
RgQR0XLo2qVbnyD6CIFFQUJ2aBEpQsiIJKMsIRULWtDoYFgEIvFqmJjYIfFtkZQuSmSiB6kX
IcPQfBolQlowTbs08GOYP8z8mOVhigAUoYB8KsxuOW3SHTdGl08zwpM7MLlxddQ3qfm5wOoM
welhELx/QiwWR4IUQxHg0g9QV3GoLGHMarwYU16ArziDdN+LvAo2zQymVC7wZPbULpb2PP9Q
EC+oYPv44UVnD8PqfoTLF0XgIYZINKlBqveFnnFIB7FnvYPa6MO6wZ+dYECkT3QLdpGEK9Jh
QmaCaMOGuS0HxuU2cMUG9Ar30SPQpuif0SWyEhjtAWxTLqxqHRCvWyBUmDAk1r3DWzRgZIHC
0IIRw4tmzGuukfccFPQV/X9Bxhz8WpApB8lxeg7WqDznYPBDDjgz+jznQEJln4P0luslf9X+
VFD6VivORUDmNREaCLWEGkIVoeSrHeQqaE2jnlD+3RH9TKB2gy+nU3+y8iCASlZ1G5nbTCjL
dAfFFZUsblcPxyKRKrwqlfrWQdPM0QnN7JqcYbnWzkyvHTNs3oq/gy28ae/knNc1tvR/XDhd
8Ao6z1C8HiyNKQAAAABJRU5ErkJggg=='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 4/19/2016 22:23'!
fastForwardIcon2
	^ self 
		iconNamed: #fastForwardIcon2
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAAAwAAAALCAYAAABLcGxfAAAAPUlEQVR4XmNYu3btfwYsYC0O
cbAENklc4nAJdElc4igSyJK4xDEkYJK4xLFK4MOU20CSH0gKJZLigZSYBgBmc9mxKTX9NwAA
AABJRU5ErkJggg=='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 2/8/2013 14:34'!
filterIcon
	^ self 
		iconNamed: #filterIcon
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAADb0lEQVR4XrXVa0iTURgH8KPz
ktYyL6iYy8gwuyipEGUX96EP3YXuFz/0oZGpM7UbmEqmIaQhCiVZJMRmpGgSUkGOFiuY2Gji
ookbjne1DddG79rWZMt/Z9KiaNGs9cIDh/d9z//3nPe8Ly8BQPAf6/tAV0IWMGfCKvSXuSqm
JcE42Rz3YaI51q1tS8JkZxqMvXlgnxdi+m0pYKgH3tXBrS6DQ37IbRnINxtupb/XN8YomCpO
qTfLH9BlGywAK9sN44N1ULelYriaC9m5hXgkTEZf6XL0Ctfg4dlVkNZmQN7Ag/JKMtQdq8Dc
Xw8DbUBzPQWauih4s/wB15jKUEx1LIVJnA1NOw+KWi5eUODZhVT0CzMgEmSipyQDQ+fTKLwI
w3XxULUsAXM3B6buXBhak0FX4AWu+QM4ulOkWHuSuPRVoTBcmgdTazwsXelgBzbAId0F5/BB
OF8dhv1lISyP+TD15MLYtQIm2pS5PRXM+SgLBYp0pYTzC+CriePklPUygad7HtjeFLBD+bCP
CgBrJ2gKoK+G9dlWjNG9kV+KgqKRC+dgHr28HHTuJjg0/jf5x9KXE9l09yI4JTmze8IqyzBj
vg4YmwBNMcw0UHnV+4gioe1IoUABdMLw+7PhgQC0k7XWthiPR7ET7MhxClTAzTTS7i9gZmw/
DPfSoWiIxqv6aLrKLFjal9rpnMUBA08EhGiLQ244JTvg0tRRoBwOVRnt/iTcw3z62iZipDYC
b1oS4OjfCG1JePn38EAB2lGcqS3d4p5sgG1UCFZ+BFDtg0uSjfFW7ixgFmXC1Jw2Tu/lzBn4
hhy1Pd4L1/gZ+pFth0e+BbaBJVA1RULZwAUryqXdR/B/Cp8L4C19TaxseuQo7FI+XE9XwyqO
g7I+DPqby2Bo5A3+Ej5XYHbDuzI9bul62PpSYOqMxmv69phvZ33WCEJT/xnwlkYQcsMu4sEm
ioWuJQwTVxPB1CQ1+Q3/G4CuImasiHzUV4d9eV3BmVFXJznouYigAd56yicWW2cOZqyDGBOQ
qd+GBwL4q0cFRO0D5MfImzn/D/5U/ZuJxAcM7SWSoAPijeSmDxjYRsRBB+7kk9M+gI4vBh2o
XEkO+YCLWeRE0AHefLLHB+TFk6KgA/Q4MFqz7JND1+3hhJAj/wNIpqsoSYgkYu840HlfAcR1
DQHkXkQMAAAAAElFTkSuQmCC'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 4/19/2016 23:18'!
frameAdvanceIcon2
	^ self 
		iconNamed: #frameAdvanceIcon2
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABIAAAALCAYAAAByF90EAAAARElEQVR4XmNYu3bt/7VQzIAE
1uIRZ8AG1pJhEFbDyDUIwzBKDEKRo9QguDw1DAKrGTQuGjyxhpGOli5d+h+GiRHHlbIB9X8z
5JE7LoUAAAAASUVORK5CYII='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 4/19/2016 23:18'!
frameRetreatIcon2
	^ self 
		iconNamed: #frameRetreatIcon2
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABIAAAALCAYAAAByF90EAAAAQElEQVR4XmPABtauXfsfnQ/D
xIijSFJkEKkasIojC5JtELohZBmEzZCBdRFVw4iqsUbVdIQrZS9duvQ/DOMSBwATaTPkCFBt
1gAAAABJRU5ErkJggg=='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 12/7/2016 15:16'!
gotoNext
	^ self 
		iconNamed: #gotoNext
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAAAgAAAALCAYAAABCm8wlAAAANUlEQVR4XmPg4OD4z4AVMP4H
Yw6gAg6sitAUYCrCogBVEQ4FCEV4FEAUkWsC+b7AGw74QhIARno9PdEHl28AAAAASUVORK5C
YII='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 1/24/2017 20:35'!
gotoNext2
	^ self 
		iconNamed: #gotoNext2
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAAAgAAAALCAYAAABCm8wlAAAAOElEQVR4XmPYv3//fwYsYO/e
vf9BmGE/UMF+LIowFKArwqoAWRFOBTBFeBWAMPkmkO8LvOGALyQB3LO7Fa8EeKgAAAAASUVO
RK5CYII='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 12/7/2016 15:20'!
gotoPrevious
	^ self 
		iconNamed: #gotoPrevious
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAAAgAAAAMCAYAAABfnvydAAAAN0lEQVR4XmNgYOD4D8GYgIMD
LI5dAUgSpwKYJFYFyJIYCtAlURRgkyTNBKLcQJQviAoHokISBgCQRT/lxnLjQQAAAABJRU5E
rkJggg=='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 1/24/2017 20:36'!
gotoPrevious2
	^ self 
		iconNamed: #gotoPrevious2
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAAAgAAAAMCAYAAABfnvydAAAAPUlEQVR4XmPYu3fv/71AzIAF
7N+//z/DXhwKQJI4FcAksSpAlsRQgC6JogCbJGkmEOUGonxBVDgQFZIwAAAkX8GBCOz2GwAA
AABJRU5ErkJggg=='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 4/17/2014 16:59'!
groupIcon
	^ self 
		iconNamed: #groupIcon
		ifAbsentPutFromString: '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'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 4/17/2008 10:52'!
iconNamed: iconSymbol put: aForm 
	^ forms 
		at: iconSymbol
		put: aForm! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 10/27/2007 13:08'!
italicize
	^ self 
		iconNamed: #italicize
		ifAbsentPutFromString:  'iVBORw0KGgoAAAANSUhEUgAAAAkAAAAJCAYAAADgkQYQAAAAJklEQVR4XmPAAv5jwVgBWLKl
pQW7gurqaoImwE2BKh7UpvwnFDYAfqYqEyKEJ1kAAAAASUVORK5CYII='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 12/23/2015 12:52'!
laptopIcon
	^ self 
		iconNamed: #laptopIcon
		ifAbsentPutFromString: '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
PQAAAABJRU5ErkJggg=='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 1/7/2016 18:03'!
layers1
	^ self 
		iconNamed: #layers1
		ifAbsentPutFromString: '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
AvtPlFCPijL1AAAAAElFTkSuQmCC'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 4/17/2014 17:09'!
loadCube
	^ self 
		iconNamed: #loadCube
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABMAAAAYCAYAAAAYl8YPAAAD8ElEQVR4XpWVW1BVZRTHeXfy
rQdeeqMJrRF8YSaqoREU4yQ4MhhqVg82Y44WGI5DKYpyTa5ytfHCwJAShApFQxnX4AR1uIgH
OCCXc7gczv3AOQZZ82vtzdBMcUxcM2v2nr3X99v/tb71re23EXO4lnB6l3G4PbgWvXh+f4xn
5U/ci4/wexbzrvyFx+3F1taJpfomkxWVDNbUMdrWgd00z/JjNga0OT2YxyYZzshEFxamLqoJ
DycvOpp4f38yo2MwdPfgdHmeDLQ5FrFLgGXOQl/y57Rt307Ttm3UH34PfXcvhtGHnIyN4zU/
Py7F7cdsnMXhXFoPtC7Y5eUcVquT/qISGoODaBBQ7f53GNEN4H70h5pa651Gdmx+Ds2mTXTX
3cbl8v4bZrO5sJhtdKZeoDXpFI0aDTWvvExNaCh9stgjEJt8xCHKZ6VeN9IySI7ZS0tFFXZZ
uw6mKKs/eIgvXwygMiiIaknx1quhfP/RMdoqqzHLezVWoIueZTyi1C7w9bVSYBJ0N/FTLm/Z
Qpmkdy04mOKAADJCQmirq8cqMQro6bsnQXa7m5bScrICA8nbupUsUVgYfwD9wJD0mXdjoDVT
GnGkS0tq4EskPu9PdtwBjFMmFr0rz6BI3GZxsGBzo+sd5P0XAjka8jo/deqYFbVms12NeSrM
IpAJo5mh8Rl0Y0badCOkncuhqqYendGCVj+BbnSKMeM8SuwTofPSmHWNzbT8pqfHYEQ7PCU+
idYwTffItHrfLbBued43OY9+xsq0yaxmsQ42OzPPkWMnSL6YRUOrll8E0DtqUq/qvcFE/7SF
IZOdLv0kdc3ttHb1+oaZ56188OFRwnZGcuR4Ate/vkPHoAHdwznum2wMzdjoGBrn5rc/knfl
BilZeTTfa5dUXfgs/mcpqQLbzY7IKGIPHiarqFxNq+O+garbTeSUXeNcdj4p4ue/KKD95571
Ha+Y8rDsylXC33qbnZpowndHsS/+EOkFJeSWX+dCzmVSLxVyMbdIvSreIWn6hDlk27+6VbsK
i9rDLs0eovbGkpB8lvT8EtJyi0nLK1ZhiioF9qtuEGXdOphLRse9lnbejIgUVRqBRaMR2Cen
z5BZWPYPaA2meP/gsG+YUw7p+PgkHyck8Ub4LiJEYVTMPo4nJZNRUKqqW0vxbGYOmfnFjI5O
+IatqRsYeMCJxFWgou7YydNSt1JVmVL4lKxcSq5W0Nf/4P9PgrKjS3KI9XoDp5LPEBax2iZr
oOzCUhq++4G5uQWcvsaNz5+HzKep6RnOp2XyrvReusDqGpoYkTG9JAPALaN8wzB1ashPZGJi
mtpv7tLeqcUqna5ArL46/j/2N1BzkGVEuCuDAAAAAElFTkSuQmCC'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 10/27/2007 13:11'!
makeNormal
	^ self 
		iconNamed: #makeNormal
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAAAkAAAAJCAYAAADgkQYQAAAAKklEQVR4XmNgYGD8D8HoACYO
l8OnEIODrpB8RfjYOE2gXBGGjzHCA0MzAPyIHgFB9iybAAAAAElFTkSuQmCC'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 4/10/2014 15:16'!
mediumWrench
	^ self 
		iconNamed: #mediumWrench
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAABS0lEQVR4XmMYbkCGRHGqgjog
XohD7iQQ+9HSci8g/g/Ei3HIXwTi90AsRisHHCbCASD5Glo54CuRDthNKwe8hVrwGoid0OSK
gPg3VP40rRxwHGrBf6hlJUDMA8TLkcRBeCWtHDATzaL/SKGCjINo5YAKLJahY1D8M9HKAe0E
LN8OxAK0spwJKZUj459AvBpaRtAUZOEIbiV6FL9mQPwdzfKFtIxrZCABxI/RLD8KxGz0sJwN
qfiF4cdQR9EFoOf779DooAvIwJLoEuhluR00eyFbPplelssB8Us0y/cDMQs9LOcC4rNolj+k
ZQMDHaDXaqD634helpdhSXRR9LLcA4j/olneSy/L1aANSfQyni6Jjg+Ir6NZfheIhehhOagi
2Yxm+Wcg1qNX0JdgSXRh9Oxe7USzvJ3e/Tvksn4zvep2dGAD7cuxMAx3AABPM5XdLAExdgAA
AABJRU5ErkJggg=='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 1/24/2017 20:31'!
mediumWrenchGray
	^ self 
		iconNamed: #mediumWrenchGray
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAZklEQVR4XmMYVmD//v3/SRGn
uuX4HEBTR8AsIOQAmjli5DsA2QJ0S/DJ0cwB+PDId8CAOmDALKdLCUh3i0e+5QNmOT4HjHzL
R36iG/nxPvIT3ci3fOjHOy4H0L1/N6AOoEtHYjABAFG8jXdua1yAAAAAAElFTkSuQmCC'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 4/17/2014 13:24'!
monaLisa
	^ self 
		iconNamed: #monaLisa
		ifAbsentPutFromString: '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
CBjRy66BfwAAAABJRU5ErkJggg=='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 2/8/2013 14:34'!
movieIcon
	^ self 
		iconNamed: #movieIcon
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABcAAAAYCAYAAAARfGZ1AAAABHNCSVQFBQUBSsjp7wAAAcxJ
REFUeF7FlaGSgzAQhpHIyMjIyMjIyMhIJDIyMjISGYlEIisrT1beI1RW3hvsJQEKLaEw185c
ZnbYQvi6WfbfLf5laW3A+Q6sbcA1PdgNm54Z66HxwXceDsAtuO4MXGmo+5/BTqNlfnNlof26
gtLNMbgMYEL4DFyCn+AswBEiUJb4CNyBv9xA1vYRfsqfgKlhfybyEvKGsvcj6BnOJ7jxR+Hl
BtyCbr/BdhcQwVemTzkvUkrQe/BoQkjAGCefCp3+UNYNUK4+D4+RfyQtW/D48SmXH4BzsYIL
WQOh/D04QjgT+Vi6z6VYlvEFBPG6BYziQIgmk6YD3d/ABasqC5XtX9X5/gnisVcK7WZBpVK8
799ZGJP75spf1pJfqnRUaBsir8xOb2GMJSghwxVhCnV73ZT+g/zNi65IKcumhRAKpr+uI190
xViKjAnYjDhWQkpFbZLiCFNQaT+egIU839adcQGnTObhsWJSaYXodcjd0BWHJsWkTs+UO2fh
u2nhnANJH7IojBkiISGS6fhV87WCzjkP+3VWoetlwpijVKQBsDmFHlpuHC51eIcfgBt3T0sU
TLQImnyd/GDd4M+N68CYY4zDX3rOIRF9Yv0CAI7oz3CEU4QAAAAASUVORK5CYII='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 2/8/2013 14:35'!
newDocumentIcon
	^ self 
		iconNamed: #newDocumentIcon
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABoAAAAWCAYAAADeiIy1AAABf0lEQVR4XmMAAauANGWbgAwH
amJ731RToNGMDDDgHJ5f19Gz+N/iWev/928/9797x5n/k7edJwt37jz9f+K2c/87dpz6XzF9
/X87/8wTcIuyWue9ee3k+X/vvf//m85f/p92ZN//7U///t/17D9JeMX9j/9TDu/5337xBpie
e+vF//jyCf81TN18gdawMriGF35Y1rvw/76euf+nn7j9v/f41f+LTj4iGS84+fB/5/HL/2ed
vAumOzcc/+8YnPNfXtO0FmiRDYOtX/qHzLKu/+u3Hfi/bc8xquCNOw79z6/p+w80G2aRL4NT
cPaHj5+//P/+fy9V8c+fv/77xZYgLApLrf5EbUtgOK+qd+RbNPItGvkWkYn/f2eAY5pZhGwJ
DIMt8o4u+vj371+aWQK3zMYv7c685Zv/f//xk+oWTZkyBWGRlXdClo1v2g9QSUspRrcExSIg
4OLk5osSkVTIoAbGGUfQet0diIOohdEsAYmZwWp0ZiAWAWJRGmBBkAUAx4Ad+Vy9w0QAAAAA
SUVORK5CYII='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 12/23/2015 12:54'!
objects2Icon
	^ self 
		iconNamed: #objects2Icon
		ifAbsentPutFromString: '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
AABJRU5ErkJggg=='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 4/17/2014 17:12'!
objectsIcon
	^ self 
		iconNamed: #objectsIcon
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAFaElEQVR4Xq2VCUyUVxSF3z8w
LLKJo0jYRBQBUUShi6htqUu1xa1i02IRUARbK26RWDGCbSoFxgGLOlVEihXFpVQFERAEAVkE
BAyyRAWpWmSXXQTP7RuIscRobPVPvrw3f2bOue/cmzfsVU+CC5vCKeUYs7f9xDoz8YUV7Hre
dj3wteDcV0z9rRpwUb/sdWKqOzYF2d8oEf8c/dbEeSTWye7C41u7NdB4zgE1QZpIW6ME/t7n
jcVjljElXm3uDX8Nqg3ToZa0ubi3T0J3ZCMoyU30hJt89KbRbMnyUcE9uYTuH5RQW+4iPDhi
QAoqZXqKqOo5Jv83GvMkN6GrVj4SdVGjURetj47i5ag7aYa6WFO+jkVJoJ4iqoJ4l//Y9KNL
mcAru1IWOJzqjxug4YQhNcQaUWeJMxqTp1L9eQuqj1dgiRy/EcRNBpvumafL1hRYvk716zI3
qFLjaWNq+sMETXFjqPmsKXWVLkVrniM1pk6mxjQbBahPmULH15tj0uqDiVy8g3kVPuXsYu4Z
wsvETRNXCu0PYozQkmCG1gucxHF4lDQe3TcWo/3mYjTn2KM51x6p55dhyW45lLzzIfYpg3ZA
A3SCeqG0vhzcLJqtzhEPEY9aMhBNctkeCdpSzKktdQK1p01Ae7oFdWRYUs/NheiocaWTZz1p
ZsBxYl4F0PStImPZI4yLAI09SDTmV8AwvI9UNpYTN0nhaP+7+jUZPmpc0BKdmVbozJ6IrqvW
6Mq1RnfeJFTmOMN652UI3kXQ31UN29+68O4pwD4WmHYCsI0BbI4Bk44CFpF9GLalQnGSYo7B
s7FMuLRWk8oOTUVT9nzqrXKixyXvoLfYlnpLbCk8ZiN0fMvJObmXFiQTfZIEzE0kmp0AOMYT
fXiOaNafwIw4oulniOxP9EPLt5KftPAuNzFl+z9jIn6KmZy93Ox++uZRVBU7B+0VnvT04WqS
nQ6E6rZqcuA/XltA9EUW4JxJ9HkGsCSdaFEakdMl4NMUovlJRPMuAivT+8nUfyCuqCH9kDsx
UZQ7myVfxX457MHaYgIMaHOQP3R2VJPyXl41r3jrTcDzOpFHIeDGDV3ziVbkAi45RL6loO9y
+mHzew9p76xRGGS8MFFKwcxBHMyua8gZdCPEUJFqQytoE8ThT6CyD3BKBngrsKkS2FA+yE+3
AK+sPhgf6gEL7gQL6YC2f7WiF1lD1UPY+8PkrPvLEgs4lY2k94oYORZpwS7OhEShq0hNDlLn
E7OcRxNWB8hqQV+n9ZFueDeE4C4SQjo47RCkbaQTUE0vGIj2sGs2GQJd65NCXu9K03IZ2eUy
zC7SIbuT40ntwFXSiAA0DxPtvwOoy3pIIcxCOsGFuXgbCdJHEElbnxlkPlffyQx1DjNMTmdY
kK8Ph2wN2GSwQa4wuF+bwWPaCq1IQPsIEFIFKEsH4+DCUAgL0lYIe1qgEtoELb8qRUQXnxv8
wGxHRSmTZRIjq2QGDlmlDICJfF1fOodGy11JEg0MjyYKrABUQ3nVUkXVrbzqFlIPayGj0AfQ
2nxDMaYV3GD6c4Pvma7eIc1+i3gRjT/PwCHz+AFgdUGJNhYtJLbNu98uoh6SY0Q/8uYO29tG
ijjUwlpgG9lAJorR9Cqs5axirinKL15KISzu44vmGHtGgOkZNoBZnAC/ysUwO6L/mG13cRS8
Cm9PjWyEPx9XyYFWfBDbAjvZbfD3D3nFG5jbZdWXX6k/M0MVmbjGKckOHnkzyad4DvmWLIVl
tPFTbv7t4PWcbyTyLqxccepvOEX9Rarrilq58A7mkaX5en8MgWwUC2bhXPCuEMKa+T6V7+cN
+Y5nvh4XPcqj2M33klfJ/QMRx3+lgYy0mAAAAABJRU5ErkJggg=='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 2/8/2013 14:35'!
outputIcon
	^ self 
		iconNamed: #outputIcon
		ifAbsentPutFromString: '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'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 2/8/2013 14:36'!
pauseIcon
	^ self 
		iconNamed: #pauseIcon
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAAAkAAAAKCAYAAABmBXS+AAAAG0lEQVR4XmPg4OD4zwHFDEiA
A1mcY+QropoiAO6SQWWazH6SAAAAAElFTkSuQmCC'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 4/19/2016 21:03'!
pauseIcon2
	^ self 
		iconNamed: #pauseIcon2
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAAAkAAAAKCAYAAABmBXS+AAAAHElEQVR4XmNYu3bt/7VQzIAE
1iKLrx35iqimCAAEc7VpypdtswAAAABJRU5ErkJggg=='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 10/27/2007 13:09'!
plainFolderIcon
	^ self 
		iconNamed: #plainFolderIcon
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABHNCSVQICAgIfAhkiAAAABF0
RVh0U29mdHdhcmUAU29kaXBvZGmU4xfQAAAC0klEQVQ4jaWTW0xTdwCHv3P+/9NLegWhpV3n
hYvchIoWcAwjRKkm6oYmW4xvY1my12U+7XG6x/mqZpkONZkgmsUlbtrFZRrxgkXxFhCNupFW
RBARCj2n7fFBlxhN1MRf8r1+T98P3nPK1xHqAM9chkLAyOaIHbjKzLsKZM5k78Lq6qVCSiJt
bdyKx3WXo/dE1kj3qGl+33WNx28SiIb5ovWHA98tWRbdzOClK0ipio7t28sDi4o3zaSmtxWL
0eZIAEdjiJG+BNOvCeqKzLKWaGi1i/NUNDaTSju4eWo/a9sr+fiT9WpT+9YSZ37BhsmxR98u
tk1GlwfJqy3i9pUHpABEJIinakX91kK/Feb+JRjexPHOozQ0+1D1u9jNIcqq/bR8/plS19b+
ocVmjyZuDX4V9uX+6E8yKhpDzOUF5n9TEV4Ewo4i3di9Czi4s4vZWYUPihcgpQGz93BbR6iu
LyO4pM0Wj8UC8SRdoi/BVG0hHSs3rvIgrJB5QqC4lBWfbiE1I+k9cZnL5+4gLE58oQBkpymq
XM2RPZ3mwANHtwS4f3Owe+qpdZvb6wQzA3oSaf5HOJJPuKmDnPRzsvMXMrmHhD8qB9NAk5oF
MhUqQNbk2NULQyC9L5EHigR9DDV1nXVffEnf6SHQ5oFpIjSpAZoK8KSE3uOd3Y91Q4JwgXA/
R3qeI5xgjFPVtIp7w49AEQihakBWBTh8mOx4MvHjoZ0/kdYFCMcLnC+ELjANGqJruH7hBiga
miYlKGnxfxDxBGd8U8Pjf/f8tnJu1rB6/UFc+QWgCFA0UDVUoTAxNkmobDF//XpIP3fH2Cte
riqe5OIyt757oH/g9smuo5mLf8byJkbHnKq04S4oQmoWPAU+UFT+OdKTPTts7FHedpaWhZYK
ry2z3m5TW6tqKuvLl9b4gqWl7Pt+x8jPca31rYJX5qj1azXzbNmmkafy/vCEHnsGoAD3o8FK
4poAAAAASUVORK5CYII='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 2/8/2013 14:36'!
playIcon
	^ self 
		iconNamed: #playIcon
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAAAYAAAALCAYAAABcUvyWAAAAL0lEQVR4XmPg4OD4z4ANcAAl
OLBJwiQwJJElUCTRJeCS2CTAkkTrIN5VWP2BzeMAeYInPbXxuu8AAAAASUVORK5CYII='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 4/19/2016 21:03'!
playIcon2
	^ self 
		iconNamed: #playIcon2
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAAAYAAAALCAYAAABcUvyWAAAAMElEQVR4XmNYu3btfwZsYC1Q
Yi02SZgEhiSyBIokugRcEpsEWJJoHcS7Cqs/sHkcABCXbNkBJE4kAAAAAElFTkSuQmCC'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 12/23/2015 12:59'!
populatedDbIcon
	^ self 
		iconNamed: #populatedDbIcon
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAD7ElEQVR4Xq2WXUibZxiGMzvW
TndQGKXs52AnO+jqxuhoo0YXG43aNBqT2vyYH2PIn3YVk9SKMQlJNURjoTHUiElIPkujqCwL
KtXSlLZsspVNVFTaYcWRbaysdFK3k7Gxe29Cl7arbm3sCxd8CeS54Hme+/1CA0ADodVzJY3V
F6eFol/R2nJyXvWKxf3BPXvi6uzsCCsra++7zCbaVuBhrcdJP/xTXGKZDivsU+CcHEGRinoS
LfmuYfxfxFCoj15/ZoGpbw6WwCyG4qu4HIkiotUhoNbDxBHAqLdB1zODY5Y4ypsnUNwwBoY6
gvw6ChkJlu/cxWiXG/YaMc5omtFldsNgCkKo6wdLQ6FQNYgCJYWCuvBzCoILGL6WwMr3D/DL
+m/4du1nDIViON9oh11uhqy6GSy+LdU2hjK8DUFiHffuP8CtOz8h1DcE63E1PuGpwWcIwOK2
ZCz480nBOpZXfkD06iKa5AYI8ypQza5HqSqQmaA18E2sUN4NWedVKJzXccIzA1t4Dt7oMqjp
FXg+XUKb/ybElhh4piiqTGPIE3f88cwCvnHk99wKC3KPWPE+xwq2vAclQgeqFU5wdT7kC904
wOvAe+Vm7GO3pcjl2P56rhno3DegcV6B0j6OqjoPmKoQ6LX9OFQ7gEPSAPLlfhyUnCeffaBL
B5CvCGU25MWFVVzS6fF1swlDtSoYq2Ro6L4MUfs4SnXU9rfo9to9XDAYEVRq0CGQwKBsebGC
5BYlVr/DqNePcyY7HG290DsnX6wguaaxM12YHJmAr1oGLbd+24KncnCxToUpVSMGBHLoPuZB
3OjPXLBZDqyBm+gdWwB16RY8o/OwJHPQ/lk6B3TRNnLA5JlRJnWBU9GIwywVissNKCgzYn9p
y6McHHVkkIPOachPD4MrPQumjOx7MgOS/hQMgQsHK+3Iq+lJ5SOjHFC+GJbmbyOua4BXKIGL
J4TP6YW1mMzgQAk02k4I+WYwj3WlZ7Dp2UzQ3vclKFcYSwMUvmgy4FytAr1VQlwUaeAuF0FJ
r8CpSj1EladxWNCJApn//wXk7EgL/LPoMTox2mpBWKuHv9UKBwmag6zpyTIhBB8WQ8aU4mjy
yuYTAWkR+f1bhDcIrxN2E14jZG3RojlQ0VmMeQOY8gexsLgKv28Y6hI+hAwuBHwT2EUyMDkt
YEh9qRaRYvseYy9h15YtsgTnyStzjVwV9x+9D64tw0XNpK8Ktn4QTM0FFGki5M/AMF5+JfsD
Uu5tws7/nAE5L+3claPlHtd+frbXnxgcjPw4MX1jw0tNbpzqHvlVZApsHNH7NugC2939JScS
73xUM5+9+836pwo/PH8Dl+Yy7jdiAmoAAAAASUVORK5CYII='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 12/16/2010 23:08'!
refresh
	^ self 
		iconNamed: #refresh
		ifAbsentPutFromString: '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
AAAAAElFTkSuQmCC'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 12/17/2016 17:54'!
refreshSmall
	^ self 
		iconNamed: #refreshSmall
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAACmUlEQVR4XtWV60uTYRjGzeHM
c5rWLFI8l21pJMUsiyhBKIggOhh9KoiyMjuoBRZFhSYGSYUON7UZHqZb6kQYOg1ykZaDmKIy
RSOSpH+gT1fX8/J+EBHZrEE98OPhvu/rva/nfd73eV8/AH7wIT5t/m8arCs1w7cGJR0Q+Mwg
orgd2bUOiPmvGEQUm46QV+QjQUrVIA51zNBkCCJetUH4bVMMMaur7Mg1juJMjxuFjh/IM89A
2+zG4Xaa1AyBGnhtEH6rLZnMH9AP48LAdxy3zuFo55zUNI+rzzJOIqfFjYSKAVDnnUHYzVYF
+ZRjGMaxrjnkmqahfjkM1f0eMI/4cjsOtk5z7pdir7co9EZLvuaZHfvbZrjKaSRW2MFcL9HK
dclEzKt6yKFFzdYM3SiymqaQ/twBES+pi9zqX9OQojcLO/Qu7DJOYf1dCxhrltT/7KAFX29C
Zv049jRNiuZgrFzuQpEX2kX88syg0Liws4530DCByJJ2MNYsa8B8bJkFZ/u+4XTvrNDNe2QQ
dO21NbHKAY1uDHHlg2DcudyFzJsSnr6DWufis/ogdFaPDNZebTy3scwKda0LWXXjSK2wgTkz
0cp1rYi3V/ZJmkzdOFRl3UJzyjODKw0K4ox73I9t1SPQNk5gr34Em7gdzGPzPQv2GUaQzcOW
wdXHP7KJvNmrkxxY0JBM5mMf2LC1+jN2G8ZwomuWe/0VJ7tnJdOMGhe2PLRB6IjK629RYEF9
DDFH33mLpMr3SKt2Iv3FFxo6kcI4qtQCURe6FV9TjjXEnwSQIBJGIkk0iQnIf3JeebHWpryk
/6m8bIA0MxZ51jfIuigSToKJkijkvtJY3Fw0VpE4kkRSSNoKpMq6eBIrG4XI/fwlk//+p/8b
AWXG/LkYqGEAAAAASUVORK5CYII='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 5/5/2016 10:46'!
repeatModeOffIcon
	^ self 
		iconNamed: #repeatModeOffIcon
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABAAAAAVCAYAAABPPm7SAAAAx0lEQVR4XmMgAkhCMdlAIzQ8
+D8lhoANgBqigU0BHxArQiWxYReQ5l17t8EM0QFiaRD+8OGDKQNQsAVmAz4MMgBmCJKLIODy
9fNwBaRguAHEugBkEVYXgMD////TcGGQYphmsqIBZiPIMLINIEezIrL3SNUsSYmTFSnxswZy
qrt3714aWqrUgdLmKDFCKMXhwnDN5KRCULqAGdCFbCosWRPtAnypDl/q/Pr1K2YAAyV0gdiH
opQH1KQExH4UJV2gRlmYUwmpBQB2p4f4nTfwQgAAAABJRU5ErkJggg=='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 5/4/2016 23:21'!
repeatModeOnIcon
	^ self 
		iconNamed: #repeatModeOnIcon
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAABI0lEQVR4XmMYjEASimkGNELD
g//T0hKwBVBLNMgxgA+IFaGasWEXkOG79m6DWaIDxNIg/OHDB9P////L4TUcqKkF5kJ8GGQB
zBIkXPX9+3d3oCXquAyfBFJ4+fp5uAGkYKglBUALnLFZoAUznFgfoKuFWQIEaTgjD1kRLozs
EBD/2bNnacRYoEOMIhCAuRhJjQ5ZPsBnAZq8BjV8oAhjYJHToNQHkgR8RZEFiljCnHILQCkD
XezevXtpaLlaB0qbk2wBgRyLFSMnXQzTP3/+bAuUrEY2lBSMlOmasFoAFNSAZqIudFcR6wMg
bj179iwoM9pgjSmghBqhXIsLf/36FcY2A2I+osptoEJdIPYhIhWRD4CGKgGxH80sgFoiCwsK
hhEHANKcdjh9C6k2AAAAAElFTkSuQmCC'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 4/17/2014 16:49'!
replaceIcon
	^ self 
		iconNamed: #replaceIcon
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAACuklEQVR4Xq2UbUyOURyHn56s
zWZjozKvQ0kxYk2vLJuQSl6K6cVLbWZ5WRgb1oSlzEqRJHpBkZI0Yg3D+MDGGmPePvrki14f
xX2fc7nv9twkTy93dbZr9+7tnN91ds75/y15vt6c8fLokzxtjsViGaPhouFkMTP0AL5+hFcN
8OIuPK+FxzeQDyoQ9aUodUXkzvTQBT52idW84GU9FB9G5u9FZu9AzUhCORLHzwNr6NwdbggC
NFw1nM0LntYgc3eiZiWjpMfz8+A6OvdE0LF9CbYtQYYgELAMlH8EsuEqyrFEfh2K1YIj6UhZ
ii0pGFu8H20xcwxBULfFdCO1X4FSW0Tnvig6doZhS15Ee+JC2mLn0rrKi5aV0/4TdAsJTUhI
oF/Br8o8fmxbjG2TP+3r59EaPUsLnk5z2ESaQt16FegMSNBZmkn7xvm0rvahJWKGFjxJC3an
KXgs3wNHD13QUZhOa5QnzcunasHjaQoZ1xVs4Eign78enpaW1vXV/x0KchcMuNACep6/IbFf
dqhDgb14vDX89aeo79QBeg34OLpkR+E9BS52iV5Ebr3g2q1VWO0494PVaCtOJhZYLZGVWOKe
9o0+5++GTI0uQeM3qP0Ctz5D9Se4/kFS/g7K3sLFRmkIjN5lajjri/Xw/U8g9ZEkpUGSfE+S
UCeJuSmJqBSGwOhd5gVV2q53PYRt9yWb70g21EqiqwTLKgSLyv4IAu33Z15Q8V6ytV4Sd1uy
tloSfk2w5IogsFjgW6gagqBBC0reSGJrJFE3JGHlgpBSgV+RYPY5gUfuMAgKXktWaMcRelng
f0ll7nkVr7OCKTkq7ieHQZDzQhJcIlhwQeCTrzL9tMqEUypjMxVGHR8GwYlngjkFKp55gsnZ
Kq5ZKqMzFEYeVRhxRBm6YICFNqhnajXTuwZTaE5me9dvt2LmU4AAFF8AAAAASUVORK5CYII='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 4/19/2016 21:02'!
rewindIcon2
	^ self 
		iconNamed: #rewindIcon2
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAAAwAAAALCAYAAABLcGxfAAAAO0lEQVR4XmPABtauXfufaHGQ
IDYJrOIwQXQJrOLIgsgSWMXRBWESWMWxCeLDpNtAlh/ICiWy4oGYmAYAyOrZsZ2RKbgAAAAA
SUVORK5CYII='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 2/8/2013 14:37'!
rightArrow
	^ self 
		iconNamed: #rightArrow
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAAAgAAAAQCAYAAAArij59AAAA/ElEQVR4XmOgAvBkYJeukt4i
UShhj1VeqlJqj9dusd8a3dKPxQqkLTEUSJZLzrJdKfop5rLYf/VuqUcihZImmIoqJBc5rRX/
EndV/L96h/RDwXwZPWyKlrluEv8af03iv1q79APhLElNdDWM0hXSq7x2SnxLuCH5X61N5h5/
jrgiigrpKsmFzhtFv8VeBlkl9VAkX0odLilRLjHXYpHQ14DDgv+VW4GOzZM0hkuKFYvP1JvG
98V5M/d/pUaJx0JF4hZwSdEi8UmqnZyfzBaz/perF30sWihpi2KvSKH4BrUetl/SVcJPRPIk
HDGD0oGBRaRAfL1Qjpg7A00AAPp3TtHlfEoZAAAAAElFTkSuQmCC'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 3/21/2016 11:12'!
roundRhinoIcon
	^ self 
		iconNamed: #roundRhinoIcon
		ifAbsentPutFromString: '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
bU+a4RcH/hdMRiZ94SxxegAAAABJRU5ErkJggg=='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 2/8/2013 14:37'!
searchIcon
	^ self 
		iconNamed: #searchIcon
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAFLElEQVR4XpWUe0xTZxjG6Q0s
QmHchFamJiZkgLIMw1hmBrKgLuqS/bEQN+PUIDiUbDDrlgzImBi5fOMWVkJpLEWBAUGIVKtp
F2AVS20JdGCoKR26NeBKBCEtUlv67j0tKF5W8UuenJz2/X7Pc97vPccLALzgDSQQCPZWVVX9
VlZWpi+vqICfCwsf5eXlKc+cOVOQm5sb/mL9msEiUf1WgaD2Vnt7OxiNxvm5uXmn2TwNxnv/
gG7kzkJXV7c1Pz/fcvJkFv+NDUQi0bv1QuFDjUYzh/dgfmAe7enpkTU3N1/suNzRohoY6NON
jv17U6VxVFRWQmZmpnjNBhdEF4Lq6upMev1dy8LCglWhUFxFQ6LVDpKRkRGi1+tRYwRrKtQa
7a2+fjWUEWLPyMj4YU0GQqHwF6m0e2nKPP1YIpGIlX19REeB7+qJccJITCYTwVaR2dlZIpVK
0XhooEepsuXk5FjQhPcaeH2AUFi3MDw69rhfNSDv7r7iSjwxMeEGT7vBFquV2BYXicPhIK2t
rRXaQd3DS03N82jwo+eJqa3d19bWDv3qoSc4OZXPEptdYKvFQhYXbS4wOIHgHoJtJJrBoT+U
A+pHaKD1aFBdXfVN1xUpKAc0+urqahd4bjnxog3BzmdgSk5wErvdQeRyedvg8Ch12GaPBhXl
5fyOzivQq+y/3dDQQCxUYpu7FStQtxDssGN6K5mZmSGdnZ0X7+gNkJ2dbfNoUFJaeqSltR2u
3ejR45Qst8K5KjG4ElutbvDk5CQxGAzkmkx22Xjvbwe26L5Hg3NF56LFYgmImzrsDRJJ5epW
OOz2F8DjRKfTkcZGCRkb0yuHdTrqkJteO6ZFRUXDdeLmpd6+mxfrhfXPg00IHje4wP2qfnL9
+nVSUlJSMzc/b8GWAhp89lqDtLS0YykpqbBnz17n+fPFtTU1Na4xNYy7E6tUKiJXKIjgVwHh
8/nkwdSUFofBnpWVdfulF41adDr9qd6OjNyy/8CB+5kZxyF5Vwpsj4tbkit+Ly0uLiZnz56l
0rquFLi8vLxyZnZ2xG63L+Fvc5h+q0eDjTxeFMJNp09/B4cOfQlxcdshODgYzpVWQZdU9tc1
2Q0FTkv1Dbm8Y3BoeNg8/dCGL6ETv6yTCE945bdoxSAiIjw6dXfqVHr6cTh29Ajs3PkhREZG
UgZXcbLGxY0t0NElA3nvTVAP6gDfcmi8dOnJiRMnahAe9L9fU2ohZGti4gemgoI8PKRMSE5O
gs1bNoPPOraMxWIxqDqEbMlwr1PL109R7Fed4XM3oaEhvPj4+PsZ2PP0Y0fh45RdEBUVBev9
1v/p7e0dxOVy6WFhYbTVewIDA2kcDofm5+dH82gQHBISGh0TY/iez4ecnG9h955PIDY2BnCj
2dubtdHf358VweV6b9q0iYntovN4PNqGDRvoaMDw9fVlsNlsOl5pWEeZeeHTetFoNLeBP4fD
xqTqr7NOAZ9/mhpJiI15BwIDOAtYmICFTAaDwVnHZr+FAN+AgAAWgpmYnMn29WXh0zGxjo6i
MZlML0rUWT41wCQiqi0FBfnwxcGD8N6OHRAUFAxY+DkeCwu1HhWECkD50Oh0Bv7HQCqDAuOV
jgFoFHRlrUyjyyAp6aOpwp8K4fBXhyExMQF4PC7gpnysC0Vxl+HrqH1UKqS5UmJ0t7Adz6V+
2SBJum//Pkh4PwHCI7iAj9yENRGoMBRn+SlcOykApnVB12ywbVvsTjw8dUhIiNbHx6cd/+ct
p2dTtV6r1psa/AcrsN6PajArwAAAAABJRU5ErkJggg=='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 10/27/2007 13:10'!
setSelectionColor
	^ self 
		iconNamed: #setSelectionColor
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABAAAAAPCAYAAADtc08vAAAAeUlEQVR4XsWQ4QrAIAiEfW//
+t5X2jQZhQWDCYeOdV+X1AuH2hYW3yjOfAugAwD9A2BmVCoBfQiZAQhdA0TkHqAmlUf22fvK
GNJDSHdaAu7/hKzvEkTZExLADI9Z+xEgP2E1l4C0Q4ylzlBlgnHDBNhObgB58+/te29p8f8o
QcwbOwAAAABJRU5ErkJggg=='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 4/17/2014 14:14'!
smallBlackPaintbrush
	^ self 
		iconNamed: #smallBlackPaintbrush
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABgAAAAdCAYAAACwuqxLAAABe0lEQVR4XrWWWysGQRyHh0jK
sVe5cLpR740UERcu3fABJB/BhSvl7i13uHSnXLiRKHcSN+TCDRdSLsip3CqkSKT1zLarNWZ2
992ZnXpudmeeX83hPyM8zxOeY2hL8Awl1+IKWAYv4Na1fCUi/4ZRV/JKWIvIJSX/nwN5FWwo
8j0Zah1Aq4ZtRf4Ahd8+FvIa2FHknzD8p19GeS3sK3LJzL++GeR1cKiRb2n7lylvgGON/Arq
rQJozXCikb9Bj3FcSnkLnGnkkqnYsSnkrXBhkC8mjk+Qt8GlQb4bHqZMAbQuuDHI5aI2ppre
mMIlA+418hcopt4cmqI17ZdZIfqhE+6UCjle1taOyLvhNCJ7ggHoCALlt7myD2YgL8C1Zjrk
rTQI7bCQqawEAQeGxQznvNeiKIqhGHlI0SZgNUF+ZHlniPMY+QeM2Aa8GuRfMOHgShWPyq5Z
h0locvQg8EvwO4zJCzyHR5jYhFkvhxdeGDAvT3GeAX3yhZBXwA80kU4HvmfjHAAAAABJRU5E
rkJggg=='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 1/13/2016 16:02'!
smallCriticalStatus
	^ self 
		iconNamed: #smallCriticalStatus
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAA3ElEQVR4Xp1SKxaFIBAlGt2C
0SVYXYKRyhLcitHqEoxUopFIJRJf5M2g8kDw9zjnngMz9zOg5GqpvrcI8s+yWltREAfcvzZQ
lFkBPgjcvxJ/lHJCvgH3WHtsILvOp+/A2rN0KaPkcBLs3ae3rRcbYxx2E+xdpwvhyTkD9xbA
OTVYmia6d2iwAzlZsZnn6M65CXwduGl6XScvn5vATQHcSKynMSHdQY/Tz2SpKj8eP5ng2EfN
mj4Myd354fufTgFaspRltpn7kZK3AC2RjFm1QVJq8RzWVgR14Hg+4AtGSV0HoKtt1QAAAABJ
RU5ErkJggg=='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 1/13/2016 16:02'!
smallOkayStatus
	^ self 
		iconNamed: #smallOkayStatus
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAADIElEQVR4Xn2TXUjTYRSH3+Xc
dBSkLqQpFigGE0QR5hpCZLG1xLkaaviB2jZyLck03HDljNLlUteHH3OyltP5MW2WljqNMqnA
gmR1EYKFFN1Z3XQVbr9e/3qjRAceeD/ON+eQnRIni2NLG6XKhpGGLsczx4xjzuE3D5t7FNcU
BUk5SRzyPxEZRNIbj26sDC8Ow/vOC997H8aXxpmze8GNenf9V9EFkfKfxul16ecsk5b1Nn8b
ul90w/XGhYHFAXjeetD3pg898z2wTdtQ66wNCfIFdduMD2gPZFfer1w3jBlwffI6Wv2t6Hje
Afu8HfaXdnS+6IRtzoamySaYRkyQX5GHeMd4m5nsFu3eJTKJPqnvq1E1VAWDz4DGJ41onmmG
ddYK65wVFr8F5jEz2nxtqPZUQ92pRqQ08htHyOGS+JJ4aVp9GgocBajor4Deq0fNeA2Mk0aY
npoYjF4jAssBTLydgKZfg6KOIkSfjkaEJKKApFxMsfKr+MjpzkG+Kx+lg6XQjGqgG9dB/1gP
nVeHV4FXCIVCmHo/hUJXIRR3FeCpeGBL2A6SWpvqJVqCzNuZkDllyBvIg6pfhbKhMhT7inFn
6g6CwSC+//yOGl8N5E45xC1iECUBS8yaJSmXUkZIJUFUYxQkvRImwsKHBSyuLELpUmLt1xpW
11ah8qiQ7clGVm8W9l7eu+kgk+UnwotCy4YDUk8Q0x4DmVuG159fMynPB+bx4/cPKLwKiL1i
ZPRnIKYlBuQ81c8lCBOHdZPksuSjkbpIxgGxEnC6OBA4Behb6kMwFET5VDkOPTwEwYAA4ffC
QcxUT0OREvAO806R2MxYlkAvCJBa+niT0kV5QNN7wIJqWgUySO8eipPSTqmjnKHRj4R92SPc
E87MQmplqoStZf8hJvpp21LeMBqhDFPclA6yGV1NOUGCUdlRsm3TKLwgLGZpWX+YUm5tZdJL
sW9FvkrRMrWv80/ydf/cBzpUEm459yPTpLrNxhIjpYpSQvuTx1mOzY09/t+N3C/ezzpYfPDY
vrP7WiJKI0a5Rdwxfim/NfFMojxBkhC2U/8v5lKqphFMVQQAAAAASUVORK5CYII='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 4/17/2014 14:04'!
smallPaintBrush
	^ self 
		iconNamed: #smallPaintBrush
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABQAAAAWCAYAAADAQbwGAAACz0lEQVR4Xq3SW0jTYRjH8bp1
OYhslhQsJnkxMusis0VaUSh0gA6WdD6YVpZ02BxlFjnTqWlNyzRMnJUIs2mRBEtMq3kuLTV1
zU0dbh7oSkSvvm2riO76Zw88Vy98+D3v88z5HzU+Yqc8O5HqwhvMGnMNfSXtSChJm0VoDq6e
Heiw9pC8V07RYSkZO+dTNZuEtp52VNulFMcF05WzhcTNfgz2dvCPybpRbpNy72QwjoItFMat
QuMe+5+wUccAKftWoD28EufdUGrUa1DtkPG6Il84OOEaRhsbTkq0nK6MMEwJi8mOXecdd3TY
KhwsSIrmyu7l1N9Q0HxhgXvkEK7vCcKQpxaOPck6j3rHMoyq9ViSF/EgRkL68TASN87Hae8T
Br4syeBS1BIenluPK20pjw/4oo5eRcZ+GeVZCcKw2ppnpKrj0aqP03o1iJqTYq7tklFwajXK
qMW4Bi1/D34bGyEv/w7PX1TzzGggMzMVzYFg7p9RcHnrQtpqK4Wl6/jQQkFhPpOTkzidTior
DWi1N7l1aCWlN48KX0Sp/hFNTY3MzMxgNpspKyujpLQYbaqKMYdNGDhg6SHnThZTU1PY7XaM
RiNPy5+gy8/F8yY4XVW1gfqGN0xPT2MymXhUUowuLxf7115h2JDNQsLZ04SHbyAmZj96vZ7C
ogfeZINWgfdm7etm08YIlEolGo3GjYYjlUpRqS+5sX5h2LhzmHVhawkICECn03kXEBkZSWBg
IKrLF4X/2YljnjOYi6+vL3K5HIVCQUhICBKJhOzMdFob39HebKazvYWuznb6uj9hs3zBYbfi
CfMHlns704v9ah8fH/z8/BCLxfj7S3isL8FQ8ZQXVZWYXr2koe41LY1v6XTfqQceHOhnwuX4
gaanpSIS+Xh7nkiE2J0wUCYjwr2U+LhY3jfU0db0no+tTXzuaKO3q5OB/h48y3MO235DP+s7
zhLjFduaI2sAAAAASUVORK5CYII='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 1/12/2016 15:46'!
smallPencil
	^ self 
		iconNamed: #smallPencil
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAA0klEQVR4XmMgFqxcuZIJiPuA
+B0Q1wExAwMJmjmAWA6IdwDxfyjuItoQoMJpQHwLiFXQDKkjpJENiBuAWAGIr2Ax5B0hZ2+B
KtyFw5AJ+DRvQ3IqNkOUQAGLS/MONM0wvAdqyDwgFsCmmQuPZhjuw+VsLqgz8Wk+gc9mQpqP
ATEfLtt7KNEMwneAuAWI84D4AJrmIzg1Qw3QgCqUgvLLkDQfwqsZqqEEiO9BXSIBxE1QzSCX
8BCTzvdANYC88QdqGCjXcRGbUa5AbQM5XYekbAoEAAhHb5YYsL0YAAAAAElFTkSuQmCC'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 7/6/2017 15:25'!
smallPriceTag
	^ self 
		iconNamed: #smallPriceTag
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAA20lEQVR4XmMgBPwiYv+rGVng
xIT0MxjZOf/fve/A/xOnz6Lg+UuX4zcAZDNI87UbN/8jAxD/46dPYENwGoBLMwjAxPEagKwZ
ZNvJM+f+L1i6AsVAnAagaza2c4EHGMjfOA3A5myYIpAYiAbxYQAUsHADsGnOLCwFawCJg2xu
6e4DuwgWkCCX+YXH/GeITsnEMB0WWOX1zf8dvQPBmpFjAa4Z2d8gV8BsgDkdJO7gFfD/8dNn
uDXjMwQ9/nFqxmUISZpxGUKSZnRDQN4gWTOyIaCAJEszDICimJAaAFGFrfHgIg9KAAAAAElF
TkSuQmCC'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 2/8/2013 14:24'!
smallTrashIcon
	^ self 
		iconNamed: #smallTrashIcon
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAACeUlEQVR4XmPAARjl5aWs5GVl
S4C4VUlKSo6BGCArK6sjLyszxdFG72VXQ/j/C/tr/u9cU/Q/O9ntj4aq0lI5OTltrBqlpKS4
5GWll3u7mfzbvjL//5VNqf8PT3D835Go+f9Qp/n/jb2e/++fbfrfXhP6T1tdeZucnJQ1qs3S
0lXLe4P+v73Z/f/ixtT/9XFa/7nZmf8Dpf7zcrL8Lw5Q+L+61vz/6ytt/19e7/mfleT6X1ZW
KhxugKS4eOvlBX7/j01w+L97btT/J5fa/8+fmvE/0N/tf3yM5/9DWyr+P7zQ/v/eubb/H+9P
+L9iTsZ/SQmx6XAD+Pn5XRTl5D6HBEf8v7Ag4P/56c7/7+7M/P/v1bT/359O+f/yRg+YPry1
6n9FbeF/PW2Vz/z8vGnIvuAAeuO2sl7Qf1XDsP+u3nH/D04P+f/pSsP/1Usr/6eW1v0PL576
P7135/+E9q3/JcXFlgH1yKCGg5TkaZ+4zv8+0W3/7X3L/hvYJP13CK/5H1qx/H90x97/UT1H
/0f0HP/vkTfzv6iocBtGTEhLSe7yiesCGwDHuXP+hwM1IWOHuMb/IoKCGVgMkFjpFdeBYkBA
6XIMAyz8M/7z8fF5YqYFCYlpHjEtKAYEla3EMMDQKeQfGxubJoYBwKhsdousQzHAP38ehgE6
lu6fQPZhGCAkJORuYhf8FxaQIOyVMQVFc0j7/v9Katq3gcoFsaVoFkE+vkhVNZ0nMK+4JXdD
NLbtAweehoHFH2AMTASpxZmhODk55SQlJNbYBeT/sw8r/2/qEfdfSUn5k4S4+EouLi5Q4AkQ
kzFZREWFkoEGrRUXFW1hZ2dXwWUrAIEYV3X9lPvLAAAAAElFTkSuQmCC'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 1/13/2016 16:01'!
smallWarningStatus
	^ self 
		iconNamed: #smallWarningStatus
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAAA8AAAAPCAYAAAA71pVKAAABsUlEQVR4XqVTSyuEYRRWfoPy
A5TVSDMWCNlZjHJtlEth4xLJyFggTC4pZWyIhVwaE8MkKUpkpuSSS8SCjchdTW6ZGdTjfQ6K
j1lZnM53znmec32/EAAh+CadhZFGJb1K1pUEPjVtIzTY76QwJS5HTTRWOhNwNJAC73iaaNr0
M07cD7JyRCi5XLDG4t6VhYf5PDwuFeLJXSyaNv2ME6ckXMjqI1TJprs9HvczJiE8b1fiea8a
vn2zaNr0M75ojZMOvsi5Uxa9ZBbibhVOPSVwD2XAPZyJVYcJ1xsV4pcECjdZq2eCHJJnd3uS
pTVW8B1aYG9JhK1Mhz6zgSDYSnWSkHHiiCeP5Jur0VSZjS36j+vxctuG16cuvPm7MdgQLwnY
CePEXYwYZXaScedMl5Y4Y+CkES/eDnjPrTjcMsNWHiXknekCiRPHK/CMQSt7JnKF1FcTA8+Y
Sfx/Vf41c+CsSQgkr7nyxab/r5kLXHWGH9smkFu2NyfiYK7ogxhk27zzjvbOztYkqbzcnxr8
zv96Ydq37VQtcSYukVegpu38aPX329b8VdlcBq/Atj817Wwt9h3590yblNB9ugAAAABJRU5E
rkJggg=='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 4/10/2014 15:17'!
smallWrench
	^ self 
		iconNamed: #smallWrench
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAA+UlEQVR4XmMYrIADiFPQxMSA
OIRaFiwE4p1oYjJA/BuITSg1HGTQXxwW/Afi5ZRaYAE16CI0qGDABSp+lVILpKAGgfBZIFaA
xsd3qNhhasTBWyRLviKxQTiHGhbcRjMUhrcCMQulhktAU8t/tKBKo4bhDNBUAjP4NRD7UTOD
FaCFvRE1DXdCC5oIahquBA0OmOGd1DScB5qpYIbvpFZkggATEK9GMhyUPIWo6foaJMM/A7EO
NQ33gxZq/6F0EDUN1wDij0iub6am4QJAfBPJ8M3QuKBapG5HMvw61EKqgUYkwz9Cg4qq4ChS
pPrRojIHFQf7sVTogxcAAK3NVFU/nEnEAAAAAElFTkSuQmCC'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 6/27/2014 15:08'!
spreadsheet1Icon
	^ self 
		iconNamed: #spreadsheet1Icon
		ifAbsentPutFromString: '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
Ji++9r8AAOOw9FlwOuUAAAAASUVORK5CYII='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 4/4/2013 17:59'!
stopIcon
	^ self 
		iconNamed: #stopIcon
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAAAoAAAAKCAYAAACNMs+9AAAAKElEQVR4XmMQEBD4L0AEZoAx
ODg4iFeITzGGQlyK6aCQer4mOhwJYQD64HT1PTP9SwAAAABJRU5ErkJggg=='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 4/19/2016 20:58'!
stopIcon2
	^ self 
		iconNamed: #stopIcon2
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAAAoAAAAKCAYAAACNMs+9AAAAGElEQVR4XmNYu3bt/7VEYIa1
I18hXRUCAPwlLmi5zodgAAAAAElFTkSuQmCC'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 4/16/2014 21:07'!
tinyGrid
	^ self 
		iconNamed: #tinyGrid
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAADAFBMVEUAAAAAAAABAQECAgID
AwMEBAQFBQUGBgYHBwcICAgJCQkKCgoLCwsMDAwNDQ0ODg4PDw8QEBARERESEhITExMUFBQV
FRUWFhYXFxcYGBgZGRkaGhobGxscHBwdHR0eHh4fHx8gICAhISEiIiIjIyMkJCQlJSUmJiYn
JycoKCgpKSkqKiorKyssLCwtLS0uLi4vLy8wMDAxMTEyMjIzMzM0NDQ1NTU2NjY3Nzc4ODg5
OTk6Ojo7Ozs8PDw9PT0+Pj4/Pz9AQEBBQUFCQkJDQ0NERERFRUVGRkZHR0dISEhJSUlKSkpL
S0tMTExNTU1OTk5PT09QUFBRUVFSUlJTU1NVVVVVVVVWVlZXV1dYWFhZWVlaWlpbW1tcXFxd
XV1eXl5fX19gYGBhYWFiYmJjY2NkZGRlZWVmZmZnZ2doaGhpaWlqampra2tsbGxtbW1ubm5v
b29wcHBxcXFycnJzc3N0dHR1dXV2dnZ3d3d4eHh5eXl6enp7e3t8fHx9fX1+fn5/f3+AgICB
gYGCgoKDg4OEhISFhYWGhoaHh4eIiIiJiYmKioqLi4uMjIyNjY2Ojo6Pj4+QkJCRkZGSkpKT
k5OUlJSVlZWWlpaXl5eYmJiZmZmampqbm5ucnJydnZ2enp6fn5+goKChoaGioqKjo6OkpKSl
paWmpqanp6eoqKiqqqqqqqqrq6usrKytra2urq6vr6+wsLCxsbGysrKzs7O0tLS1tbW2tra3
t7e4uLi5ubm6urq7u7u8vLy9vb2+vr6/v7/AwMDBwcHCwsLDw8PExMTFxcXGxsbHx8fIyMjJ
ycnKysrLy8vMzMzNzc3Ozs7Pz8/Q0NDR0dHS0tLT09PU1NTV1dXW1tbX19fY2NjZ2dna2trb
29vc3Nzd3d3e3t7f39/g4ODh4eHi4uLj4+Pk5OTl5eXm5ubn5+fo6Ojp6enq6urr6+vs7Ozt
7e3u7u7v7+/w8PDx8fHy8vLz8/P09PT19fX29vb39/f4+Pj5+fn6+vr7+/v8/Pz9/f0AAADs
b7T0AAABAHRSTlP/////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////8AU/cH
JQAAACRJREFUeF5jOIAGGA78//8fhBkgNFEC1DCDgQGMGSA03dyBBgA1AsyIb6wF7QAAAABJ
RU5ErkJggg=='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 4/16/2014 16:55'!
tinyWrench
	^ self 
		iconNamed: #tinyWrench
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAqElEQVR4XmMgEnAgsdkYSARC
QLwRiZ8GxCGkGJAHxBeR+BlAfJYUA3KA+CeU1gHi20B8lxQDXID4PxT/htLNpBgQhmTASyBu
BGIWYjXzAfFNqObpaLFBEDAB8Xqo5o1QPkmgEar5KtQlJIEgIP4LxO+BWI1UzaCo+gw1wIuc
VHcX6vQqUjWDomY3VPNqBjJAN1QzKNnykGPASSB+C8RKDGQCASAWIVUTAJnVJX88bREPAAAA
AElFTkSuQmCC'! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 2/8/2017 22:15'!
tinyWrenchGray
	^ self 
		iconNamed: #tinyWrenchGray
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAACTUlEQVR4XmPABjQ1NRmCgoLg
OCQkRCg0NNQDiBNAGKhECqQuODgYVaOIiAiDjY0NQ0BAABwHBgYKJSYmpu/Zs3vv06dPP4qK
iqaDDLC0tEQ1QFhYmMHX1xcb9tqyZfO+W7du/rewMO8FaTY1NWXw9vaWBhoAdgmDkJAQg6en
Jy6ceuHCuU9ZWZmbgUqNQerd3NykgeI5QMOTGRQUFBicnJxwYhcXl7zTp0/9B2FTUxOQC4yz
s7MmPXny5JO9vX0mg7q6OjjQdHR0GPT19RmMjIwYQE4E+REYHox2dnaFx44d/b9r1w6wIZmZ
mZtB3lm9evVRXV3dEAY+Pj6w/yUlJRnk5eUZVFVVGbS1tcEGmZub+wANKd29e9d/kCFnzoBd
8mXOnDkngJprZGVlxXAaYGho6GtmZlZx5Mjh/yoqKo08PDztUFwLxLH8/PziYmJiDFgN0NLS
8reysmo4ePDgf6C3qoHe8+fk5GRAxkADGLAaALQt0NbWtvPQoSP/jY2Nm9XU1AJBLiLKADk5
uWAHB8dJx46d/m9ubtEDjKFgmJewGcDNzY0wQEJCIsTJyWXW6dNX/ltb20yRkpIKgXkJbBMu
ADUgzNnZbeGlS3f/29k5zAUm6TCQiwQEBBgIAqAB4Y6Orktu3Hj2397eaTHQaeFcXFwMRAOg
4o47d14DbXZaxsHBkQYUEgdiUVD2AGJBIOYHYl4gBnqYgQOI2YCYBYiZgZiRgZWV1YeNja0T
SGcCBQyBWA+ItYBYDYiVgFgOiCWhhoL8xAM1iBWImQA1O8Z4eO8QGQAAAABJRU5ErkJggg=='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 10/27/2007 13:11'!
underline
	^ self 
		iconNamed: #underline
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAAAkAAAALCAYAAACtWacbAAAAKUlEQVR4XmMAgv9omAGHGCoH
l9jQVlRdXQ0WhNLYNGKEDYYCguA/IQwA7TU2rx/VoxcAAAAASUVORK5CYII='! !

!MauiIconSet methodsFor: 'icons' stamp: 'cmm 2/8/2013 14:38'!
worldIcon
	^ self 
		iconNamed: #worldIcon
		ifAbsentPutFromString: 'iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAFC0lEQVR4Xo1WfUxbVRQfGxO/
tkzxYxE3h0ucToWNwdxmdBI3YW6yqShxU4dLZEYXvzIj+/hDF02mGNwM0bAQJoSP0IaWQANU
aGABAoQ1pQFSCDRt4KVt2rQdpW3a9MnPcy4tARyEl5zc+9679/c7X/ecuwbAGiwjcSkVSSTn
4nZVtsbvqdKvz6iWWdalVenjUitaxD9agxUwlgPeTFK6bk+VvOlQPZ480YRt72qQnNss5Kl3
NNh5Sostb2uwMVMpr99bU8Z7VkVAC7NJu5kNBxVIyW/DyZ/1KFJMQHHLhjNFBpwvHcGFMhN0
g274ghF4/RF0Gj3YcqIpwHtXJKAFXxE4HjqkQsbZDnxaPIiSRguMZh9CkVnIMuYfeXYWCx+z
IyD2McZdCehHDomcmKXCdbUFNncIDk8I/qCM1T4T9gA2H2v8l7EWEUSDeWdtWhWePdWKIqUZ
k86g2CQRkT80R7JE6bs+VToJ5IU7seDHCEpJOGDIKOjAWxf78Ld2Svi5oNiIziEPplwhWEiC
7KolRPKCDz0jHtzzUg27qlQQ0GQru+ZSuYk0nEXLgBPHLvYi78oA1D125P9igJ1cNTIVgGrA
hTARRORZAcpjhN4DZCGP4fAs+kwePPiqgglkxmaCQsoABGmRn7LC4Q2hsdeB45f7cPqqHhZH
kEBlOKdDGLcFEArLYm0wFJkfA7TPH4hg2h+ieRhf/DHEBCyFTKA7+7sRLm8QLk8QHgKaptRj
rY5e6BWAHl8YZgIPEJhPAIXhpW9eApz2hcQeJ1lpdwbgcAeh7rbHCP5hAolT0SL5hEzZ/bA5
/EKjzK+74CSLmPjI972o67TB5ppTwk3fHe4AbE4WPybtPpgnpyHR/Nu/hmMEEhOESxosGLN6
YRxzYdTsFXM3WbSXzkL3iJvSNUBnwYt60izvym3k/tgPncEFiXLfLE0TuB/FyglYSUFVl4S1
uytjBGFBsOE1JdRdNvQZbRgYcsJgcsJq8+H5j7R48XSb8DFrXUenOaNAh9T8dqTT2K53ksU+
ofG9B2pxrmRIrH0ip3ERgcQvB7/sQo/BjtbuSXT2Sxgw2mGy+kTtefq9Zmx/f05i9Yhr05+N
VmiJhBWMT6/m/BcZ+Ei2GlQg512kYwLO/75BO2qbx6Bqm4BGZyEiG3qHXKhol/DYmw1CHj3C
okZilhr7Puug+jQ4l/eplYKEqq34xxbFglzIBAn7aqDplnBTZcINxTAqG0fRcssK/agbuT/0
i0O4kTTlIvjAKwrc93IdEvbX0rsS99OcAdlSdl06KRuNg0jT5OihwPX6CZTVD+NahQHlRHRN
OU5az2nDwkqwtqwlz7lubcvViPKddLxJjIfPd2PT6/Wxg5a8qFT8VD2GioZRXL0xICzYfaZ9
LlipFcIF7FdqNkh8Q4XnqB+88LEWOz/UYscHrdie1zJPxNbOl4oFxW6GfaftncJv5XrUtYzj
8s3ReQI2mV3EbmBgzqRdn7SLkTNNEJ1sRTL9p7Uzi4rdgnKNnEt96NLbUKm14uHDKmR/14P8
Xw0icFxSniFtYwRsIQsTcXNikoT9otDlrNhwsgj0wOedoFaIzG+6xEZBQC0yRsCgDJ4WJWHt
OejLNpwllsywS+IpmBxcdg2n5lby8Q5B0CYIGJzdw6kbdUvOaps+x4QbucxNiDOGSR4/2iCs
4EsAg3K6ErAcXZu06lvF/64tKeKKcjt6/BGdr+ra8h8KxA4HdGs9dAAAAABJRU5ErkJggg=='! !

!MauiIconSet methodsFor: 'accessing' stamp: 'cmm 1/13/2016 15:59'!
addIcon: aFormOrSketchMorph accessedBy: selector 
	"Compile a new 'access' method in me that will answer aFormOrSketchMorph as an icon."
	self class
		addIcon: aFormOrSketchMorph
		accessedBy: selector.
	self changed: #icons! !

!MauiIconSet methodsFor: 'accessing' stamp: 'cmm 1/13/2016 15:57'!
icons
	^ self class iconSelectors collect:
		[ : each | self perform: each ]! !

!MauiIconSet methodsFor: 'icons-constructed' stamp: 'cmm 2/7/2017 20:00'!
circleOfColor: nougatColor radius: radiusInteger borderWidth: widthInteger borderColor: borderColor 
	^ SketchMorph withForm:
		((FormCanvas extent: radiusInteger @ radiusInteger)
			fillOval: ((0 @ 0) corner: (radiusInteger-1) @ (radiusInteger-1))
			color: nougatColor
			borderWidth: widthInteger-1
			borderColor: borderColor) form! !

!MauiIconSet methodsFor: 'private' stamp: 'cmm 2/22/2016 10:43'!
iconNamed: selectorSymbol ifAbsentPutFromBytes: aReadStream 
	^ (SketchMorph withForm:
		(forms
			at: selectorSymbol
			ifAbsent:
				[ self
					iconNamed: selectorSymbol
					put: (Form fromBinaryStream: aReadStream) ]) deepCopy)
		 keepAspectRatio: true ;
		 yourself! !

!MauiIconSet methodsFor: 'private' stamp: 'cmm 10/27/2007 13:22'!
iconNamed: selectorSymbol ifAbsentPutFromString: aString 
	^ self 
		iconNamed: selectorSymbol
		ifAbsentPutFromBytes: (Base64MimeConverter mimeDecodeToBytes: aString readStream)! !

!MauiIconSet methodsFor: 'initialize' stamp: 'cmm 10/7/2007 20:33'!
initialize
	super initialize.
	forms _ Dictionary new! !

!MauiIconSet methodsFor: 'copying' stamp: 'cmm 4/13/2008 17:17'!
veryDeepInner: aDeepCopier 
	super veryDeepInner: aDeepCopier.
	forms _ forms veryDeepCopyWith: aDeepCopier! !

!MauiIconSet class methodsFor: 'more icons' stamp: 'cmm 2/8/2013 14:39'!
addIcon: aFormOrSketchMorph accessedBy: selector 
	"Compile a new 'access' method in me that will answer aFormOrSketchMorph as an icon."
	self 
		compile: 
			(self 
				methodSourceForIcon: aFormOrSketchMorph form
				named: selector)
		classified: 'icons'! !

!MauiIconSet class methodsFor: 'more icons' stamp: 'cmm 10/29/2007 13:13'!
methodSourceForIcon: aForm named: selectorSymbol 
	| formStream base64Stream |
	formStream _ RWBinaryOrTextStream on: ByteArray new.
	PNGReadWriter 
		putForm: aForm
		onStream: formStream.
	base64Stream _ Base64MimeConverter mimeEncode: formStream.
	^ String streamContents: 
		[ : stream | 
		stream
			nextPutAll: selectorSymbol ;
			nextPutAll: '
	^ self 
		iconNamed: #' ;
			nextPutAll: selectorSymbol ;
			nextPutAll: '
		ifAbsentPutFromString: ' ;
			nextPut: $' ;
			nextPutAll: base64Stream contents ;
			nextPut: $' ]! !

!MauiIconSet class methodsFor: 'private' stamp: 'cmm 1/12/2016 22:51'!
iconSelectors
	^ ((self methodsInCategory: 'icons') select:
		[ : e | e isUnary ]) asSortedCollection! !

!MauiIconSet class methodsFor: 'private' stamp: 'cmm 1/12/2016 22:53'!
icons
	| inst |
	inst _ self new.
	^ self iconSelectors collect:
		[ : each | inst perform: each ]! !

!MauiIconSet class methodsFor: 'browse' stamp: 'cmm 1/12/2016 23:01'!
mauiMyIcons
	"Open palette of all my icons."
	self icons asMauiMorph
		 horizontalListView ;
		 elementsView: #image ;
		 openInHand! !

!MauiIconSet class methodsFor: 'browse' stamp: 'cmm 1/12/2016 22:50'!
seeMyIcons
	"Open palette of all my icons."
	| iconSelectors palette icons|
	palette _ RectangleMorph new
		color: Color white ;
		layoutPolicy: TableLayout new ;
		listDirection: #leftToRight ;
		hResizing: #shrinkWrap ;
		vResizing: #shrinkWrap ;
		wrapDirection: #topToBottom ;
		extent: World extent // 2 ;
		cellInset: 10 ;
		yourself.
	iconSelectors _ self iconSelectors.
	icons _ self new.
	iconSelectors do: 
		[ : each | | labelledIcon |
		labelledIcon _ RectangleMorph new
			layoutPolicy: TableLayout new ;
			listDirection: #topToBottom ;
			layoutInset: 4 ;
			hResizing: #shrinkWrap ;
			vResizing: #shrinkWrap ;
			color: Color transparent ;
			borderWidth: 0 ;
			yourself.
		labelledIcon 
			addMorph: (StringMorph contents: each) ;
			addMorph: ("SketchMorph withForm:" (icons perform: each)).
		palette addMorphBack: labelledIcon ].
	palette openInWorld! !

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

!Object class methodsFor: '*ma-core' stamp: 'cmm 4/21/2009 18:13'!
registerSelfAsFileReader
	(FileServices registeredFileReaderClasses includes: self) ifFalse: [ FileServices registerFileReader: self ]! !

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
