"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x20000a4c; bytecode file offset 0x160d8"
!EsAPIType methodsFor: 'recovered'!
type
    | recoveredValue0 |
    recoveredValue0 := type.
    ^recoveredValue0
! !

"parse.ic method 0x20000a98; bytecode file offset 0x1614c"
!EsAPIType methodsFor: 'recovered'!
qualifiers
    | recoveredValue0 |
    recoveredValue0 := qualifiers.
    ^recoveredValue0
! !

"parse.ic method 0x20001464; bytecode file offset 0x16aec"
!EsAPIType methodsFor: 'recovered'!
isValidReturnType
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PlatformFunction.
    recoveredValue1 := type.
    recoveredValue2 := (recoveredValue1) value.
    recoveredValue3 := (recoveredValue0) isValidReturnType: (recoveredValue2).
    ^recoveredValue3
! !

"parse.ic method 0x20001478; bytecode file offset 0x16aec"
!EsAPIType methodsFor: 'recovered'!
isValidParameterType
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PlatformFunction.
    recoveredValue1 := type.
    recoveredValue2 := (recoveredValue1) value.
    recoveredValue3 := (recoveredValue0) isValidParameterType: (recoveredValue2).
    ^recoveredValue3
! !

"parse.ic method 0x2000148c; bytecode file offset 0x16aec"
!EsAPIType methodsFor: 'recovered'!
isVoid
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := PlatformFunction.
    recoveredValue1 := type.
    recoveredValue2 := (recoveredValue1) value.
    recoveredValue3 := (recoveredValue0) isVoidType: (recoveredValue2).
    ^recoveredValue3
! !

"parse.ic method 0x20004864; bytecode file offset 0x19ed0"
!EsAPIType methodsFor: 'recovered'!
type: recoveredArg1 qualifiers: recoveredArg2 driver: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            type := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            qualifiers := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := PlatformFunction.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := type.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValidConversionType: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := NlsCatESc.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexedMsg: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := type.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) fatalError: (recoveredStack2) token: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"parse.ic method 0x20004d80; bytecode file offset 0x1a3e4"
!EsAPIType methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := type.
    recoveredValue2 := (recoveredValue1) value.
    (recoveredValue0) nextPutAll: (recoveredValue2).
    recoveredValue3 := qualifiers.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 |
    recoveredBlock14Value0 := recoveredArg1.
    recoveredBlock14Value1 := recoveredBlock14Value0.
    (recoveredBlock14Value1) nextPut: ($:).
    recoveredBlock14Value2 := recoveredBlock14Arg1.
    recoveredBlock14Value3 := (recoveredBlock14Value2) value.
    recoveredBlock14Value4 := (recoveredBlock14Value0) nextPutAll: (recoveredBlock14Value3).
    recoveredBlock14Value4
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

