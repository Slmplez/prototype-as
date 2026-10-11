"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2014873c; bytecode file offset 0xa45000"
!AbtEwAutoTabTextEditPolicy methodsFor: 'recovered'!
valueChanged: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) cursorPosition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxLength.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) cursorTab: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20166bb8; bytecode file offset 0xa634b8"
!AbtEwAutoTabTextEditPolicy methodsFor: 'recovered'!
beginEditOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super beginEditOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := XmNvalueChangedCallback.
    (recoveredValue1) addCallback: (recoveredValue2) receiver: (self) selector: ('valueChanged:clientData:callData:') clientData: (nil).
    ^self
! !

"ASDBase.ic method 0x20166bf0; bytecode file offset 0xa634b8"
!AbtEwAutoTabTextEditPolicy methodsFor: 'recovered'!
endEditOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super endEditOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := XmNvalueChangedCallback.
    (recoveredValue1) removeCallback: (recoveredValue2) receiver: (self) selector: ('valueChanged:clientData:callData:') clientData: (nil).
    ^self
! !

