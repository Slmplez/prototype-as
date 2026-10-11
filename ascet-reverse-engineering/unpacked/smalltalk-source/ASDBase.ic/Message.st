"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000f1dc; bytecode file offset 0x90bb38"
!Message methodsFor: 'recovered'!
signals: recoveredArg1 of: recoveredArg2
    ^false
! !

"ASDBase.ic method 0x2005e504; bytecode file offset 0x95adc8"
!Message methodsFor: 'recovered'!
initialize
    arguments := #().
    ^self
! !

"ASDBase.ic method 0x20077544; bytecode file offset 0x9757c8"
!Message methodsFor: 'recovered'!
wbIsMessage
    ^true
! !

"ASDBase.ic method 0x200bad2c; bytecode file offset 0x9b75e4"
!Message methodsFor: 'recovered'!
abrSendTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := selector.
    recoveredValue2 := arguments.
    recoveredValue3 := (recoveredValue0) perform: (recoveredValue1) withArguments: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c855c; bytecode file offset 0x9c4e6c"
!Message methodsFor: 'recovered'!
abrSendTo: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) abrSendTo: (recoveredValue0) withArguments: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201a82d8; bytecode file offset 0xaa4b98"
!Message methodsFor: 'recovered'!
abrSendTo: recoveredArg1 withArguments: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := selector.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := arguments.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack3 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := #().
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := arguments.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) abrReplaceNilValuesWithElementsOf: (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) perform: (recoveredStack2) withArguments: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

