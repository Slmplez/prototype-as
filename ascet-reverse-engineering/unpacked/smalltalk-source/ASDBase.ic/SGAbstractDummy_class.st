"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006f5a0; bytecode file offset 0x96bf7c"
!SGAbstractDummy class methodsFor: 'recovered'!
viewClass
    | recoveredValue0 |
    recoveredValue0 := viewClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c5a90; bytecode file offset 0x9c25bc"
!SGAbstractDummy class methodsFor: 'recovered'!
viewClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    viewClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2014dac0; bytecode file offset 0xa4a37c"
!SGAbstractDummy class methodsFor: 'recovered'!
create
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := instance.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) initialize.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            instance := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := instance.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

