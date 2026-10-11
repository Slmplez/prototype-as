"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000e40; bytecode file offset 0x8ffcfc"
!EtasSystemConstant methodsFor: 'recovered'!
asLabelProxy
    ^self
! !

"ASDBase.ic method 0x20007220; bytecode file offset 0x908be4"
!EtasSystemConstant methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a63c; bytecode file offset 0x92209c"
!EtasSystemConstant methodsFor: 'recovered'!
iconString
    ^'ASAP2_SYSTEMCONSTANTS'
! !

"ASDBase.ic method 0x20066864; bytecode file offset 0x963428"
!EtasSystemConstant methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066b9c; bytecode file offset 0x9646f8"
!EtasSystemConstant methodsFor: 'recovered'!
valueString
    | recoveredValue0 |
    recoveredValue0 := valueString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200954a8; bytecode file offset 0x991fb4"
!EtasSystemConstant methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) name.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200be6e4; bytecode file offset 0x9bb178"
!EtasSystemConstant methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf0c0; bytecode file offset 0x9bc0b4"
!EtasSystemConstant methodsFor: 'recovered'!
valueString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    valueString := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cfd7c; bytecode file offset 0x9cc634"
!EtasSystemConstant methodsFor: 'recovered'!
initialize
    name := ''.
    valueString := ''.
    ^self
! !

"ASDBase.ic method 0x201959ac; bytecode file offset 0xa92278"
!EtasSystemConstant methodsFor: 'recovered'!
printASDInfoOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := ' -> '.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) valueString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

