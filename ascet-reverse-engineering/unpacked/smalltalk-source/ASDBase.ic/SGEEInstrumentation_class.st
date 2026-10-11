"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002a014; bytecode file offset 0x934580"
!SGEEInstrumentation class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20054404; bytecode file offset 0x951190"
!SGEEInstrumentation class methodsFor: 'recovered'!
eeInstrumentationClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    EEInstrumentationClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d9c9c; bytecode file offset 0x9d6868"
!SGEEInstrumentation class methodsFor: 'recovered'!
createForSimController: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) simController: (recoveredValue3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200efdac; bytecode file offset 0x9ec670"
!SGEEInstrumentation class methodsFor: 'recovered'!
eeInstrumentationClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EEInstrumentationClass.
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
            recoveredStack1 := EEInstrumentationClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

