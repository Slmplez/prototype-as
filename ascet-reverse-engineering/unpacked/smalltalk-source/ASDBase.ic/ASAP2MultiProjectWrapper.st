"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001728; bytecode file offset 0x8ffcfc"
!ASAP2MultiProjectWrapper methodsFor: 'recovered'!
initializeAsap2Infos
    ^self
! !

"ASDBase.ic method 0x20003aa8; bytecode file offset 0x90206c"
!ASAP2MultiProjectWrapper methodsFor: 'recovered'!
updateAsap2Infos: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005248; bytecode file offset 0x90206c"
!ASAP2MultiProjectWrapper methodsFor: 'recovered'!
initializeAsap2Infos: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000cafc; bytecode file offset 0x909658"
!ASAP2MultiProjectWrapper methodsFor: 'recovered'!
useableForDevice: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2005d348; bytecode file offset 0x959d74"
!ASAP2MultiProjectWrapper methodsFor: 'recovered'!
isCanMonitoring
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := projects.
    recoveredValue1 := (recoveredValue0) firstOrNil.
    recoveredValue2 := (recoveredValue1) isCanMonitoring.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d3b8; bytecode file offset 0x959d74"
!ASAP2MultiProjectWrapper methodsFor: 'recovered'!
isMeasurementCatalog
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := projects.
    recoveredValue1 := (recoveredValue0) firstOrNil.
    recoveredValue2 := (recoveredValue1) isMeasurementCatalog.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20066284; bytecode file offset 0x963428"
!ASAP2MultiProjectWrapper methodsFor: 'recovered'!
projects
    | recoveredValue0 |
    recoveredValue0 := projects.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073bd8; bytecode file offset 0x970b34"
!ASAP2MultiProjectWrapper methodsFor: 'recovered'!
addrEpk
    ^nil
! !

"ASDBase.ic method 0x20073bf8; bytecode file offset 0x970b34"
!ASAP2MultiProjectWrapper methodsFor: 'recovered'!
epk
    ^nil
! !

"ASDBase.ic method 0x20073cf0; bytecode file offset 0x970b34"
!ASAP2MultiProjectWrapper methodsFor: 'recovered'!
ranges
    ^nil
! !

"ASDBase.ic method 0x2007b6fc; bytecode file offset 0x97c330"
!ASAP2MultiProjectWrapper methodsFor: 'recovered'!
hasAdaptives
    ^false
! !

"ASDBase.ic method 0x200be38c; bytecode file offset 0x9bb178"
!ASAP2MultiProjectWrapper methodsFor: 'recovered'!
projects: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    projects := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2017ee50; bytecode file offset 0xa7b714"
!ASAP2MultiProjectWrapper methodsFor: 'recovered'!
getValidModule
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := projects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := projects.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) getValidModule.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) etasDevHalt.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a77d0; bytecode file offset 0xaa4090"
!ASAP2MultiProjectWrapper methodsFor: 'recovered'!
addCommentInfoToStream: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := projects.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    (recoveredBlock6Value0) addCommentInfoToStream: (recoveredBlock6Value1).
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value2) cr.
    recoveredBlock6Value3
].
    recoveredValue2 := (recoveredValue0) do: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201b1b8c; bytecode file offset 0xaae448"
!ASAP2MultiProjectWrapper methodsFor: 'recovered'!
hasValidModule
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := projects.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) hasValidModule.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 21] ifFalse: [recoveredBlock6PC := 18].
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack1 := false.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^true
! !

"ASDBase.ic method 0x201cb5cc; bytecode file offset 0xac7e9c"
!ASAP2MultiProjectWrapper methodsFor: 'recovered'!
doesNotUnderstand: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := projects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOrNil.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) selector.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) canUnderstand: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := projects.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) firstOrNil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) sendTo: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := super doesNotUnderstand: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022d18c; bytecode file offset 0xb29a54"
!ASAP2MultiProjectWrapper methodsFor: 'recovered'!
allPartProxiesWithUnloaded: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := projects.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 |
    recoveredBlock12Value0 := recoveredLocal1.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := recoveredArg1.
    recoveredBlock12Value3 := (recoveredBlock12Value1) allPartProxiesWithUnloaded: (recoveredBlock12Value2).
    recoveredBlock12Value4 := (recoveredBlock12Value0) addAll: (recoveredBlock12Value3).
    recoveredBlock12Value4
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20284ee0; bytecode file offset 0xb817b8"
!ASAP2MultiProjectWrapper methodsFor: 'recovered'!
projectNamed: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := projects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 recoveredBlock6Value7 recoveredBlock6Value8 recoveredBlock6Value9 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) fileName.
    recoveredBlock6Value2 := (recoveredBlock6Value1) fileNameOnly.
    recoveredBlock6Value3 := (recoveredBlock6Value2) , ('_').
    recoveredBlock6Value4 := recoveredBlock6Arg1.
    recoveredBlock6Value5 := (recoveredBlock6Value4) specification.
    recoveredBlock6Value6 := (recoveredBlock6Value5) name.
    recoveredBlock6Value7 := (recoveredBlock6Value3) , (recoveredBlock6Value6).
    recoveredBlock6Value8 := recoveredArg1.
    recoveredBlock6Value9 := (recoveredBlock6Value7) = (recoveredBlock6Value8).
    recoveredBlock6Value9
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := [:block280e1870Arg1 | 
    | block280e1870Value0 |
    block280e1870Value0 := block280e1870Arg1.
    block280e1870Value0
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifOne: (recoveredStack3) ifNone: (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202d15dc; bytecode file offset 0xbcdeac"
!ASAP2MultiProjectWrapper methodsFor: 'recovered'!
createAsap2ItemForProject: recoveredArg1 parent: recoveredArg2 a2lFile: recoveredArg3 for: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) projects.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSingleAsap2ItemForProject: (recoveredStack1) parent: (recoveredStack2) a2lFile: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRuntime.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) projects.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSingleAsap2ItemForProject: (recoveredStack1) parent: (recoveredStack2) a2lFile: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMultiAsap2ItemForProject: (recoveredStack1) parent: (recoveredStack2) a2lFile: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

