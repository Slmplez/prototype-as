"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20065d54; bytecode file offset 0x963428"
!EtasUserInterfaceAPI methodsFor: 'recovered'!
etasMainAPI
    | recoveredValue0 |
    recoveredValue0 := etasMainAPI.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067844; bytecode file offset 0x9646f8"
!EtasUserInterfaceAPI methodsFor: 'recovered'!
view
    | recoveredValue0 |
    recoveredValue0 := view.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074bb4; bytecode file offset 0x9757c8"
!EtasUserInterfaceAPI methodsFor: 'recovered'!
isUserInterface
    ^true
! !

"ASDBase.ic method 0x2007af9c; bytecode file offset 0x97c330"
!EtasUserInterfaceAPI methodsFor: 'recovered'!
isDialog
    ^false
! !

"ASDBase.ic method 0x2007ea5c; bytecode file offset 0x97c330"
!EtasUserInterfaceAPI methodsFor: 'recovered'!
isView
    ^false
! !

"ASDBase.ic method 0x200bdbd4; bytecode file offset 0x9bb178"
!EtasUserInterfaceAPI methodsFor: 'recovered'!
etasMainAPI: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    etasMainAPI := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200beeb8; bytecode file offset 0x9bc0b4"
!EtasUserInterfaceAPI methodsFor: 'recovered'!
view: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    view := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cc594; bytecode file offset 0x9c8f90"
!EtasUserInterfaceAPI methodsFor: 'recovered'!
getElements
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) etasMainAPI.
    recoveredValue2 := (self) view.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e5908; bytecode file offset 0x9e21d4"
!EtasUserInterfaceAPI methodsFor: 'recovered'!
isValid
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) view.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014ff4c; bytecode file offset 0xa4c830"
!EtasUserInterfaceAPI methodsFor: 'recovered'!
bringToFront
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValid.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := EtasAPIError.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 20.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithErrorCode: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) view.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) bringToFront.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20218c4c; bytecode file offset 0xb15520"
!EtasUserInterfaceAPI methodsFor: 'recovered'!
close
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValid.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := EtasAPIError.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 20.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithErrorCode: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := CwAppContext.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 |
    recoveredBlock18Value0 := (self) view.
    recoveredBlock18Value1 := (recoveredBlock18Value0) close.
    recoveredBlock18Value1
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) syncExecInUI: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

