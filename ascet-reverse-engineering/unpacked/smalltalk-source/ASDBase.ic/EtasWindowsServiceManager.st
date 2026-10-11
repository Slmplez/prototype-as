"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006ca4; bytecode file offset 0x908be4"
!EtasWindowsServiceManager methodsFor: 'recovered'!
finalize
    | recoveredValue0 |
    recoveredValue0 := (self) close.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200662b4; bytecode file offset 0x963428"
!EtasWindowsServiceManager methodsFor: 'recovered'!
handle
    | recoveredValue0 |
    recoveredValue0 := handle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067cac; bytecode file offset 0x9646f8"
!EtasWindowsServiceManager methodsFor: 'recovered'!
machineName
    | recoveredValue0 |
    recoveredValue0 := machineName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006882c; bytecode file offset 0x965b90"
!EtasWindowsServiceManager methodsFor: 'recovered'!
databaseName
    | recoveredValue0 |
    recoveredValue0 := databaseName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a0e8; bytecode file offset 0x966bdc"
!EtasWindowsServiceManager methodsFor: 'recovered'!
desiredAccess
    | recoveredValue0 |
    recoveredValue0 := desiredAccess.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200943c0; bytecode file offset 0x990cac"
!EtasWindowsServiceManager methodsFor: 'recovered'!
openService: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ServiceAllAccess.
    recoveredValue2 := (self) openService: (recoveredValue0) access: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200943d0; bytecode file offset 0x990cac"
!EtasWindowsServiceManager methodsFor: 'recovered'!
openServiceForStart: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ServiceStart.
    recoveredValue2 := (self) openService: (recoveredValue0) access: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200be2d4; bytecode file offset 0x9bb178"
!EtasWindowsServiceManager methodsFor: 'recovered'!
handle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    handle := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200be938; bytecode file offset 0x9bc0b4"
!EtasWindowsServiceManager methodsFor: 'recovered'!
machineName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    machineName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf854; bytecode file offset 0x9bd228"
!EtasWindowsServiceManager methodsFor: 'recovered'!
databaseName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    databaseName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0de8; bytecode file offset 0x9bdf14"
!EtasWindowsServiceManager methodsFor: 'recovered'!
desiredAccess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    desiredAccess := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d86c0; bytecode file offset 0x9d4f84"
!EtasWindowsServiceManager methodsFor: 'recovered'!
openServiceForStartStop: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ServiceStart.
    recoveredValue2 := ServiceStop.
    recoveredValue3 := (recoveredValue1) bitOr: (recoveredValue2).
    recoveredValue4 := (self) openService: (recoveredValue0) access: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2010d9b0; bytecode file offset 0xa0a278"
!EtasWindowsServiceManager methodsFor: 'recovered'!
openServiceForStartStopStatus: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ServiceStart.
    recoveredValue2 := ServiceStop.
    recoveredValue3 := (recoveredValue1) bitOr: (recoveredValue2).
    recoveredValue4 := ServiceQueryStatus.
    recoveredValue5 := (recoveredValue3) bitOr: (recoveredValue4).
    recoveredValue6 := (self) openService: (recoveredValue0) access: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20172128; bytecode file offset 0xa6ea34"
!EtasWindowsServiceManager methodsFor: 'recovered'!
close
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) handle.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    (recoveredBlock5Value0) closeServiceHandle.
    recoveredBlock5Value1 := (self) handle: (nil).
    recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201eb264; bytecode file offset 0xae7b38"
!EtasWindowsServiceManager methodsFor: 'recovered'!
open
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OSScHandle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) machineName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) databaseName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := (recoveredStack4) desiredAccess.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) openSCManager: (recoveredStack2) lpDatabaseName: (recoveredStack3) dwDesiredAccess: (recoveredStack4).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNull.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) handle: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) handle.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20337534; bytecode file offset 0xc33e0c"
!EtasWindowsServiceManager methodsFor: 'recovered'!
openService: recoveredArg1 access: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) handle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [
    ^nil
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) handle.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) openService: (recoveredStack1) dwDesiredAccess: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) notNull.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := EtasWindowsService.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) name: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) desiredAccess: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) handle: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

