"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"drgdrp.ic method 0x20000434; bytecode file offset 0x5894"
!CwBasicWidget methodsFor: 'recovered'!
dropSite
    | recoveredValue0 |
    recoveredValue0 := cwDropSite.
    ^recoveredValue0
! !

"drgdrp.ic method 0x200004e4; bytecode file offset 0x595c"
!CwBasicWidget methodsFor: 'recovered'!
callDropProc: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dropSite.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) callDropProc: (recoveredValue1).
    ^self
! !

"drgdrp.ic method 0x200004f4; bytecode file offset 0x595c"
!CwBasicWidget methodsFor: 'recovered'!
callDragProc: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dropSite.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) callDragProc: (recoveredValue1).
    ^self
! !

"drgdrp.ic method 0x20000548; bytecode file offset 0x59c8"
!CwBasicWidget methodsFor: 'recovered'!
callTransferProc: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CwDropTransfer.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) callTransferProc: (recoveredValue2).
    ^self
! !

"drgdrp.ic method 0x2000055c; bytecode file offset 0x59c8"
!CwBasicWidget methodsFor: 'recovered'!
callConvertProc: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CwDragContext.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) callConvertProc: (recoveredValue2).
    ^self
! !

"drgdrp.ic method 0x200007b4; bytecode file offset 0x5c14"
!CwBasicWidget methodsFor: 'recovered'!
dropSite: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cwDropSite := recoveredValue0.
    ^self
! !

"drgdrp.ic method 0x2000080c; bytecode file offset 0x5c74"
!CwBasicWidget methodsFor: 'recovered'!
dragStart: recoveredArg1 argBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CwDragContext.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) for: (self) event: (recoveredValue1) argBlock: (recoveredValue2).
    ^recoveredValue3
! !

"drgdrp.ic method 0x200008bc; bytecode file offset 0x5d24"
!CwBasicWidget methodsFor: 'recovered'!
dropSiteRegister: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CwDropSite.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) for: (self) argBlock: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    cwDropSite := recoveredValue3.
    ^recoveredValue2
! !

"drgdrp.ic method 0x20000a10; bytecode file offset 0x5e74"
!CwBasicWidget methodsFor: 'recovered'!
dropSiteUnregister
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := cwDropSite.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := cwDropSite.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) dropSiteUnregister.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            cwDropSite := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

