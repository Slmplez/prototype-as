"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006641c; bytecode file offset 0x963428"
!ASDSpecialInfoImpl methodsFor: 'recovered'!
memoryLocation
    | recoveredValue0 |
    recoveredValue0 := memoryLocation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be25c; bytecode file offset 0x9bb178"
!ASDSpecialInfoImpl methodsFor: 'recovered'!
memoryLocation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    memoryLocation := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bea98; bytecode file offset 0x9bc0b4"
!ASDSpecialInfoImpl methodsFor: 'recovered'!
additionalInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    additionalInfo := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2011575c; bytecode file offset 0xa12014"
!ASDSpecialInfoImpl methodsFor: 'recovered'!
additionalInfo
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := additionalInfo.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            additionalInfo := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := additionalInfo.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20132c44; bytecode file offset 0xa2f50c"
!ASDSpecialInfoImpl methodsFor: 'recovered'!
updateDataElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) extraImplInfo.
    recoveredValue2 := (self) memoryLocation.
    (recoveredValue1) memoryClass: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) extraImplInfo.
    recoveredValue5 := (self) additionalInfo.
    (recoveredValue4) text: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    ^recoveredValue6
! !

