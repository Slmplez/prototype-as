"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004ba90; bytecode file offset 0x948384"
!ASAP2CalibrationMethodIFData methodsFor: 'recovered'!
list
    | recoveredValue0 |
    recoveredValue0 := (self) at: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a5178; bytecode file offset 0x9a1ad4"
!ASAP2CalibrationMethodIFData methodsFor: 'recovered'!
getList: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getIntegerList: (recoveredValue0).
    (self) list: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a63e0; bytecode file offset 0x9a2f38"
!ASAP2CalibrationMethodIFData methodsFor: 'recovered'!
list: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200aa0e0; bytecode file offset 0x9a69f0"
!ASAP2CalibrationMethodIFData methodsFor: 'recovered'!
getIntegerList: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) keyWords.
    recoveredValue3 := (self) getIntegerList: (recoveredValue0) upToOneOff: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200fb5ac; bytecode file offset 0x9f7ee4"
!ASAP2CalibrationMethodIFData methodsFor: 'recovered'!
putListIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) list.
    (self) putIn: (recoveredValue1) integerList: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2013395c; bytecode file offset 0xa3021c"
!ASAP2CalibrationMethodIFData methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) putNameIn: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) putListIn: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20163d38; bytecode file offset 0xa60614"
!ASAP2CalibrationMethodIFData methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) getShortBegin: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getName: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) getList: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) parse: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201e5828; bytecode file offset 0xae2128"
!ASAP2CalibrationMethodIFData methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (self) putBeginIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putKeyWordIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putParameterIn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) putEndIn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) putKeyWordIn: (recoveredValue5).
    ^self
! !

