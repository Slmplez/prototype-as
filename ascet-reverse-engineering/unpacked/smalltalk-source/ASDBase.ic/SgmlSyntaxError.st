"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20034534; bytecode file offset 0x934580"
!SgmlSyntaxError methodsFor: 'recovered'!
argument
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) arguments.
    recoveredValue1 := (recoveredValue0) first.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005b91c; bytecode file offset 0x958548"
!SgmlSyntaxError methodsFor: 'recovered'!
signalException
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SgmlException.
    recoveredValue1 := (recoveredValue0) signalWith: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200671fc; bytecode file offset 0x9646f8"
!SgmlSyntaxError methodsFor: 'recovered'!
code
    | recoveredValue0 |
    recoveredValue0 := code.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068774; bytecode file offset 0x965b90"
!SgmlSyntaxError methodsFor: 'recovered'!
arguments
    | recoveredValue0 |
    recoveredValue0 := arguments.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069d10; bytecode file offset 0x966bdc"
!SgmlSyntaxError methodsFor: 'recovered'!
position
    | recoveredValue0 |
    recoveredValue0 := position.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200762c4; bytecode file offset 0x9757c8"
!SgmlSyntaxError methodsFor: 'recovered'!
isSgmlSyntaxError
    ^true
! !

"ASDBase.ic method 0x200bed88; bytecode file offset 0x9bc0b4"
!SgmlSyntaxError methodsFor: 'recovered'!
code: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    code := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfb2c; bytecode file offset 0x9bd228"
!SgmlSyntaxError methodsFor: 'recovered'!
arguments: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    arguments := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0a40; bytecode file offset 0x9bdf14"
!SgmlSyntaxError methodsFor: 'recovered'!
position: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    position := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2028dfe4; bytecode file offset 0xb8a8f0"
!SgmlSyntaxError methodsFor: 'recovered'!
printOn: recoveredArg1
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := 'SGML Error '.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) code.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := ': '.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) text.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) arguments.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := [:block280e2998Arg1 | 
    | block280e2998Value0 block280e2998Value1 |
    block280e2998Value0 := block280e2998Arg1.
    block280e2998Value1 := (block280e2998Value0) printString.
    block280e2998Value1
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWithArguments: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

