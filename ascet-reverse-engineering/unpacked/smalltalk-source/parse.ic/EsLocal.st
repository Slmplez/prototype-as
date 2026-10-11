"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x200004b0; bytecode file offset 0x15b04"
!EsLocal methodsFor: 'recovered'!
isValidStoreTarget
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := isArgument.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"parse.ic method 0x20000590; bytecode file offset 0x15be4"
!EsLocal methodsFor: 'recovered'!
asArgument
    isArgument := true.
    ^self
! !

"parse.ic method 0x20000aa8; bytecode file offset 0x1614c"
!EsLocal methodsFor: 'recovered'!
isEsArgument
    | recoveredValue0 |
    recoveredValue0 := isArgument.
    ^recoveredValue0
! !

"parse.ic method 0x20000d44; bytecode file offset 0x163a0"
!EsLocal methodsFor: 'recovered'!
defined
    ^false
! !

"parse.ic method 0x20000f5c; bytecode file offset 0x165b4"
!EsLocal methodsFor: 'recovered'!
valueOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) pushTemp: (self).
    ^self
! !

"parse.ic method 0x20001e3c; bytecode file offset 0x17498"
!EsLocal methodsFor: 'recovered'!
initialize
    super initialize.
    isArgument := false.
    ^self
! !

"parse.ic method 0x20004198; bytecode file offset 0x197fc"
!EsLocal methodsFor: 'recovered'!
storeOn: recoveredArg1 valueRequired: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := isArgument.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := NlsCatESa.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexedMsg: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) fatalError: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) popTemp: (recoveredStack2) valueRequired: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

