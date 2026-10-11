"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20035dd4; bytecode file offset 0x934580"
!SGNoCodeCoverage class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20054638; bytecode file offset 0x951190"
!SGNoCodeCoverage class methodsFor: 'recovered'!
mcaInstrumentationClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    MCAInstrumentationClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200efdb8; bytecode file offset 0x9ec670"
!SGNoCodeCoverage class methodsFor: 'recovered'!
mcaInstrumentationClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := MCAInstrumentationClass.
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
            recoveredStack1 := MCAInstrumentationClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

