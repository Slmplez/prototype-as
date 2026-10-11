"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000488; bytecode file offset 0x615ac"
!SstApplicationContext methodsFor: 'recovered'!
configuration: recoveredArg1
    ^self
! !

"xxx_dyn.ic method 0x200010e4; bytecode file offset 0x626a4"
!SstApplicationContext methodsFor: 'recovered'!
sstMetaInformalType
    ^'application context'
! !

"xxx_dyn.ic method 0x200012a0; bytecode file offset 0x626a4"
!SstApplicationContext methodsFor: 'recovered'!
sstMetaInformation
    ^#(#('Context name' 'name' nil 'info' 'string') #('Restart mode' 'restartMode' 'restartMode:' 'dynamic' 'list' #('SstCleanUpMode' 'SstClearMode' 'SstRestartMode') #('cleanUp' 'clear' 'restart')))
! !

"xxx_dyn.ic method 0x2000259c; bytecode file offset 0x63660"
!SstApplicationContext methodsFor: 'recovered'!
hasBeenSetup
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := space.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000375c; bytecode file offset 0x649e8"
!SstApplicationContext methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003950; bytecode file offset 0x64bac"
!SstApplicationContext methodsFor: 'recovered'!
machine
    | recoveredValue0 |
    recoveredValue0 := machine.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003c84; bytecode file offset 0x64d78"
!SstApplicationContext methodsFor: 'recovered'!
space
    | recoveredValue0 |
    recoveredValue0 := space.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003e10; bytecode file offset 0x64ed4"
!SstApplicationContext methodsFor: 'recovered'!
machines
    | recoveredValue0 |
    recoveredValue0 := machines.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x2000404c; bytecode file offset 0x65178"
!SstApplicationContext methodsFor: 'recovered'!
restartMode
    | recoveredValue0 |
    recoveredValue0 := restartMode.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004214; bytecode file offset 0x65328"
!SstApplicationContext methodsFor: 'recovered'!
properties
    | recoveredValue0 |
    recoveredValue0 := properties.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004748; bytecode file offset 0x6592c"
!SstApplicationContext methodsFor: 'recovered'!
sstIsAdministrable
    ^true
! !

"xxx_dyn.ic method 0x20007268; bytecode file offset 0x6833c"
!SstApplicationContext methodsFor: 'recovered'!
addSpace: recoveredArg1 at: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) addSpace: (recoveredValue0) on: (recoveredValue1) at: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20007274; bytecode file offset 0x6833c"
!SstApplicationContext methodsFor: 'recovered'!
addRemoteSpace: recoveredArg1 at: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) addRemoteSpace: (recoveredValue0) on: (recoveredValue1) at: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x200075e8; bytecode file offset 0x686bc"
!SstApplicationContext methodsFor: 'recovered'!
defaultNamingService
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := SstNamingServiceKey.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20007d4c; bytecode file offset 0x68f50"
!SstApplicationContext methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008040; bytecode file offset 0x69104"
!SstApplicationContext methodsFor: 'recovered'!
machine: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    machine := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008564; bytecode file offset 0x69688"
!SstApplicationContext methodsFor: 'recovered'!
restartMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    restartMode := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200086b0; bytecode file offset 0x6978c"
!SstApplicationContext methodsFor: 'recovered'!
defaultUIHandler: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    defaultUIHandler := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000a7dc; bytecode file offset 0x6b8a4"
!SstApplicationContext methodsFor: 'recovered'!
configuration
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := space.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := space.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) configuration.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000b4fc; bytecode file offset 0x6c5cc"
!SstApplicationContext methodsFor: 'recovered'!
spaces
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := spaces.
    recoveredBlock4Value1 := (recoveredBlock4Value0) values.
    recoveredBlock4Value1
].
    recoveredValue1 := (recoveredValue0) critical.
    recoveredValue2 := (recoveredValue1) asSet.
    ^recoveredValue2
! !

"xxx_dyn.ic method 0x2000c360; bytecode file offset 0x6d434"
!SstApplicationContext methodsFor: 'recovered'!
defaultNamingServiceFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isLocalSpace.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultNamingService.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := SstNamingServiceKey.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstIn: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000eb3c; bytecode file offset 0x6fc0c"
!SstApplicationContext methodsFor: 'recovered'!
spaceFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := spaces.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := [].
    recoveredBlock4Value3 := (recoveredBlock4Value0) at: (recoveredBlock4Value1) ifAbsent: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    recoveredValue1 := (recoveredValue0) critical.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000eb68; bytecode file offset 0x6fc38"
!SstApplicationContext methodsFor: 'recovered'!
machineDescriptionFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := machineDescriptions.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := [].
    recoveredBlock4Value3 := (recoveredBlock4Value0) at: (recoveredBlock4Value1) ifAbsent: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    recoveredValue1 := (recoveredValue0) critical.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000f67c; bytecode file offset 0x70748"
!SstApplicationContext methodsFor: 'recovered'!
spaceFor: recoveredArg1 ifNone: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := spaces.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := recoveredArg2.
    recoveredBlock4Value3 := (recoveredBlock4Value0) at: (recoveredBlock4Value1) ifAbsent: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    recoveredValue1 := (recoveredValue0) critical.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x200104e8; bytecode file offset 0x715c4"
!SstApplicationContext methodsFor: 'recovered'!
defaultNamingServiceAt: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) fetchSpaceAt: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSstError.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := ExSstNonFatalError.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) signalWith: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultNamingServiceFor: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20010670; bytecode file offset 0x71738"
!SstApplicationContext methodsFor: 'recovered'!
cleanUpOnRestart
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := machine.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := machine.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) cleanUpOnRestart.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := space.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := space.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) cleanUpOnRestart.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20011378; bytecode file offset 0x72460"
!SstApplicationContext methodsFor: 'recovered'!
logError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) sstErrorLog.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    recoveredValue3 := Time.
    recoveredValue4 := (recoveredValue3) dateAndTimeNow.
    recoveredValue5 := (recoveredValue4) printString.
    recoveredValue6 := (recoveredValue5) , (' ').
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue6) , (recoveredValue7).
    (recoveredValue1) nextPutAll: (recoveredValue8).
    ^self
! !

"xxx_dyn.ic method 0x200123c0; bytecode file offset 0x734a0"
!SstApplicationContext methodsFor: 'recovered'!
addRemoteSpace: recoveredArg1 on: recoveredArg2 at: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasBeenSetup.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ExSstSetupError.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := NlsCatSSTG.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 32.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexedMsg: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) addMachineDescriptionFor: (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) addRemoteSpace: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20012688; bytecode file offset 0x73758"
!SstApplicationContext methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    machines := recoveredValue1.
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    machineDescriptions := recoveredValue3.
    recoveredValue4 := LookupTable.
    recoveredValue5 := (recoveredValue4) new.
    spaces := recoveredValue5.
    defaultUIHandler := 'SstUIHandler'.
    recoveredValue6 := LookupTable.
    recoveredValue7 := (recoveredValue6) new.
    properties := recoveredValue7.
    ^self
! !

"xxx_dyn.ic method 0x20012c64; bytecode file offset 0x73d3c"
!SstApplicationContext methodsFor: 'recovered'!
removeMachine: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 |
    recoveredBlock4Value0 := machines.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := (recoveredBlock4Value1) name.
    recoveredBlock4Value3 := [].
    (recoveredBlock4Value0) removeKey: (recoveredBlock4Value2) ifAbsent: (recoveredBlock4Value3).
    recoveredBlock4Value4 := recoveredArg1.
    recoveredBlock4Value5 := (recoveredBlock4Value4) context: (nil).
    recoveredBlock4Value5
].
    (recoveredValue0) critical.
    ^self
! !

"xxx_dyn.ic method 0x200136f0; bytecode file offset 0x747c4"
!SstApplicationContext methodsFor: 'recovered'!
addMachine: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 |
    recoveredBlock4Value0 := machines.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := (recoveredBlock4Value1) name.
    recoveredBlock4Value3 := recoveredArg1.
    (recoveredBlock4Value0) at: (recoveredBlock4Value2) put: (recoveredBlock4Value3).
    recoveredBlock4Value4 := recoveredArg1.
    recoveredBlock4Value5 := (recoveredBlock4Value4) context: (self).
    recoveredBlock4Value5
].
    (recoveredValue0) critical.
    ^self
! !

"xxx_dyn.ic method 0x20013e10; bytecode file offset 0x74ee8"
!SstApplicationContext methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) space.
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) nextPut: ($().
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := (self) name.
    (recoveredValue6) nextPutAll: (recoveredValue7).
    (recoveredValue0) nextPut: ($)).
    ^self
! !

"xxx_dyn.ic method 0x20014010; bytecode file offset 0x750ec"
!SstApplicationContext methodsFor: 'recovered'!
sstAdministrableObjects
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 'context'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := space.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 'spaceConfiguration'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := space.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) configuration.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2001561c; bytecode file offset 0x76704"
!SstApplicationContext methodsFor: 'recovered'!
addRemoteSpace: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) id.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) locationName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) urls.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := [:block2800aeccArg1 | 
    | block2800aeccValue0 block2800aeccValue1 |
    block2800aeccValue0 := block2800aeccArg1.
    block2800aeccValue1 := (block2800aeccValue0) sstAsUrl.
    block2800aeccValue1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) addRemoteSpace: (recoveredStack1) on: (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) activation.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) activation: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20018660; bytecode file offset 0x79738"
!SstApplicationContext methodsFor: 'recovered'!
reset
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := machines.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := machines.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block2800b0c4Arg1 | 
    | block2800b0c4Value0 block2800b0c4Value1 |
    block2800b0c4Value0 := block2800b0c4Arg1.
    block2800b0c4Value1 := (block2800b0c4Value0) reset.
    block2800b0c4Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := spaces.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := spaces.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [:block2800b0e8Arg1 | 
    | block2800b0e8Value0 block2800b0e8Value1 |
    block2800b0e8Value0 := block2800b0e8Arg1.
    block2800b0e8Value1 := (block2800b0e8Value0) reset.
    block2800b0e8Value1
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200199ec; bytecode file offset 0x7aabc"
!SstApplicationContext methodsFor: 'recovered'!
isStarted
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := machine.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := machine.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) handlers.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := machine.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) handlers.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack1 := nil.
            recoveredBlock23PC := 31.
        ].
        recoveredBlock23Step = 31 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg1.
            recoveredBlock23PC := 32.
        ].
        recoveredBlock23Step = 32 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) isStarted.
            recoveredBlock23PC := 33.
        ].
        recoveredBlock23Step = 33 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 36] ifFalse: [recoveredBlock23PC := 39].
        ].
        recoveredBlock23Step = 36 ifTrue: [
            recoveredBlock23PC := 37.
        ].
        recoveredBlock23Step = 37 ifTrue: [
            recoveredBlock23Stack1 := true.
            recoveredBlock23PC := 38.
        ].
        recoveredBlock23Step = 38 ifTrue: [
            ^recoveredBlock23Stack1
        ].
        recoveredBlock23Step = 39 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack1.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x20019a2c; bytecode file offset 0x7ab04"
!SstApplicationContext methodsFor: 'recovered'!
defaultUIHandler
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := defaultUIHandler.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) sstIsRemote.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := defaultUIHandler.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := defaultUIHandler.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := defaultUIHandler.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := defaultUIHandler.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) classAt: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            defaultUIHandler := recoveredStack2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x20019b64; bytecode file offset 0x7ac38"
!SstApplicationContext methodsFor: 'recovered'!
spaceHosting: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := spaces.
    recoveredBlock4Value1 := [:recoveredBlock4Block12Arg1 | 
    | recoveredBlock4Block12Stack0 recoveredBlock4Block12Stack1 recoveredBlock4Block12Stack2 recoveredBlock4Block12Stack3 recoveredBlock4Block12Stack4 recoveredBlock4Block12PC recoveredBlock4Block12Step recoveredBlock4Block12Done recoveredBlock4Block12Result |
    recoveredBlock4Block12Stack0 := self.
    recoveredBlock4Block12PC := 18.
    recoveredBlock4Block12Done := false.
    [recoveredBlock4Block12Done not] whileTrue: [
        recoveredBlock4Block12Step := recoveredBlock4Block12PC.
        recoveredBlock4Block12Step = 18 ifTrue: [
            recoveredBlock4Block12Stack1 := nil.
            recoveredBlock4Block12PC := 19.
        ].
        recoveredBlock4Block12Step = 19 ifTrue: [
            recoveredBlock4Block12Stack2 := recoveredBlock4Block12Arg1.
            recoveredBlock4Block12PC := 20.
        ].
        recoveredBlock4Block12Step = 20 ifTrue: [
            recoveredBlock4Block12Stack2 := (recoveredBlock4Block12Stack2) isLocalSpace.
            recoveredBlock4Block12PC := 21.
        ].
        recoveredBlock4Block12Step = 21 ifTrue: [
            (recoveredBlock4Block12Stack2) ifTrue: [recoveredBlock4Block12PC := 37] ifFalse: [recoveredBlock4Block12PC := 24].
        ].
        recoveredBlock4Block12Step = 24 ifTrue: [
            recoveredBlock4Block12PC := 25.
        ].
        recoveredBlock4Block12Step = 25 ifTrue: [
            recoveredBlock4Block12Stack1 := nil.
            recoveredBlock4Block12PC := 26.
        ].
        recoveredBlock4Block12Step = 26 ifTrue: [
            recoveredBlock4Block12Stack2 := recoveredBlock4Block12Arg1.
            recoveredBlock4Block12PC := 27.
        ].
        recoveredBlock4Block12Step = 27 ifTrue: [
            recoveredBlock4Block12Stack3 := recoveredArg1.
            recoveredBlock4Block12PC := 30.
        ].
        recoveredBlock4Block12Step = 30 ifTrue: [
            recoveredBlock4Block12Stack2 := (recoveredBlock4Block12Stack2) canReach: (recoveredBlock4Block12Stack3).
            recoveredBlock4Block12PC := 31.
        ].
        recoveredBlock4Block12Step = 31 ifTrue: [
            (recoveredBlock4Block12Stack2) ifTrue: [recoveredBlock4Block12PC := 34] ifFalse: [recoveredBlock4Block12PC := 37].
        ].
        recoveredBlock4Block12Step = 34 ifTrue: [
            recoveredBlock4Block12PC := 35.
        ].
        recoveredBlock4Block12Step = 35 ifTrue: [
            recoveredBlock4Block12Stack1 := recoveredBlock4Block12Arg1.
            recoveredBlock4Block12PC := 36.
        ].
        recoveredBlock4Block12Step = 36 ifTrue: [
            ^recoveredBlock4Block12Stack1
        ].
        recoveredBlock4Block12Step = 37 ifTrue: [
            recoveredBlock4Block12Result := recoveredBlock4Block12Stack1.
            recoveredBlock4Block12Done := true.
        ].
    ].
    recoveredBlock4Block12Result
].
    recoveredBlock4Value2 := (recoveredBlock4Value0) do: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
    (recoveredValue0) critical.
    ^nil
! !

"xxx_dyn.ic method 0x2001a310; bytecode file offset 0x7b3fc"
!SstApplicationContext methodsFor: 'recovered'!
defaultNamingService: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasBeenSetup.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ExSstSetupError.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := NlsCatSSTG.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 32.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexedMsg: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := space.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := SstNamingServiceKey.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) unexportId: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := space.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := SstNamingServiceKey.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) export: (recoveredStack1) as: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) properties.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := SstNamingServiceKey.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001a370; bytecode file offset 0x7b454"
!SstApplicationContext methodsFor: 'recovered'!
reserveSpaceName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := spaces.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := [
    | recoveredBlock4Block15Value0 recoveredBlock4Block15Value1 recoveredBlock4Block15Value2 recoveredBlock4Block15Value3 recoveredBlock4Block15Value4 recoveredBlock4Block15Value5 recoveredBlock4Block15Value6 recoveredBlock4Block15Value7 |
    recoveredBlock4Block15Value0 := space.
    recoveredBlock4Block15Value1 := (recoveredBlock4Block15Value0) configuration.
    recoveredBlock4Block15Value2 := (recoveredBlock4Block15Value1) remoteSpaceClass.
    recoveredBlock4Block15Value3 := recoveredArg1.
    recoveredBlock4Block15Value4 := (recoveredBlock4Block15Value2) named: (recoveredBlock4Block15Value3).
    recoveredBlock4Block15Value5 := recoveredBlock4Block15Value4.
    recoveredBlock4Block15Value6 := SstInvalidMachine.
    recoveredBlock4Block15Value7 := (recoveredBlock4Block15Value6) context: (self).
    (recoveredBlock4Block15Value5) location: (recoveredBlock4Block15Value7).
    recoveredBlock4Block15Value4
].
    recoveredBlock4Value3 := (recoveredBlock4Value0) at: (recoveredBlock4Value1) ifAbsentPut: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    recoveredValue1 := (recoveredValue0) critical.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2001d55c; bytecode file offset 0x7e63c"
!SstApplicationContext methodsFor: 'recovered'!
removeSpace: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := space.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := space.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := space.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) invalidateHandlesFromSpace: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 recoveredBlock27Value5 recoveredBlock27Value6 |
    recoveredBlock27Value0 := spaces.
    recoveredBlock27Value1 := recoveredArg1.
    recoveredBlock27Value2 := (recoveredBlock27Value1) id.
    recoveredBlock27Value3 := [].
    (recoveredBlock27Value0) removeKey: (recoveredBlock27Value2) ifAbsent: (recoveredBlock27Value3).
    recoveredBlock27Value4 := recoveredArg1.
    recoveredBlock27Value5 := (recoveredBlock27Value4) location.
    recoveredBlock27Value6 := (self) removeMachine: (recoveredBlock27Value5).
    recoveredBlock27Value6
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001e190; bytecode file offset 0x7f280"
!SstApplicationContext methodsFor: 'recovered'!
addSpace: recoveredArg1 on: recoveredArg2 at: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasBeenSetup.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ExSstSetupError.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := NlsCatSSTG.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 34.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexedMsg: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock17Local1 recoveredBlock17Local2 recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 recoveredBlock17Value5 recoveredBlock17Value6 recoveredBlock17Value7 recoveredBlock17Value8 recoveredBlock17Value9 recoveredBlock17Value10 recoveredBlock17Value11 |
    recoveredBlock17Value0 := recoveredArg2.
    recoveredBlock17Value1 := recoveredArg3.
    recoveredBlock17Value2 := (self) addMachineDescriptionFor: (recoveredBlock17Value0) at: (recoveredBlock17Value1).
    recoveredBlock17Local2 := recoveredBlock17Value2.
    recoveredBlock17Value3 := SstObjectSpace.
    recoveredBlock17Value4 := recoveredArg1.
    recoveredBlock17Value5 := (recoveredBlock17Value3) named: (recoveredBlock17Value4).
    recoveredBlock17Value6 := recoveredBlock17Value5.
    recoveredBlock17Local1 := recoveredBlock17Value6.
    recoveredBlock17Value7 := recoveredBlock17Local2.
    (recoveredBlock17Value5) location: (recoveredBlock17Value7).
    recoveredBlock17Value8 := spaces.
    recoveredBlock17Value9 := recoveredArg1.
    recoveredBlock17Value10 := recoveredBlock17Local1.
    recoveredBlock17Value11 := (recoveredBlock17Value8) at: (recoveredBlock17Value9) put: (recoveredBlock17Value10).
    recoveredBlock17Value11
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) critical.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001f5b0; bytecode file offset 0x8069c"
!SstApplicationContext methodsFor: 'recovered'!
rebuildRemoteHandlers
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := machineDescriptions.
    recoveredBlock4Value1 := [:recoveredBlock4Block12Arg1 | 
    | recoveredBlock4Block12Local1 recoveredBlock4Block12Local2 recoveredBlock4Block12Stack0 recoveredBlock4Block12Stack1 recoveredBlock4Block12Stack2 recoveredBlock4Block12Stack3 recoveredBlock4Block12Stack4 recoveredBlock4Block12PC recoveredBlock4Block12Step recoveredBlock4Block12Done recoveredBlock4Block12Result |
    recoveredBlock4Block12Stack0 := self.
    recoveredBlock4Block12PC := 18.
    recoveredBlock4Block12Done := false.
    [recoveredBlock4Block12Done not] whileTrue: [
        recoveredBlock4Block12Step := recoveredBlock4Block12PC.
        recoveredBlock4Block12Step = 18 ifTrue: [
            recoveredBlock4Block12Stack1 := recoveredBlock4Block12Arg1.
            recoveredBlock4Block12PC := 19.
        ].
        recoveredBlock4Block12Step = 19 ifTrue: [
            recoveredBlock4Block12Stack1 := (recoveredBlock4Block12Stack1) buildRemoteMachine.
            recoveredBlock4Block12PC := 20.
        ].
        recoveredBlock4Block12Step = 20 ifTrue: [
            recoveredBlock4Block12Stack2 := recoveredBlock4Block12Stack1.
            recoveredBlock4Block12PC := 21.
        ].
        recoveredBlock4Block12Step = 21 ifTrue: [
            recoveredBlock4Block12Local2 := recoveredBlock4Block12Stack2.
            recoveredBlock4Block12PC := 22.
        ].
        recoveredBlock4Block12Step = 22 ifTrue: [
            recoveredBlock4Block12Stack1 := (recoveredBlock4Block12Stack1) isSstError.
            recoveredBlock4Block12PC := 23.
        ].
        recoveredBlock4Block12Step = 23 ifTrue: [
            (recoveredBlock4Block12Stack1) ifTrue: [recoveredBlock4Block12PC := 26] ifFalse: [recoveredBlock4Block12PC := 28].
        ].
        recoveredBlock4Block12Step = 26 ifTrue: [
            recoveredBlock4Block12Stack1 := recoveredBlock4Block12Local2.
            recoveredBlock4Block12PC := 27.
        ].
        recoveredBlock4Block12Step = 27 ifTrue: [
            ^recoveredBlock4Block12Stack1
        ].
        recoveredBlock4Block12Step = 28 ifTrue: [
            recoveredBlock4Block12Stack1 := machines.
            recoveredBlock4Block12PC := 30.
        ].
        recoveredBlock4Block12Step = 30 ifTrue: [
            recoveredBlock4Block12Stack2 := recoveredBlock4Block12Arg1.
            recoveredBlock4Block12PC := 31.
        ].
        recoveredBlock4Block12Step = 31 ifTrue: [
            recoveredBlock4Block12Stack2 := (recoveredBlock4Block12Stack2) name.
            recoveredBlock4Block12PC := 32.
        ].
        recoveredBlock4Block12Step = 32 ifTrue: [
            recoveredBlock4Block12Stack3 := [].
            recoveredBlock4Block12PC := 34.
        ].
        recoveredBlock4Block12Step = 34 ifTrue: [
            recoveredBlock4Block12Stack1 := (recoveredBlock4Block12Stack1) at: (recoveredBlock4Block12Stack2) ifAbsent: (recoveredBlock4Block12Stack3).
            recoveredBlock4Block12PC := 36.
        ].
        recoveredBlock4Block12Step = 36 ifTrue: [
            recoveredBlock4Block12Stack2 := recoveredBlock4Block12Stack1.
            recoveredBlock4Block12PC := 37.
        ].
        recoveredBlock4Block12Step = 37 ifTrue: [
            recoveredBlock4Block12Local1 := recoveredBlock4Block12Stack2.
            recoveredBlock4Block12PC := 38.
        ].
        recoveredBlock4Block12Step = 38 ifTrue: [
            (recoveredBlock4Block12Stack1 ~~ nil) ifTrue: [recoveredBlock4Block12PC := 50] ifFalse: [recoveredBlock4Block12PC := 42].
        ].
        recoveredBlock4Block12Step = 42 ifTrue: [
            recoveredBlock4Block12Stack1 := self.
            recoveredBlock4Block12PC := 43.
        ].
        recoveredBlock4Block12Step = 43 ifTrue: [
            recoveredBlock4Block12Stack2 := recoveredBlock4Block12Local2.
            recoveredBlock4Block12PC := 44.
        ].
        recoveredBlock4Block12Step = 44 ifTrue: [
            recoveredBlock4Block12Stack1 := (recoveredBlock4Block12Stack1) addMachine: (recoveredBlock4Block12Stack2).
            recoveredBlock4Block12PC := 46.
        ].
        recoveredBlock4Block12Step = 46 ifTrue: [
            recoveredBlock4Block12PC := 56.
        ].
        recoveredBlock4Block12Step = 50 ifTrue: [
            recoveredBlock4Block12Stack1 := recoveredBlock4Block12Local1.
            recoveredBlock4Block12PC := 51.
        ].
        recoveredBlock4Block12Step = 51 ifTrue: [
            recoveredBlock4Block12Stack2 := recoveredBlock4Block12Local2.
            recoveredBlock4Block12PC := 52.
        ].
        recoveredBlock4Block12Step = 52 ifTrue: [
            recoveredBlock4Block12Stack2 := (recoveredBlock4Block12Stack2) handlers.
            recoveredBlock4Block12PC := 54.
        ].
        recoveredBlock4Block12Step = 54 ifTrue: [
            recoveredBlock4Block12Stack1 := (recoveredBlock4Block12Stack1) handlers: (recoveredBlock4Block12Stack2).
            recoveredBlock4Block12PC := 56.
        ].
        recoveredBlock4Block12Step = 56 ifTrue: [
            recoveredBlock4Block12Result := recoveredBlock4Block12Stack1.
            recoveredBlock4Block12Done := true.
        ].
    ].
    recoveredBlock4Block12Result
].
    recoveredBlock4Value2 := (recoveredBlock4Value0) do: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
    (recoveredValue0) critical.
    ^self
! !

"xxx_dyn.ic method 0x20020e98; bytecode file offset 0x81f88"
!SstApplicationContext methodsFor: 'recovered'!
addMachineDescriptionFor: recoveredArg1 at: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg2.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack2 := [:block2800bbbcArg1 | 
    | block2800bbbcValue0 block2800bbbcValue1 |
    block2800bbbcValue0 := block2800bbbcArg1.
    block2800bbbcValue1 := (block2800bbbcValue0) sstAsUrl.
    block2800bbbcValue1
].
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) collect: (recoveredBlock4Stack2).
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack1 := machineDescriptions.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4Stack3 := [].
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) at: (recoveredBlock4Stack2) ifAbsent: (recoveredBlock4Stack3).
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            (recoveredBlock4Stack1 ~~ nil) ifTrue: [recoveredBlock4PC := 60] ifFalse: [recoveredBlock4PC := 38].
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Stack1 := SstMachineDescription.
            recoveredBlock4PC := 40.
        ].
        recoveredBlock4Step = 40 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Local1.
            recoveredBlock4PC := 44.
        ].
        recoveredBlock4Step = 44 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) named: (recoveredBlock4Stack2) withHandlers: (recoveredBlock4Stack3).
            recoveredBlock4PC := 46.
        ].
        recoveredBlock4Step = 46 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 47.
        ].
        recoveredBlock4Step = 47 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 48.
        ].
        recoveredBlock4Step = 48 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 49.
        ].
        recoveredBlock4Step = 49 ifTrue: [
            (recoveredBlock4Stack1) context: (recoveredBlock4Stack2).
            recoveredBlock4PC := 51.
        ].
        recoveredBlock4Step = 51 ifTrue: [
            recoveredBlock4Stack1 := machineDescriptions.
            recoveredBlock4PC := 53.
        ].
        recoveredBlock4Step = 53 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 56.
        ].
        recoveredBlock4Step = 56 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Local2.
            recoveredBlock4PC := 57.
        ].
        recoveredBlock4Step = 57 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) at: (recoveredBlock4Stack2) put: (recoveredBlock4Stack3).
            recoveredBlock4PC := 59.
        ].
        recoveredBlock4Step = 59 ifTrue: [
            ^recoveredBlock4Stack1
        ].
        recoveredBlock4Step = 60 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 61.
        ].
        recoveredBlock4Step = 61 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local1.
            recoveredBlock4PC := 62.
        ].
        recoveredBlock4Step = 62 ifTrue: [
            (recoveredBlock4Stack1) handlers: (recoveredBlock4Stack2).
            recoveredBlock4PC := 64.
        ].
        recoveredBlock4Step = 64 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 65.
        ].
        recoveredBlock4Step = 65 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredValue1 := (recoveredValue0) critical.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20021744; bytecode file offset 0x8283c"
!SstApplicationContext methodsFor: 'recovered'!
startUp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasBeenSetup.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ExSstSetupError.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := NlsCatSSTG.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 37.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexedMsg: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) spaces.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:block2800bc28Arg1 | 
    | block2800bc28Value0 block2800bc28Value1 |
    block2800bc28Value0 := block2800bc28Arg1.
    block2800bc28Value1 := (block2800bc28Value0) startUp.
    block2800bc28Value1
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := machines.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Stack0 recoveredBlock34Stack1 recoveredBlock34Stack2 recoveredBlock34Stack3 recoveredBlock34Stack4 recoveredBlock34PC recoveredBlock34Step recoveredBlock34Done recoveredBlock34Result |
    recoveredBlock34Stack0 := self.
    recoveredBlock34PC := 40.
    recoveredBlock34Done := false.
    [recoveredBlock34Done not] whileTrue: [
        recoveredBlock34Step := recoveredBlock34PC.
        recoveredBlock34Step = 40 ifTrue: [
            recoveredBlock34Stack1 := nil.
            recoveredBlock34PC := 41.
        ].
        recoveredBlock34Step = 41 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Arg1.
            recoveredBlock34PC := 42.
        ].
        recoveredBlock34Step = 42 ifTrue: [
            recoveredBlock34Stack3 := machine.
            recoveredBlock34PC := 44.
        ].
        recoveredBlock34Step = 44 ifTrue: [
            (recoveredBlock34Stack2 == recoveredBlock34Stack3) ifTrue: [recoveredBlock34PC := 52] ifFalse: [recoveredBlock34PC := 48].
        ].
        recoveredBlock34Step = 48 ifTrue: [
            recoveredBlock34PC := 49.
        ].
        recoveredBlock34Step = 49 ifTrue: [
            recoveredBlock34Stack1 := recoveredBlock34Arg1.
            recoveredBlock34PC := 50.
        ].
        recoveredBlock34Step = 50 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) startUp.
            recoveredBlock34PC := 52.
        ].
        recoveredBlock34Step = 52 ifTrue: [
            recoveredBlock34Result := recoveredBlock34Stack1.
            recoveredBlock34Done := true.
        ].
    ].
    recoveredBlock34Result
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := machine.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) startUp.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) configuration.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) callbacks.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := SstStartUpCallback.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1) callData: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20022194; bytecode file offset 0x8327c"
!SstApplicationContext methodsFor: 'recovered'!
shutDown
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) configuration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) callbacks.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := SstShutDownCallback.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1) callData: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := machine.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := machine.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) shutDown.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := machines.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := machines.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := nil.
            recoveredBlock30PC := 37.
        ].
        recoveredBlock30Step = 37 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 38.
        ].
        recoveredBlock30Step = 38 ifTrue: [
            recoveredBlock30Stack3 := machine.
            recoveredBlock30PC := 40.
        ].
        recoveredBlock30Step = 40 ifTrue: [
            (recoveredBlock30Stack2 == recoveredBlock30Stack3) ifTrue: [recoveredBlock30PC := 48] ifFalse: [recoveredBlock30PC := 44].
        ].
        recoveredBlock30Step = 44 ifTrue: [
            recoveredBlock30PC := 45.
        ].
        recoveredBlock30Step = 45 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Arg1.
            recoveredBlock30PC := 46.
        ].
        recoveredBlock30Step = 46 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) shutDown.
            recoveredBlock30PC := 48.
        ].
        recoveredBlock30Step = 48 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := spaces.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) spaces.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := [:block2800bc70Arg1 | 
    | block2800bc70Value0 block2800bc70Value1 |
    block2800bc70Value0 := block2800bc70Arg1.
    block2800bc70Value1 := (block2800bc70Value0) shutDown.
    block2800bc70Value1
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20024418; bytecode file offset 0x85528"
!SstApplicationContext methodsFor: 'recovered'!
buildRemoteSpace: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasBeenSetup.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ExSstSetupError.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := NlsCatSSTG.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 35.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexedMsg: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock17Local1 recoveredBlock17Local2 recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17Stack5 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) location.
            recoveredBlock17PC := 29.
        ].
        recoveredBlock17Step = 29 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) asRemoteMachine.
            recoveredBlock17PC := 31.
        ].
        recoveredBlock17Step = 31 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 32.
        ].
        recoveredBlock17Step = 32 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack2.
            recoveredBlock17PC := 33.
        ].
        recoveredBlock17Step = 33 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) isSstError.
            recoveredBlock17PC := 35.
        ].
        recoveredBlock17Step = 35 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 38] ifFalse: [recoveredBlock17PC := 47].
        ].
        recoveredBlock17Step = 38 ifTrue: [
            recoveredBlock17Stack1 := ExSstSetupError.
            recoveredBlock17PC := 40.
        ].
        recoveredBlock17Step = 40 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 41.
        ].
        recoveredBlock17Step = 41 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) printString.
            recoveredBlock17PC := 43.
        ].
        recoveredBlock17Step = 43 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local1.
            recoveredBlock17PC := 44.
        ].
        recoveredBlock17Step = 44 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) signalWith: (recoveredBlock17Stack2) with: (recoveredBlock17Stack3).
            recoveredBlock17PC := 46.
        ].
        recoveredBlock17Step = 46 ifTrue: [
            ^recoveredBlock17Stack1
        ].
        recoveredBlock17Step = 47 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local1.
            recoveredBlock17PC := 48.
        ].
        recoveredBlock17Step = 48 ifTrue: [
            recoveredBlock17Stack2 := self.
            recoveredBlock17PC := 49.
        ].
        recoveredBlock17Step = 49 ifTrue: [
            (recoveredBlock17Stack1) context: (recoveredBlock17Stack2).
            recoveredBlock17PC := 51.
        ].
        recoveredBlock17Step = 51 ifTrue: [
            recoveredBlock17Stack1 := spaces.
            recoveredBlock17PC := 53.
        ].
        recoveredBlock17Step = 53 ifTrue: [
            recoveredBlock17Stack2 := recoveredArg1.
            recoveredBlock17PC := 56.
        ].
        recoveredBlock17Step = 56 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) id.
            recoveredBlock17PC := 58.
        ].
        recoveredBlock17Step = 58 ifTrue: [
            recoveredBlock17Stack3 := self.
            recoveredBlock17PC := 59.
        ].
        recoveredBlock17Step = 59 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) space.
            recoveredBlock17PC := 61.
        ].
        recoveredBlock17Step = 61 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) configuration.
            recoveredBlock17PC := 63.
        ].
        recoveredBlock17Step = 63 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) remoteSpaceClass.
            recoveredBlock17PC := 65.
        ].
        recoveredBlock17Step = 65 ifTrue: [
            recoveredBlock17Stack4 := recoveredArg1.
            recoveredBlock17PC := 68.
        ].
        recoveredBlock17Step = 68 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) id.
            recoveredBlock17PC := 70.
        ].
        recoveredBlock17Step = 70 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) named: (recoveredBlock17Stack4).
            recoveredBlock17PC := 72.
        ].
        recoveredBlock17Step = 72 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) at: (recoveredBlock17Stack2) put: (recoveredBlock17Stack3).
            recoveredBlock17PC := 74.
        ].
        recoveredBlock17Step = 74 ifTrue: [
            recoveredBlock17Local2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 75.
        ].
        recoveredBlock17Step = 75 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local2.
            recoveredBlock17PC := 76.
        ].
        recoveredBlock17Step = 76 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 77.
        ].
        recoveredBlock17Step = 77 ifTrue: [
            (recoveredBlock17Stack1) location: (recoveredBlock17Stack2).
            recoveredBlock17PC := 79.
        ].
        recoveredBlock17Step = 79 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local2.
            recoveredBlock17PC := 80.
        ].
        recoveredBlock17Step = 80 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) critical.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20024b90; bytecode file offset 0x85c94"
!SstApplicationContext methodsFor: 'recovered'!
buildLocalSpace: recoveredArg1 using: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasBeenSetup.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ExSstSetupError.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := NlsCatSSTG.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 34.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexedMsg: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock17Local1 recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17Stack5 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := spaces.
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            recoveredBlock17Stack2 := recoveredArg1.
            recoveredBlock17PC := 29.
        ].
        recoveredBlock17Step = 29 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) id.
            recoveredBlock17PC := 31.
        ].
        recoveredBlock17Step = 31 ifTrue: [
            recoveredBlock17Stack3 := recoveredArg2.
            recoveredBlock17PC := 34.
        ].
        recoveredBlock17Step = 34 ifTrue: [
            recoveredBlock17Stack4 := recoveredArg1.
            recoveredBlock17PC := 37.
        ].
        recoveredBlock17Step = 37 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) id.
            recoveredBlock17PC := 39.
        ].
        recoveredBlock17Step = 39 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) instantiateNamed: (recoveredBlock17Stack4).
            recoveredBlock17PC := 41.
        ].
        recoveredBlock17Step = 41 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) at: (recoveredBlock17Stack2) put: (recoveredBlock17Stack3).
            recoveredBlock17PC := 43.
        ].
        recoveredBlock17Step = 43 ifTrue: [
            space := recoveredBlock17Stack1.
            recoveredBlock17PC := 45.
        ].
        recoveredBlock17Step = 45 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 48.
        ].
        recoveredBlock17Step = 48 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) location.
            recoveredBlock17PC := 50.
        ].
        recoveredBlock17Step = 50 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) asLocalMachine.
            recoveredBlock17PC := 52.
        ].
        recoveredBlock17Step = 52 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 53.
        ].
        recoveredBlock17Step = 53 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack2.
            recoveredBlock17PC := 54.
        ].
        recoveredBlock17Step = 54 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) isSstError.
            recoveredBlock17PC := 56.
        ].
        recoveredBlock17Step = 56 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 60] ifFalse: [recoveredBlock17PC := 72].
        ].
        recoveredBlock17Step = 60 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 61.
        ].
        recoveredBlock17Step = 61 ifTrue: [
            space := recoveredBlock17Stack1.
            recoveredBlock17PC := 63.
        ].
        recoveredBlock17Step = 63 ifTrue: [
            recoveredBlock17Stack1 := ExSstSetupError.
            recoveredBlock17PC := 65.
        ].
        recoveredBlock17Step = 65 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 66.
        ].
        recoveredBlock17Step = 66 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) printString.
            recoveredBlock17PC := 68.
        ].
        recoveredBlock17Step = 68 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local1.
            recoveredBlock17PC := 69.
        ].
        recoveredBlock17Step = 69 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) signalWith: (recoveredBlock17Stack2) with: (recoveredBlock17Stack3).
            recoveredBlock17PC := 71.
        ].
        recoveredBlock17Step = 71 ifTrue: [
            ^recoveredBlock17Stack1
        ].
        recoveredBlock17Step = 72 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local1.
            recoveredBlock17PC := 73.
        ].
        recoveredBlock17Step = 73 ifTrue: [
            recoveredBlock17Stack2 := self.
            recoveredBlock17PC := 74.
        ].
        recoveredBlock17Step = 74 ifTrue: [
            (recoveredBlock17Stack1) context: (recoveredBlock17Stack2).
            recoveredBlock17PC := 76.
        ].
        recoveredBlock17Step = 76 ifTrue: [
            recoveredBlock17Stack1 := space.
            recoveredBlock17PC := 78.
        ].
        recoveredBlock17Step = 78 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 79.
        ].
        recoveredBlock17Step = 79 ifTrue: [
            (recoveredBlock17Stack1) location: (recoveredBlock17Stack2).
            recoveredBlock17PC := 81.
        ].
        recoveredBlock17Step = 81 ifTrue: [
            recoveredBlock17Stack1 := space.
            recoveredBlock17PC := 83.
        ].
        recoveredBlock17Step = 83 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) critical.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20025c10; bytecode file offset 0x86d04"
!SstApplicationContext methodsFor: 'recovered'!
setupFor: recoveredArg1 using: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasBeenSetup.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ExSstSetupError.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := NlsCatSSTG.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 34.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexedMsg: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 recoveredBlock17Value5 recoveredBlock17Value6 recoveredBlock17Value7 recoveredBlock17Value8 |
    recoveredBlock17Value0 := spaces.
    recoveredBlock17Value1 := recoveredArg1.
    recoveredBlock17Value2 := [
    | recoveredBlock17Block29Value0 recoveredBlock17Block29Value1 recoveredBlock17Block29Value2 recoveredBlock17Block29Value3 recoveredBlock17Block29Value4 recoveredBlock17Block29Value5 |
    recoveredBlock17Block29Value0 := ExSstSetupError.
    recoveredBlock17Block29Value1 := NlsCatSSTG.
    recoveredBlock17Block29Value2 := (recoveredBlock17Block29Value1) indexedMsg: (36).
    recoveredBlock17Block29Value3 := recoveredArg1.
    recoveredBlock17Block29Value4 := (recoveredBlock17Block29Value2) bindWith: (recoveredBlock17Block29Value3).
    recoveredBlock17Block29Value5 := (recoveredBlock17Block29Value0) signalWith: (recoveredBlock17Block29Value4).
    recoveredBlock17Block29Value5
].
    recoveredBlock17Value3 := (recoveredBlock17Value0) at: (recoveredBlock17Value1) ifAbsent: (recoveredBlock17Value2).
    recoveredLocal1 := recoveredBlock17Value3.
    recoveredBlock17Value4 := recoveredLocal1.
    recoveredBlock17Value5 := recoveredArg2.
    (self) buildLocalSpace: (recoveredBlock17Value4) using: (recoveredBlock17Value5).
    recoveredBlock17Value6 := spaces.
    recoveredBlock17Value7 := [:recoveredBlock17Block66Arg1 | 
    | recoveredBlock17Block66Stack0 recoveredBlock17Block66Stack1 recoveredBlock17Block66Stack2 recoveredBlock17Block66Stack3 recoveredBlock17Block66PC recoveredBlock17Block66Step recoveredBlock17Block66Done recoveredBlock17Block66Result |
    recoveredBlock17Block66Stack0 := self.
    recoveredBlock17Block66PC := 72.
    recoveredBlock17Block66Done := false.
    [recoveredBlock17Block66Done not] whileTrue: [
        recoveredBlock17Block66Step := recoveredBlock17Block66PC.
        recoveredBlock17Block66Step = 72 ifTrue: [
            recoveredBlock17Block66Stack1 := nil.
            recoveredBlock17Block66PC := 73.
        ].
        recoveredBlock17Block66Step = 73 ifTrue: [
            recoveredBlock17Block66Stack2 := recoveredBlock17Block66Arg1.
            recoveredBlock17Block66PC := 74.
        ].
        recoveredBlock17Block66Step = 74 ifTrue: [
            recoveredBlock17Block66Stack2 := (recoveredBlock17Block66Stack2) isLocalSpace.
            recoveredBlock17Block66PC := 76.
        ].
        recoveredBlock17Block66Step = 76 ifTrue: [
            (recoveredBlock17Block66Stack2) ifTrue: [recoveredBlock17Block66PC := 85] ifFalse: [recoveredBlock17Block66PC := 80].
        ].
        recoveredBlock17Block66Step = 80 ifTrue: [
            recoveredBlock17Block66PC := 81.
        ].
        recoveredBlock17Block66Step = 81 ifTrue: [
            recoveredBlock17Block66Stack1 := self.
            recoveredBlock17Block66PC := 82.
        ].
        recoveredBlock17Block66Step = 82 ifTrue: [
            recoveredBlock17Block66Stack2 := recoveredBlock17Block66Arg1.
            recoveredBlock17Block66PC := 83.
        ].
        recoveredBlock17Block66Step = 83 ifTrue: [
            recoveredBlock17Block66Stack1 := (recoveredBlock17Block66Stack1) buildRemoteSpace: (recoveredBlock17Block66Stack2).
            recoveredBlock17Block66PC := 85.
        ].
        recoveredBlock17Block66Step = 85 ifTrue: [
            recoveredBlock17Block66Result := recoveredBlock17Block66Stack1.
            recoveredBlock17Block66Done := true.
        ].
    ].
    recoveredBlock17Block66Result
].
    recoveredBlock17Value8 := (recoveredBlock17Value6) do: (recoveredBlock17Value7).
    recoveredBlock17Value8
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) critical.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20025ca8; bytecode file offset 0x86d9c"
!SstApplicationContext methodsFor: 'recovered'!
startUpOnRestart
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := restartMode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := SstClearMode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) clear.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := machine.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := machine.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) startUpOnRestart.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSstError.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := space.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := space.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) startUpOnRestart.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSstError.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := restartMode.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := SstRestartMode.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) startUp.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSstError.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := ExSstSetupError.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := NlsCatSSTG.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := 39.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexedMsg: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) signalWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20025e64; bytecode file offset 0x86f54"
!SstApplicationContext methodsFor: 'recovered'!
addSpace: recoveredArg1 on: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasBeenSetup.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ExSstSetupError.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := NlsCatSSTG.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 34.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexedMsg: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock17Local1 recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 recoveredBlock17Value5 recoveredBlock17Value6 recoveredBlock17Value7 recoveredBlock17Value8 recoveredBlock17Value9 |
    recoveredBlock17Value0 := machines.
    recoveredBlock17Value1 := recoveredArg2.
    recoveredBlock17Value2 := [
    | recoveredBlock17Block29Value0 recoveredBlock17Block29Value1 recoveredBlock17Block29Value2 recoveredBlock17Block29Value3 |
    recoveredBlock17Block29Value0 := machineDescriptions.
    recoveredBlock17Block29Value1 := recoveredArg2.
    recoveredBlock17Block29Value2 := [
    | recoveredBlock17Block29Block41Value0 recoveredBlock17Block29Block41Value1 recoveredBlock17Block29Block41Value2 recoveredBlock17Block29Block41Value3 |
    recoveredBlock17Block29Block41Value0 := ExSstSetupError.
    recoveredBlock17Block29Block41Value1 := NlsCatSSTG.
    recoveredBlock17Block29Block41Value2 := (recoveredBlock17Block29Block41Value1) indexedMsg: (33).
    recoveredBlock17Block29Block41Value3 := (recoveredBlock17Block29Block41Value0) signalWith: (recoveredBlock17Block29Block41Value2).
    ^recoveredBlock17Block29Block41Value3
].
    recoveredBlock17Block29Value3 := (recoveredBlock17Block29Value0) at: (recoveredBlock17Block29Value1) ifAbsent: (recoveredBlock17Block29Value2).
    recoveredBlock17Block29Value3
].
    recoveredBlock17Value3 := (recoveredBlock17Value0) at: (recoveredBlock17Value1) ifAbsent: (recoveredBlock17Value2).
    recoveredBlock17Local1 := recoveredBlock17Value3.
    recoveredBlock17Value4 := spaces.
    recoveredBlock17Value5 := recoveredArg1.
    recoveredBlock17Value6 := [
    | recoveredBlock17Block69Value0 recoveredBlock17Block69Value1 recoveredBlock17Block69Value2 |
    recoveredBlock17Block69Value0 := SstObjectSpace.
    recoveredBlock17Block69Value1 := recoveredArg1.
    recoveredBlock17Block69Value2 := (recoveredBlock17Block69Value0) named: (recoveredBlock17Block69Value1).
    recoveredBlock17Block69Value2
].
    recoveredBlock17Value7 := (recoveredBlock17Value4) at: (recoveredBlock17Value5) ifAbsentPut: (recoveredBlock17Value6).
    recoveredBlock17Value8 := recoveredBlock17Local1.
    recoveredBlock17Value9 := (recoveredBlock17Value7) location: (recoveredBlock17Value8).
    recoveredBlock17Value9
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) critical.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20026014; bytecode file offset 0x87104"
!SstApplicationContext methodsFor: 'recovered'!
clear
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) configuration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) configuration.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) callbacks.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := SstClearCallback.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1) callData: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := machine.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := machine.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) clear.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := machines.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := machines.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := [:block2800bf1cArg1 | 
    | block2800bf1cValue0 block2800bf1cValue1 |
    block2800bf1cValue0 := block2800bf1cArg1.
    block2800bf1cValue1 := (block2800bf1cValue0) clear.
    block2800bf1cValue1
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := spaces.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := spaces.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := [:block2800bf40Arg1 | 
    | block2800bf40Value0 block2800bf40Value1 |
    block2800bf40Value0 := block2800bf40Arg1.
    block2800bf40Value1 := (block2800bf40Value0) clear.
    block2800bf40Value1
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) removeContext: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            properties := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            machineDescriptions := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            spaces := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            space := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            machines := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            machine := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20028fa0; bytecode file offset 0x8a0ac"
!SstApplicationContext methodsFor: 'recovered'!
addRemoteSpace: recoveredArg1 on: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasBeenSetup.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ExSstSetupError.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := NlsCatSSTG.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 32.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexedMsg: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock17Local1 recoveredBlock17Local2 recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := machines.
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            recoveredBlock17Stack2 := recoveredArg2.
            recoveredBlock17PC := 29.
        ].
        recoveredBlock17Step = 29 ifTrue: [
            recoveredBlock17Stack3 := [
    | recoveredBlock17Block29Value0 recoveredBlock17Block29Value1 recoveredBlock17Block29Value2 recoveredBlock17Block29Value3 recoveredBlock17Block29Value4 |
    recoveredBlock17Block29Value0 := machineDescriptions.
    recoveredBlock17Block29Value1 := recoveredArg2.
    recoveredBlock17Block29Value2 := [
    | recoveredBlock17Block29Block41Value0 recoveredBlock17Block29Block41Value1 recoveredBlock17Block29Block41Value2 recoveredBlock17Block29Block41Value3 |
    recoveredBlock17Block29Block41Value0 := ExSstSetupError.
    recoveredBlock17Block29Block41Value1 := NlsCatSSTG.
    recoveredBlock17Block29Block41Value2 := (recoveredBlock17Block29Block41Value1) indexedMsg: (33).
    recoveredBlock17Block29Block41Value3 := (recoveredBlock17Block29Block41Value0) signalWith: (recoveredBlock17Block29Block41Value2).
    ^recoveredBlock17Block29Block41Value3
].
    recoveredBlock17Block29Value3 := (recoveredBlock17Block29Value0) at: (recoveredBlock17Block29Value1) ifAbsent: (recoveredBlock17Block29Value2).
    recoveredBlock17Block29Value4 := (recoveredBlock17Block29Value3) asRemoteMachine.
    recoveredBlock17Block29Value4
].
            recoveredBlock17PC := 63.
        ].
        recoveredBlock17Step = 63 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) at: (recoveredBlock17Stack2) ifAbsent: (recoveredBlock17Stack3).
            recoveredBlock17PC := 65.
        ].
        recoveredBlock17Step = 65 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 66.
        ].
        recoveredBlock17Step = 66 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local1.
            recoveredBlock17PC := 67.
        ].
        recoveredBlock17Step = 67 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) isSstError.
            recoveredBlock17PC := 69.
        ].
        recoveredBlock17Step = 69 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 72] ifFalse: [recoveredBlock17PC := 81].
        ].
        recoveredBlock17Step = 72 ifTrue: [
            recoveredBlock17Stack1 := ExSstSetupError.
            recoveredBlock17PC := 74.
        ].
        recoveredBlock17Step = 74 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 75.
        ].
        recoveredBlock17Step = 75 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) printString.
            recoveredBlock17PC := 77.
        ].
        recoveredBlock17Step = 77 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local1.
            recoveredBlock17PC := 78.
        ].
        recoveredBlock17Step = 78 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) signalWith: (recoveredBlock17Stack2) with: (recoveredBlock17Stack3).
            recoveredBlock17PC := 80.
        ].
        recoveredBlock17Step = 80 ifTrue: [
            ^recoveredBlock17Stack1
        ].
        recoveredBlock17Step = 81 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local1.
            recoveredBlock17PC := 82.
        ].
        recoveredBlock17Step = 82 ifTrue: [
            recoveredBlock17Stack2 := self.
            recoveredBlock17PC := 83.
        ].
        recoveredBlock17Step = 83 ifTrue: [
            (recoveredBlock17Stack1) context: (recoveredBlock17Stack2).
            recoveredBlock17PC := 85.
        ].
        recoveredBlock17Step = 85 ifTrue: [
            recoveredBlock17Stack1 := spaces.
            recoveredBlock17PC := 87.
        ].
        recoveredBlock17Step = 87 ifTrue: [
            recoveredBlock17Stack2 := recoveredArg1.
            recoveredBlock17PC := 90.
        ].
        recoveredBlock17Step = 90 ifTrue: [
            recoveredBlock17Stack3 := [
    | recoveredBlock17Block90Value0 recoveredBlock17Block90Value1 recoveredBlock17Block90Value2 recoveredBlock17Block90Value3 recoveredBlock17Block90Value4 |
    recoveredBlock17Block90Value0 := (self) space.
    recoveredBlock17Block90Value1 := (recoveredBlock17Block90Value0) configuration.
    recoveredBlock17Block90Value2 := (recoveredBlock17Block90Value1) remoteSpaceClass.
    recoveredBlock17Block90Value3 := recoveredArg1.
    recoveredBlock17Block90Value4 := (recoveredBlock17Block90Value2) named: (recoveredBlock17Block90Value3).
    recoveredBlock17Block90Value4
].
            recoveredBlock17PC := 108.
        ].
        recoveredBlock17Step = 108 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) at: (recoveredBlock17Stack2) ifAbsentPut: (recoveredBlock17Stack3).
            recoveredBlock17PC := 110.
        ].
        recoveredBlock17Step = 110 ifTrue: [
            recoveredBlock17Local2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 111.
        ].
        recoveredBlock17Step = 111 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local2.
            recoveredBlock17PC := 112.
        ].
        recoveredBlock17Step = 112 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 113.
        ].
        recoveredBlock17Step = 113 ifTrue: [
            (recoveredBlock17Stack1) location: (recoveredBlock17Stack2).
            recoveredBlock17PC := 115.
        ].
        recoveredBlock17Step = 115 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local2.
            recoveredBlock17PC := 116.
        ].
        recoveredBlock17Step = 116 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) critical.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2002a724; bytecode file offset 0x8b840"
!SstApplicationContext methodsFor: 'recovered'!
fetchSpaceAt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasBeenSetup.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ExSstSetupError.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := NlsCatSSTG.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 32.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexedMsg: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) sstAsRemoteEndpoint.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSstError.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) spaceHosting: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := space.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) handlers.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Stack0 recoveredBlock58Stack1 recoveredBlock58Stack2 recoveredBlock58Stack3 recoveredBlock58Stack4 recoveredBlock58PC recoveredBlock58Step recoveredBlock58Done recoveredBlock58Result |
    recoveredBlock58Stack0 := self.
    recoveredBlock58PC := 64.
    recoveredBlock58Done := false.
    [recoveredBlock58Done not] whileTrue: [
        recoveredBlock58Step := recoveredBlock58PC.
        recoveredBlock58Step = 64 ifTrue: [
            recoveredBlock58Stack1 := nil.
            recoveredBlock58PC := 65.
        ].
        recoveredBlock58Step = 65 ifTrue: [
            recoveredBlock58Stack2 := recoveredBlock58Arg1.
            recoveredBlock58PC := 66.
        ].
        recoveredBlock58Step = 66 ifTrue: [
            recoveredBlock58Stack2 := (recoveredBlock58Stack2) endpoint.
            recoveredBlock58PC := 68.
        ].
        recoveredBlock58Step = 68 ifTrue: [
            recoveredBlock58Stack3 := recoveredLocal1.
            recoveredBlock58PC := 71.
        ].
        recoveredBlock58Step = 71 ifTrue: [
            recoveredBlock58Stack2 := (recoveredBlock58Stack2) representsSameLocationAs: (recoveredBlock58Stack3).
            recoveredBlock58PC := 73.
        ].
        recoveredBlock58Step = 73 ifTrue: [
            (recoveredBlock58Stack2) ifTrue: [recoveredBlock58PC := 76] ifFalse: [recoveredBlock58PC := 80].
        ].
        recoveredBlock58Step = 76 ifTrue: [
            recoveredBlock58PC := 77.
        ].
        recoveredBlock58Step = 77 ifTrue: [
            recoveredBlock58Stack1 := space.
            recoveredBlock58PC := 79.
        ].
        recoveredBlock58Step = 79 ifTrue: [
            ^recoveredBlock58Stack1
        ].
        recoveredBlock58Step = 80 ifTrue: [
            recoveredBlock58Result := recoveredBlock58Stack1.
            recoveredBlock58Done := true.
        ].
    ].
    recoveredBlock58Result
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := SstRemoteInvocationHandler.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) to: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := DirectedMessage.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := 'sstReceivingSpace'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack4 := #().
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) arguments: (recoveredStack4).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) invoke: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock106Value0 recoveredBlock106Value1 recoveredBlock106Value2 recoveredBlock106Value3 recoveredBlock106Value4 |
    recoveredBlock106Value0 := spaces.
    recoveredBlock106Value1 := recoveredLocal3.
    recoveredBlock106Value2 := (recoveredBlock106Value1) id.
    recoveredBlock106Value3 := [
    | recoveredBlock106Block119Value0 |
    recoveredBlock106Block119Value0 := recoveredLocal3.
    recoveredBlock106Block119Value0
].
    recoveredBlock106Value4 := (recoveredBlock106Value0) at: (recoveredBlock106Value2) ifAbsentPut: (recoveredBlock106Value3).
    recoveredBlock106Value4
].
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) critical.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

