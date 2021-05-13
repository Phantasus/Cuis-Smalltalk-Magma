'From Cuis 5.0 [latest update: #4579] on 13 May 2021 at 12:59:21 pm'!
'Description License: MIT
Original Author: Chris Muller (cmm)
Author: Josef Philip Bernhart (jpb)'!
!provides: 'Ma-Client-Server-Tests' 1 0!
SystemOrganization addCategory: 'Ma-Client-Server-Tests'!


!classDefinition: #MaNetworkTestCase category: 'Ma-Client-Server-Tests'!
MaTestCase subclass: #MaNetworkTestCase
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Tests'!
!classDefinition: 'MaNetworkTestCase class' category: 'Ma-Client-Server-Tests'!
MaNetworkTestCase class
	instanceVariableNames: ''!

!classDefinition: #MaClientServerTestCase category: 'Ma-Client-Server-Tests'!
MaNetworkTestCase subclass: #MaClientServerTestCase
	instanceVariableNames: 'server busy mergedBag testObjects'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Tests'!
!classDefinition: 'MaClientServerTestCase class' category: 'Ma-Client-Server-Tests'!
MaClientServerTestCase class
	instanceVariableNames: ''!

!classDefinition: #MaNetworkTestSuite category: 'Ma-Client-Server-Tests'!
TestSuite subclass: #MaNetworkTestSuite
	instanceVariableNames: 'orchestra'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Tests'!
!classDefinition: 'MaNetworkTestSuite class' category: 'Ma-Client-Server-Tests'!
MaNetworkTestSuite class
	instanceVariableNames: ''!

!classDefinition: #MaClientServerTestSuite category: 'Ma-Client-Server-Tests'!
MaNetworkTestSuite subclass: #MaClientServerTestSuite
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Tests'!
!classDefinition: 'MaClientServerTestSuite class' category: 'Ma-Client-Server-Tests'!
MaClientServerTestSuite class
	instanceVariableNames: ''!

!classDefinition: #MacsTestRequest category: 'Ma-Client-Server-Tests'!
MaClientServerRequest subclass: #MacsTestRequest
	instanceVariableNames: 'object1 object2'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Tests'!
!classDefinition: 'MacsTestRequest class' category: 'Ma-Client-Server-Tests'!
MacsTestRequest class
	instanceVariableNames: ''!

!classDefinition: #MacsTestResponse category: 'Ma-Client-Server-Tests'!
MaObject subclass: #MacsTestResponse
	instanceVariableNames: 'response1 response2'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Tests'!
!classDefinition: 'MacsTestResponse class' category: 'Ma-Client-Server-Tests'!
MacsTestResponse class
	instanceVariableNames: ''!


!MaNetworkTestCase commentStamp: '<historical>' prior: 0!
My subclasses are intended to test network programs.  I provide methods for communicating with other images and tunnelling requests to them.!

!MaNetworkTestSuite commentStamp: '<historical>' prior: 0!
A MaNetworkTestSuite is a suite for testing network programs.  By employing a NetworkOrchestra made up of at least one server image and two client images, a fourth "test conductor" is able to direct a test suite that exercises the network program.!

!MaNetworkTestCase methodsFor: 'printing' stamp: 'cmm 5/3/2002 00:12'!
printOn: aStream

	testSelector
		ifNil: [ aStream nextPutAll: 'a', self class name ]
		ifNotNil: [ super printOn: aStream ]
! !

!MaNetworkTestCase methodsFor: 'server' stamp: 'cmm 1/3/2013 16:18'!
snapshot: shouldSave andQuit: shouldQuit 
	"Delay enough for response to be sent back to conductor."
	[ (Delay forSeconds: 1) wait.
	self orchestra homePlayer stop.
	Smalltalk
		snapshot: shouldSave
		andQuit: shouldQuit ] fork.
	^ nil! !

!MaNetworkTestCase methodsFor: 'server' stamp: 'cmm 1/3/2013 09:50'!
value: aMacsClientRequest 
	| result |
	result _ aMacsClientRequest processFor: self.
	^ result == self ifFalse: [ result ]! !

!MaNetworkTestCase methodsFor: 'accessing' stamp: 'cmm 1/3/2013 14:23'!
orchestra
	^ suite orchestra! !

!MaNetworkTestCase methodsFor: 'accessing' stamp: 'cmm 1/5/2013 10:13'!
playerProtocol
	^ {MaRemotePerformRequest}! !

!MaNetworkTestCase methodsFor: 'players' stamp: 'cmm 1/3/2013 14:27'!
playerLinkNamed: aString 
	^ self orchestra playerNamed: aString! !

!MaNetworkTestCase methodsFor: 'players' stamp: 'cmm 1/3/2013 14:27'!
playersDo: aBlock 
	 self orchestra players do: aBlock! !

!MaNetworkTestCase methodsFor: 'players' stamp: 'cmm 1/3/2013 14:27'!
pushClass: aClass 
	self orchestra players do:
		[ : each | each pushClass: aClass ]! !

!MaNetworkTestCase methodsFor: 'players' stamp: 'cmm 4/23/2013 13:05'!
remotePerform: selectorSymbol in: playerName 
	^ self
		remotePerform: selectorSymbol
		withArguments: Array empty
		in: playerName! !

!MaNetworkTestCase methodsFor: 'players' stamp: 'cmm 1/10/2013 13:10'!
remotePerform: selectorSymbol with: arg1 in: playerName 
	^ self
		remotePerform: selectorSymbol
		withArguments: {arg1}
		in: playerName! !

!MaNetworkTestCase methodsFor: 'players' stamp: 'cmm 1/5/2013 16:23'!
remotePerform: selectorSymbol withArguments: anArray in: playerName 
	MaTestCaseNotification signal: 'remote performing ' , selectorSymbol , ' with arguments ' , anArray printString , ' in ' , playerName.
	^ (self playerLinkNamed: playerName)
		remotePerform: selectorSymbol
		withArguments: anArray! !

!MaNetworkTestCase class methodsFor: 'overriding' stamp: 'cmm 1/2/2013 16:09'!
isAbstract
	^ super isAbstract or: [ self name = #MaNetworkTestCase ]! !

!MaNetworkTestCase class methodsFor: 'overriding' stamp: 'cmm 1/3/2013 15:08'!
suiteClass
	^ MaClientServerTestSuite! !

!MaClientServerTestCase methodsFor: 'shared' stamp: 'cmm 11/10/2008 15:47'!
noteBusyWhile: aBlock 
	
	[ busy _ true.
	aBlock value ] ensure: [ busy _ false ]! !

!MaClientServerTestCase methodsFor: 'shared' stamp: 'cmm 11/5/2013 16:30'!
objectProtocolForTestServer
	^ { 
		MacsTestRequest.
		DateAndTime.
		Duration.
		Association.
		UUID.
		"String not needed, it is supported automatically."
		MacsTestResponse
	 }! !

!MaClientServerTestCase methodsFor: 'shared' stamp: 'cmm 11/9/2008 11:15'!
stopServer
	server shutdown! !

!MaClientServerTestCase methodsFor: 'shared' stamp: 'cmm 9/19/2014 16:05'!
verifyServerStopped
	self assert: server isRunning not! !

!MaClientServerTestCase methodsFor: 'shared' stamp: 'cmm 8/24/2005 20:50'!
waitUntilDone

	[ busy ] whileTrue: [ (Delay forSeconds: 1) wait ].
	^ nil! !

!MaClientServerTestCase methodsFor: 'test UDP object server' stamp: 'cmm 7/24/2018 15:40'!
sendObjectsToUdpServer: aCollection 
	| myLink |
	myLink _ MaNetworkServerLink location:
		(MaServerLocation
			host: NetNameResolver maLocalHostName
			port: self class defaultServerPort).
	myLink
		 networkProtocol: #udp ;
		 protocol: self objectProtocolForTestServer.
	[ self noteBusyWhile:
		[ aCollection do:
			[ : each | myLink submit: each ] ] ] fork! !

!MaClientServerTestCase methodsFor: 'test UDP object server' stamp: 'cmm 11/5/2013 16:30'!
startUdpObjectServer
	server _ MaNetworkRequestServer protocol: self objectProtocolForTestServer.
	server networkProtocol: #udp.
	testObjects _ Bag new.
	server 
		processOn: self class defaultServerPort
		using: [ : eachMacsTestRequest | testObjects add: eachMacsTestRequest ]! !

!MaClientServerTestCase methodsFor: 'test UDP object server' stamp: 'cmm 9/19/2014 16:07'!
testUdpObjectLayer
	| sampleObjects1 sampleObjects2 |
	sampleObjects1 _ (1 to: 1000) collect: [ : e | MacsTestRequest new ].
	sampleObjects2 _ (1 to: 1000) collect: [ : e | MacsTestRequest new ].
	self
		remotePerform: #startUdpObjectServer
			in: 'server' ;
		remotePerform: #sendObjectsToUdpServer:
			with: sampleObjects1
			in: 'client1' ;
		remotePerform: #sendObjectsToUdpServer:
			with: sampleObjects2
			in: 'client2' ;
		remotePerform: #waitUntilDone
			in: 'client1' ;
		remotePerform: #waitUntilDone
			in: 'client2' ;
		remotePerform: #verifyMostObjectsReceived:
			with: sampleObjects1 , sampleObjects2
			in: 'server' ;
		remotePerform: #stopServer
			in: 'server' ;
		remotePerform: #verifyServerStopped
			in: 'server'! !

!MaClientServerTestCase methodsFor: 'test UDP object server' stamp: 'cmm 11/10/2008 15:58'!
verifyMostObjectsReceived: aCollection 
	self assert: testObjects size > (aCollection size * 0.8) truncated.
	testObjects do: 
		[ : eachReceivedUdp | 
		self assert: (aCollection anySatisfy: 
				[ : eachTestFixture | 
				eachTestFixture object1 = eachReceivedUdp object1 and: [ eachTestFixture object2 = eachReceivedUdp object2 ] ]) ]! !

!MaClientServerTestCase methodsFor: 'test object server' stamp: 'cmm 11/9/2008 11:35'!
objectProcessorBlock
	^ [ : aMacsTestRequest | MacsTestResponse fromRequest: aMacsTestRequest ]! !

!MaClientServerTestCase methodsFor: 'test object server' stamp: 'cmm 7/24/2018 15:40'!
startObjectRequests
	| myLink |
	myLink _ MaNetworkServerLink location:
		(MaServerLocation
			host: NetNameResolver maLocalHostName
			port: self class defaultServerPort).
	"			interface: #udp"
	[ busy _ true.
	200 timesRepeat:
		[ | eachRequest myResponse remoteResponse |
		eachRequest _ MacsTestRequest new.
		remoteResponse _ myLink submit: eachRequest.
		myResponse _ self objectProcessorBlock value: eachRequest.
		self
			 assert: remoteResponse ~~ myResponse ;
			 assert: remoteResponse response1 = myResponse response1 ;
			 assert: remoteResponse response2 = myResponse response2 ].
	busy _ false ] fork! !

!MaClientServerTestCase methodsFor: 'test object server' stamp: 'cmm 11/5/2013 16:30'!
startObjectServer
	server _ MaNetworkRequestServer protocol: self objectProtocolForTestServer.
	server 
		processOn: self class defaultServerPort
		using: self objectProcessorBlock! !

!MaClientServerTestCase methodsFor: 'test object server' stamp: 'cmm 9/19/2014 16:06'!
testObjectLayer
	self
		
		remotePerform: #startObjectServer
		in: 'server' ;
		
		remotePerform: #startObjectRequests
		in: 'client1' ;
		
		remotePerform: #startObjectRequests
		in: 'client2' ;
		
		remotePerform: #waitUntilDone
		in: 'client1' ;
		
		remotePerform: #waitUntilDone
		in: 'client2' ;
		
		remotePerform: #stopServer
		in: 'server' ;
		
		remotePerform: #verifyServerStopped
		in: 'server'! !

!MaClientServerTestCase methodsFor: 'test ByteArray server' stamp: 'cmm 7/24/2018 15:40'!
startByteArrayRequests
	| mySocket requestByteArray response eachResponse randomStream byteArrayRandomizer requestSize largestTest |
	largestTest _ 9000.
	randomStream _ Random new.
	response _ ByteArray new: 4000.	"<- purposely too small"
	requestByteArray _ ByteArray new: largestTest.
	byteArrayRandomizer _ 
	[ : size | 
	1 
		to: size
		do: 
			[ : index | 
			requestByteArray 
				at: index
				put: (randomStream nextInt: 256) - 1 ] ].
	mySocket _ MaClientSocket location: 
		(MaServerLocation 
			host: NetNameResolver maLocalHostName
			port: self class defaultServerPort).
	
	[ busy _ true.
	1 
		to: 200
		do: 
			[ : count | 
			requestSize _ randomStream nextInt: largestTest.
			byteArrayRandomizer value: requestSize.
			eachResponse _ mySocket 
				sendData: requestByteArray
				startingAt: 1
				count: requestSize
				waitForReplyIn: response.
			self should: 
				[ (requestByteArray 
					copyFrom: 1
					to: requestSize) reverse = (eachResponse 
						copyFrom: 1
						to: requestSize) ] ].
	busy _ false ] fork! !

!MaClientServerTestCase methodsFor: 'test ByteArray server' stamp: 'cmm 11/10/2008 16:05'!
startByteArrayServer
	server _ MaServerSocket new.
	server 
		processOn: self class defaultServerPort
		using: [ : requestLifecycle | requestLifecycle requestByteArray reverse ]! !

!MaClientServerTestCase methodsFor: 'test ByteArray server' stamp: 'cmm 9/19/2014 16:06'!
testByteArrayLayer
	self
		remotePerform: #startByteArrayServer
			in: 'server' ;
		remotePerform: #startByteArrayRequests
			in: 'client1' ;
		remotePerform: #startByteArrayRequests
			in: 'client2' ;
		remotePerform: #waitUntilDone
			in: 'client1' ;
		remotePerform: #waitUntilDone
			in: 'client2' ;
		remotePerform: #stopServer
			in: 'server' ;
		remotePerform: #verifyServerStopped
			in: 'server'! !

!MaClientServerTestCase methodsFor: 'armored code' stamp: 'cmm 11/5/2013 16:30'!
playerProtocol
	^ super playerProtocol , self objectProtocolForTestServer! !

!MaClientServerTestCase methodsFor: 'test UDP ByteArray server' stamp: 'cmm 11/10/2008 11:28'!
newBagFrom: start to: stop 
	^ ((start to: stop) collect: [ : n | n asWords ]) asBag! !

!MaClientServerTestCase methodsFor: 'test UDP ByteArray server' stamp: 'cmm 7/24/2018 15:40'!
sendOutUdpByteArrayRequestsFrom: start to: stop 
	"Send the server the numbers, in English words, from 500 to 1000."
	| bag mySocket |
	bag _ self
		newBagFrom: start
		to: stop.
	mySocket _ MaClientSocket location:
		(MaServerLocation
			host: NetNameResolver maLocalHostName
			port: self class defaultServerPort).
	mySocket networkProtocol: #udp.
	[ busy _ true.
	bag do:
		[ : each | mySocket
			sendData: each
			startingAt: 2
			count: each size - 2
			waitForReplyIn: nil ].
	busy _ false ] fork! !

!MaClientServerTestCase methodsFor: 'test UDP ByteArray server' stamp: 'cmm 11/11/2008 16:27'!
startUdpByteArrayServer
	server _ MaServerSocket new
		networkProtocol: #udp ;
		yourself.
	"Server will load this Bag."
	mergedBag _ Bag new.
	server 
		processOn: self class defaultServerPort
		using: [ : requestLifecycle | mergedBag add: requestLifecycle requestByteArray asString ]! !

!MaClientServerTestCase methodsFor: 'test UDP ByteArray server' stamp: 'cmm 9/19/2014 16:07'!
testUdpByteArrayLayer
	self
		remotePerform: #startUdpByteArrayServer
			in: 'server' ;
		remotePerform: #sendOutUdpByteArrayRequestsFrom:to:
			withArguments: #(500 1000 )
			in: 'client1' ;
		remotePerform: #sendOutUdpByteArrayRequestsFrom:to:
			withArguments: #(750 1250 )
			in: 'client2' ;
		remotePerform: #waitUntilDone
			in: 'client1' ;
		remotePerform: #waitUntilDone
			in: 'client2' ;
		remotePerform: #verifyMergedBag
			in: 'server' ;
		remotePerform: #stopServer
			in: 'server' ;
		remotePerform: #verifyServerStopped
			in: 'server'! !

!MaClientServerTestCase methodsFor: 'test UDP ByteArray server' stamp: 'cmm 11/11/2008 16:52'!
verifyMergedBag
	| shouldBag |
	shouldBag _ Bag new.
	{  (500 to: 1000). (750 to: 1250)  } do: 
		[ : eachRange | 
		eachRange first 
			to: eachRange last
			do: 
				[ : n | 
				| words |
				words _ n asWords.
				shouldBag add: (words 
						copyFrom: 2
						to: words size - 1) ] ].
	"May we expect at least half of them to get through..?"
	self assert: mergedBag size > (shouldBag size * 0.5) truncated.
	self assert: (shouldBag maIncludesAll: mergedBag)! !

!MaClientServerTestCase class methodsFor: 'initialize-release' stamp: 'cmm 2/7/2009 10:04'!
initialize
	super initialize.
	Smalltalk addToStartUpList: self! !

!MaClientServerTestCase class methodsFor: 'accessing' stamp: 'cmm 2/7/2009 10:56'!
defaultServerPort
	^ 60948! !

!MaNetworkTestSuite methodsFor: 'setup-teardown' stamp: 'cmm 11/5/2013 17:07'!
createOrchestra
	| orch testCase |
	testCase _ self tests anyOne.
	orch _ (MaNetworkOrchestra name: '_' , self suiteName , 'Test')
		 protocol: testCase playerProtocol ;
		 timeoutSeconds: 172800 ;
		 onePlayerImage: false ;
		 firstPort: self startingPort ;
		 yourself.
	self playerNames do:
		[ : each | orch addPlayer:
			(MaNetworkPlayer new
				 name: each ;
				 server:
					((MaNetworkRequestServer protocol: orch protocol)
						 processor: testCase ;
						 yourself)) ].
	^ orch! !

!MaNetworkTestSuite methodsFor: 'setup-teardown' stamp: 'cmm 12/5/2011 21:46'!
findATranscript
	(Smalltalk
		at: #World
		ifAbsent: [  ]) ifNotNilDo: [ : world | world findATranscript: nil ]! !

!MaNetworkTestSuite methodsFor: 'setup-teardown' stamp: 'cmm 11/5/2013 16:32'!
launchOrchestra
	MaClientServerPreferences debug: true.
	ScreenController new fullScreenOff.
	(orchestra _ self createOrchestra) launch.
	orchestra isConductorImage ifTrue: [ orchestra waitForAllPlayersReady ]! !

!MaNetworkTestSuite methodsFor: 'setup-teardown' stamp: 'cmm 1/3/2013 17:24'!
setUp
	World color: ((Color random) adjustSaturation: -0.5 brightness: 0.0).
	MaClientServerPreferences debug: true.
	self launchOrchestra.
	self orchestra isConductorImage ifTrue: [ self findATranscript ]! !

!MaNetworkTestSuite methodsFor: 'setup-teardown' stamp: 'cmm 11/5/2013 16:41'!
tearDown
	orchestra isConductorImage ifTrue:
		[ orchestra
			 shutDownPlayers ;
			 deleteImages ]! !

!MaNetworkTestSuite methodsFor: 'players' stamp: 'cmm 1/1/2013 15:00'!
playerNames
	self subclassResponsibility! !

!MaNetworkTestSuite methodsFor: 'overriding' stamp: 'cmm 1/3/2013 14:38'!
debug
	self tests isEmpty ifTrue: [ ^ self ].
	[ self setUp ]
		on: MaNotification
		do:
			[ : noti | Transcript
				 cr ;
				 show: noti messageText.
			noti resume ].
	[ self orchestra isConductorImage ifTrue:
		[ | durationToRun |
		durationToRun _ [ super debug ] durationToRun.
		Transcript
			 cr ;
			 show: 'Time to run all tests:' , durationToRun asString ] ] ensure:
		[ [ self tearDown ]
			on: MaNotification
			do:
				[ : noti | Transcript
					 cr ;
					 show: noti messageText.
				noti resume ].
		Transcript
			 cr ;
			 show: 'Done.' ]! !

!MaNetworkTestSuite methodsFor: 'accessing' stamp: 'cmm 1/3/2013 15:29'!
orchestra
	^ orchestra! !

!MaNetworkTestSuite methodsFor: 'accessing' stamp: 'cmm 2/6/2009 17:19'!
suiteName
	self subclassResponsibility ! !

!MaClientServerTestSuite methodsFor: 'setup-teardown' stamp: 'cmm 1/1/2013 15:00'!
playerNames
	^ #('client1' 'client2' 'server' )! !

!MaClientServerTestSuite methodsFor: 'setup-teardown' stamp: 'cmm 2/6/2009 17:19'!
suiteName
	^ 'macs'! !

!MaClientServerTestSuite methodsFor: 'overriding' stamp: 'cmm 10/29/2013 15:31'!
startingPort
	"Pick a port number range that won't conflict with the defaults, in case another application is running."
	^ 44421! !

!MacsTestRequest methodsFor: 'accessing' stamp: 'cmm 11/9/2008 11:29'!
initialize
	super initialize.
	object1 _ DateAndTime 
		date: 
			(Date 
				newDay: (1 to: 365) atRandom
				year: (1900 to: 2100) atRandom)
		time: Time now.
	object2 _ UUID new -> (1 to: 100000) atRandom asWords! !

!MacsTestRequest methodsFor: 'accessing' stamp: 'cmm 11/9/2008 10:57'!
object1
	^object1! !

!MacsTestRequest methodsFor: 'accessing' stamp: 'cmm 11/9/2008 10:57'!
object1: aDateAndTime
	object1 _ aDateAndTime! !

!MacsTestRequest methodsFor: 'accessing' stamp: 'cmm 11/9/2008 10:57'!
object2
	^object2! !

!MacsTestRequest methodsFor: 'accessing' stamp: 'cmm 11/9/2008 10:58'!
object2: anAssociation
	object2 _ anAssociation! !

!MacsTestResponse methodsFor: 'as yet unclassified' stamp: 'cmm 11/9/2008 17:35'!
initializeFrom: aMacsTestRequest 
	response1 _ DateAndTime 
		date: (aMacsTestRequest object1 asDate addDays: 1)
		time: aMacsTestRequest object1 asTime.
	response2 _ aMacsTestRequest object2 value -> aMacsTestRequest object2 key! !

!MacsTestResponse methodsFor: 'accessing' stamp: 'cmm 11/9/2008 11:14'!
response1
	^response1! !

!MacsTestResponse methodsFor: 'accessing' stamp: 'cmm 11/9/2008 11:14'!
response2
	^response2! !

!MacsTestResponse class methodsFor: 'as yet unclassified' stamp: 'cmm 11/9/2008 11:10'!
fromRequest: aMacsTestRequest 
	^ self new
		initializeFrom: aMacsTestRequest ;
		yourself! !
MaClientServerTestCase initialize!
