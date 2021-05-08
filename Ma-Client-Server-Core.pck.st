'From Cuis 5.0 [latest update: #4588] on 8 May 2021 at 8:42:38 am'!
'Description Magma core for server and client

License: MIT
Original author: Chris Muller (cmm)
Author: Josef Philip Bernhart (jpb)'!
!provides: 'Ma-Client-Server-Core' 1 3!
!requires: 'Ma-Collections' 1 0 nil!
!requires: 'Ma-Core' 1 1 nil!
SystemOrganization addCategory: 'Ma-Client-Server-Core'!


!classDefinition: #MaClientServerEnvironmentError category: 'Ma-Client-Server-Core'!
MaEnvironmentError subclass: #MaClientServerEnvironmentError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Core'!
!classDefinition: 'MaClientServerEnvironmentError class' category: 'Ma-Client-Server-Core'!
MaClientServerEnvironmentError class
	instanceVariableNames: ''!

!classDefinition: #MaClientServerOutOfSequence category: 'Ma-Client-Server-Core'!
MaClientServerEnvironmentError subclass: #MaClientServerOutOfSequence
	instanceVariableNames: 'expectedSequenceNumber'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Core'!
!classDefinition: 'MaClientServerOutOfSequence class' category: 'Ma-Client-Server-Core'!
MaClientServerOutOfSequence class
	instanceVariableNames: ''!

!classDefinition: #MaClientServerUserError category: 'Ma-Client-Server-Core'!
MaUserError subclass: #MaClientServerUserError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Core'!
!classDefinition: 'MaClientServerUserError class' category: 'Ma-Client-Server-Core'!
MaClientServerUserError class
	instanceVariableNames: ''!

!classDefinition: #MaMalformedRequestError category: 'Ma-Client-Server-Core'!
MaError subclass: #MaMalformedRequestError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Core'!
!classDefinition: 'MaMalformedRequestError class' category: 'Ma-Client-Server-Core'!
MaMalformedRequestError class
	instanceVariableNames: ''!

!classDefinition: #MaClientServerNotification category: 'Ma-Client-Server-Core'!
MaNotification subclass: #MaClientServerNotification
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Core'!
!classDefinition: 'MaClientServerNotification class' category: 'Ma-Client-Server-Core'!
MaClientServerNotification class
	instanceVariableNames: ''!

!classDefinition: #MaClientConnection category: 'Ma-Client-Server-Core'!
MaObject subclass: #MaClientConnection
	instanceVariableNames: 'serverSocket lifecycle extractProcess shouldContinue info lastAccess priorLifecycle'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Core'!
!classDefinition: 'MaClientConnection class' category: 'Ma-Client-Server-Core'!
MaClientConnection class
	instanceVariableNames: ''!

!classDefinition: #MaClientServerPreferences category: 'Ma-Client-Server-Core'!
MaObject subclass: #MaClientServerPreferences
	instanceVariableNames: 'timeoutSeconds compressThreshold'
	classVariableNames: 'Debug'
	poolDictionaries: ''
	category: 'Ma-Client-Server-Core'!
!classDefinition: 'MaClientServerPreferences class' category: 'Ma-Client-Server-Core'!
MaClientServerPreferences class
	instanceVariableNames: ''!

!classDefinition: #MaClientServerRequest category: 'Ma-Client-Server-Core'!
MaObject subclass: #MaClientServerRequest
	instanceVariableNames: 'lifecycle'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Core'!
!classDefinition: 'MaClientServerRequest class' category: 'Ma-Client-Server-Core'!
MaClientServerRequest class
	instanceVariableNames: 'defaultSound'!

!classDefinition: #MaRemotePerformRequest category: 'Ma-Client-Server-Core'!
MaClientServerRequest subclass: #MaRemotePerformRequest
	instanceVariableNames: 'selector arguments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Core'!
!classDefinition: 'MaRemotePerformRequest class' category: 'Ma-Client-Server-Core'!
MaRemotePerformRequest class
	instanceVariableNames: ''!

!classDefinition: #MaClientSocket category: 'Ma-Client-Server-Core'!
MaObject subclass: #MaClientSocket
	instanceVariableNames: 'location socket socketStream byteArray stat preferences networkProtocol sequenceNumber'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Core'!
!classDefinition: 'MaClientSocket class' category: 'Ma-Client-Server-Core'!
MaClientSocket class
	instanceVariableNames: ''!

!classDefinition: #MaNetworkOrchestra category: 'Ma-Client-Server-Core'!
MaObject subclass: #MaNetworkOrchestra
	instanceVariableNames: 'name players firstPort cores startBlock launchProcess guard imageTimestamp prepareImageSelector onePlayerImage protocol timeoutSeconds'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Core'!
!classDefinition: 'MaNetworkOrchestra class' category: 'Ma-Client-Server-Core'!
MaNetworkOrchestra class
	instanceVariableNames: ''!

!classDefinition: #MaNetworkPlayer category: 'Ma-Client-Server-Core'!
MaObject subclass: #MaNetworkPlayer
	instanceVariableNames: 'name orchestra link server doBlock'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Core'!
!classDefinition: 'MaNetworkPlayer class' category: 'Ma-Client-Server-Core'!
MaNetworkPlayer class
	instanceVariableNames: ''!

!classDefinition: #MaServer category: 'Ma-Client-Server-Core'!
MaObject subclass: #MaServer
	instanceVariableNames: 'console'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Core'!
!classDefinition: 'MaServer class' category: 'Ma-Client-Server-Core'!
MaServer class
	instanceVariableNames: ''!

!classDefinition: #MaRequestServer category: 'Ma-Client-Server-Core'!
MaServer subclass: #MaRequestServer
	instanceVariableNames: 'processor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Core'!
!classDefinition: 'MaRequestServer class' category: 'Ma-Client-Server-Core'!
MaRequestServer class
	instanceVariableNames: ''!

!classDefinition: #MaLocalRequestServer category: 'Ma-Client-Server-Core'!
MaRequestServer subclass: #MaLocalRequestServer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Core'!
!classDefinition: 'MaLocalRequestServer class' category: 'Ma-Client-Server-Core'!
MaLocalRequestServer class
	instanceVariableNames: ''!

!classDefinition: #MaNetworkRequestServer category: 'Ma-Client-Server-Core'!
MaRequestServer subclass: #MaNetworkRequestServer
	instanceVariableNames: 'socket serializer nextId protocolByteArray'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Core'!
!classDefinition: 'MaNetworkRequestServer class' category: 'Ma-Client-Server-Core'!
MaNetworkRequestServer class
	instanceVariableNames: ''!

!classDefinition: #MaServerSocket category: 'Ma-Client-Server-Core'!
MaServer subclass: #MaServerSocket
	instanceVariableNames: 'socketQueue requestQueue processRequestProcess socket doBlock port running socketQueueMonitorProcess clientConnections clientConnectionsGuard preferences networkProtocol interface'
	classVariableNames: 'ActiveSockets'
	poolDictionaries: ''
	category: 'Ma-Client-Server-Core'!
!classDefinition: 'MaServerSocket class' category: 'Ma-Client-Server-Core'!
MaServerSocket class
	instanceVariableNames: ''!

!classDefinition: #MaServerConsole category: 'Ma-Client-Server-Core'!
MaObject subclass: #MaServerConsole
	instanceVariableNames: 'lastRequestStart lastRequestFinish statistics playAuditorialization soundTheme soundQueue'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Core'!
!classDefinition: 'MaServerConsole class' category: 'Ma-Client-Server-Core'!
MaServerConsole class
	instanceVariableNames: ''!

!classDefinition: #MaRequestServerConsole category: 'Ma-Client-Server-Core'!
MaServerConsole subclass: #MaRequestServerConsole
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Core'!
!classDefinition: 'MaRequestServerConsole class' category: 'Ma-Client-Server-Core'!
MaRequestServerConsole class
	instanceVariableNames: ''!

!classDefinition: #MaServerLink category: 'Ma-Client-Server-Core'!
MaObject subclass: #MaServerLink
	instanceVariableNames: 'stat'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Core'!
!classDefinition: 'MaServerLink class' category: 'Ma-Client-Server-Core'!
MaServerLink class
	instanceVariableNames: ''!

!classDefinition: #MaLocalServerLink category: 'Ma-Client-Server-Core'!
MaServerLink subclass: #MaLocalServerLink
	instanceVariableNames: 'localRequestServer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Core'!
!classDefinition: 'MaLocalServerLink class' category: 'Ma-Client-Server-Core'!
MaLocalServerLink class
	instanceVariableNames: ''!

!classDefinition: #MaNetworkServerLink category: 'Ma-Client-Server-Core'!
MaServerLink subclass: #MaNetworkServerLink
	instanceVariableNames: 'serializer socket submitGuard'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Core'!
!classDefinition: 'MaNetworkServerLink class' category: 'Ma-Client-Server-Core'!
MaNetworkServerLink class
	instanceVariableNames: ''!

!classDefinition: #MaServerLocation category: 'Ma-Client-Server-Core'!
MaObject subclass: #MaServerLocation
	instanceVariableNames: 'host port'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Core'!
!classDefinition: 'MaServerLocation class' category: 'Ma-Client-Server-Core'!
MaServerLocation class
	instanceVariableNames: ''!

!classDefinition: #MaServerRequestLifecycle category: 'Ma-Client-Server-Core'!
MaObject subclass: #MaServerRequestLifecycle
	instanceVariableNames: 'socket sequenceNumber socketQueueTime socketDequeueTime requestQueueTime requestDequeueTime requestByteArray requestObject beginSendingResponseTime doneSendingResponseTime responseByteArray remoteAddress remotePort clientConnection guard socketStream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Core'!
!classDefinition: 'MaServerRequestLifecycle class' category: 'Ma-Client-Server-Core'!
MaServerRequestLifecycle class
	instanceVariableNames: ''!

!classDefinition: #MacsSoundTheme category: 'Ma-Client-Server-Core'!
MaObject subclass: #MacsSoundTheme
	instanceVariableNames: 'sounds'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Core'!
!classDefinition: 'MacsSoundTheme class' category: 'Ma-Client-Server-Core'!
MacsSoundTheme class
	instanceVariableNames: ''!

!classDefinition: #MaServerStat category: 'Ma-Client-Server-Core'!
Object subclass: #MaServerStat
	instanceVariableNames: 'requestsQueuedHistory socketsQueuedHistory requestSizeHistory requestProcessingTimeHistory requestProcessingTimeHistorys responseSizeHistory extractTimeHistory timeWaitingInSocketQueueHistory timeWaitingInRequestQueueHistory timeToSendResponsesHistory clientTimeoutsHistory numberOfClientConnectionsHistory timeToLoadBuffersHistory idleTimeHistory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Core'!
!classDefinition: 'MaServerStat class' category: 'Ma-Client-Server-Core'!
MaServerStat class
	instanceVariableNames: ''!

!classDefinition: #MaClientStat category: 'Ma-Client-Server-Core'!
ProtoObject subclass: #MaClientStat
	instanceVariableNames: 'timeToConnectSocketHistory timeToLoadBuffersHistory timeToSendRequestsHistory timeWaitingForResponsesHistory timeReceivingResponsesHistory timeToSubmitByRequestClassHistorys'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Client-Server-Core'!
!classDefinition: 'MaClientStat class' category: 'Ma-Client-Server-Core'!
MaClientStat class
	instanceVariableNames: ''!


!MaMalformedRequestError commentStamp: 'cmm 2/1/2005 15:26' prior: 0!
I am signaled when a request is received from a client that could not be materialized.!

!MaClientConnection commentStamp: 'cmm 11/13/2008 15:34' prior: 0!
A MaClientConnection is created in the server image when a MaClientSocket connects to a MaServerSocket.  At that point, the client can send request ByteArrays which will be extracted by my extractProcess.  The server allows up to 50 simultaneous connections, after which the oldest is disconnected (but not while they're in a request-lifecycle, of course, since they have to be able to send the response).

Instance Variables
	extractProcess:		<Process> - loops while the client #socket is connected, listening for request ByteArrays, extracting them and processing them when they become available.
	lifecycle:		<Object>
	serverSocket:		<Object>
	shouldContinue:		Set false to allow the extract process and associated socket to clean up normally.
!

!MaClientServerPreferences commentStamp: 'cmm 2/1/2005 15:27' prior: 0!
Control your Ma client server preferences with this class.!

!MaClientServerRequest commentStamp: 'cmm 9/20/2008 16:45' prior: 0!
An abstract superclass for all requests in the "Ma client server" framework.  This superclass knows the #clientConnection, a MaClientConnection, which may be useful to the application server program.!

!MaRemotePerformRequest commentStamp: 'cmm 8/18/2009 21:41' prior: 0!
Perform #selector in the TestCase subclass instance of a remote test-player image.!

!MaClientSocket commentStamp: 'cmm 2/1/2005 15:29' prior: 0!
An easy-to-use class to send ByteArray or String requests to a socket listening on the network.  The other socket is listening using MaServerSocket.!

!MaNetworkOrchestra commentStamp: 'cmm 9/18/2013 15:22' prior: 0!
About:
A MaNetworkOrchestra is an object which lets you divide a large task among multiple CPU cores.  The current running process is forked into into two or more separate image instances running in parallel and working on different parts of the same large task.

Setup:
To use it, create and set up the Orchestra object with the desired number of Players.  Then send #launch to the Orchestra.  For example:

	(MaNetworkOrchestra name: 'one-big-task')
		maxCores: 4 "<--- Keep up to 4 player images running simultaneously." ;
		playerNamed: 'subtask1' playerName doAndQuit: [ "perform subtask1" ] ;
		playerNamed: 'subtask2' playerName doAndQuit: [ "perform subtask2" ] ;
		playerNamed: 'subtask3' playerName doAndQuit: [ "perform subtask3" ] ;
		playerNamed: 'subtask4' playerName doAndQuit: [ "perform subtask4" ] ;
		playerNamed: 'subtask5' playerName doAndQuit: [ "perform subtask5" ] ;
		playerNamed: 'subtask6' playerName doAndQuit: [ "perform subtask6" ] ;
		launch

#launch causes the originating image to be saved under the Orchestra's #name (to preserve the original launching image and assume the role of "conductor") and then proceeds to launch additional copies of itself, one for each Player defined in the Orchestra.  The conductor is then able to send #remotePerform: requests to any player for purposes of initiating the task, reporting status, or shutting down.

The above use convenience method to create a generic Player instance for brevity of the example.  In fact, highly customized Players can be created and added via the #addPlayer: message.  See references to this class for custom examples employed by my test-cases.

Resource Management:
The Orchestra specifies how many players to keep running simultaneously by its #maxCores.  The running conductor pings its players every second.  As player images complete their task and exit the image, the ping fails and a "core" slot frees up in the Orchestra., whereupon it will launch the next defined Player and monitor it.

TestCases as a complex Example:
The Ma-Client-Server-Tester packages themselves serve as another example of using an Orchestra:  to test the CS functionality of this package, we need two client images and one server image for a total of three Player images.  The conductor sends requests to the server image such as "start your server", "shutdown your server" and messages to the clients such as "connect to the server at: port123" or, "send this remotePerform request to the server", etc.!

!MaNetworkPlayer commentStamp: 'cmm 9/18/2013 20:34' prior: 0!
Each Player of an Orchestra run in its own image, leveraging the multi-core CPU's.  These MaNetworkPlayer instances are objects which exist in both images images, and use client-server communication between the instance in the conductor (the client) and the instance in the corresponding player image (server) to interrogate status or send commands.!

!MaServer commentStamp: 'cmm 2/1/2005 15:35' prior: 0!
Abstract superclass for the "server engine".  I know a console which I send output to.!

!MaRequestServer commentStamp: 'cmm 2/20/2005 17:15' prior: 0!
Abstract class whose subclass instances handle the server portion of the client-server activity.  The processor should be an object that responds to #value:.  The argument is the actual request object and it should answer the result object.  Requests and responses can be arbitrary objects, not just byte-objects like Strings and ByteArrays, although you must set up your #protocol.!

!MaLocalRequestServer commentStamp: 'cmm 5/8/2008 21:21' prior: 0!
Use this server as a stub when you are running your object-request server locally within the same image.!

!MaNetworkRequestServer commentStamp: 'cmm 2/1/2005 15:40' prior: 0!
The server to use when you want to allow requests and responses to be any object and run on a remote server.!

!MaServerSocket commentStamp: 'cmm 6/6/2008 10:19' prior: 0!
I am the class which manages the underlying Squeak socket that listens for connecting client sockets.  I receive and process requests in the order received in the background and send responses off in their own background process as well.!

!MaServerConsole commentStamp: 'cmm 2/1/2005 15:34' prior: 0!
I am used to receive messages from the server.!

!MaRequestServerConsole commentStamp: 'cmm 2/1/2005 15:34' prior: 0!
I am used to receive messages from the server.!

!MaServerLink commentStamp: 'cmm 2/1/2005 15:36' prior: 0!
Abstract superclass representing a clients link to a server.  A client uses this link to submit request objects via #submit:.!

!MaLocalServerLink commentStamp: 'cmm 2/1/2005 15:32' prior: 0!
This is your clients interface to the server when the server is running locally (e.g., with MaLocalRequestServer).!

!MaNetworkServerLink commentStamp: 'cmm 9/13/2013 12:23' prior: 0!
A MaNetworkServerLink handles the actual communications with a remotely-running MaRequestServer.!

!MaServerLocation commentStamp: 'cmm 7/5/2008 13:21' prior: 0!
A MaServerLocation simply encapsulates a host and port, allowing the receiver to serve as a 'bookmark' to a server resource.
!

!MaNetworkOrchestra methodsFor: 'accessing' stamp: 'cmm 1/6/2013 16:54'!
name
	"The name of this orchestra which is used to prefix the image names of the orchestra image."
	^ name ifNil: [ Smalltalk imageEntry localFileName ]! !

!MaNetworkPlayer methodsFor: 'access' stamp: 'cmm 5/22/2002 10:21'!
name

	^name
! !

!MaServer class methodsFor: 'system-initialization' stamp: 'cmm 4/27/2015 12:49'!
startUp: justLaunchedFromOs
	justLaunchedFromOs ifTrue: [ Smalltalk restartSigTermHandler ]! !

!MaServerSocket class methodsFor: 'initializing' stamp: 'cmm 12/27/2004 23:16'!
shutDown: aboutToQuit

	super shutDown: aboutToQuit.
	ActiveSockets do: [ :each | each primShutdown ]! !

!MaServerSocket class methodsFor: 'initializing' stamp: 'cmm 9/2/2010 19:36'!
startUp: amResuming
	ActiveSockets do: 
		[ :each | 
		"If another startUp method creates and starts one of me listening, then I don't want to tell it to listen again"
		each isRunning ifFalse: [ each listen ] ]! !

!MaClientServerOutOfSequence methodsFor: 'accessing' stamp: 'cmm 10/27/2014 14:36'!
expectedSequenceNumber
	^ expectedSequenceNumber! !

!MaClientServerOutOfSequence methodsFor: 'initialize-release' stamp: 'cmm 10/27/2014 14:11'!
expectedSequenceNumber: anInteger 
	expectedSequenceNumber _ anInteger! !

!MaClientServerOutOfSequence class methodsFor: 'create' stamp: 'cmm 10/28/2014 13:05'!
expected: anInteger 
	^ self halt new
		 expectedSequenceNumber: anInteger ;
		 yourself! !

!MaClientConnection methodsFor: 'accessing' stamp: 'cmm 8/22/2013 13:34'!
console
	^ serverSocket console! !

!MaClientConnection methodsFor: 'accessing' stamp: 'cmm 3/6/2009 16:27'!
info
	^ info! !

!MaClientConnection methodsFor: 'accessing' stamp: 'cmm 3/6/2009 16:27'!
info: aString 
	info _ aString! !

!MaClientConnection methodsFor: 'accessing' stamp: 'cmm 6/26/2013 10:55'!
lastAccess
	"The millisecondClockValue of the last time a request was processed for this client.  However, when it is requested by another client, because the millisecondClockValue is different across all computers, this variable is converted to the NUMBER of milliseconds since the last access."
	^ lastAccess! !

!MaClientConnection methodsFor: 'accessing' stamp: 'cmm 3/24/2013 16:59'!
lastAccess: anInteger 
	"The millisecondClockValue of the last time a request was processed for this client."
	lastAccess _ anInteger! !

!MaClientConnection methodsFor: 'accessing' stamp: 'cmm 9/28/2014 20:42'!
lifecycle
	^ lifecycle! !

!MaClientConnection methodsFor: 'accessing' stamp: 'cmm 3/1/2009 11:17'!
serverSocket
	^ serverSocket! !

!MaClientConnection methodsFor: 'accessing' stamp: 'cmm 6/8/2008 10:43'!
shouldContinue
	^ shouldContinue and: [ serverSocket isRunning ]! !

!MaClientConnection methodsFor: 'accessing' stamp: 'cmm 6/8/2008 11:40'!
shouldContinue: aBoolean
	shouldContinue _ aBoolean! !

!MaClientConnection methodsFor: 'copying' stamp: 'cmm 7/31/2013 18:21'!
informationalCopy
	^ self copy postInformationalCopy! !

!MaClientConnection methodsFor: 'copying' stamp: 'cmm 7/31/2013 18:21'!
postInformationalCopy
	lastAccess ifNotNil: [ lastAccess _ Time millisecondsSince: lastAccess ]! !

!MaClientConnection methodsFor: 'initialize-release' stamp: 'cmm 7/31/2013 10:03'!
initialize
	super initialize.
	shouldContinue _ true.
	lastAccess _ Time millisecondClockValue! !

!MaClientConnection methodsFor: 'initialize-release' stamp: 'cmm 8/22/2013 13:38'!
setServerSocket: aMaServerSocket lifecycle: aMaServerRequestLifecycle 
	serverSocket _ aMaServerSocket.
	lifecycle _ aMaServerRequestLifecycle.
	lifecycle clientConnection: self! !

!MaClientConnection methodsFor: 'serialization' stamp: 'cmm 10/28/2014 13:29'!
maTransientVariables
	^ #('serverSocket' 'lifecycle' 'extractProcess' 'shouldContinue' 'priorLifecycle')! !

!MaClientConnection methodsFor: 'actions' stamp: 'cmm 9/22/2014 15:55'!
monitorForByteArrayRequests
	"A socket connection has just been established.  Kickoff a new iterating process for the purpose of listening for requests bytes from a single client (my lifecycles #socket).  receiveOneByteArrayRequestFrom: waits a few seconds on the port, if data comes in it will extract the entire request and return it.  Otherwise it returns nil and the loop can check for shutdown or expiry."
	extractProcess _ [ [ self shouldContinue and: [ lifecycle socketStream isConnected ] ] whileTrue:
		[ | requestByteArray |
		requestByteArray _ [ self receiveOneByteArrayRequestFrom: lifecycle ]
			on: Error
			do:
				[ : exc | self console
					noteException: exc
					whileReceivingRequestFrom: lifecycle.
				self shouldContinue: false.
				nil ].
		requestByteArray ifNotNil:
			[ | newLifecycle |
			newLifecycle _ lifecycle copyForNewRequest
				 requestByteArray: requestByteArray ;
				 yourself.
			serverSocket queueRequest: newLifecycle ] ].
	lifecycle critical:
		[ lifecycle socket closeAndDestroy: serverSocket timeoutSeconds.
		lifecycle socketStream resetBuffers.
		serverSocket removeConnection: self ] ] newProcess.
	extractProcess
		 name: 'extracting requests from ' , lifecycle remotePort asString ;
		 priority: Processor userInterruptPriority ;
		 resume! !

!MaClientConnection methodsFor: 'actions' stamp: 'cmm 8/22/2013 13:34'!
monitorForUdpByteArrayRequests
	"Kickoff a new iterating process for the purpose of listening for requests bytes from UDP clients.  receiveOneByteArrayRequestFrom: waits a few seconds on the port, if data comes in it will extract the entire request and return it.  Otherwise it returns nil and the loop can check for shutdown or expiry."
	extractProcess _ 
	[ [ self shouldContinue ] whileTrue: 
		[ | requestByteArray |
		requestByteArray _ [ self receiveOneUdpRequestFrom: lifecycle ] 
			on: Error
			do: 
				[ : exc | 
				self console 
					noteException: exc
					whileReceivingRequestFrom: lifecycle.
				self shouldContinue: false.
				nil ].
		requestByteArray ifNotNil: 
			[ | newLifecycle |
			newLifecycle _ lifecycle copyForNewRequest
				requestByteArray: requestByteArray ;
				yourself.
			serverSocket queueRequest: newLifecycle ] ] ] newProcess.
	extractProcess
		name: 'extracting requests from UDP clients' ;
		priority: Processor userInterruptPriority ;
		resume! !

!MaClientConnection methodsFor: 'private' stamp: 'cmm 10/27/2014 16:28'!
priorLifecycle: aMaServerRequestLifecycle
	priorLifecycle _ aMaServerRequestLifecycle! !

!MaClientConnection methodsFor: 'private' stamp: 'cmm 9/8/2015 15:05'!
receiveOneByteArrayRequestFrom: aMaRequestLifecycle 
	"Wait up to 3 seconds for something from the client.  If data is received from aMaRequestLifecycle's socket be sure the entire data is received.  Otherwise answer nil."
	| header bytesExpected incomingSequenceNumber answer firstDataReceived compressed priorTimeout |
	bytesExpected _ nil.
	priorTimeout _ aMaRequestLifecycle socketStream timeout.
	[ aMaRequestLifecycle socketStream timeout: 3.
	header _ aMaRequestLifecycle socketStream next: 8.
	aMaRequestLifecycle socketStream timeout: priorTimeout ]
		on: ConnectionTimedOut
		do: [ : err | ^ nil ].
	firstDataReceived _ Time millisecondClockValue.
	bytesExpected _ header maUnsigned32At: 1.
	compressed _ bytesExpected maIsBitSet: 32.
	bytesExpected _ bytesExpected maBitClear: 32.
	bytesExpected > MaSerializedGraphBuffer unreasonablePhysicalSize ifTrue: [ MaMalformedRequestError signal: 'unreasonable request size' ].
	incomingSequenceNumber _ header maUnsigned32At: 5.
	"To avoid brittleness, let client choose first sequenceNumber"
	aMaRequestLifecycle ifNewAssignSequenceNumber: incomingSequenceNumber-1.
	incomingSequenceNumber < aMaRequestLifecycle incrementSequenceNumber ifTrue:
		[ self
			resend: incomingSequenceNumber
			insteadOf: aMaRequestLifecycle expectedSequenceNumber.
		^ nil ].
	incomingSequenceNumber > aMaRequestLifecycle sequenceNumber ifTrue: [ "Maybe should just allow this?  It probably wouldn't ever happen, but if it did the client is 'satisfied', and maybe because of having sent #wantsResponse=false requests?" (MaClientServerOutOfSequence expected: aMaRequestLifecycle sequenceNumber) signal ].
	answer _ aMaRequestLifecycle socketStream next: bytesExpected - serverSocket headerSize.
	self console noteTimeToExtractRequestBytes: (Time millisecondsSince: firstDataReceived).
	aMaRequestLifecycle socketStream isDataAvailable ifTrue: [ NetworkError signal: 'Unexpected client behavior, more bytes received than client stated sending.' ].
	compressed ifTrue: [ answer _ answer lzUncompressed ].
	^ answer! !

!MaClientConnection methodsFor: 'private' stamp: 'cmm 9/8/2015 15:05'!
receiveOneUdpRequestFrom: aMaRequestLifecycle 
	"Wait up to 3 seconds for something from any UDP client.  If data is received from aMaRequestLifecycle's socket, answer it, otherwise nil."
	| bytesExpected bytesReceived compressed receiveArray answer |
	bytesReceived _ 0.
	bytesExpected _ nil.
	aMaRequestLifecycle socket
		waitForDataFor: 3
		ifClosed: 
			[ ConnectionClosed signal: 'Connection closed while waiting for data.' ]
		ifTimedOut: 
			[ "no data, just fall out"
			 ].
	^ aMaRequestLifecycle socket dataAvailable ifTrue: 
		[ answer _ ByteArray new: MaClientSocket mtuSize.
		receiveArray _ aMaRequestLifecycle socket receiveUDPDataInto: answer.
		bytesReceived _ receiveArray first.
		bytesReceived > serverSocket headerSize ifTrue: 
			[ bytesExpected _ answer maUnsigned32At: 1.
			compressed _ bytesExpected maIsBitSet: 32.
			bytesExpected _ bytesExpected maBitClear: 32.
			bytesExpected > MaClientSocket mtuSize ifTrue: [ ^ nil ].
			self console noteTimeToLoadBuffers: 
				(Time millisecondsToRun: 
					[ answer _ answer 
						copyFrom: serverSocket headerSize + 1
						to: bytesExpected.
					compressed ifTrue: [ answer _ answer lzUncompressed ] ]).
			answer ] ]! !

!MaClientConnection methodsFor: 'private' stamp: 'cmm 10/27/2014 16:03'!
resend: priorSequenceNumber insteadOf: expectedSequenceNumber 
	(priorLifecycle notNil and: [ priorLifecycle sequenceNumber = priorSequenceNumber ])
		ifTrue: [ serverSocket sendResponseFor: priorLifecycle ]
		ifFalse: [ (MaClientServerOutOfSequence expectedSequenceNumber: expectedSequenceNumber) signal ]! !

!MaClientConnection class methodsFor: 'create' stamp: 'cmm 8/22/2013 13:38'!
serverSocket: aMaServerSocket lifecycle: aMaServerRequestLifecycle 
	^ self new
		setServerSocket: aMaServerSocket 
		lifecycle: aMaServerRequestLifecycle ;
		yourself! !

!MaClientServerPreferences methodsFor: 'accessing' stamp: 'cmm 7/5/2008 23:02'!
compressThreshold
	"The maximum number of bytes a request will be before the client decides it should be compressed."
	^compressThreshold! !

!MaClientServerPreferences methodsFor: 'accessing' stamp: 'cmm 7/5/2008 22:48'!
compressThreshold: anInteger
	"The maximum number of bytes a request will be before the client decides it should be compressed."
	compressThreshold _ anInteger! !

!MaClientServerPreferences methodsFor: 'accessing' stamp: 'cmm 7/5/2008 22:48'!
timeoutSeconds
	^timeoutSeconds! !

!MaClientServerPreferences methodsFor: 'accessing' stamp: 'cmm 7/5/2008 22:52'!
timeoutSeconds: anInteger 
	"The number of seconds to wait for responses from network requests before assuming they are lost."
	timeoutSeconds _ anInteger! !

!MaClientServerPreferences methodsFor: 'initialize-release' stamp: 'cmm 9/24/2014 11:03'!
initialize
	super initialize.
	compressThreshold _ MaSerializedGraphBuffer unreasonablePhysicalSize * 2.
	timeoutSeconds _ 45! !

!MaClientServerPreferences class methodsFor: 'accessing' stamp: 'cmm 1/2/2003 14:35'!
debug

	^Debug! !

!MaClientServerPreferences class methodsFor: 'accessing' stamp: 'cmm 1/2/2003 14:53'!
debug: aBoolean

	Debug _ aBoolean! !

!MaClientServerPreferences class methodsFor: 'private' stamp: 'cmm 1/2/2003 14:35'!
initialize

	super initialize.
	Debug _ false! !

!MaClientServerRequest methodsFor: 'accessing' stamp: 'cmm 9/21/2008 15:45'!
clientConnection
	^ self lifecycle ifNotNilDo: [ : lc | lc clientConnection ]! !

!MaClientServerRequest methodsFor: 'accessing' stamp: 'cmm 9/20/2008 17:08'!
lifecycle
	^lifecycle! !

!MaClientServerRequest methodsFor: 'accessing' stamp: 'cmm 9/20/2008 17:08'!
lifecycle: aMaServerRequestLifecycle
	lifecycle _ aMaServerRequestLifecycle! !

!MaClientServerRequest methodsFor: 'accessing' stamp: 'cmm 3/1/2009 12:01'!
requeue
	"Put this request back to the end of the requestQueue."
	self serverSocket primQueueRequest: self lifecycle! !

!MaClientServerRequest methodsFor: 'accessing' stamp: 'cmm 3/1/2009 11:20'!
serverSocket
	^ lifecycle serverSocket! !

!MaClientServerRequest methodsFor: 'testing' stamp: 'cmm 10/28/2008 14:34'!
wantsResponse
	"Answer whether this request expects a response from the server.  If false, submitting this request will be sent over the socket and immediately answer nil.  The server will make the same test to detemine whether to bother sending a response.
	If true, submitting this request will block and wait for a response from the server."
	"Default is true, subclasses may override."
	^ true! !

!MaClientServerRequest class methodsFor: 'auditorialization' stamp: 'cmm 10/12/2015 17:32'!
defaultSound
	^ defaultSound ifNil: [ superclass defaultSound ]! !

!MaClientServerRequest class methodsFor: 'initialize-release' stamp: 'cmm 10/12/2015 14:34'!
initialize
	self initializeDefaultSound! !

!MaClientServerRequest class methodsFor: 'initialize-release' stamp: 'cmm 10/12/2015 17:27'!
initializeDefaultSound
	"I don't have time to come up with unique and meaningful sounds for all these different request types.  So, the default is no sound.  I will define sounds for meaningful requests."
	defaultSound _ nil! !

!MaRemotePerformRequest methodsFor: 'accessing' stamp: 'cmm 5/6/2002 23:28'!
arguments

	^arguments
! !

!MaRemotePerformRequest methodsFor: 'accessing' stamp: 'cmm 5/6/2002 23:28'!
arguments: aSymbol

	arguments _ aSymbol
! !

!MaRemotePerformRequest methodsFor: 'accessing' stamp: 'cmm 4/27/2002 15:07'!
selector

	^selector
! !

!MaRemotePerformRequest methodsFor: 'accessing' stamp: 'cmm 4/27/2002 15:07'!
selector: aSymbol

	selector _ aSymbol
! !

!MaRemotePerformRequest methodsFor: 'private' stamp: 'cmm 1/3/2013 09:32'!
processFor: anObject 
	^ anObject
		perform: selector
		withArguments: arguments! !

!MaClientSocket methodsFor: 'accessing' stamp: 'cmm 7/5/2008 22:51'!
compressThreshold
	"The maximum number of bytes a request will be before the client decides it should be compressed."
	^ preferences compressThreshold ! !

!MaClientSocket methodsFor: 'accessing' stamp: 'cmm 7/5/2008 22:51'!
compressThreshold: anInteger 
	"The maximum number of bytes a request will be before the client decides it should be compressed."
	preferences compressThreshold: anInteger! !

!MaClientSocket methodsFor: 'accessing' stamp: 'cmm 7/5/2008 13:26'!
hostAddress
	^ location hostAddress! !

!MaClientSocket methodsFor: 'accessing' stamp: 'cmm 7/5/2008 15:19'!
location
	^ location! !

!MaClientSocket methodsFor: 'accessing' stamp: 'cmm 11/11/2008 14:37'!
networkProtocol
	^ networkProtocol! !

!MaClientSocket methodsFor: 'accessing' stamp: 'cmm 11/11/2008 14:36'!
networkProtocol: aSymbol
	networkProtocol _ aSymbol! !

!MaClientSocket methodsFor: 'accessing' stamp: 'cmm 9/21/2008 16:16'!
port
	^ location ifNotNil: [ location port ]! !

!MaClientSocket methodsFor: 'accessing' stamp: 'cmm 8/18/2009 22:54'!
preferences
	^ preferences! !

!MaClientSocket methodsFor: 'accessing' stamp: 'cmm 8/18/2009 22:55'!
preferences: aMaClientServerPreferences 
	preferences _ aMaClientServerPreferences! !

!MaClientSocket methodsFor: 'accessing' stamp: 'cmm 7/5/2008 22:42'!
timeoutSeconds
	"The number of seconds to wait for responses from network requests before assuming they are lost."
	^ preferences timeoutSeconds ! !

!MaClientSocket methodsFor: 'accessing' stamp: 'cmm 10/24/2014 13:14'!
timeoutSeconds: anInteger 
	"The number of seconds to wait for responses from network requests before assuming they are lost."
	preferences timeoutSeconds: anInteger.
	socketStream ifNotNil: [ socketStream timeout: anInteger ]! !

!MaClientSocket methodsFor: 'private' stamp: 'cmm 10/28/2014 12:45'!
connect
	| startTryingToConnectSocket |
	Socket initializeNetwork.
	socket 
		ifNotNil: 
			[ MaSoftwareError signal: 'client trying to make multiple connects?' ]
		ifNil: 
			[ self isUdp 
				ifTrue: 
					[ "Do NOT set the port now or it will not work.  It is specified on every send call."
					socket _ Socket newUDP ]
				ifFalse: 
					[ | hostAddr |
					socket _ Socket newTCP.
					startTryingToConnectSocket _ Time millisecondClockValue.
					hostAddr _ self hostAddress ifNil: [ NetworkError signal: 'Could not resolve ' , self location host ].
					socket 
						connectTo: hostAddr
						port: self port
						waitForConnectionFor: self timeoutSeconds.
					socketStream _ (SocketStream on: socket) binary; autoFlush: false; timeout: self timeoutSeconds.
					self resetSequenceNumber.
					stat ensureActive timeToConnectSocketHistory addValue: (Time millisecondsSince: startTryingToConnectSocket) ] ]! !

!MaClientSocket methodsFor: 'private' stamp: 'cmm 9/19/2014 11:38'!
disconnect
	stat release.
	socket ifNotNil: 
		[ socket closeAndDestroy: 5.
		socket _ socketStream _ nil ]! !

!MaClientSocket methodsFor: 'private' stamp: 'cmm 6/2/2008 15:53'!
ensureConnected
	"Ensure the primitive Socket is connected."
	socket 
		ifNil: [ self connect ]
		ifNotNil: 
			[ socket isConnected ifFalse: 
				[ self
					disconnect ;
					connect ] ]! !

!MaClientSocket methodsFor: 'private' stamp: 'cmm 10/27/2014 15:43'!
headerSize
	"First 4 bytes:  size of entire message (including header).
	Bytes 5-8:  sequenceNumber of this request or response."
	^ self isUdp ifTrue: [4] ifFalse: [8]! !

!MaClientSocket methodsFor: 'private' stamp: 'cmm 7/5/2008 15:39'!
hostAndPortString
	^ String streamContents: [ : stream | location maPrintAbbreviatedOn: stream ]! !

!MaClientSocket methodsFor: 'private' stamp: 'cmm 9/8/2015 15:06'!
receiveInto: aByteArray 
	"First, we receive into *my* byteArray, then I paste it into aByteArray."
	| header bodySize bytesExpected answer startedWaitingForResponse compressed incomingSequenceNumber |
	startedWaitingForResponse _ Time millisecondClockValue.
	[ header _ socketStream next: self headerSize.
	bytesExpected _ header maUnsigned32At: 1.
	compressed _ bytesExpected maIsBitSet: 32.
	compressed ifTrue: [ bytesExpected _ bytesExpected maBitClear: 32 ].
	incomingSequenceNumber _ header maUnsigned32At: 5.
	answer _ (bodySize _ bytesExpected - self headerSize) > aByteArray size
		ifTrue: [ ByteArray new: bodySize ]
		ifFalse: [ aByteArray ].
	socketStream
		next: bodySize
		into: answer.
	incomingSequenceNumber > sequenceNumber ifTrue: [ (MaClientServerOutOfSequence expected: sequenceNumber) signal ].
	incomingSequenceNumber < sequenceNumber ] whileTrue.
	stat timeReceivingResponsesHistory addValue: (Time millisecondsSince: startedWaitingForResponse).
	^ compressed
		ifTrue: [ answer lzUncompressed ]
		ifFalse: [ answer ]! !

!MaClientSocket methodsFor: 'private' stamp: 'cmm 10/28/2014 12:45'!
resetSequenceNumber
	sequenceNumber _ 0! !

!MaClientSocket methodsFor: 'private' stamp: 'cmm 10/28/2014 13:25'!
sequenceNumber: sequenceNumber totalToSend: totalToSend compressed: compressed 
	| header |
	header _ ByteArray new: self headerSize.
	header
		maUint: 32
		at: 0
		put:
			(self
				setCompressedBit: compressed
				for: totalToSend).
	self isUdp ifFalse:
		[ header
			maUint: 32
			at: 4
			put: sequenceNumber ].
	^ header! !

!MaClientSocket methodsFor: 'private' stamp: 'cmm 6/29/2008 11:01'!
setCompressedBit: aBoolean for: headerInteger 
	^ aBoolean 
		ifTrue: 
			[ "Below is the correct implementation, but we would need a 2GB ByteArray for the simpler faster implementation below not to work.  2GB can't happen."
			"ba maUint: 32 at: 0 put: ((ba maUint: 32 at: 0) maBitSet: 32)."
			headerInteger maBitSet: 32 ]
		ifFalse: [ headerInteger maBitClear: 32 ]! !

!MaClientSocket methodsFor: 'private' stamp: 'cmm 5/6/2008 23:17'!
stat
	^stat! !

!MaClientSocket methodsFor: 'private' stamp: 'cmm 5/6/2008 23:18'!
stat: aMaClientStat
	stat _ aMaClientStat! !

!MaClientSocket methodsFor: 'initializing' stamp: 'cmm 10/28/2014 12:45'!
initialize
	super initialize.
	stat _ MaClientStat new.
	preferences _ MaClientServerPreferences new.
	self resetSequenceNumber! !

!MaClientSocket methodsFor: 'initializing' stamp: 'cmm 7/5/2008 14:21'!
location: aMaServerLocation
	location _ aMaServerLocation! !

!MaClientSocket methodsFor: 'testing' stamp: 'cmm 9/21/2008 17:53'!
isConnected
	^ socket notNil and: [ socket isConnected ]! !

!MaClientSocket methodsFor: 'testing' stamp: 'cmm 11/11/2008 14:46'!
isUdp
	"Answer true if using a UDP interface, false if TCP/IP."
	^ networkProtocol == #udp! !

!MaClientSocket methodsFor: 'printing' stamp: 'cmm 11/19/2008 14:33'!
maPrintAbbreviatedOn: aStream 
	super maPrintAbbreviatedOn: aStream.
	location maPrintAbbreviatedOn: aStream! !

!MaClientSocket methodsFor: 'send' stamp: 'cmm 9/19/2014 15:38'!
sendData: requestByteArray 
	^ self 
		sendData: requestByteArray
		startingAt: 1
		count: requestByteArray size
		waitForReplyIn: (self isUdp ifFalse: [ #[] ])! !

!MaClientSocket methodsFor: 'send' stamp: 'cmm 10/28/2014 09:59'!
sendData: requestByteArray startingAt: startIndex count: numberOfBytes waitForReplyIn: answerByteArray 
	"Perform a synchronous TCP call, sending count bytes of requestByteArray from position startIndex to my peer socket and then wait up to my timeout period for a reply, which I'll put in answerByteArray.  If I run out of room in answerByteArray, I'll create you a new one and return it, otherwise you'll get your own answerByteArray back.  If communications are disrupted, I'll signal a NetworkError."
	"Do a retry logic to help with the case where the server has dropped only momentarily.  Sockets will be invalid but, unfortunately, they don't always correctly report they are invalid, as if they don't 'realize' it yet."
	| tries |
	sequenceNumber_sequenceNumber+1.
	tries _ 0.
	[ | startedSending header toSend compressed totalToSend |
	(numberOfBytes > MaClientSocket mtuSize and: [ self isUdp ]) ifTrue: [ MaClientServerUserError signal: '#udp transmissions should be less than ' , MaClientSocket mtuSize-self headerSize , ' bytes' ].
	startedSending _ Time millisecondClockValue.
	self ensureConnected.
	totalToSend _ numberOfBytes + self headerSize.
	toSend _ requestByteArray size > self compressThreshold
		ifTrue:
			[ compressed _ (requestByteArray
				copyFrom: startIndex
				to: startIndex + numberOfBytes - 1) lzCompressed.
			compressed size < numberOfBytes
				ifTrue: [ compressed ]
				ifFalse:
					[ compressed _ nil.
					requestByteArray ] ]
		ifFalse: [ requestByteArray ].
	header _ self sequenceNumber: sequenceNumber totalToSend: totalToSend compressed: compressed notNil.
	self isUdp
		ifTrue:
			[ socket
				sendUDPData:
					(compressed
						ifNil:
							[ header, (toSend
								copyFrom: startIndex
								to: startIndex + numberOfBytes - 1) ]
						ifNotNil: [ header, toSend ])
				toHost: self hostAddress
				port: self port ]
		ifFalse:
			[ socketStream nextPutAll: header.
			compressed
				ifNil:
					[ socketStream
						next: numberOfBytes
						putAll: toSend
						startingAt: startIndex ]
				ifNotNil: [ socketStream nextPutAll: toSend ].
			socketStream flush.
			socket waitForSendDoneFor: self timeoutSeconds ].
	"Only include successful sends to measure real network performance, not timeouts perhaps due to user-error."
	stat timeToSendRequestsHistory addValue: (Time millisecondsSince: startedSending) ]
		on: Error
		do:
			[ : sendErr | self disconnect.
			"Handle a specific bug in Squeak, arrggghh!!"
			(sendErr messageText = 'a primitive has failed' or: [ sendErr isKindOf: NetworkError ])
				ifTrue:
					[ tries < 3
						ifTrue:
							[ tries _ tries + 1.
							sendErr retry ]
						ifFalse: [ sendErr pass ] ]
				ifFalse: [ sendErr pass ] ].
	"Retry logic is not appropriate on the receive side."
	^ answerByteArray ifNotNil:
		[ self isUdp ifFalse: [ self receiveInto: answerByteArray ] ]! !

!MaClientSocket class methodsFor: 'creation' stamp: 'cmm 7/5/2008 14:21'!
location: aMaServerLocation 
	Socket initializeNetwork.
	^ self new
		location: aMaServerLocation ;
		yourself! !

!MaClientSocket class methodsFor: 'private' stamp: 'cmm 11/9/2008 20:03'!
mtuSize
	^ 1500! !

!MaNetworkOrchestra methodsFor: 'core-management' stamp: 'cmm 2/25/2013 17:33'!
addCores: anInteger
	"Increase the number of cores used to process by anInteger.  Will result in the immediate launching of new players."
	guard critical: [self maxCores: cores size+anInteger ]! !

!MaNetworkOrchestra methodsFor: 'core-management' stamp: 'cmm 1/8/2013 20:24'!
cores
	"My execution slots -- simply an Array with each element containing the MaNetworkPlayer running in that slot.  If not enough players are remaining to fill all slots, some slots will be nil."
	^ cores! !

!MaNetworkOrchestra methodsFor: 'core-management' stamp: 'cmm 7/18/2013 15:59'!
maxCores: anInteger 
	"Limit the number of simultaneously launched images to anInteger.  An unlimited number of players may be added to the orchestra, but only the specified number will be running at a time.  Remaining players are launched as the initial ones exit.
	This parameter can be changed even after the Orchestra is already running."
	guard critical:
		[ cores _ cores
			ifNil: [ Array new: anInteger ]
			ifNotNil:
				[ anInteger > cores size
					ifTrue: [ cores , (Array new: anInteger - cores size) ]
					ifFalse:
						[ anInteger < cores size
							ifTrue:
								[ cores
									copyFrom: 1
									to: anInteger ]
							ifFalse: [ cores ] ] ] ]! !

!MaNetworkOrchestra methodsFor: 'core-management' stamp: 'cmm 2/25/2013 17:34'!
removeCores: anInteger
	"Decrease the number of cores used to process by anInteger.  Already-running players are unaffected, when they finish new players will not launch until cores area available."
	guard critical: [self maxCores: cores size-anInteger ]! !

!MaNetworkOrchestra methodsFor: 'player setup' stamp: 'cmm 9/17/2013 14:18'!
addPlayer: aMaNetworkPlayer 
	players add: aMaNetworkPlayer.
	aMaNetworkPlayer setOrchestra: self.
	^ aMaNetworkPlayer! !

!MaNetworkOrchestra methodsFor: 'player setup' stamp: 'cmm 9/17/2013 15:38'!
playerNamed: aString do: aBlock
	^ self addPlayer: ((MaNetworkPlayer name: aString) doBlock: aBlock)! !

!MaNetworkOrchestra methodsFor: 'player setup' stamp: 'cmm 9/18/2013 15:04'!
playerNamed: aString do: aBlock andQuit: shouldQuit 
	self
		playerNamed: aString
		do: aBlock
		snapshot: false
		andQuit: true! !

!MaNetworkOrchestra methodsFor: 'player setup' stamp: 'cmm 9/17/2013 15:39'!
playerNamed: aString do: aBlock snapshot: shouldSave andQuit: shouldQuit 
	self
		playerNamed: aString
		do:
			[ aBlock value.
			Smalltalk
				snapshot: shouldSave
				andQuit: shouldQuit ]! !

!MaNetworkOrchestra methodsFor: 'player setup' stamp: 'cmm 9/18/2013 15:05'!
playerNamed: aString doAndQuit: aBlock
	self
		playerNamed: aString
		do: aBlock
		andQuit: true! !

!MaNetworkOrchestra methodsFor: 'private' stamp: 'cmm 4/4/2014 10:47'!
allCoresFinished
	^ guard critical: [ cores allSatisfy: [ : each | each isNil ] ]! !

!MaNetworkOrchestra methodsFor: 'private' stamp: 'cmm 1/1/2013 15:30'!
conductorImageEntry
	^ FileDirectory default
		entryAt: self conductorImageName
		ifAbsent: [  ]! !

!MaNetworkOrchestra methodsFor: 'private' stamp: 'cmm 9/12/2013 20:12'!
imageTimestamp
	"The DateAndTime of the last save of this image.  Used to determine whether new images need to be created."
	^ imageTimestamp! !

!MaNetworkOrchestra methodsFor: 'private' stamp: 'cmm 4/4/2014 10:44'!
recoverFinishedCores
	guard critical:
		[ cores withIndexDo:
			[ : each : x | each ifNotNil:
				[ (each isVariableBinding not and: [ each isReady not ]) ifTrue:
					[ each disconnect.
					cores
						at: x
						put: nil ] ] ] ]! !

!MaNetworkOrchestra methodsFor: 'private' stamp: 'cmm 4/4/2014 10:45'!
waitForAvailableCore
	| availableCore |
	[ availableCore _ guard critical: [ cores indexOf: nil ].
	availableCore = 0 ] whileTrue:
		[ (Delay forSeconds: 2) wait.  "Balance between cost of making connections and wait-time to launch next batch of available cores."
		self recoverFinishedCores ].
	^ availableCore! !

!MaNetworkOrchestra methodsFor: 'images' stamp: 'cmm 1/6/2013 16:59'!
conductorImageName
	^ self name , '-conductor.image'! !

!MaNetworkOrchestra methodsFor: 'images' stamp: 'cmm 12/31/2012 18:48'!
deleteImages
	players do:
		[ : each | each deleteImage ]! !

!MaNetworkOrchestra methodsFor: 'images' stamp: 'cmm 1/2/2013 15:04'!
isConductorImage
	| entry |
	entry _ self conductorImageEntry.
	^ entry notNil and: [ Smalltalk imageEntry = entry ]! !

!MaNetworkOrchestra methodsFor: 'images' stamp: 'cmm 10/29/2013 15:01'!
onePlayerImage
	"Whether a separate image and changes file should be copied for each player instance.  Might be useful if images are wish to save image state before they exit, so that state will be present next time."
	^ onePlayerImage! !

!MaNetworkOrchestra methodsFor: 'images' stamp: 'cmm 10/29/2013 14:47'!
onePlayerImage: aBoolean
	"Whether a separate image and changes file should be copied for each player instance.  Might be useful if images are wish to save image state before they exit, so that state will be present next time."
	onePlayerImage _ aBoolean! !

!MaNetworkOrchestra methodsFor: 'images' stamp: 'cmm 4/14/2014 22:14'!
prepareImageSelector
	"The selector on my class which should be used to create the image.  It should be one of:
		#createImage -- Create the image from the launching image, replacing any old images for prior players (with the same filename).  This is necessary to pass different arguments to player images each time, like the mode argument to MagmaDataRepair (#check, #count, #identify, #repair, etc.).
		#ensureImage -- Create the image only if it doesn't already exist.
		#ensureUpToDateImage -- Create the image if it doesn't exist or if it is older than this image."
	^ prepareImageSelector! !

!MaNetworkOrchestra methodsFor: 'images' stamp: 'cmm 4/14/2014 22:15'!
prepareImageSelector: selectorSymbol
	prepareImageSelector _ selectorSymbol! !

!MaNetworkOrchestra methodsFor: 'accessing' stamp: 'cmm 10/28/2013 10:56'!
firstPort 
	"The starting port number my players will use to listen for requests from the conductor."
	^ firstPort! !

!MaNetworkOrchestra methodsFor: 'accessing' stamp: 'cmm 10/28/2013 10:57'!
firstPort: anInteger 
	"Set the starting port number my players will use to listen for requests from the conductor."
	firstPort _ anInteger! !

!MaNetworkOrchestra methodsFor: 'accessing' stamp: 'cmm 1/1/2013 11:20'!
name: aString 
	"The name of this orchestra which is used to prefix the image names of the individual players."
	name _ aString! !

!MaNetworkOrchestra methodsFor: 'accessing' stamp: 'cmm 9/23/2013 21:31'!
protocol
	"An array of the classes of objects that will be passed between conductor and players."
	^ protocol ifNil: [ { MaRemotePerformRequest } ]! !

!MaNetworkOrchestra methodsFor: 'accessing' stamp: 'cmm 9/17/2013 15:10'!
protocol: anArray 
	"An array of the classes of objects that will be passed between conductor and players."
	protocol _ anArray! !

!MaNetworkOrchestra methodsFor: 'accessing' stamp: 'cmm 1/9/2013 15:16'!
startBlock
	"The block of code to run immediately upon launch, after becoming the conductor but before launching any players."
	^ startBlock! !

!MaNetworkOrchestra methodsFor: 'accessing' stamp: 'cmm 1/9/2013 15:16'!
startBlock: aBlock 
	"The block of code to run immediately upon launch, after becoming the conductor but before launching any players."
	startBlock _ aBlock! !

!MaNetworkOrchestra methodsFor: 'accessing' stamp: 'cmm 3/15/2015 13:16'!
timeoutSeconds
	^ timeoutSeconds ifNil: [ 600 ]! !

!MaNetworkOrchestra methodsFor: 'accessing' stamp: 'cmm 9/17/2013 16:29'!
timeoutSeconds: anInteger 
	timeoutSeconds _ anInteger! !

!MaNetworkOrchestra methodsFor: 'player access' stamp: 'cmm 12/31/2012 21:35'!
homePlayer
	"Answer the player which is meant to run in this image memory."
	^ players
		detect: [ : each | each isHome ]
		ifNone: [ nil ]! !

!MaNetworkOrchestra methodsFor: 'player access' stamp: 'cmm 1/1/2013 13:59'!
playerNamed: aString 
	^ players
		detect: [ : each | each name = aString ]
		ifNone: [ nil ]! !

!MaNetworkOrchestra methodsFor: 'player access' stamp: 'cmm 1/3/2013 10:06'!
players
	^ players! !

!MaNetworkOrchestra methodsFor: 'player access' stamp: 'cmm 1/6/2013 19:42'!
removePlayer: aMaNetworkPlayer 
	players
		 remove: aMaNetworkPlayer ;
		 changed! !

!MaNetworkOrchestra methodsFor: 'initialize-release' stamp: 'cmm 3/15/2015 15:12'!
initialize
	super initialize.
	players _ OrderedCollection new.
	firstPort _ 44441.
	guard _ Mutex new.
	prepareImageSelector _ #createImage.
	onePlayerImage _ true.
	self maxCores: 4! !

!MaNetworkOrchestra methodsFor: 'start / stop' stamp: 'cmm 1/5/2016 16:53'!
launch
	"Players treat first command-line args as a port number, not a script."
	players ifEmpty: [ MaClientServerUserError signal: 'No players.  Launching is useless.' ].
	"Allow multiple parameters, don't assume a .st file input."
	Preferences readDocumentAtStartup: false.
	MCFileBasedRepository flushAllCaches.
	Smalltalk saveAs: self conductorImageName.
	imageTimestamp _ Smalltalk imageEntry modificationTime.
	"v------ Players continue here -----v"
	self isConductorImage ifTrue:
		[ startBlock value.
		"fork it to allow UI control so that the conductor image itself can be a user-console which can interactively display status of currently running players even though not all players have yet been launched."
		onePlayerImage ifTrue: [ players anyOne prepareImage ].
		launchProcess _ [ players withIndexDo:
			[ : each : index | | availableCore |
			availableCore _ self waitForAvailableCore.
			guard critical:
				[ cores
					at: availableCore
					put: #notReady -> each ].
			each initializeLink: firstPort + availableCore - 1.
			onePlayerImage ifFalse: [ each prepareImage ].
			[ each
				 launch ;
				 waitForReady.
			guard critical:
				[ cores
					at: each port - firstPort + 1
					put: each ] ] newProcess name: 'launching ', each name; resume ] ] newProcess
			 name: name , ' conductor' ;
			 resume ].
	"Players, start your servers and go!!"
	self homePlayer ifNotNil:
		[ : hp | hp go ]! !

!MaNetworkOrchestra methodsFor: 'start / stop' stamp: 'cmm 11/5/2013 16:38'!
shutDownPlayers
	 players do:
		[ : each | [ each
			remotePerform: #snapshot:andQuit:
			withArguments: {false. true}.
		each disconnect ]
			on: NetworkError
			do: [ : err | "ignore it" ] ]! !

!MaNetworkOrchestra methodsFor: 'status' stamp: 'cmm 4/4/2014 10:49'!
waitForAllPlayersReady
	"Block until all players report ready."
	| numberReady maxThatCanBeReady |
	maxThatCanBeReady _ guard critical: [ cores size min: players size ].
	[ (Delay forSeconds: 5) wait.
	numberReady _ guard critical:
		[ cores count:
			[ : each | each notNil and:
				[ each isVariableBinding not and: [ each value isReady ] ] ] ].
	numberReady >= maxThatCanBeReady ] whileFalse! !

!MaNetworkOrchestra methodsFor: 'status' stamp: 'cmm 4/4/2014 10:48'!
waitForAllPlayersUnready
	"Block until no players report ready."
	[ self
		 recoverFinishedCores ;
		 allCoresFinished ] whileFalse: [ (Delay forSeconds: 2) wait ]! !

!MaNetworkOrchestra methodsFor: 'status' stamp: 'cmm 4/4/2014 10:39'!
waitForAnyPlayerReady
	"Block until any player reports ready."
	[ guard critical:
		[ cores anySatisfy:
			[ : each | each notNil and:
				[ each isVariableBinding not and: [ each isReady ] ] ] ] ] whileFalse: [ (Delay forSeconds: 2) wait ]! !

!MaNetworkOrchestra methodsFor: 'status' stamp: 'cmm 4/4/2014 10:31'!
waitForTaskComplete
	"First, we can simply wait for the launchProcess to terminate."
	[ launchProcess notNil and: [ launchProcess isTerminated not ] ] whileTrue: [ (Delay forSeconds: 1) wait ].
	"Now wait for remaining players to finish up."
	self waitForAllPlayersUnready! !

!MaNetworkOrchestra class methodsFor: 'instance creation' stamp: 'cmm 7/14/2013 19:04'!
name: aString 
	^ self new
		 name: aString ;
		 yourself! !

!MaNetworkOrchestra class methodsFor: 'linux-scripts' stamp: 'cmm 7/24/2015 15:21'!
orchestraTest
	^ 'spur mt-spur orchestraTest.st $1 $2' ->
		[ Smalltalk runAndQuit:
			[ : numberOfTasks : numberOfCores | MaNetworkOrchestra
				orchestraTest: numberOfTasks asInteger
				cores: numberOfCores asInteger ] ]! !

!MaNetworkOrchestra class methodsFor: 'test' stamp: 'cmm 7/24/2015 15:53'!
orchestraTest: numberOfTasks cores: numberOfCores 
	| orch |
	orch _ (MaNetworkOrchestra name: 'orcchestraTest')
		 maxCores: numberOfCores asInteger ;
		 yourself.
	1
		to: numberOfTasks
		do:
			[ : n | orch
				playerNamed: 'player', n asString
				do: [ Smalltalk runAndQuit: [ (Delay forSeconds: (1 to: 10) atRandom) wait ] ] ].
	orch launch.
	orch isConductorImage ifTrue: [ orch waitForTaskComplete ]! !

!MaNetworkPlayer methodsFor: 'private' stamp: 'cmm 10/29/2013 14:54'!
baseName
	^ orchestra name , '-' ,
		(orchestra onePlayerImage
			ifTrue: [ 'player' ]
			ifFalse: [ name ])! !

!MaNetworkPlayer methodsFor: 'private' stamp: 'cmm 12/31/2012 18:56'!
changesEntry
	^ FileDirectory entryAt: self changesName! !

!MaNetworkPlayer methodsFor: 'private' stamp: 'cmm 1/7/2013 17:58'!
changesName
	^ self baseName, '.changes'! !

!MaNetworkPlayer methodsFor: 'private' stamp: 'cmm 1/2/2013 15:07'!
createImage
	self deleteImage.
	MaNotification signal: 'copying ' , (FileDirectory default localNameFor: Smalltalk imageName) , ' to ' , self imageName.
	FileDirectory default
		
		putFile: Smalltalk imageEntry readStream
		named: self imageName ;
		
		putFile: Smalltalk changesEntry readStream
		named: self changesName! !

!MaNetworkPlayer methodsFor: 'private' stamp: 'cmm 4/24/2014 19:31'!
deleteImage
	MaNotification signal: 'deleting ' , self imageName.
	FileDirectory default
		 deleteFileNamed: self imageName ;
		 deleteFileNamed: self changesName! !

!MaNetworkPlayer methodsFor: 'private' stamp: 'cmm 10/29/2013 15:26'!
ensureImage
	self imageEntry ifNil: [ self createImage ]! !

!MaNetworkPlayer methodsFor: 'private' stamp: 'cmm 10/29/2013 15:25'!
ensureUpToDateImage
	| imageEntry |
	imageEntry _ self imageEntry.
	(imageEntry isNil or: [ orchestra imageTimestamp > imageEntry modificationTime ]) ifTrue: [ self createImage ]! !

!MaNetworkPlayer methodsFor: 'private' stamp: 'cmm 1/1/2013 15:36'!
imageEntry
	^ FileDirectory default
		entryAt: self imageName
		ifAbsent: [ nil ]! !

!MaNetworkPlayer methodsFor: 'private' stamp: 'cmm 1/7/2013 17:58'!
imageName
	^ self baseName, '.image'! !

!MaNetworkPlayer methodsFor: 'private' stamp: 'cmm 10/31/2013 17:57'!
isHome
	"Answer whether this player is the one that runs in this image."
	^ name = (Smalltalk argumentAt: 2)! !

!MaNetworkPlayer methodsFor: 'private' stamp: 'cmm 10/29/2013 15:00'!
prepareImage
	self perform: orchestra prepareImageSelector! !

!MaNetworkPlayer methodsFor: 'private' stamp: 'cmm 3/15/2015 13:00'!
server
	^ server ifNil:
		[ "Set a high timeout to try to avoid the 'port already in use' error.  The socket-accept is at a higher priority.  It will wait up to that long to establish a connection but if the image has already exited, it will fail fast even with this long timeout."
		server _ (MaNetworkRequestServer protocol: orchestra protocol)
			 timeoutSeconds: 600 ;
			 yourself ]! !

!MaNetworkPlayer methodsFor: 'server side' stamp: 'cmm 12/23/2014 22:04'!
conductorKnowsImReady
	">=2 one for the 'connect' request plus one for the 'ping' request.  See #isReady."
	^ self server console statistics timeToSendResponsesHistory summary count >= 2! !

!MaNetworkPlayer methodsFor: 'server side' stamp: 'cmm 7/14/2013 20:45'!
ensureServerStarted
	self server isRunning ifFalse: [ self server processOn: self port ]! !

!MaNetworkPlayer methodsFor: 'server side' stamp: 'cmm 4/3/2014 17:22'!
go
	| started ready |
	self ensureServerStarted.
	started _ Time millisecondClockValue.
	[ (ready _ self conductorKnowsImReady) or: [ (Time millisecondsSince: started) > 30000 ] ] whileFalse: [ (Delay forMilliseconds: 100) wait ].
	ready
		ifTrue: [ doBlock value ]
		ifFalse: [ MaEnvironmentError signal: 'Conductor never connected.' ]! !

!MaNetworkPlayer methodsFor: 'server side' stamp: 'cmm 2/6/2009 14:02'!
isRunning
	^ server notNil and: [ server isRunning ]! !

!MaNetworkPlayer methodsFor: 'server side' stamp: 'cmm 1/2/2013 21:36'!
stop
	server shutdown! !

!MaNetworkPlayer methodsFor: 'client side' stamp: 'cmm 1/17/2009 16:08'!
disconnect
	link disconnect! !

!MaNetworkPlayer methodsFor: 'client side' stamp: 'cmm 9/15/2013 17:05'!
isReady
	"Client-side message -- answer whether the remote player is ready to receive requests."
	^ link ping! !

!MaNetworkPlayer methodsFor: 'client side' stamp: 'cmm 9/1/2015 16:46'!
launch
	"Launch players minimized.  Use the fully-qualified path to the vm, specify memory and iconic, then the image name with two args:  the port and the name of this Player in single-quotes.  Finally, append output to .log and .err files."
	| displayType | displayType _ Smalltalk isHeadless ifTrue: [ 'none' ] ifFalse: [ 'X11 -iconic' ].
	OSProcess command: Smalltalk vmFileName, ' -vm display=', displayType, ' ' , self imageName, ' ', self port asString, ' ''', name , ''' > ' , name , '.log 2>' , name , '.err &'! !

!MaNetworkPlayer methodsFor: 'client side' stamp: 'cmm 9/18/2013 20:37'!
remotePerform: selectorSymbol 
	"Perform selectorSymbol on my server's processor in my player image."
	^ self
		remotePerform: selectorSymbol
		withArguments: Array empty! !

!MaNetworkPlayer methodsFor: 'client side' stamp: 'cmm 1/3/2013 12:45'!
remotePerform: selectorSymbol with: argument 
	^ self
		remotePerform: selectorSymbol
		withArguments: {argument}! !

!MaNetworkPlayer methodsFor: 'client side' stamp: 'cmm 9/18/2013 20:39'!
remotePerform: selectorSymbol withArguments: anArray
	"Perform selectorSymbol on my server's processor in my player image.  The classes of all arguments must be part of the protocol."
	^ self submit:
		(MaRemotePerformRequest new
			 selector: selectorSymbol ;
			 arguments: anArray)! !

!MaNetworkPlayer methodsFor: 'client side' stamp: 'cmm 1/2/2003 14:46'!
submit: aMaNetworkTestPlayerRequest

	| result |
	result _ link submit: aMaNetworkTestPlayerRequest.
	result maIsException 
		ifTrue: [ result class signal: result messageText ]
		ifFalse: [ ^result ]! !

!MaNetworkPlayer methodsFor: 'client side' stamp: 'cmm 9/15/2013 16:42'!
waitForReady
	"After sending #launch, it takes a couple of seconds for the image to launch and the server to start.  Wait here until it's ready."
	[ self isReady ] whileFalse:
		[ MaClientServerNotification signal: 'Waiting for ' , self name , ' player to start.'.
		(Delay forSeconds: 1) wait ]! !

!MaNetworkPlayer methodsFor: 'setup' stamp: 'cmm 9/10/2013 20:48'!
doBlock: aBlock 
	doBlock _ aBlock! !

!MaNetworkPlayer methodsFor: 'setup' stamp: 'cmm 11/5/2013 16:26'!
name: aString
	"Do not allow single-quotes in the name because it must be used as a command-line argument."
	name _ aString copyWithout: $'! !

!MaNetworkPlayer methodsFor: 'setup' stamp: 'cmm 10/16/2002 17:04'!
timeoutSeconds: anInteger

	link timeoutSeconds: anInteger! !

!MaNetworkPlayer methodsFor: 'initialize-release' stamp: 'cmm 10/29/2013 15:36'!
initializeLink: port
	link _ (MaNetworkServerLink port: port)
		protocol: orchestra protocol ;
		timeoutSeconds: orchestra timeoutSeconds ;
		yourself.
	link ping ifTrue: [ MaClientServerEnvironmentError signal: port asString, ' appears to already be in use.' ]! !

!MaNetworkPlayer methodsFor: 'initialize-release' stamp: 'cmm 2/6/2009 15:50'!
server: aMaNetworkRequestServer 
	server _ aMaNetworkRequestServer! !

!MaNetworkPlayer methodsFor: 'initialize-release' stamp: 'cmm 9/17/2013 15:50'!
setOrchestra: aMaNetworkOrchestra 
	orchestra _ aMaNetworkOrchestra! !

!MaNetworkPlayer methodsFor: 'printing' stamp: 'cmm 4/2/2013 13:29'!
maPrintAbbreviatedOn: aStream 
	self
		maPrintAttributes: #(#name )
		on: aStream! !

!MaNetworkPlayer methodsFor: 'access' stamp: 'cmm 1/1/2013 11:19'!
orchestra
	^ orchestra! !

!MaNetworkPlayer methodsFor: 'access' stamp: 'cmm 10/12/2013 18:24'!
port
	"The TCP/IP port through which my conductor communicates with me."
	^ link
		ifNil: [ (Smalltalk argumentAt: 1) asInteger ]
		ifNotNil: [ link port ]! !

!MaNetworkPlayer methodsFor: 'access' stamp: 'cmm 1/3/2013 12:31'!
timeoutSeconds
	^ link timeoutSeconds! !

!MaNetworkPlayer class methodsFor: 'instance creation' stamp: 'cmm 7/14/2013 18:57'!
name: aString 
	^ self new
		 name: aString ;
		 yourself! !

!MaServer methodsFor: 'console' stamp: 'cmm 8/22/2013 13:02'!
console
	^ console! !

!MaServer methodsFor: 'initialize-release' stamp: 'cmm 10/7/2002 23:45'!
console: aMaServerConsole

	console _ aMaServerConsole! !

!MaServer methodsFor: 'initialize-release' stamp: 'cmm 10/8/2002 23:05'!
initialize

	super initialize.
	console _ MaServerConsole new! !

!MaServer class methodsFor: 'system-initialization' stamp: 'jpb 5/7/2021 11:16:46'!
initialize
	"Transcript cr; show: 'Declaring SigTermHandler'.
	Smalltalk
		addToStartUpList: self ;
		at: #SigTermHandler ifAbsentPut: [ nil ] ;
		restartSigTermHandler"! !

!MaServer class methodsFor: 'system-initialization' stamp: 'cmm 4/27/2015 12:29'!
unload
	Smalltalk removeFromStartUpList: self! !

!MaRequestServer methodsFor: 'private' stamp: 'cmm 5/1/2008 20:55'!
connectionRequest

	^'connect'! !

!MaRequestServer methodsFor: 'private' stamp: 'cmm 9/15/2013 15:27'!
processRequest: aMaClientServerRequest 
	"Here's your request object, do something with it and answer any object, though for remote connections only, every class throughout the entire request and responses graph must be part of your #protocol."
	| answer |
	console noteAboutToProcessRequest: aMaClientServerRequest.
	answer _ [ aMaClientServerRequest
		caseOf:
			{ [ self connectionRequest ] -> [ self connectionInfo ].
			[ 'ping' ] -> [ 'pong' ]}
		otherwise: [ processor value: aMaClientServerRequest ] ]
		on: MaNotification
		do:
			[ : noti | console note: noti messageText.
			noti resume ].
	console noteRequestProcessed: aMaClientServerRequest.
	^ answer! !

!MaRequestServer methodsFor: 'private' stamp: 'cmm 9/19/2004 22:10'!
processor: oneArgBlock
	"oneArgBlock takes the request object, answers the response object you want to send back to the client.  For remote, these can only be objects defined in the protocol."

	processor _ oneArgBlock! !

!MaRequestServer methodsFor: 'initializing' stamp: 'cmm 1/5/2003 23:12'!
initialize

	super initialize.
	console _ MaRequestServerConsole new! !

!MaRequestServer methodsFor: 'testing' stamp: 'cmm 2/20/2005 17:18'!
isRunning

	self subclassResponsibility! !

!MaRequestServer methodsFor: 'accessing' stamp: 'cmm 12/8/2004 13:34'!
processor
	^ processor! !

!MaRequestServer methodsFor: 'accessing' stamp: 'cmm 11/21/2008 18:28'!
shutdown
	console noteServerShutdown! !

!MaLocalRequestServer methodsFor: 'as yet unclassified' stamp: 'cmm 5/2/2005 22:25'!
isRunning

	^ true! !

!MaLocalRequestServer class methodsFor: 'creation' stamp: 'cmm 9/19/2004 22:38'!
processor: oneArgBlockOrProcessor

	^ self new 
		processor: oneArgBlockOrProcessor ;
		yourself! !

!MaNetworkRequestServer methodsFor: 'accessing' stamp: 'cmm 7/15/2008 22:08'!
compressThreshold
	^ socket compressThreshold! !

!MaNetworkRequestServer methodsFor: 'accessing' stamp: 'cmm 7/15/2008 22:07'!
compressThreshold: anInteger
	socket compressThreshold: anInteger! !

!MaNetworkRequestServer methodsFor: 'accessing' stamp: 'cmm 11/11/2008 14:13'!
networkProtocol
	"Answer #tcp for TCP/IP interfaces, #udp for UDP."
	^ socket networkProtocol! !

!MaNetworkRequestServer methodsFor: 'accessing' stamp: 'cmm 11/11/2008 16:27'!
networkProtocol: aSymbol 
	"Specify #tcp or #udp."
	^ socket networkProtocol: aSymbol! !

!MaNetworkRequestServer methodsFor: 'accessing' stamp: 'cmm 9/20/2008 16:08'!
port
	^ socket port! !

!MaNetworkRequestServer methodsFor: 'accessing' stamp: 'cmm 10/8/2002 22:23'!
timeoutSeconds

	^socket timeoutSeconds! !

!MaNetworkRequestServer methodsFor: 'accessing' stamp: 'cmm 10/8/2002 22:23'!
timeoutSeconds: anInteger

	socket timeoutSeconds: anInteger! !

!MaNetworkRequestServer methodsFor: 'private' stamp: 'cmm 10/11/2002 00:24'!
connectionInfo

	^Array
		with: self getNextId
		with: self protocolByteArray! !

!MaNetworkRequestServer methodsFor: 'private' stamp: 'cmm 10/11/2002 00:25'!
getNextId

	^nextId _ nextId + 1! !

!MaNetworkRequestServer methodsFor: 'private' stamp: 'cmm 8/22/2013 12:46'!
initialize
	super initialize.
	socket _ MaServerSocket new
		 doBlock: [ : eachRequest | self processRequestByteArray: eachRequest ] ;
		 yourself.
	nextId _ 1.
	self initializeSerializer! !

!MaNetworkRequestServer methodsFor: 'private' stamp: 'cmm 6/10/2005 12:21'!
initializeSerializer

	serializer _ MaObjectSerializer new! !

!MaNetworkRequestServer methodsFor: 'private' stamp: 'cmm 8/22/2013 13:43'!
materializeRequest: requestByteArray 
	| timeToMaterialize requestObject |
	timeToMaterialize _ Time millisecondsToRun: 
		[ serializer resetOidManager.
		requestObject _ serializer materializeGraph: requestByteArray ].
	console noteTimeToMaterializeRequest: timeToMaterialize.
	^ requestObject! !

!MaNetworkRequestServer methodsFor: 'private' stamp: 'cmm 1/16/2015 16:00'!
processRequestByteArray: aMaServerRequestLifecycle 
	"Materialize the object serialized in requestByteArray, and serialize the response I get from telling my processor to process it."
	| requestObject responseObject |
	[ requestObject _ self materializeRequest: aMaServerRequestLifecycle requestByteArray.
	aMaServerRequestLifecycle requestObject: requestObject ]
		on: Error
		do:
			[ : exc | MaClientServerPreferences debug
				ifTrue: [ exc pass ]
				ifFalse: [ ^ self serializeResponse:
						(MaMalformedRequestError new
							 messageText: exc messageText ;
							 yourself) ] ].
	requestObject isString ifFalse: [ requestObject lifecycle: aMaServerRequestLifecycle ].
	responseObject _ self processRequest: requestObject.
	^ (requestObject wantsResponse and: [ self isUdp not ]) ifTrue:
		[ [ self serializeResponse: responseObject ]
			maOn: OutOfMemory
			do:
				[ : err | processor
					noteResponseSerializationError: err
					lifecycle: aMaServerRequestLifecycle.
				self serializeResponse: (MaEnvironmentError messageText: 'Server out of RAM while trying to serialize response.') ]
			on: MaObjectSerializationWarning
			do:
				[ : err | self serializeResponse: (MaEnvironmentError messageText: 'Response size exceeds serializer sizeWarningThreshold of ' , MaSerializedGraphBuffer sizeWarningThreshold asBytesDescription) ] ]! !

!MaNetworkRequestServer methodsFor: 'private' stamp: 'cmm 9/18/2013 14:08'!
protocol: aCollection 
	"Establish the class ids of classes in the protocol."
	serializer protocol: aCollection! !

!MaNetworkRequestServer methodsFor: 'private' stamp: 'cmm 8/17/2009 12:32'!
protocolByteArray
	^ protocolByteArray ifNil: 
		[ serializer resetOidManager.
		protocolByteArray _ serializer classDefinitionsByteArray ]! !

!MaNetworkRequestServer methodsFor: 'private' stamp: 'cmm 5/1/2008 19:00'!
serializeResponse: anObject 
	| timeToSerializeResponse response |
	timeToSerializeResponse _ Time millisecondsToRun: 
		[ serializer resetOidManager.
		response _ (serializer serializeGraph: anObject) trimmedByteArray ].
	console noteTimeToSerializeResponse: timeToSerializeResponse.
	^ response! !

!MaNetworkRequestServer methodsFor: 'testing' stamp: 'cmm 2/20/2005 17:18'!
isRunning

	^ socket isRunning! !

!MaNetworkRequestServer methodsFor: 'testing' stamp: 'cmm 11/8/2008 16:58'!
isUdp
	^ socket isUdp! !

!MaNetworkRequestServer methodsFor: 'start / stop' stamp: 'cmm 8/22/2013 14:59'!
processOn: portNumber 
	"Listen on portNumber in the background.  For each client request received, evaluate my processBlock.  I queue all requests so that your block will never be evaluating more than one client-request at a time."
	socket console: console.
	socket processOn: portNumber! !

!MaNetworkRequestServer methodsFor: 'start / stop' stamp: 'cmm 11/9/2008 11:08'!
processOn: portNumber using: yourProcessor 
	"Listen on portNumber in the background.  For each client request received, send value: to yourProcessor (so yourProcessor must be a Block or respond to #value:).  I queue all requests and ensure your yourProcessor will never be evaluating more than one client-request at a time.  The argument to the value: message is an instance of MaClientServerRequest, of which you create application-specific subclasses."
	processor _ yourProcessor.
	self processOn: portNumber! !

!MaNetworkRequestServer methodsFor: 'start / stop' stamp: 'cmm 11/22/2008 10:51'!
shutdown
	socket shutdown.
	"socket shutdown immediately disallows any more requests, but blocks until pending requests get processed.  Those remaining requests which are not finished writing responses can and will continue to write, but the server is no longer needed and able to shutdown."
	super shutdown
! !

!MaNetworkRequestServer class methodsFor: 'creation' stamp: 'cmm 10/8/2002 22:50'!
protocol: collectionOfClasses
	"collectionOfClasses are all request classes and all response classes any client can expect to encounter in the full graph of the requests and responses"

	^self new protocol: collectionOfClasses! !

!MaServerSocket methodsFor: 'private' stamp: 'cmm 9/18/2014 15:17'!
byteArrayToSendFor: aByteArray 
	^ aByteArray size > self compressThreshold  
		ifTrue: 
			[ | compressed |
			compressed _ aByteArray lzCompressed.
			compressed size < aByteArray size 
				ifTrue: [ compressed ]
				ifFalse: [ aByteArray ] ]
		ifFalse: [ aByteArray ]! !

!MaServerSocket methodsFor: 'private' stamp: 'cmm 8/20/2013 22:26'!
dequeueRequest: requestLifecycle 
	requestLifecycle requestDequeueTime: Time millisecondClockValue.
	console noteRequestDequeued: requestLifecycle.
	^ requestLifecycle! !

!MaServerSocket methodsFor: 'private' stamp: 'cmm 8/20/2013 22:27'!
extractByteArrayRequestsFrom: aMaServerRequestLifecycle 
	"A socket connection has just been established.  Kickoff a new iterating process for the purpose of listening for requests bytes from a single client.  receiveOneByteArrayRequestFrom: waits a few seconds on the port, if data comes in it will extract the entire request and return it.  Otherwise it returns nil and the loop can check for shutdown or expiry."
	clientConnectionsGuard critical: 
		[ 1 
			to: clientConnections size - self maxConnections
			do: [ : n | (clientConnections at: n) shouldContinue: false ].
		clientConnections add: (MaClientConnection 
				serverSocket: self
				lifecycle: aMaServerRequestLifecycle) monitorForByteArrayRequests.
		console noteNumberOfConnections: clientConnections size ]! !

!MaServerSocket methodsFor: 'private' stamp: 'cmm 10/27/2014 15:43'!
headerSize
	"First 4 bytes:  size of entire message (including header).
	Bytes 5-8:  sequenceNumber of this request or response."
	^ self isUdp ifTrue: [4] ifFalse: [8]! !

!MaServerSocket methodsFor: 'private' stamp: 'cmm 10/8/2015 15:17'!
initializeQueues

	socketQueue _ SharedQueue2 new.
	requestQueue _ SharedQueue2 new! !

!MaServerSocket methodsFor: 'private' stamp: 'cmm 8/9/2016 16:32'!
listen
	"By using this method, I will call my servers #processRequestByteArray:.  If you don't want to have a MaServer class, use listenOn:answer:."
	running ifTrue: [ MaClientServerUserError signal: 'socket already listening.' ].
	running _ true.
	ActiveSockets add: self.
	console note: 'creating server socket'.
	self isUdp
		ifTrue:
			[ socket _ Socket newUDP
				setPort: port
				interface: interface ]
		ifFalse:
			[ socket _ Socket newTCP.
			socket
				listenOn: port
				backlogSize: 50
				interface: interface ].
	socket isValid ifFalse: [ NetworkError signal: 'Socket accept() not supported.' ].
	socket port = port ifFalse:
		[ self shutdown.
		MaClientServerEnvironmentError signal: 'Port ' , port asString , ' could not be allocated.' ].
	console
		 note: 'now listening on ' , port printString ;
		 noteAboutToStart.
	self isUdp
		ifTrue:
			[ | lifecycle |
			lifecycle _ MaServerRequestLifecycle socket: socket.
			lifecycle socketStream timeout: self timeoutSeconds.
			clientConnections add:
				(MaClientConnection
					serverSocket: self
					lifecycle: lifecycle) monitorForUdpByteArrayRequests ]
		ifFalse:
			[ self
				 startAcceptingRequests ;
				 startExtractingRequests ].
	self startProcessingRequests.
	console noteJustStarted! !

!MaServerSocket methodsFor: 'private' stamp: 'cmm 6/8/2008 16:51'!
maxConnections
	^ 50! !

!MaServerSocket methodsFor: 'private' stamp: 'cmm 3/24/2013 16:56'!
primQueueRequest: aMaServerRequestLifecycle 
	requestQueue nextPut: aMaServerRequestLifecycle! !

!MaServerSocket methodsFor: 'private' stamp: 'cmm 9/19/2014 10:41'!
primShutdown
	running _ false.
	console note: 'Server is shutting down right now.'.
	[ socketQueue isEmpty ] whileFalse: [ (Delay forSeconds: 1) wait ].
	socketQueueMonitorProcess ifNotNilDo:
		[ : proc | proc terminate ].
	processRequestProcess ifNotNil: [processRequestProcess terminate].
	socket ifNotNil: [ socket closeAndDestroy: self timeoutSeconds ].
	self initializeQueues.
	socket _ nil! !

!MaServerSocket methodsFor: 'private' stamp: 'cmm 10/27/2014 17:18'!
processRequest: aMaServerRequestLifecycle 
	| responseByteArray time |
	responseByteArray _ doBlock value: aMaServerRequestLifecycle.
	time _ Time millisecondClockValue.
	aMaServerRequestLifecycle clientConnection lastAccess: time.
	console noteLastRequestFinish: (requestQueue isEmpty ifTrue: [ time ]).
	"aMaServerRequestLifecycle requestObject will be nil for ByteArray servers, which means TCP ByteArray servers must always provide a response."
	(self isUdp not and: [ aMaServerRequestLifecycle requestObject wantsResponse ]) ifTrue:
		[ aMaServerRequestLifecycle responseByteArray: responseByteArray.
		self sendResponseFor: aMaServerRequestLifecycle ]! !

!MaServerSocket methodsFor: 'private' stamp: 'cmm 8/20/2013 22:33'!
queueRequest: aMaRequestLifecycle 
	running ifTrue: 
		[ aMaRequestLifecycle requestQueueTime: Time millisecondClockValue.
		console noteRequestsQueued: requestQueue size.
		self primQueueRequest: aMaRequestLifecycle.
		console noteRequestQueued: aMaRequestLifecycle ]! !

!MaServerSocket methodsFor: 'private' stamp: 'cmm 9/19/2014 16:54'!
queueSocket: aSocket
	| lifecycle | lifecycle _ MaServerRequestLifecycle socket: aSocket.
	socketQueue nextPut: lifecycle.
	lifecycle socketStream timeout: self timeoutSeconds.
	console noteSocketsQueued: socketQueue size! !

!MaServerSocket methodsFor: 'private' stamp: 'cmm 8/21/2013 09:33'!
removeConnection: aMaClientConnection 
	clientConnectionsGuard critical: 
		[ clientConnections 
			remove: aMaClientConnection
			ifAbsent: 
				[ "not worth blowing up"
				 ].
		console noteNumberOfConnections: clientConnections size ]! !

!MaServerSocket methodsFor: 'private' stamp: 'cmm 3/1/2009 12:43'!
requestQueue
	^ requestQueue! !

!MaServerSocket methodsFor: 'private' stamp: 'cmm 12/27/2014 20:20'!
sendResponseFor: aMaServerRequestLifecycle 
	[ aMaServerRequestLifecycle critical:
		[ | byteArrayToSend writeStream header |
		writeStream _ aMaServerRequestLifecycle socketStream.
		writeStream isConnected
			ifTrue:
				[ aMaServerRequestLifecycle noteTimeAboutToSendResponse.
				byteArrayToSend _ self byteArrayToSendFor: aMaServerRequestLifecycle responseByteArray.
				header _ self
					sequenceNumber: aMaServerRequestLifecycle sequenceNumber
					totalToSend: byteArrayToSend size + self headerSize
					compressed: aMaServerRequestLifecycle responseByteArray ~~ byteArrayToSend.
				console
					noteSendingResponse: byteArrayToSend
					to: writeStream.
				[ writeStream
					 nextPutAll: header ;
					 nextPutAll: byteArrayToSend ;
					 flush.
				writeStream socket waitForSendDoneFor: self timeoutSeconds.
				aMaServerRequestLifecycle noteTimeJustFinishedSendingResponse.
				console noteResponseSent: aMaServerRequestLifecycle ]
					on: ConnectionTimedOut
					do:
						[ : exc | writeStream socket closeAndDestroy: preferences timeoutSeconds ].
				writeStream isConnected
					ifTrue: [ aMaServerRequestLifecycle bePriorLifecycle ]
					ifFalse: [ console noteClientTimedOut: aMaServerRequestLifecycle ] ]
			ifFalse: [ console noteClientTimedOut: aMaServerRequestLifecycle ] ] ] forkAt: Processor userInterruptPriority! !

!MaServerSocket methodsFor: 'private' stamp: 'cmm 10/28/2014 13:25'!
sequenceNumber: sequenceNumber totalToSend: totalToSend compressed: compressed 
	| header |
	header _ ByteArray new: self headerSize.
	header
		maUint: 32
		at: 0
		put:
			(self
				setCompressedBit: compressed
				for: totalToSend).
	self isUdp ifFalse:
		[ header
			maUint: 32
			at: 4
			put: sequenceNumber ].
	^ header! !

!MaServerSocket methodsFor: 'private' stamp: 'cmm 6/29/2008 11:10'!
setCompressedBit: aBoolean for: headerInteger 
	^ aBoolean 
		ifTrue: 
			[ "Below is the correct implementation, but we would need a 2GB ByteArray for the simpler faster implementation below not to work.  2GB can't happen."
			"ba maUint: 32 at: 0 put: ((ba maUint: 32 at: 0) maBitSet: 32)."
			headerInteger maBitSet: 32 ]
		ifFalse: [ headerInteger maBitClear: 32 ]! !

!MaServerSocket methodsFor: 'private' stamp: 'cmm 10/27/2014 21:41'!
startAcceptingRequests
	| clientSocket |
	
	[ [ running ] whileTrue: 
		[ clientSocket _ socket 
			waitForAcceptFor: 5 "seconds to wait for server to shutdown, if asked"
			ifTimedOut: [ nil ].
		(clientSocket notNil and: [ clientSocket isConnected ]) ifTrue: [ self queueSocket: clientSocket ] ].
	console noteNoLongerAcceptingRequests ] newProcess
		name: 'Socket acceptor' ;
		priority: Processor userInterruptPriority ;
		resume.
	console note: 'Ready to queue sockets'! !

!MaServerSocket methodsFor: 'private' stamp: 'cmm 9/18/2014 21:41'!
startExtractingRequests
	socketQueueMonitorProcess _ 
	[ [ running ] whileTrue: 
		[ | requestLifecycle |
		requestLifecycle _ socketQueue next.
		requestLifecycle noteSocketDequeued.
		console noteSocketDequeued: requestLifecycle.
		self extractByteArrayRequestsFrom: requestLifecycle.
		requestLifecycle _ nil ].
	console noteNoLongerExtractingRequests ] newProcess
		name: 'socketQueue Monitor' ;
		priority: Processor userInterruptPriority ;
		resume.
	console note: 'ready to extract requests'! !

!MaServerSocket methodsFor: 'private' stamp: 'cmm 9/19/2014 11:28'!
startProcessingRequests
	processRequestProcess _ 
	[ [ running ] whileTrue: 
		[ [ self processRequest: (self dequeueRequest: requestQueue next) ] 
			on: Error
			do: 
				[ : err | 
				MaClientServerPreferences debug 
					ifTrue: [ err pass ]
					ifFalse: 
						[ MaClientServerNotification signal: 'ERROR PROCESSING REQUEST!!!!!!  (See SERVER-ERROR.log)'.
						Smalltalk 
							logError: err description
							inContext: err signalerContext
							to: 'SERVER-ERROR.log' ] ] ].
	console noteNoLongerProcessingRequests ] newProcess
		name: 'Request processor' ;
		priority: Processor userSchedulingPriority+1 ;
		resume.
	console note: 'ready to process requests'! !

!MaServerSocket methodsFor: 'accessing' stamp: 'cmm 7/5/2008 22:53'!
compressThreshold
	"The maximum number of bytes a request will be before the client decides it should be compressed."
	^ preferences compressThreshold ! !

!MaServerSocket methodsFor: 'accessing' stamp: 'cmm 7/5/2008 22:53'!
compressThreshold: anInteger 
	"The maximum number of bytes a request will be before the client decides it should be compressed."
	preferences compressThreshold: anInteger! !

!MaServerSocket methodsFor: 'accessing' stamp: 'cmm 11/11/2008 20:50'!
interface
	^interface! !

!MaServerSocket methodsFor: 'accessing' stamp: 'cmm 11/11/2008 20:51'!
interface: byteArrayAddress
	"Specify which network interface this socket should listen/read."
	interface _ byteArrayAddress! !

!MaServerSocket methodsFor: 'accessing' stamp: 'cmm 11/11/2008 14:15'!
networkProtocol
	"Answer #tcp for TCP/IP interfaces, #udp for UDP."
	^ networkProtocol! !

!MaServerSocket methodsFor: 'accessing' stamp: 'cmm 11/11/2008 16:27'!
networkProtocol: aSymbol 
	"Specify #tcp or #udp."
	networkProtocol _ aSymbol! !

!MaServerSocket methodsFor: 'accessing' stamp: 'cmm 9/21/2008 16:16'!
port
	^ socket ifNotNil: [ socket port ]! !

!MaServerSocket methodsFor: 'accessing' stamp: 'cmm 7/5/2008 22:52'!
timeoutSeconds
	"The number of seconds to wait for responses from network requests before assuming they are lost."
	^ preferences timeoutSeconds! !

!MaServerSocket methodsFor: 'accessing' stamp: 'cmm 7/5/2008 22:52'!
timeoutSeconds: anInteger 
	"The number of seconds to wait for responses from network requests before assuming they are lost."
	preferences timeoutSeconds: anInteger! !

!MaServerSocket methodsFor: 'initialize-release' stamp: 'cmm 8/22/2013 12:45'!
doBlock: aBlock
	doBlock _ aBlock! !

!MaServerSocket methodsFor: 'initialize-release' stamp: 'cmm 8/22/2013 12:47'!
initialize
	super initialize.
	running _ false.
	self initializeQueues.
	clientConnections _ OrderedCollection new.
	clientConnectionsGuard _ Mutex new.
	preferences _ MaClientServerPreferences new
		compressThreshold: MaSerializedGraphBuffer unreasonablePhysicalSize * 2 ;
		yourself.
	networkProtocol _ #tcp.
	interface _ NetNameResolver addressFromString: '0.0.0.0'! !

!MaServerSocket methodsFor: 'printing' stamp: 'cmm 7/16/2008 09:55'!
hostAndPortStringFor: aSocket 
	^ 'host: ' , (NetNameResolver stringFromAddress: aSocket remoteAddress) , ' port: ' , aSocket port printString! !

!MaServerSocket methodsFor: 'testing' stamp: 'cmm 3/1/2009 11:16'!
isConnected
	^ socket isConnected! !

!MaServerSocket methodsFor: 'testing' stamp: 'cmm 2/10/2005 09:42'!
isRunning

	^ running! !

!MaServerSocket methodsFor: 'testing' stamp: 'cmm 11/11/2008 14:15'!
isUdp
	^ networkProtocol == #udp! !

!MaServerSocket methodsFor: 'start/stop' stamp: 'cmm 11/10/2008 16:03'!
processOn: portNumber 
	"By using this method, I will call my servers #processRequestByteArray:.  If you don't want to have a MaServer class, use listenOn:answer:."
	port _ portNumber.
	self listen! !

!MaServerSocket methodsFor: 'start/stop' stamp: 'cmm 11/10/2008 16:05'!
processOn: portNumber using: oneArgBlock 
	"Listen on portNumber, for each ByteArray request received answer the value of oneArgBlock (which should answer a ByteArray)."
	doBlock _ oneArgBlock.
	self processOn: portNumber! !

!MaServerSocket methodsFor: 'start/stop' stamp: 'cmm 4/30/2003 00:46'!
shutdown

	ActiveSockets remove: self ifAbsent: [ "do nothing" ].
	self primShutdown! !

!MaServerSocket class methodsFor: 'initializing' stamp: 'cmm 11/21/2008 12:52'!
initialize
	ActiveSockets ifNotNil: [ ActiveSockets do: [ : each | each shutdown ] ].
	ActiveSockets _ Set new.
	Smalltalk
		addToStartUpList: self ;
		addToShutDownList: self! !

!MaServerConsole methodsFor: 'initialize-release' stamp: 'cmm 10/12/2015 17:53'!
initialize
	super initialize.
	self initializeStatistics.
	playAuditorialization _ false.
	soundTheme _ MacsSoundTheme new! !

!MaServerConsole methodsFor: 'initialize-release' stamp: 'jpb 5/7/2021 11:24:15'!
initializeStatistics
	statistics _ MaServerStat new! !

!MaServerConsole methodsFor: 'logging' stamp: 'cmm 10/25/2008 14:54'!
log: aString
	"Write aString to a log file?"
self halt: aString! !

!MaServerConsole methodsFor: 'notifications' stamp: 'cmm 10/7/2002 23:51'!
note: aString
	"The socket is notifying us of a message."! !

!MaServerConsole methodsFor: 'notifications' stamp: 'cmm 9/29/2008 15:34'!
noteAboutToProcessRequest: yourRequestObject 
	lastRequestStart _ Time millisecondClockValue! !

!MaServerConsole methodsFor: 'notifications' stamp: 'cmm 12/17/2008 17:26'!
noteAboutToStart
	"For application hook."! !

!MaServerConsole methodsFor: 'notifications' stamp: 'cmm 9/29/2008 16:54'!
noteClientTimedOut: aMaRequestLifecycle 
	"Network issues, client socket is no longer communicating"
	self statistics recordClientTimeout! !

!MaServerConsole methodsFor: 'notifications' stamp: 'cmm 9/29/2008 16:15'!
noteException: anException whileReceivingRequestFrom: aMaRequestLifecycle 
	"anException was signaled when trying to read from aSocket."
	self noteClientTimedOut: aMaRequestLifecycle! !

!MaServerConsole methodsFor: 'notifications' stamp: 'cmm 9/12/2013 21:02'!
noteJustStarted
	statistics ensureActive! !

!MaServerConsole methodsFor: 'notifications' stamp: 'cmm 9/29/2008 22:50'!
noteLastRequestFinish: millisecondClockValueOrNil
	"Note the time the last request finished.  Used to track idle time between requests."
	lastRequestFinish _ millisecondClockValueOrNil! !

!MaServerConsole methodsFor: 'notifications' stamp: 'cmm 10/7/2002 23:51'!
noteNoLongerAcceptingRequests
	"Called when the socket has previously been told to shutdown and can no longer accept requests."! !

!MaServerConsole methodsFor: 'notifications' stamp: 'cmm 10/7/2002 23:51'!
noteNoLongerExtractingRequests
	"Called when the socket has previously been told to shutdown and extracted the last pending sockets request."! !

!MaServerConsole methodsFor: 'notifications' stamp: 'cmm 10/7/2002 23:51'!
noteNoLongerProcessingRequests
	"Called when the socket has previously been told to shutdown and has processed the last pending request."! !

!MaServerConsole methodsFor: 'notifications' stamp: 'cmm 9/29/2008 16:16'!
noteNumberOfConnections: anInteger 
	"Report the number of known MaClientConnections."
	self statistics numberOfClientConnectionsHistory addValue: anInteger! !

!MaServerConsole methodsFor: 'notifications' stamp: 'cmm 8/22/2013 13:40'!
noteRequestDequeued: aMaRequestLifecycle 
	"Indicates aSocket has delivered a ByteArray request that is about to be processed by my server."
	self statistics isActive ifTrue: 
		[ self statistics
			recordTimeWaitingInRequestQueue: aMaRequestLifecycle timeWaitingInRequestQueue.
		"Only record idleTime if there was a wait since the last request."
		lastRequestFinish ifNotNil: 
			[ self statistics recordIdleTime: 
				(Time 
					milliseconds: aMaRequestLifecycle requestQueueTime
					since: lastRequestFinish).
			self noteLastRequestFinish: nil ] ]! !

!MaServerConsole methodsFor: 'notifications' stamp: 'cmm 10/12/2015 20:08'!
noteRequestProcessed: requestObject 
	| time sound |
	time _ Time millisecondsSince: lastRequestStart.
	(playAuditorialization and: [ (sound _ soundTheme soundFor: requestObject) notNil ]) ifTrue:
		[ soundQueue ifNil: [ soundQueue _ QueueSound new play ].
		soundQueue add: (sound copy duration: time / 1000.0) ].
	(self statistics requestProcessingTimeHistoryFor: requestObject) addValue: time.
	self statistics requestProcessingTimeHistory addValue: time! !

!MaServerConsole methodsFor: 'notifications' stamp: 'cmm 12/23/2008 19:23'!
noteRequestQueued: aMaRequestLifecycle 
	"The aMaRequestLifecycle's now has a requestByteArray that has been extracted from its socket.  The requestByteArray has now been appended to the end of the requestQueue."
	self statistics isActive ifTrue: 
		[ self statistics recordRequestSize: aMaRequestLifecycle requestByteArray size ]! !

!MaServerConsole methodsFor: 'notifications' stamp: 'cmm 12/23/2008 19:11'!
noteRequestsQueued: anInteger 
	self statistics isActive ifTrue: [ self statistics requestsQueuedHistory addValue: anInteger ]! !

!MaServerConsole methodsFor: 'notifications' stamp: 'cmm 9/29/2008 16:16'!
noteResponseSent: aMaRequestLifecycle 
	"Successfully sent the aMaRequestLifecycle's responseByteArray to its socket."
	self statistics
		recordResponseSize: aMaRequestLifecycle responseByteArray size ;
		recordTimeToSendResponse: aMaRequestLifecycle timeToSendResponse ;
		recordSuccessfulLifecycle! !

!MaServerConsole methodsFor: 'notifications' stamp: 'cmm 10/27/2014 17:26'!
noteResponseSerializationError: anException lifecycle: aMaServerRequestLifecycle
	^ anException! !

!MaServerConsole methodsFor: 'notifications' stamp: 'cmm 10/7/2002 23:51'!
noteSendResponse: aByteArray timedOutOn: aSocket
	"aSocket must have disconnected or something, we couldn't get the response to them."! !

!MaServerConsole methodsFor: 'notifications' stamp: 'cmm 10/7/2002 23:51'!
noteSendingResponse: aByteArray to: aSocket
	"a ByteArray is about to be sent to aSocket."! !

!MaServerConsole methodsFor: 'notifications' stamp: 'cmm 8/22/2013 13:40'!
noteServerShutdown
	self statistics
		release ;
		stopTime: DateAndTime now! !

!MaServerConsole methodsFor: 'notifications' stamp: 'cmm 1/6/2014 16:20'!
noteSocketDequeued: aMaRequestLifecycle 
	self statistics isActive ifTrue: 
		[ self statistics
			recordTimeWaitingInSocketQueue: aMaRequestLifecycle timeWaitingInSocketQueue ]! !

!MaServerConsole methodsFor: 'notifications' stamp: 'cmm 1/6/2014 16:15'!
noteSocketsQueued: anInteger 
	self statistics isActive ifTrue: [ self statistics socketsQueuedHistory addValue: anInteger ]! !

!MaServerConsole methodsFor: 'notifications' stamp: 'cmm 9/29/2008 16:22'!
noteTimeToExtractRequestBytes: milliseconds 
	"Time to extract the request bytes out of the primitive TCP/IP socket."
	self statistics recordTimeToExtractRequestBytes: milliseconds! !

!MaServerConsole methodsFor: 'notifications' stamp: 'cmm 9/29/2008 16:22'!
noteTimeToLoadBuffers: milliseconds 
	"The number of milliseconds spent compressing and uncompressing ByteArrays for more efficient network transport."
	self statistics timeToLoadBuffersHistory addValue: milliseconds! !

!MaServerConsole methodsFor: 'auditorialization' stamp: 'cmm 10/12/2015 11:03'!
playAuditorialization
	"Whether or not to play sounds representing request processing."
	^ playAuditorialization! !

!MaServerConsole methodsFor: 'auditorialization' stamp: 'cmm 10/12/2015 19:39'!
playAuditorialization: aBoolean 
	"Whether or not to play sounds representing request processing."
	(playAuditorialization _ aBoolean) = true
		ifTrue: [ soundQueue ifNotNil: [soundQueue play] ]
		ifFalse: [ soundQueue ifNotNil: [soundQueue reset] ]! !

!MaServerConsole methodsFor: 'auditorialization' stamp: 'cmm 10/12/2015 11:09'!
soundQueue
	^ soundQueue! !

!MaServerConsole methodsFor: 'access' stamp: 'cmm 9/29/2008 16:23'!
statistics
	^ statistics ! !

!MaServerConsole class methodsFor: 'linux-scripts' stamp: 'cmm 8/16/2016 21:48'!
run
	"deamontools run script."
	^ 'spur -vm display=none server-spur.image run.st `cat port`' ->
	[ Smalltalk run:
			[ : portString |
			Smalltalk mitigateIfHeadless.
			(MaNetworkRequestServer new
				console: MaRequestServerConsole new ;
				processOn: portString asInteger ;
				yourself) explore ] ]! !

!MaRequestServerConsole methodsFor: 'notifications' stamp: 'cmm 9/29/2008 16:22'!
noteTimeToMaterializeRequest: milliseconds 
	"The time to materialize a serialized request object."
	self statistics timeToMaterializeHistory addValue: milliseconds! !

!MaRequestServerConsole methodsFor: 'notifications' stamp: 'cmm 9/29/2008 16:22'!
noteTimeToSerializeResponse: milliseconds 
	"The time to materialize a serialized request object."
	self statistics timeToSerializeHistory addValue: milliseconds! !

!MaServerLink methodsFor: 'actions' stamp: 'cmm 6/26/2008 23:05'!
connect
	stat transition! !

!MaServerLink methodsFor: 'actions' stamp: 'cmm 5/7/2008 16:49'!
disconnect
	"Remote links need to clean up resources."
	stat release! !

!MaServerLink methodsFor: 'actions' stamp: 'cmm 3/30/2002 22:01'!
submit: aMaServerRequest

	self subclassResponsibility! !

!MaServerLink methodsFor: 'access' stamp: 'cmm 7/5/2008 14:37'!
host
	MaUserError signal: 'not remotly connected.'! !

!MaServerLink methodsFor: 'access' stamp: 'cmm 8/12/2007 20:38'!
port
	MaUserError signal: 'not remotly connected.'! !

!MaServerLink methodsFor: 'access' stamp: 'cmm 5/6/2008 23:14'!
stat: aMaClientStat
	stat _ aMaClientStat! !

!MaServerLink methodsFor: 'access' stamp: 'cmm 8/17/2011 09:27'!
timeoutSeconds
	"for interface compatibility with remote server links."
	^ 30! !

!MaServerLink methodsFor: 'access' stamp: 'cmm 10/16/2002 22:05'!
timeoutSeconds: anInteger
	"for interface compatibility with remote server links."! !

!MaServerLink methodsFor: 'initialize-release' stamp: 'cmm 5/7/2008 16:10'!
initialize
	super initialize.
	stat _ MaClientStat new! !

!MaServerLink methodsFor: 'testing' stamp: 'cmm 9/20/2008 13:14'!
isConnected
	^ true! !

!MaServerLink methodsFor: 'testing' stamp: 'cmm 10/8/2002 23:59'!
isLocal

	^false! !

!MaServerLink methodsFor: 'testing' stamp: 'cmm 9/20/2008 13:21'!
protocolEstablished
	^ true! !

!MaServerLink methodsFor: 'override' stamp: 'cmm 7/2/2004 17:16'!
linkInformation

	self subclassResponsibility! !

!MaLocalServerLink methodsFor: 'actions' stamp: 'cmm 11/22/2008 12:29'!
disconnect
	super disconnect.
	localRequestServer shutdown! !

!MaLocalServerLink methodsFor: 'actions' stamp: 'cmm 3/30/2002 22:03'!
submit: aMaServerRequest

	^localRequestServer processRequest: aMaServerRequest
! !

!MaLocalServerLink methodsFor: 'testing' stamp: 'cmm 10/8/2002 23:59'!
isLocal

	^true! !

!MaLocalServerLink methodsFor: 'accessing' stamp: 'cmm 11/3/2008 11:47'!
linkInformation
	^ localRequestServer processor pathName! !

!MaLocalServerLink methodsFor: 'private' stamp: 'cmm 7/2/2004 13:17'!
localRequestServer

	^ localRequestServer! !

!MaLocalServerLink methodsFor: 'private' stamp: 'cmm 3/30/2002 22:52'!
localRequestServer: aMaLocalRequestServer

	localRequestServer _ aMaLocalRequestServer
! !

!MaLocalServerLink class methodsFor: 'as yet unclassified' stamp: 'cmm 3/30/2002 22:50'!
localRequestServer: aMaLocalRequestServer

	^self new localRequestServer: aMaLocalRequestServer
! !

!MaNetworkServerLink methodsFor: 'accessing' stamp: 'cmm 7/5/2008 23:02'!
compressThreshold
	"The maximum number of bytes a request will be before the client decides it should be compressed."
	^ socket compressThreshold! !

!MaNetworkServerLink methodsFor: 'accessing' stamp: 'cmm 7/5/2008 23:03'!
compressThreshold: anInteger 
	"The maximum number of bytes a request will be before the client decides it should be compressed."
	socket compressThreshold: anInteger! !

!MaNetworkServerLink methodsFor: 'accessing' stamp: 'cmm 11/10/2008 14:07'!
isUdp
	^ socket isUdp! !

!MaNetworkServerLink methodsFor: 'accessing' stamp: 'cmm 7/5/2008 13:30'!
linkInformation
	^ socket hostAndPortString! !

!MaNetworkServerLink methodsFor: 'accessing' stamp: 'cmm 7/5/2008 15:04'!
location
	"Answer the MaServerLocation of the server at the other end of this link."
	^ socket location! !

!MaNetworkServerLink methodsFor: 'accessing' stamp: 'cmm 11/11/2008 14:41'!
networkProtocol
	^ socket networkProtocol! !

!MaNetworkServerLink methodsFor: 'accessing' stamp: 'cmm 11/11/2008 14:37'!
networkProtocol: aSymbol
	socket networkProtocol: aSymbol! !

!MaNetworkServerLink methodsFor: 'accessing' stamp: 'cmm 2/6/2009 13:42'!
port
	^ self location port! !

!MaNetworkServerLink methodsFor: 'accessing' stamp: 'cmm 8/19/2009 13:10'!
preferences
	^ socket preferences! !

!MaNetworkServerLink methodsFor: 'accessing' stamp: 'cmm 8/19/2009 13:10'!
preferences: aMaClientServerPreferences
	socket preferences: aMaClientServerPreferences ! !

!MaNetworkServerLink methodsFor: 'accessing' stamp: 'cmm 9/17/2013 21:04'!
protocol
	"Answer the array of classes which I can send and receive."
	^ serializer protocol! !

!MaNetworkServerLink methodsFor: 'accessing' stamp: 'cmm 5/7/2008 16:06'!
stat
	^ stat! !

!MaNetworkServerLink methodsFor: 'accessing' stamp: 'cmm 10/8/2002 22:23'!
timeoutSeconds

	^socket timeoutSeconds! !

!MaNetworkServerLink methodsFor: 'accessing' stamp: 'cmm 10/8/2002 22:22'!
timeoutSeconds: anInteger

	socket timeoutSeconds: anInteger! !

!MaNetworkServerLink methodsFor: 'connections' stamp: 'cmm 9/15/2013 16:33'!
connect
	"Request and establish protocol from server."
	| idAndProtocol |
	super connect.
	idAndProtocol _ self primSubmit: self connectionRequest.
	"Shouldn't need to re-establish protocol if it was just a socket timeout."
	self protocolEstablished ifFalse:
		[ serializer
			 resetOidManager ;
			 classDefinitionsByteArray: (idAndProtocol at: 2).
		serializer classIdManager beImmutable ]! !

!MaNetworkServerLink methodsFor: 'connections' stamp: 'cmm 5/7/2008 16:49'!
disconnect
	super disconnect.
	socket disconnect! !

!MaNetworkServerLink methodsFor: 'connections' stamp: 'cmm 9/15/2013 16:58'!
ensureConnected
	submitGuard critical:
		[ self isConnected ifFalse: [ self connect ] ]! !

!MaNetworkServerLink methodsFor: 'connections' stamp: 'cmm 9/15/2013 15:19'!
isConnected
	^ socket notNil and: [ socket isConnected and: [ self protocolEstablished ] ]! !

!MaNetworkServerLink methodsFor: 'connections' stamp: 'cmm 3/18/2015 13:52'!
ping
	^ submitGuard critical:
		[ [ self ensureConnected.
		(self primSubmit: 'ping') = 'pong' ]
			on: ConnectionRefused, ConnectionClosed
			do:
				[ : err | false ] ]! !

!MaNetworkServerLink methodsFor: 'connections' stamp: 'cmm 3/16/2009 20:24'!
protocolEstablished
	"Once protocol is established, it is not changed."
	^ serializer protocolEstablished ! !

!MaNetworkServerLink methodsFor: 'private' stamp: 'cmm 10/16/2002 14:26'!
connectionRequest

	^'connect'! !

!MaNetworkServerLink methodsFor: 'private' stamp: 'cmm 7/13/2009 18:03'!
primSubmit: aMaClientServerRequest 
	^ submitGuard critical: 
		[ | answer responseByteArray beganSubmitting graphBuffer timeToSerialize |
		beganSubmitting _ Time millisecondClockValue.
		socket stat: stat.
		timeToSerialize _ Time millisecondsToRun: 
			[ serializer resetOidManager.
			graphBuffer _ serializer serializeGraph: aMaClientServerRequest ].
		stat timeToSerializeHistory addValue: timeToSerialize.
		responseByteArray _ socket 
			sendData: graphBuffer byteArray
			startingAt: 1
			count: graphBuffer bufferSize
			waitForReplyIn: ((aMaClientServerRequest wantsResponse and: [ self isUdp not ]) ifTrue: [ serializer byteArray ]).
		responseByteArray ifNotNil: 
			[ serializer resetOidManager.
			stat timeToMaterializeHistory addValue: (Time millisecondsToRun: [ answer _ serializer materializeGraph: responseByteArray ]) ].
		(stat timeToSubmitHistoryFor: aMaClientServerRequest maOriginalClass) addValue: (Time millisecondsSince: beganSubmitting).
		answer ]! !

!MaNetworkServerLink methodsFor: 'private' stamp: 'cmm 9/22/2002 21:32'!
socket: aMaClientSocket

	socket _ aMaClientSocket! !

!MaNetworkServerLink methodsFor: 'initialize-release' stamp: 'cmm 9/23/2008 14:25'!
initialize
	super initialize.
	self initializeSerializer.
	submitGuard _ Mutex new! !

!MaNetworkServerLink methodsFor: 'initialize-release' stamp: 'cmm 6/10/2005 12:21'!
initializeSerializer

	serializer _ MaObjectSerializer new! !

!MaNetworkServerLink methodsFor: 'initialize-release' stamp: 'cmm 9/17/2013 20:56'!
protocol: aCollection 
	"Establish the class ids of classes in the protocol."
	serializer protocol: aCollection! !

!MaNetworkServerLink methodsFor: 'initialize-release' stamp: 'cmm 2/4/2009 15:37'!
serializer
	^ serializer! !

!MaNetworkServerLink methodsFor: 'printing' stamp: 'cmm 11/12/2008 18:18'!
maPrintAbbreviatedOn: aStream 
	super maPrintAbbreviatedOn: aStream.
	self location maPrintAbbreviatedOn: aStream! !

!MaNetworkServerLink methodsFor: 'actions' stamp: 'cmm 9/20/2013 15:55'!
submit: aMaClientServerRequest 
	^ submitGuard critical:
		[ aMaClientServerRequest wantsResponse
			ifTrue:
				[ self protocolEstablished ifFalse: [ self connect ].
				self primSubmit: aMaClientServerRequest ]
			ifFalse:
				[ self primSubmit: aMaClientServerRequest.
				nil ] ]! !

!MaNetworkServerLink class methodsFor: 'creation' stamp: 'cmm 7/5/2008 14:29'!
host: hostName port: portInteger 
	^ self location: 
		(MaServerLocation 
			host: hostName
			port: portInteger)! !

!MaNetworkServerLink class methodsFor: 'creation' stamp: 'cmm 7/5/2008 14:18'!
location: aMaServerLocation 
	^ self new
		socket: (MaClientSocket location: aMaServerLocation) ;
		yourself! !

!MaNetworkServerLink class methodsFor: 'creation' stamp: 'cmm 7/24/2018 15:40'!
port: portInteger 
	^ self
		host: NetNameResolver maLocalHostName
		port: portInteger! !

!MaServerLocation methodsFor: 'testing' stamp: 'cmm 6/16/2009 19:09'!
= aMaServerLocation 
	| myAddress otherAddress |
	aMaServerLocation maOriginalClass = self species ifFalse: [ ^ false ].
	myAddress _ self hostAddress.
	otherAddress _ aMaServerLocation hostAddress.
	(myAddress isNil xor: otherAddress isNil) ifTrue: [ ^ false ].
	^ (myAddress isNil and: [ otherAddress isNil ]) 
		ifTrue: 
			[ "If neither resolvable, we're not gonna get very far anyway, but at least base this answer on something as meaningful as I can, thehost name."
			host = aMaServerLocation host and: [ port = aMaServerLocation port ] ]
		ifFalse: 
			[ port = aMaServerLocation port and: 
				[ myAddress = otherAddress or: [ myAddress maIsLocalHost and: [ otherAddress maIsLocalHost ] ] ] ]! !

!MaServerLocation methodsFor: 'testing' stamp: 'cmm 3/2/2009 17:20'!
hash
	"Local addresses may be anything that begins with 127."
	^ self hostAddress 
		ifNil: [ nil hash bitXor: port hash ]
		ifNotNilDo: 
			[ : addr | 
			| simplifiedAddress |
			simplifiedAddress _ addr maIsLocalHost 
				ifTrue: [ #(127 0 0 1 ) asByteArray ]
				ifFalse: [ addr ].
			simplifiedAddress hash bitXor: port hash ]! !

!MaServerLocation methodsFor: 'testing' stamp: 'cmm 3/5/2018 21:57'!
isLocalHost
	^ (self host beginsWith: '127') or: 
		[ { 
			'localhost'.
"			(NetNameResolver localHostName)."
			(NetNameResolver localAddressString)
		 } includes: self host ]! !

!MaServerLocation methodsFor: 'testing' stamp: 'cmm 6/16/2012 12:30'!
isReachable
	"Answer whether the host specified by my host can be reached on the specified port."
	| socket |
	^ 
	[ socket _ Socket newTCP 
		connectTo: (self hostAddress ifNil: [ ^ false ])
		port: port
		waitForConnectionFor: 10.
	socket closeAndDestroy.
	true ] 
		on: ConnectionTimedOut, ConnectionRefused
		do: [ : err | false ]! !

!MaServerLocation methodsFor: 'access' stamp: 'cmm 7/5/2008 13:18'!
host
	"The host name of the computer at the remote location."
	^ host! !

!MaServerLocation methodsFor: 'access' stamp: 'cmm 7/16/2012 09:49'!
hostAddress
	"Answer a ByteArray representing the IP address of my host name."
	^ self isLocalHost 
		ifTrue: [ NetNameResolver localHostAddress ]
		ifFalse: 
			[ [ NetNameResolver 
				addressForName: host
				timeout: 10 ] 
				on: NameLookupFailure
				do: [ : err | nil ] ]! !

!MaServerLocation methodsFor: 'access' stamp: 'cmm 7/5/2008 13:18'!
port
	"Answer the value of port"

	^ port! !

!MaServerLocation methodsFor: 'printing' stamp: 'cmm 7/5/2008 14:50'!
maPrintAbbreviatedOn: aStream 
	super maPrintAbbreviatedOn: aStream.
	aStream
		maPrint: host ;
		maPrint: $: ;
		maPrint: port! !

!MaServerLocation methodsFor: 'initialize-release' stamp: 'cmm 11/11/2008 14:32'!
setHost: aString port: anInteger 
	host _ aString.
	port _ anInteger! !

!MaServerLocation class methodsFor: 'create' stamp: 'cmm 7/5/2008 13:20'!
host: aString port: anInteger 
	^ self new 
		setHost: aString
		port: anInteger! !

!MaServerRequestLifecycle methodsFor: 'private' stamp: 'cmm 10/27/2014 16:29'!
bePriorLifecycle
	clientConnection priorLifecycle: self! !

!MaServerRequestLifecycle methodsFor: 'private' stamp: 'cmm 10/28/2014 12:54'!
incrementSequenceNumber
	^ sequenceNumber _ sequenceNumber + 1 \\ "2 raisedTo: 32" 4294967296! !

!MaServerRequestLifecycle methodsFor: 'accessing' stamp: 'cmm 9/20/2008 17:09'!
clientConnection
	^clientConnection! !

!MaServerRequestLifecycle methodsFor: 'accessing' stamp: 'cmm 9/20/2008 17:09'!
clientConnection: aMaClientConnection
	clientConnection _ aMaClientConnection! !

!MaServerRequestLifecycle methodsFor: 'accessing' stamp: 'cmm 10/28/2014 13:19'!
ifNewAssignSequenceNumber: anInteger
	sequenceNumber ifNil: [ sequenceNumber _ anInteger ]! !

!MaServerRequestLifecycle methodsFor: 'accessing' stamp: 'cmm 5/1/2008 16:22'!
millisecondsWaitingInSocketQueue
	^ Time 
		milliseconds: socketDequeueTime
		since: socketQueueTime! !

!MaServerRequestLifecycle methodsFor: 'accessing' stamp: 'cmm 10/14/2013 17:32'!
noteTimeAboutToSendResponse
	beginSendingResponseTime _ Time millisecondClockValue! !

!MaServerRequestLifecycle methodsFor: 'accessing' stamp: 'cmm 10/14/2013 17:52'!
noteTimeJustFinishedSendingResponse
	doneSendingResponseTime _ Time millisecondClockValue! !

!MaServerRequestLifecycle methodsFor: 'accessing' stamp: 'cmm 5/1/2008 16:37'!
requestByteArray
	^requestByteArray! !

!MaServerRequestLifecycle methodsFor: 'accessing' stamp: 'cmm 7/5/2008 19:43'!
requestByteArray: aByteArray
	requestByteArray _ aByteArray! !

!MaServerRequestLifecycle methodsFor: 'accessing' stamp: 'cmm 10/28/2008 14:48'!
requestObject
	^ requestObject! !

!MaServerRequestLifecycle methodsFor: 'accessing' stamp: 'cmm 10/28/2008 14:48'!
requestObject: aMaClientServerRequest
	requestObject _ aMaClientServerRequest! !

!MaServerRequestLifecycle methodsFor: 'accessing' stamp: 'cmm 9/29/2008 22:31'!
requestQueueTime
	^ requestQueueTime! !

!MaServerRequestLifecycle methodsFor: 'accessing' stamp: 'cmm 5/1/2008 19:30'!
responseByteArray
	^responseByteArray! !

!MaServerRequestLifecycle methodsFor: 'accessing' stamp: 'cmm 5/1/2008 19:30'!
responseByteArray: aByteArray 
	responseByteArray _ aByteArray! !

!MaServerRequestLifecycle methodsFor: 'accessing' stamp: 'cmm 10/27/2014 15:44'!
sequenceNumber
	^ sequenceNumber! !

!MaServerRequestLifecycle methodsFor: 'accessing' stamp: 'cmm 3/1/2009 11:17'!
serverSocket
	^ clientConnection serverSocket! !

!MaServerRequestLifecycle methodsFor: 'accessing' stamp: 'cmm 5/1/2008 16:18'!
socket
	^socket! !

!MaServerRequestLifecycle methodsFor: 'accessing' stamp: 'cmm 9/18/2014 14:09'!
socketStream
	^socketStream! !

!MaServerRequestLifecycle methodsFor: 'accessing' stamp: 'cmm 5/1/2008 19:27'!
timeToSendResponse
	^ Time 
		milliseconds: doneSendingResponseTime
		since: beginSendingResponseTime! !

!MaServerRequestLifecycle methodsFor: 'accessing' stamp: 'cmm 5/1/2008 17:58'!
timeWaitingInRequestQueue
	^ Time 
		milliseconds: requestDequeueTime
		since: requestQueueTime! !

!MaServerRequestLifecycle methodsFor: 'accessing' stamp: 'cmm 5/1/2008 17:42'!
timeWaitingInSocketQueue
	^ Time 
		milliseconds: socketDequeueTime
		since: socketQueueTime! !

!MaServerRequestLifecycle methodsFor: 'copying' stamp: 'cmm 6/2/2008 13:15'!
copyForNewRequest
	^ self copy postCopyForNewRequest! !

!MaServerRequestLifecycle methodsFor: 'copying' stamp: 'cmm 10/27/2014 19:49'!
postCopyForNewRequest
	"The lifecycle stat is instantiated upon the initial socket connection, then cloned for each request to have its own stats."
	requestQueueTime _ requestDequeueTime _ requestByteArray _ beginSendingResponseTime _ doneSendingResponseTime _ responseByteArray _ nil! !

!MaServerRequestLifecycle methodsFor: 'scheduling' stamp: 'cmm 7/29/2012 12:35'!
critical: aBlock
	^ guard critical: aBlock! !

!MaServerRequestLifecycle methodsFor: 'initialize-release' stamp: 'cmm 7/29/2012 12:29'!
initialize
	super initialize.
	guard _ Mutex new! !

!MaServerRequestLifecycle methodsFor: 'initialize-release' stamp: 'cmm 5/1/2008 16:30'!
noteSocketDequeued
	socketDequeueTime _ Time millisecondClockValue! !

!MaServerRequestLifecycle methodsFor: 'initialize-release' stamp: 'cmm 5/1/2008 16:24'!
requestDequeueTime: anInteger
	requestDequeueTime _ anInteger! !

!MaServerRequestLifecycle methodsFor: 'initialize-release' stamp: 'cmm 5/1/2008 16:24'!
requestQueueTime: anInteger
	requestQueueTime _ anInteger! !

!MaServerRequestLifecycle methodsFor: 'initialize-release' stamp: 'cmm 9/19/2014 15:01'!
socket: aSocket
	socket _ aSocket.
	socketStream _ (SocketStream on: aSocket) binary; autoFlush: false.
	socketQueueTime _ Time millisecondClockValue.
	remoteAddress _ aSocket remoteAddress.
	remotePort _ aSocket remotePort! !

!MaServerRequestLifecycle methodsFor: 'identification' stamp: 'cmm 5/6/2008 15:39'!
remoteAddress
	^ remoteAddress! !

!MaServerRequestLifecycle methodsFor: 'identification' stamp: 'cmm 5/6/2008 15:39'!
remotePort
	^ remotePort! !

!MaServerRequestLifecycle class methodsFor: 'create' stamp: 'cmm 11/9/2008 20:15'!
socket: aSocket 
	^ self new
		socket: aSocket ;
		yourself! !

!MacsSoundTheme methodsFor: 'configure' stamp: 'cmm 10/12/2015 14:08'!
forAnyKindOf: subclassOfMaClientServerRequest play: aSound 
	^ sounds
		at: subclassOfMaClientServerRequest
		put: aSound! !

!MacsSoundTheme methodsFor: 'initialize-release' stamp: 'cmm 10/12/2015 14:10'!
initialize
	super initialize.
	sounds _ Dictionary new! !

!MacsSoundTheme methodsFor: 'access' stamp: 'cmm 10/12/2015 14:05'!
soundFor: aMaClientServerRequest 
	^ sounds
		at: aMaClientServerRequest maOriginalClass
		ifAbsent: [ aMaClientServerRequest class defaultSound ]! !

!MaServerStat methodsFor: 'historys' stamp: 'cmm 5/7/2008 17:28'!
clientTimeoutsHistory
	"This history describes how often clients timed out.  When a request completes its lifecycle with no errors, a score of 0 is given.  When a network error occurs receiving the request or sending the response, a score of 1 is added.  Therefore, the sum is the total number of timeouts, #mean is how often they timed out."
	^ clientTimeoutsHistory! !

!MaServerStat methodsFor: 'historys' stamp: 'cmm 5/7/2008 17:29'!
extractTimeHistory
	"This history describes the amount of time, in milliseconds, elapsed from the initial client socket connection to the point in which the entire request is uploaded to my server."
	^ extractTimeHistory! !

!MaServerStat methodsFor: 'historys' stamp: 'cmm 9/29/2008 22:01'!
idleTimeHistory
	"The time the server waited after processing a request, before a new request came in."
	^ idleTimeHistory! !

!MaServerStat methodsFor: 'historys' stamp: 'cmm 6/8/2008 11:33'!
numberOfClientConnectionsHistory
	"The number of client sockets simultaneously connected to this server.  There is a Process running for each one that extracts the request bytes from them."
	^numberOfClientConnectionsHistory! !

!MaServerStat methodsFor: 'historys' stamp: 'cmm 5/7/2008 17:33'!
requestProcessingTimeHistory
	"These statistics represent the time, in milliseconds, actually consumed by the Magma server to process client requests.  Although requests are processed one at a time, responses are sent in separate threads and request input downloads are also concurrent."
	^ requestProcessingTimeHistory! !

!MaServerStat methodsFor: 'historys' stamp: 'cmm 7/13/2009 18:06'!
requestProcessingTimeHistoryFor: requestObject 
	"Different requests take different amounts of time to process.  Track them by the class of request."
	^ requestProcessingTimeHistorys 
		at: requestObject maOriginalClass
		ifAbsentPut: 
			[ MaStatHistory new
				name: 'Time to process ' , requestObject class name ;
				transition ;
				yourself ]! !

!MaServerStat methodsFor: 'historys' stamp: 'cmm 5/7/2008 17:33'!
requestSizeHistory
	"The size of client requests, in bytes.  This would be related to extractTime, timeToMaterializeRequests and requestProcessingTimes."
	^ requestSizeHistory! !

!MaServerStat methodsFor: 'historys' stamp: 'cmm 5/7/2008 17:34'!
requestsQueuedHistory
	"The number of requests queued at each moment a new client request is queued.  How long does the request line get.."
	^ requestsQueuedHistory! !

!MaServerStat methodsFor: 'historys' stamp: 'cmm 5/7/2008 17:34'!
responseSizeHistory
	"A statistic about how large the responses are.  As these numbers increase so, too, should the timeToSerializeResponses and timeToSendResponses increase."
	^ responseSizeHistory! !

!MaServerStat methodsFor: 'historys' stamp: 'cmm 5/7/2008 17:34'!
socketsQueuedHistory
	"The number of sockets in a queue waiting solely to have the bytes of the request extracted from the socket."
	^ socketsQueuedHistory! !

!MaServerStat methodsFor: 'historys' stamp: 'cmm 6/8/2008 21:33'!
timeToLoadBuffersHistory
	^timeToLoadBuffersHistory! !

!MaServerStat methodsFor: 'historys' stamp: 'cmm 5/7/2008 17:34'!
timeToSendResponsesHistory
	"The time required to send serialized responses out the TCP/IP port over the network.  Responses are sent in individual background threads."
	^ timeToSendResponsesHistory! !

!MaServerStat methodsFor: 'historys' stamp: 'cmm 5/7/2008 17:34'!
timeWaitingInRequestQueueHistory
	"The time, in milliseconds, from the point when the request is put into the request queue, all requests in front of it have been processed, and it is dequeued."
	^ timeWaitingInRequestQueueHistory! !

!MaServerStat methodsFor: 'historys' stamp: 'cmm 5/7/2008 17:34'!
timeWaitingInSocketQueueHistory
	"The duration, in milliseconds, from when the socket is queued until extraction of its ByteArray can begin.  All sockets in front of it get their ByteArray's extracted first."
	^ timeWaitingInSocketQueueHistory! !

!MaServerStat methodsFor: 'historys' stamp: 'cmm 8/18/2014 10:00'!
topRequestProcessingTimeHistorysBy: operatorSymbol 
	^ requestProcessingTimeHistorys asArray sort:
		[ : a : b | (a perform: operatorSymbol) > (b perform: operatorSymbol) ]! !

!MaServerStat methodsFor: 'private-chart' stamp: 'cmm 8/17/2014 23:37'!
colorsForRankings: anInteger 
	^ (Color wheel: anInteger * (4 / 3) rounded)
		copyFrom: 1
		to: anInteger! !

!MaServerStat methodsFor: 'private' stamp: 'cmm 9/29/2008 21:43'!
historysDo: aBlock 
	super historysDo: aBlock.
	{ 
		socketsQueuedHistory.
		timeWaitingInSocketQueueHistory.
		extractTimeHistory.
		requestsQueuedHistory.
		timeWaitingInRequestQueueHistory.
		requestSizeHistory.
		requestProcessingTimeHistory.
		responseSizeHistory.
		timeToSendResponsesHistory.
		clientTimeoutsHistory.
		numberOfClientConnectionsHistory.
		timeToLoadBuffersHistory.
		idleTimeHistory
	 } do: aBlock.
	requestProcessingTimeHistorys do: aBlock! !

!MaServerStat methodsFor: 'initialize-release' stamp: 'cmm 8/22/2013 17:03'!
initialize
	super initialize.
	socketsQueuedHistory _ MaStatHistory name: 'Sockets Queued'.
	requestsQueuedHistory _ MaStatHistory name: 'Requests Queued'.
	requestSizeHistory _ MaStatHistory name: 'Request Sizes'.
	requestProcessingTimeHistory _ MaStatHistory name: 'Request Processing Times'.
	requestProcessingTimeHistorys _ Dictionary new.
	responseSizeHistory _ MaStatHistory name: 'Response Sizes'.
	extractTimeHistory _ MaStatHistory name: 'Request Upload Times'.
	timeWaitingInSocketQueueHistory _ MaStatHistory name: 'Time Waiting in Socket Queue'.
	timeWaitingInRequestQueueHistory _ MaStatHistory name: 'Time Waiting in Request Queue'.
	timeToSendResponsesHistory _ MaStatHistory name: 'Response Upload Times'.
	clientTimeoutsHistory _ MaStatHistory name: 'Failed Lifecycles'.
	numberOfClientConnectionsHistory _ MaStatHistory name: 'Number of Connected Client Sockets'.
	timeToLoadBuffersHistory _ MaStatHistory name: 'Time to Compress and Uncompress'.
	idleTimeHistory _ MaStatHistory name: 'Server Idle Times'! !

!MaServerStat methodsFor: 'copying' stamp: 'cmm 12/22/2008 19:56'!
postArchivalCopy
	requestProcessingTimeHistorys _ requestProcessingTimeHistorys copy.
	super postArchivalCopy.
	self noteStop! !

!MaServerStat methodsFor: 'recording' stamp: 'cmm 6/5/2008 21:58'!
recordClientTimeout
	self clientTimeoutsHistory addValue: 1! !

!MaServerStat methodsFor: 'recording' stamp: 'cmm 9/29/2008 15:28'!
recordIdleTime: milliseconds
	self idleTimeHistory addValue: milliseconds! !

!MaServerStat methodsFor: 'recording' stamp: 'cmm 6/5/2008 21:58'!
recordRequestSize: anInteger 
	self requestSizeHistory addValue: anInteger! !

!MaServerStat methodsFor: 'recording' stamp: 'cmm 6/5/2008 21:59'!
recordResponseSize: anInteger 
	self responseSizeHistory addValue: anInteger! !

!MaServerStat methodsFor: 'recording' stamp: 'cmm 6/5/2008 21:59'!
recordSuccessfulLifecycle
	self clientTimeoutsHistory addValue: 0! !

!MaServerStat methodsFor: 'recording' stamp: 'cmm 6/5/2008 21:59'!
recordTimeToExtractRequestBytes: milliseconds 
	self extractTimeHistory addValue: milliseconds! !

!MaServerStat methodsFor: 'recording' stamp: 'cmm 6/5/2008 21:59'!
recordTimeToSendResponse: anInteger 
	self timeToSendResponsesHistory addValue: anInteger! !

!MaServerStat methodsFor: 'recording' stamp: 'cmm 6/5/2008 21:59'!
recordTimeWaitingInRequestQueue: anInteger
	self timeWaitingInRequestQueueHistory addValue: anInteger! !

!MaServerStat methodsFor: 'recording' stamp: 'cmm 6/5/2008 21:59'!
recordTimeWaitingInSocketQueue: anInteger
	self timeWaitingInSocketQueueHistory addValue: anInteger! !

!MaServerStat methodsFor: 'accessing' stamp: 'cmm 5/7/2008 17:32'!
requestsQueuedStat
	^ requestsQueuedHistory active! !

!MaServerStat methodsFor: 'chart' stamp: 'cmm 8/17/2014 23:58'!
top: anInteger requestTypesBy: operatorAttribute 
	| top |
	top _ self topRequestProcessingTimeHistorysBy: operatorAttribute.
	^ top
		copyFrom: 1
		to: (anInteger min: top size)! !

!MaServerStat methodsFor: 'chart' stamp: 'cmm 8/18/2014 10:20'!
topRequestTypesBy: operatorSymbol 
	| stats colors nextStat plot stack |
	plot _ nil.
	stack _ StackedPlotMorph new.
	stats _ (self
		top: requestProcessingTimeHistorys size
		requestTypesBy: operatorSymbol) readStream.
	[ (nextStat _ stats next) notNil ] whileTrue:
		[ plot ifNil:
			[ plot _ (#(#total #sum ) includes: operatorSymbol)
				ifTrue: [ self newDateAndTimeBySizesPlot ]
				ifFalse: [ self newDateAndTimeBySecondsPlot ].
			colors _ (self colorsForRankings: 4) readStream ].
		plot addSeries: ((nextStat seriesOn: operatorSymbol) color: colors next).
		plot series size = 4 ifTrue:
			[ stack addPlot: plot.
			plot _ nil ] ].
	^ stack! !

!MaServerStat methodsFor: 'chart' stamp: 'cmm 8/18/2014 10:10'!
topRequestTypesByCount
	^ self topRequestTypesBy: #count! !

!MaServerStat methodsFor: 'chart' stamp: 'cmm 8/21/2014 15:30'!
topRequestTypesByMax
	^ self topRequestTypesBy: #max! !

!MaServerStat methodsFor: 'chart' stamp: 'cmm 8/18/2014 10:10'!
topRequestTypesByMean
	^ self topRequestTypesBy: #mean! !

!MaServerStat methodsFor: 'chart' stamp: 'cmm 8/18/2014 10:10'!
topRequestTypesByTotal
	^ self topRequestTypesBy: #total! !

!MaClientStat methodsFor: 'enumerate' stamp: 'cmm 5/9/2008 17:46'!
historysDo: aBlock 
	super historysDo: aBlock.
	{ 
		timeToConnectSocketHistory.
		timeToLoadBuffersHistory.
		timeToSendRequestsHistory.
		timeWaitingForResponsesHistory.
		timeReceivingResponsesHistory
	 } do: aBlock.
	timeToSubmitByRequestClassHistorys do: aBlock! !

!MaClientStat methodsFor: 'initialize-release' stamp: 'cmm 5/9/2008 17:45'!
initialize
	super initialize.
	timeToSubmitByRequestClassHistorys _ Dictionary new.
	timeToConnectSocketHistory _ MaStatHistory name: 'Time to Connect Sockets to Server'.
	timeToLoadBuffersHistory _ MaStatHistory name: 'Time to Load Buffers'.
	timeToSendRequestsHistory _ MaStatHistory name: 'Time to Send Requests'.
	timeWaitingForResponsesHistory _ MaStatHistory name: 'Time for Initial Response'.
	timeReceivingResponsesHistory _ MaStatHistory name: 'Time to Download Full Response'! !

!MaClientStat methodsFor: 'historys' stamp: 'cmm 4/27/2009 20:50'!
networkStats
	"Statistics related to the networking."
	^ { 
		timeToConnectSocketHistory.
		timeToLoadBuffersHistory.
		timeToSendRequestsHistory.
		timeWaitingForResponsesHistory.
		timeReceivingResponsesHistory
	 }! !

!MaClientStat methodsFor: 'historys' stamp: 'cmm 4/27/2009 21:03'!
requestHistory
	^ timeToSubmitByRequestClassHistorys asSortedCollection: [ : a : b | a name < b name ]! !

!MaClientStat methodsFor: 'historys' stamp: 'cmm 5/9/2008 17:32'!
timeReceivingResponsesHistory
	"The time from when the initial response is received from the server to when all bytes of the response are downloaded.  By excluding the time waiting for the *initial* response, this stat attempts to measure the speed of downloading responses over the network."
	^timeReceivingResponsesHistory! !

!MaClientStat methodsFor: 'historys' stamp: 'cmm 5/9/2008 17:33'!
timeToConnectSocketHistory
	"Time to initiate a socket-connections, performed for for each request of the server."
	^timeToConnectSocketHistory! !

!MaClientStat methodsFor: 'historys' stamp: 'cmm 5/9/2008 17:33'!
timeToLoadBuffersHistory
	"For now Ma client server makes lots of copies of ByteArrays.  Until this is optimized, this stat tracks it to see how big of an impact it is."
	^timeToLoadBuffersHistory! !

!MaClientStat methodsFor: 'historys' stamp: 'cmm 5/9/2008 17:34'!
timeToSendRequestsHistory
	"The time needed just to send requests to the server."
	^timeToSendRequestsHistory! !

!MaClientStat methodsFor: 'historys' stamp: 'cmm 6/25/2008 14:43'!
timeToSubmitHistoryFor: requestClass 
	"The total time, by request class, including serialization, materialization, and all other house keeping.  A useful set of stats measuring the total reality for the client, by request type."
	^ timeToSubmitByRequestClassHistorys 
		at: requestClass
		ifAbsentPut: 
			[ MaStatHistory new
				name: 'Time waiting for ' , requestClass name , ' requests' ;
				transition ;
				yourself ]! !

!MaClientStat methodsFor: 'historys' stamp: 'cmm 5/9/2008 17:40'!
timeWaitingForResponsesHistory
	"When all bytes for a request have been pumped into the TCP/IP socket connected to the server, this stat immediately starts timing until we get the *first* initial response bytes back (which won't occur until the server has completely processed our request and is now sending back the response).  Therefore, this stat is a approximate measure of the time the server spends processing each request, including any time waiting in its request queue."
	^timeWaitingForResponsesHistory! !

!MaClientStat methodsFor: 'copying' stamp: 'cmm 12/22/2008 19:54'!
postArchivalCopy
	timeToSubmitByRequestClassHistorys _ timeToSubmitByRequestClassHistorys copy.
	super postArchivalCopy! !

!Object methodsFor: '*ma-client-server-core' stamp: 'cmm 10/28/2008 16:36'!
wantsResponse
	"Until protocol is established, we must only use types of objects that are part of the original serializer.  The initial request for protocol establishment is a simple hard-coded String."
	^ true! !

!SmalltalkImage methodsFor: '*ma-client-server-core' stamp: 'cmm 6/21/2016 10:56'!
restartSigTermHandler
	SigTermHandler ifNotNil: [ SigTermHandler terminate ].
	SigTermHandler _ [ (Smalltalk classNamed: #OSProcess) accessor restoreSigTerm.
	(Smalltalk classNamed: #OSProcess) accessor forwardSigTerm wait.
	FileStream stdout nextPutAll: 'SIGTERM received, shutting down gracefully.'; flush.
	Smalltalk
		snapshot: false
		andQuit: true ] newProcess
		 name: 'Waiting for SIGTERM for graceful shutdown' ;
		 resume! !

!NetNameResolver class methodsFor: '*ma-client-server-core' stamp: 'cmm 11/7/2018 20:57'!
linuxHostName
	^ OSProcess commandOutput: 'hostname'! !

!NetNameResolver class methodsFor: '*ma-client-server-core' stamp: 'cmm 7/24/2018 15:39'!
maLocalHostName
	| fromSqueakVm |
	^ (fromSqueakVm _ self localHostName) = '0.0.0.0'
		ifTrue: [ self linuxHostName ]
		ifFalse: [ fromSqueakVm ]! !

!MaObject class methodsFor: '*ma-client-server-core' stamp: 'cmm 10/12/2015 17:33'!
defaultSound
	^ nil! !
MaClientServerPreferences initialize!
MaClientServerRequest initialize!
MaServer initialize!
MaServerSocket initialize!
