"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20001564; bytecode file offset 0x7d728"
!CwDataConversionEntry methodsFor: 'recovered'!
reversible
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := converterClass.
    recoveredValue1 := (recoveredValue0) reversible.
    ^recoveredValue1
! !

"winsys.ic method 0x20002948; bytecode file offset 0x7ed00"
!CwDataConversionEntry methodsFor: 'recovered'!
formatName
    | recoveredValue0 |
    recoveredValue0 := formatName.
    ^recoveredValue0
! !

"winsys.ic method 0x20002c48; bytecode file offset 0x7efc0"
!CwDataConversionEntry methodsFor: 'recovered'!
interchangeFormat
    | recoveredValue0 |
    recoveredValue0 := interchangeFormat.
    ^recoveredValue0
! !

"winsys.ic method 0x20002f68; bytecode file offset 0x7f220"
!CwDataConversionEntry methodsFor: 'recovered'!
converterClass
    | recoveredValue0 |
    recoveredValue0 := converterClass.
    ^recoveredValue0
! !

"winsys.ic method 0x2000720c; bytecode file offset 0x8346c"
!CwDataConversionEntry methodsFor: 'recovered'!
formatName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    formatName := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000742c; bytecode file offset 0x836b4"
!CwDataConversionEntry methodsFor: 'recovered'!
interchangeFormat: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    interchangeFormat := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000758c; bytecode file offset 0x838d4"
!CwDataConversionEntry methodsFor: 'recovered'!
converterClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    converterClass := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000aebc; bytecode file offset 0x87094"
!CwDataConversionEntry methodsFor: 'recovered'!
convert: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := converterClass.
    recoveredValue1 := formatName.
    recoveredValue2 := interchangeFormat.
    recoveredValue3 := (recoveredValue0) formatName: (recoveredValue1) interchangeFormat: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) convert: (recoveredValue4).
    ^recoveredValue5
! !

"winsys.ic method 0x2000aecc; bytecode file offset 0x87094"
!CwDataConversionEntry methodsFor: 'recovered'!
unconvert: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := converterClass.
    recoveredValue1 := formatName.
    recoveredValue2 := interchangeFormat.
    recoveredValue3 := (recoveredValue0) formatName: (recoveredValue1) interchangeFormat: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) unconvert: (recoveredValue4).
    ^recoveredValue5
! !

"winsys.ic method 0x20024650; bytecode file offset 0xa082c"
!CwDataConversionEntry methodsFor: 'recovered'!
printOn: recoveredArg1
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := ${.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) nextPut: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := converterClass.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := ':'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := formatName.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) reversible.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := ' <-> '.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := ' -> '.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := interchangeFormat.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := $}.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

