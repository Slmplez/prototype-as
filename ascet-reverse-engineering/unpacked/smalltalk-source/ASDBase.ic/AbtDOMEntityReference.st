"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012d74; bytecode file offset 0x912098"
!AbtDOMEntityReference methodsFor: 'recovered'!
nodeType
    | recoveredValue0 |
    recoveredValue0 := AbtDOMEntityReferenceNode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002dd54; bytecode file offset 0x934580"
!AbtDOMEntityReference methodsFor: 'recovered'!
abrAsString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) value.
    recoveredValue1 := (recoveredValue0) abrAsString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20098b14; bytecode file offset 0x995850"
!AbtDOMEntityReference methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) contents.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) printOn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20109ebc; bytecode file offset 0xa067a8"
!AbtDOMEntityReference methodsFor: 'recovered'!
nodeName
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodeName.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

