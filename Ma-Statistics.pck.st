'From Cuis 5.0 [latest update: #4579] on 12 May 2021 at 7:52:51 pm'!
'Description Adds mandatory statistics domain objects to the magma server

License: MIT
Original Author: Chris Muller (cmm)
Author: Josef Philip Bernhart (jpb)'!
!provides: 'Ma-Statistics' 1 3!
!requires: 'Ma-Core' 1 7 nil!
SystemOrganization addCategory: 'Ma-Statistics'!


!classDefinition: #MaStat category: 'Ma-Statistics'!
MaAttributableObject subclass: #MaStat
	instanceVariableNames: 'count sum min max last'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Statistics'!
!classDefinition: 'MaStat class' category: 'Ma-Statistics'!
MaStat class
	instanceVariableNames: ''!

!classDefinition: #MaHistoricalStat category: 'Ma-Statistics'!
MaStat subclass: #MaHistoricalStat
	instanceVariableNames: 'name startTime endTime'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Statistics'!
!classDefinition: 'MaHistoricalStat class' category: 'Ma-Statistics'!
MaHistoricalStat class
	instanceVariableNames: ''!

!classDefinition: #MaStatCollection category: 'Ma-Statistics'!
MaObject subclass: #MaStatCollection
	instanceVariableNames: 'startTime stopTime'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Statistics'!
!classDefinition: 'MaStatCollection class' category: 'Ma-Statistics'!
MaStatCollection class
	instanceVariableNames: ''!

!classDefinition: #MaStatHistory category: 'Ma-Statistics'!
MaObject subclass: #MaStatHistory
	instanceVariableNames: 'name startTime history snapshotInterval active timer guard summary'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ma-Statistics'!
!classDefinition: 'MaStatHistory class' category: 'Ma-Statistics'!
MaStatHistory class
	instanceVariableNames: ''!


!MaStat commentStamp: 'cmm 5/6/2008 12:31' prior: 0!
The name, "MaStat" is purposefully abbreviated because its capability, itself, is abbreviated.  It is not intended to ever develop into a "statistics framework", only to serve basic statistical purposes.!

!MaHistoricalStat commentStamp: 'cmm 5/6/2008 13:00' prior: 0!
A MaHistoricalStat adds contextual information for easy rendering in user-interfaces.  It is used by MaStatHistory's.!

!MaStatCollection commentStamp: 'cmm 1/5/2014 17:35' prior: 0!
A MaStatCollection is used to capture timings for Ma software.  This is particularly useful for server monitoring where profiling isn't practical for identifying what a server is doing.
	We want to capture the timings of the software with no impact on performance, therefore a fixed set of MaStatHistory's is accessed using directly via named inst-vars for maximum performance.!

!MaStatHistory commentStamp: 'cmm 5/2/2008 12:46' prior: 0!
A MaStatHistory tracks statistics for intervals of the recent past.  My #snapshotInterval describes the length of the recent past represented, as well as the duration of each snapshot within that recent past.

My #history represents the collection of MaStats captured during that recent past.!

!MaHistoricalStat methodsFor: 'accessing' stamp: 'cmm 5/5/2008 23:55'!
name
	^name! !

!MaStatHistory methodsFor: 'accessing' stamp: 'cmm 5/2/2008 11:53'!
name
	^ name! !

!MaStat methodsFor: 'summarize' stamp: 'cmm 1/3/2014 14:20'!
+ aMaStat 
	^ min
		ifNil: [ aMaStat ]
		ifNotNil:
			[ aMaStat min
				ifNil: [ self ]
				ifNotNil: [ self copy merge: aMaStat ] ]! !

!MaStat methodsFor: 'summarize' stamp: 'cmm 1/3/2014 14:21'!
- aMaStat 
	^ min
		ifNil: [ aMaStat ]
		ifNotNil:
			[ aMaStat min
				ifNil: [ self ]
				ifNotNil: [ self copy unmerge: aMaStat ] ]! !

!MaStat methodsFor: 'accessing' stamp: 'cmm 1/3/2014 10:06'!
addValue: aMagnitude 
	last _ aMagnitude.
	self
		 adjustValues: aMagnitude ;
		 adjustExtremes: aMagnitude.
	^ aMagnitude! !

!MaStat methodsFor: 'accessing' stamp: 'cmm 9/28/2007 12:31'!
count
	"The number of values."
	^count! !

!MaStat methodsFor: 'accessing' stamp: 'cmm 9/28/2007 12:33'!
last
	"The last value recorded."
	^ last! !

!MaStat methodsFor: 'accessing' stamp: 'cmm 9/27/2007 17:23'!
max
	"The highest value."
	^max! !

!MaStat methodsFor: 'accessing' stamp: 'cmm 3/18/2014 20:15'!
mean
	"The average value."
	^ self count = 0 ifFalse: [ (self sum / self count) ]! !

!MaStat methodsFor: 'accessing' stamp: 'cmm 1/3/2014 14:19'!
merge: aMaStat 
	"The same as +, except adds to the receiver directly rather than returning a new instance."
	self
		 adjustExtremes: aMaStat min ;
		 adjustExtremes: aMaStat max ;
		
		adjustCount: aMaStat count
		sum: aMaStat sum! !

!MaStat methodsFor: 'accessing' stamp: 'cmm 9/27/2007 17:23'!
min
	"The minimum value."
	^min! !

!MaStat methodsFor: 'accessing' stamp: 'cmm 9/27/2007 17:24'!
sum
	"The sum of all values."
	^ sum! !

!MaStat methodsFor: 'accessing' stamp: 'cmm 1/3/2014 14:23'!
total
	"The sum of all values."
	^ self sum! !

!MaStat methodsFor: 'accessing' stamp: 'cmm 1/3/2014 14:21'!
unmerge: aMaStat 
	"The same as +, except adds to the receiver directly rather than returning a new instance."
	self
		 adjustExtremes: min ;
		 adjustExtremes: max ;
		
		adjustCount: aMaStat count negated
		sum: aMaStat sum negated! !

!MaStat methodsFor: 'private' stamp: 'cmm 1/3/2014 14:08'!
adjustCount: anInteger sum: aFloat 
	sum _ sum + aFloat.
	count _ count + anInteger! !

!MaStat methodsFor: 'private' stamp: 'cmm 1/8/2014 20:44'!
adjustExtremes: aMagnitude 
	min
		ifNil: [ min _ max _ aMagnitude asFloat ]
		ifNotNil:
			[ min _ (min min: aMagnitude) asFloat.
			max _ (max max: aMagnitude) asFloat ]! !

!MaStat methodsFor: 'private' stamp: 'cmm 1/3/2014 10:06'!
adjustValues: aMagnitude 
	count _ count + 1.
	sum _ sum + aMagnitude! !

!MaStat methodsFor: 'initialize' stamp: 'cmm 1/2/2014 15:38'!
initialize
	super initialize.
	count _ 0.
	"Magma requires last, sum, min and max to be floats, otherwise MaObjectBuffer>>#updateSharedValueFrom: won't work."
	last _ sum _ 0.0! !

!MaStat methodsFor: 'printing' stamp: 'cmm 11/16/2004 21:52'!
maPrintAbbreviatedOn: aStream

	self
		maPrintAttributes: #(min max sum count mean)
		on: aStream! !

!MaStat methodsFor: 'maui support' stamp: 'cmm 12/22/2008 14:04'!
mauiDefaultColumns
	^ #(#count #min #max #mean #sum #last )! !

!MaHistoricalStat methodsFor: 'accessing' stamp: 'cmm 5/5/2008 23:55'!
endTime
	^endTime! !

!MaHistoricalStat methodsFor: 'accessing' stamp: 'cmm 5/5/2008 23:55'!
endTime: aDateAndTime
	endTime _ aDateAndTime! !

!MaHistoricalStat methodsFor: 'accessing' stamp: 'cmm 5/5/2008 23:55'!
name: aString
	name _ aString! !

!MaHistoricalStat methodsFor: 'accessing' stamp: 'cmm 5/5/2008 23:55'!
startTime
	^startTime! !

!MaHistoricalStat methodsFor: 'accessing' stamp: 'cmm 5/5/2008 23:55'!
startTime: aDateAndTime
	startTime _ aDateAndTime! !

!MaHistoricalStat methodsFor: 'accessing' stamp: 'cmm 6/12/2009 11:52'!
timeSpan
	^ self startTime to: self endTime! !

!MaHistoricalStat methodsFor: 'summarize' stamp: 'cmm 12/22/2008 14:39'!
+ aMaStat 
	| answer myEndTime otherEndTime |
	answer _ super + aMaStat.
	answer
		name: self name ;
		startTime: (self startTime min: aMaStat startTime).
	myEndTime _ self endTime ifNil: [ DateAndTime now ].
	otherEndTime _ aMaStat endTime ifNil: [ DateAndTime now ].
	answer endTime: (myEndTime max: otherEndTime).
	^ answer! !

!MaHistoricalStat methodsFor: 'initialize' stamp: 'cmm 5/6/2008 13:31'!
initialize
	super initialize.
	startTime _ DateAndTime now! !

!MaHistoricalStat methodsFor: 'printing' stamp: 'cmm 6/12/2009 11:42'!
maPrintAbbreviatedOn: aStream 
	super maPrintAbbreviatedOn: aStream.
	self 
		maPrintAttributes: #(#endTime #name )
		on: aStream! !

!MaHistoricalStat methodsFor: 'maui support' stamp: 'cmm 12/22/2008 14:03'!
mauiDefaultColumns
	^ #(#endTime ) , super mauiDefaultColumns! !

!MaHistoricalStat class methodsFor: 'as yet unclassified' stamp: 'cmm 6/26/2008 15:10'!
name: aString 
	^ self new
		name: aString ;
		yourself! !

!MaStatCollection methodsFor: 'copying' stamp: 'cmm 12/22/2008 15:19'!
archivalCopy
	^ self copy postArchivalCopy! !

!MaStatCollection methodsFor: 'copying' stamp: 'cmm 6/12/2009 12:13'!
archive: aTimespan 
	^ self archivalCopy postArchive: aTimespan! !

!MaStatCollection methodsFor: 'copying' stamp: 'cmm 12/22/2008 16:25'!
postArchivalCopy
	| historys |
	historys _ self historys.
	self class maAllInstVarNamesDo: 
		[ : each | 
		| eachPotentialHistory |
		eachPotentialHistory _ self instVarNamed: each.
		(historys includes: eachPotentialHistory) ifTrue: 
			[ self 
				instVarNamed: each
				put: eachPotentialHistory archivalCopy ] ]! !

!MaStatCollection methodsFor: 'copying' stamp: 'cmm 6/12/2009 13:16'!
postArchive: aTimespan 
	| historys |
	historys _ self historys.
	self class maAllInstVarNamesDo: 
		[ : each | 
		| eachPotentialHistory |
		eachPotentialHistory _ self instVarNamed: each.
		(historys includes: eachPotentialHistory) ifTrue: 
			[ self 
				instVarNamed: each
				put: (eachPotentialHistory archive: aTimespan) ] ].
	self noteNewSpan: aTimespan! !

!MaStatCollection methodsFor: 'private-reporting' stamp: 'cmm 5/9/2008 14:28'!
countColumn
	^ (MaFixedWidthReportColumn dataAccessBlock: [ : aMaHistoricalStat | aMaHistoricalStat count ])
		headingText: 'Count' ;
		alignRight ;
		width: 8 ;
		repeatDuplicateValues: true ;
		useEllipsisOnTruncate: true ;
		yourself! !

!MaStatCollection methodsFor: 'private-reporting' stamp: 'cmm 5/9/2008 14:27'!
endTimeColumn
	^ (MaFixedWidthReportColumn dataAccessBlock: [ : aMaHistoricalStat | aMaHistoricalStat endTime ])
		headingText: 'End Time' ;
		alignLeft ;
		width: DateAndTime now printString size + 4 ;
		repeatDuplicateValues: true ;
		useEllipsisOnTruncate: false ;
		yourself! !

!MaStatCollection methodsFor: 'private-reporting' stamp: 'cmm 6/27/2008 17:40'!
historicalStatNameColumn
	^ (MaFixedWidthReportColumn dataAccessBlock: [ : eachHistory | eachHistory name ])
		headingText: 'Name' ;
		width: 40 ;
		useEllipsisOnTruncate: true ;
		repeatDuplicateValues: true ;
		yourself! !

!MaStatCollection methodsFor: 'private-reporting' stamp: 'cmm 6/27/2008 00:04'!
historicalStatRowSpec
	^ MaFixedWidthRowSpecification new
		addColumn: self endTimeColumn ;
		addColumn: self historicalStatNameColumn ;
		addColumn: self countColumn ;
		addColumn: self minColumn ;
		addColumn: self maxColumn ;
		addColumn: self sumColumn ;
		addColumn: self meanColumn ;
		addColumn: self lastColumn! !

!MaStatCollection methodsFor: 'private-reporting' stamp: 'cmm 5/9/2008 14:28'!
lastColumn
	^ (MaFixedWidthReportColumn dataAccessBlock: [ : aMaHistoricalStat | aMaHistoricalStat last ])
		headingText: 'last' ;
		alignRight ;
		width: 10 ;
		repeatDuplicateValues: true ;
		useEllipsisOnTruncate: true ;
		yourself! !

!MaStatCollection methodsFor: 'private-reporting' stamp: 'cmm 5/9/2008 14:28'!
maxColumn
	^ (MaFixedWidthReportColumn dataAccessBlock: [ : aMaHistoricalStat | aMaHistoricalStat max ])
		headingText: 'max' ;
		alignRight ;
		width: 10 ;
		repeatDuplicateValues: true ;
		useEllipsisOnTruncate: true ;
		yourself! !

!MaStatCollection methodsFor: 'private-reporting' stamp: 'cmm 5/9/2008 14:27'!
meanColumn
	^ (MaFixedWidthReportColumn dataAccessBlock: [ : aMaHistoricalStat | aMaHistoricalStat mean ])
		headingText: 'mean' ;
		alignRight ;
		width: 10 ;
		repeatDuplicateValues: true ;
		useEllipsisOnTruncate: false ;
		yourself! !

!MaStatCollection methodsFor: 'private-reporting' stamp: 'cmm 5/9/2008 14:27'!
minColumn
	^ (MaFixedWidthReportColumn dataAccessBlock: [ : aMaHistoricalStat | aMaHistoricalStat min ])
		headingText: 'min' ;
		alignRight ;
		width: 10 ;
		repeatDuplicateValues: true ;
		useEllipsisOnTruncate: true ;
		yourself! !

!MaStatCollection methodsFor: 'private-reporting' stamp: 'cmm 5/9/2008 14:27'!
nameColumn
	^ (MaFixedWidthReportColumn dataAccessBlock: [ : eachHistory | eachHistory name ])
		width: 75 ;
		useEllipsisOnTruncate: true ;
		yourself! !

!MaStatCollection methodsFor: 'private-reporting' stamp: 'cmm 6/27/2008 10:11'!
reportDefinition
	^ MaFixedWidthReport new
		for: MaStatHistory
			use: self statHistoryRowSpec ;
		for: MaStatHistory
			subReportOn: [ : eachStatHistory | eachStatHistory allStats ] ;
		for: MaStatHistory
			subReportOn: [ : eachStatHistory | Array with: eachStatHistory summary ] ;
		for: MaHistoricalStat
			use: self historicalStatRowSpec ;
		yourself! !

!MaStatCollection methodsFor: 'private-reporting' stamp: 'cmm 5/9/2008 14:27'!
statHistoryRowSpec
	^ MaFixedWidthRowSpecification new
		addColumn: self nameColumn ;
		yourself! !

!MaStatCollection methodsFor: 'private-reporting' stamp: 'cmm 5/9/2008 14:27'!
sumColumn
	^ (MaFixedWidthReportColumn dataAccessBlock: [ : aMaHistoricalStat | aMaHistoricalStat sum ])
		headingText: 'sum' ;
		alignRight ;
		width: 10 ;
		repeatDuplicateValues: true ;
		useEllipsisOnTruncate: true ;
		yourself! !

!MaStatCollection methodsFor: 'accessing' stamp: 'cmm 6/4/2008 10:34'!
ensureActive
	"My historys should only ever be started and stopped together, as a group."
	self isActive ifFalse: [ self transition ]! !

!MaStatCollection methodsFor: 'accessing' stamp: 'cmm 5/7/2008 15:16'!
historys
	| answer |
	answer _ OrderedCollection new.
	self historysDo: [ : each | answer add: each ].
	^ answer! !

!MaStatCollection methodsFor: 'accessing' stamp: 'cmm 6/5/2008 10:28'!
isActive
	"My historys should only ever be started and stopped together, as a group."
	self historysDo: [ : anyOne | ^ anyOne isActive ].
	MaSoftwareError signal: 'never expected to reach here.'! !

!MaStatCollection methodsFor: 'accessing' stamp: 'cmm 5/7/2008 15:23'!
release
	"release each of my historys so their timer processes will be cleaned up."
	self historysDo: [ : each | each release ]! !

!MaStatCollection methodsFor: 'accessing' stamp: 'cmm 5/23/2008 22:57'!
snapshotInterval: anInterval 
	"An Interval that describes the period of the immediate past and the frequency to capture snapshots.  Specify the end-points of each temporal period.

For example, to specify history for the last 30 minutes, summarized every 5 minutes:

	5 to: 30 by: 5

To get minute-by-minute history for the last 24 hours:

	1 to: 24*60 by: 1

The first (receiver) Integer and the by: parameter will usually be the same."
	self historysDo: [ : each | each snapshotInterval: anInterval ]! !

!MaStatCollection methodsFor: 'accessing' stamp: 'cmm 6/12/2009 13:26'!
startTime
	"The time measurements began accumulating into this statistics."
	^ startTime! !

!MaStatCollection methodsFor: 'accessing' stamp: 'cmm 5/7/2008 17:32'!
startTime: aMaCalendarTime

	startTime _ aMaCalendarTime! !

!MaStatCollection methodsFor: 'accessing' stamp: 'cmm 6/12/2009 13:26'!
stopTime
	"The time measurements stopped accumulating into this statistics."
	^ stopTime! !

!MaStatCollection methodsFor: 'accessing' stamp: 'cmm 5/7/2008 17:32'!
stopTime: aMaCalendarTime

	stopTime _ aMaCalendarTime! !

!MaStatCollection methodsFor: 'accessing' stamp: 'cmm 6/3/2008 20:28'!
transition
	self historysDo: [ : each | each transition ]! !

!MaStatCollection methodsFor: 'subclass responsibility' stamp: 'cmm 5/7/2008 15:15'!
historysDo: aBlock 
	self subclassResponsibility! !

!MaStatCollection methodsFor: 'initialize-release' stamp: 'cmm 8/22/2013 17:03'!
initialize
	super initialize.
	startTime _ DateAndTime now! !

!MaStatCollection methodsFor: 'private-chart' stamp: 'cmm 8/17/2014 17:05'!
newDateAndTimeBySecondsPlot
	^ PlotMorph new
		 xAxisFormatter:
		[ : seconds | (DateAndTime fromSeconds: seconds) maAbbreviatedString ] ;
		yAxisFormatter:
		[ : milliseconds | (milliseconds // 1000) asString, 's'  ] ;
		 yourself! !

!MaStatCollection methodsFor: 'private-chart' stamp: 'cmm 8/17/2014 17:06'!
newDateAndTimeBySizesPlot
	^ PlotMorph new
		 xAxisFormatter:
		[ : seconds | (DateAndTime fromSeconds: seconds) maAbbreviatedString ] ;
		yAxisFormatter:
		[ : size | size asBytesDescription ] ;
		 yourself! !

!MaStatCollection methodsFor: 'events' stamp: 'cmm 8/22/2013 17:16'!
noteNewSpan: aTimespan
	startTime _ aTimespan start.
	stopTime _ aTimespan end! !

!MaStatCollection methodsFor: 'events' stamp: 'cmm 12/22/2008 19:54'!
noteStop
	stopTime _ DateAndTime now! !

!MaStatCollection methodsFor: 'reporting' stamp: 'cmm 11/21/2010 17:44'!
printReportTo: aWriteStream 
	"Print a report of all my stats to aWriteStream."
	aWriteStream
		maPrint: 'Note:  All times in milliseconds unless otherwise specified.' ;
		cr ;
		cr.
	self reportDefinition 
		write: self historys
		to: aWriteStream! !

!MaStatCollection methodsFor: 'reporting' stamp: 'cmm 5/9/2008 17:40'!
report
	"Print a report of all my stats."
	^ String streamContents: [ : stream | self printReportTo: stream ]! !

!MaStatHistory methodsFor: 'accessing' stamp: 'cmm 6/26/2008 15:13'!
active
	"Answer the stat that is still being tallied.  The interval (me) keeps track of the time elapsed, you just ask it for the #currentStat and add to that one."
	^ self guard critical: [ active ]! !

!MaStatHistory methodsFor: 'accessing' stamp: 'cmm 6/26/2008 15:13'!
addValue: aNumber 
	"Add aNumber in to the active stat (that for the most recent past) that is still being tallied."
	^ self guard critical: 
		[ self isActive 
			ifTrue: [ active addValue: aNumber ]
			ifFalse: [ aNumber ] ]! !

!MaStatHistory methodsFor: 'accessing' stamp: 'cmm 8/4/2009 10:17'!
allStats
	^ self guard critical: 
		[ history , 
		(self isActive 
				ifTrue: [ Array with: active ]
				ifFalse: 
					[ #() ]) ]! !

!MaStatHistory methodsFor: 'accessing' stamp: 'cmm 12/23/2008 17:30'!
count
	^ self summary count! !

!MaStatHistory methodsFor: 'accessing' stamp: 'cmm 4/28/2008 22:39'!
history
	^ history! !

!MaStatHistory methodsFor: 'accessing' stamp: 'cmm 6/26/2008 15:13'!
last
	^ self guard critical: 
		[ self isActive 
			ifTrue: [ active last ]
			ifFalse: [ 0 ] ]! !

!MaStatHistory methodsFor: 'accessing' stamp: 'cmm 12/23/2008 17:29'!
max
	^ self summary max! !

!MaStatHistory methodsFor: 'accessing' stamp: 'cmm 12/23/2008 17:29'!
mean
	^ self summary mean! !

!MaStatHistory methodsFor: 'accessing' stamp: 'cmm 12/23/2008 17:28'!
min
	^ self summary min! !

!MaStatHistory methodsFor: 'accessing' stamp: 'cmm 5/2/2008 11:52'!
name: anObject
	name _ anObject! !

!MaStatHistory methodsFor: 'accessing' stamp: 'cmm 5/2/2008 12:08'!
snapshotDuration
	"Answer the Duration of each MaStat."
	^ snapshotInterval increment minutes! !

!MaStatHistory methodsFor: 'accessing' stamp: 'cmm 5/9/2008 11:44'!
snapshotExplanation
	^ String streamContents: 
		[ : stream | 
		stream
			maPrint: 'Each ' ;
			maPrint: snapshotInterval increment ;
			maPrint: '-minute period for the last ' ;
			maPrint: snapshotInterval size ;
			maPrint: ' minutes' ]! !

!MaStatHistory methodsFor: 'accessing' stamp: 'cmm 5/2/2008 12:19'!
snapshotInterval
	"An Interval that describes the period of the immediate past and the frequency to capture snapshots.  Specify the end-points of each temporal period.

For example, to specify history for the last 30 minutes, summarized every 5 minutes:

	5 to: 30 by: 5

To get minute-by-minute history for the last 24 hours:

	1 to: 24*60 by: 1

The first (receiver) Integer and the by: parameter will usually be the same."
	^ snapshotInterval! !

!MaStatHistory methodsFor: 'accessing' stamp: 'cmm 6/26/2008 15:13'!
snapshotInterval: anInterval 
	"An Interval that describes the period of the immediate past and the frequency to capture snapshots.  Specify the end-points of each temporal period.

For example, to specify history for the last 30 minutes, summarized every 5 minutes:

	5 to: 30 by: 5

To get minute-by-minute history for the last 24 hours:

	1 to: 24*60 by: 1

The first (receiver) Integer and the by: parameter will usually be the same."
	self guard critical: 
		[ self release.
		snapshotInterval _ anInterval ]! !

!MaStatHistory methodsFor: 'accessing' stamp: 'cmm 5/9/2008 11:23'!
startTime
	^ startTime! !

!MaStatHistory methodsFor: 'accessing' stamp: 'cmm 12/23/2008 17:32'!
sum
	^ self summary sum! !

!MaStatHistory methodsFor: 'accessing' stamp: 'cmm 12/25/2014 18:14'!
summary
	^ self guard critical:
		[ summary ifNil:
			[ summary _ MaHistoricalStat name: 'Totals for ' , name , ':'.
			history do:
				[ : each | summary _ summary + each ] ].
		self isActive
			ifTrue: [ summary + active ]
			ifFalse: [ summary ] ]! !

!MaStatHistory methodsFor: 'accessing' stamp: 'cmm 8/18/2014 10:00'!
total
	^ self sum! !

!MaStatHistory methodsFor: 'accessing' stamp: 'cmm 10/13/2013 12:24'!
transition
	^ self guard critical: 
		[ self isActive ifTrue: [ self archiveActive ].
		self resetTimer.
		active _ MaHistoricalStat name: self name ]! !

!MaStatHistory methodsFor: 'copying' stamp: 'cmm 6/12/2009 13:34'!
archivalCopy
	^ self guard critical: [ self copy postArchivalCopy ]! !

!MaStatHistory methodsFor: 'copying' stamp: 'cmm 6/12/2009 13:42'!
archive: aTimespan 
	^ self guard critical: 
		[ self archivalCopy
			selectHistory: [ : each | aTimespan includes: each timeSpan ] ;
			yourself ]! !

!MaStatHistory methodsFor: 'copying' stamp: 'cmm 12/22/2008 16:26'!
postArchivalCopy
	"#copy answers an 'archival copy, so we shutdown the active'."
	self archiveActive.
	history _ history copy.
	timer _ guard _ nil! !

!MaStatHistory methodsFor: 'private' stamp: 'cmm 3/12/2010 14:39'!
archiveActive
	[ history size = snapshotInterval size ] whileTrue: [ history removeFirst ].
	active ifNotNil: 
		[ | prior |
		active endTime: DateAndTime now.
		prior _ history notEmpty ifTrue: [ history last ].
		(prior notNil and: [ active count = 0 and: [ prior count = 0 ] ]) 
			ifTrue: [ prior endTime: active endTime ]
			ifFalse: [ history addLast: active ] ].
	active _ summary _ nil! !

!MaStatHistory methodsFor: 'private' stamp: 'cmm 8/13/2014 15:55'!
colorFor: statAttributeSelector
self maMarked: 'delete'.
	statAttributeSelector = #min ifTrue: [ ^ Color blue muchDarker ].
	statAttributeSelector = #max ifTrue: [ ^ Color blue muchLighter ].
	statAttributeSelector = #mean ifTrue: [ ^ Color green ].
	statAttributeSelector = #count ifTrue: [ ^ Color yellow ].
	statAttributeSelector = #sum ifTrue: [ ^ Color lightGray ].
	^ Color blue! !

!MaStatHistory methodsFor: 'private' stamp: 'jpb 5/12/2021 19:52:02'!
guard
	^ guard ifNil: [ guard _ MaGuard new ]! !

!MaStatHistory methodsFor: 'private' stamp: 'cmm 6/5/2008 22:23'!
resetTimer
	"Begin a new timer that will transition after my snapshotDuration has elapsed.  Note use of MaTimer will produce an entry in the Process browser."
	"release just in case there was a prior timer."
	self release.
	timer _ MaTimer new
		name: self name ;
		in: self snapshotDuration
			do: [ self transition ].
	startTime _ DateAndTime now! !

!MaStatHistory methodsFor: 'private' stamp: 'cmm 6/12/2009 11:57'!
selectHistory: aBlock
	history _ history select: aBlock! !

!MaStatHistory methodsFor: 'initialize-release' stamp: 'jpb 5/12/2021 19:52:07'!
initialize
	super initialize.
	history _ OrderedCollection new.
	guard _ MaGuard new.
	"Keep 5-minute snapshots of the last 4 days (an entire holiday weekend) at all times."
	self snapshotInterval: (5 to: 60*24*4 by: 5)! !

!MaStatHistory methodsFor: 'initialize-release' stamp: 'cmm 6/26/2008 15:13'!
release
	"This should be called when no longer wishing to capture history so the timer processes will be cleaned up."
	self guard critical: 
		[ "#release should never blow up, even when it is malformed, therefore the nil check."
		timer ifNotNil: [ timer cancel ].
		self isActive ifTrue: [ self archiveActive ] ]! !

!MaStatHistory methodsFor: 'testing' stamp: 'cmm 5/7/2008 17:09'!
isActive
	^ active notNil! !

!MaStatHistory methodsFor: 'printing' stamp: 'cmm 11/21/2008 16:46'!
maPrintAbbreviatedOn: aStream 
	super maPrintAbbreviatedOn: aStream.
	aStream maPrint: self name! !

!MaStatHistory methodsFor: 'maui support' stamp: 'cmm 4/27/2009 20:38'!
mauiDefaultColumns
	^ #(#name #startTime #min #max #mean #sum #count )! !

!MaStatHistory methodsFor: 'plot' stamp: 'cmm 12/22/2008 16:29'!
plot
	(Smalltalk hasClassNamed: #PlotMorph) ifFalse: 
		[ MaEnvironmentError signal: 'PlotMorph must be loaded to perform this function' ].
	^ self plotOn: (Smalltalk classNamed: #PlotMorph) new! !

!MaStatHistory methodsFor: 'plot' stamp: 'jpb 5/12/2021 11:39:09'!
plot: datasets on: aPlotMorph 
	^ (Smalltalk classNamed: #PlotMorph) ifNotNil: 
		[ : plotMorphClass | 
		| pm |
		pm _ plotMorphClass new
			xAxisFormatter: [ : n | (DateAndTime fromSeconds: n) mauiName ] ;
			title: self name ;
			yourself.
		datasets do: 
			[ : eachSelector | 
			| series |
			series _ (pm series: eachSelector) color: (self colorFor: eachSelector).
			self allStats do: 
				[ : eachStat | 
				| point |
				point _ eachStat startTime asSeconds @ (eachStat perform: eachSelector).
				series 
					addPoint: point
					extra: eachStat ] ].
		pm ]! !

!MaStatHistory methodsFor: 'plot' stamp: 'cmm 12/22/2008 14:57'!
plotOn: aPlotMorph 
	^ self 
		plot: #(#min #max #mean )
		on: aPlotMorph! !

!MaStatHistory methodsFor: 'chart' stamp: 'cmm 8/17/2014 18:03'!
seriesOn: attribute 
	| series |
	series _ PlotSeries name: attribute, ' ', self name.
	series type: #bar; drawArea: false.
	history do:
		[ : each | | y |
		y _ each perform: attribute.
		y ifNotNil: [ series addPoint: each endTime asSeconds @ y ] ].
	^ series! !

!MaStatHistory class methodsFor: 'create' stamp: 'cmm 11/21/2008 16:27'!
cleanUp
	self allInstances do: [ : each | each release ]! !

!MaStatHistory class methodsFor: 'create' stamp: 'cmm 5/4/2008 23:19'!
name: aString 
	^ self new
		name: aString ;
		yourself! !
