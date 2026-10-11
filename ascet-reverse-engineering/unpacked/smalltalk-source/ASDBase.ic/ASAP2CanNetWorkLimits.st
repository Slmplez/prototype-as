"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004b0f4; bytecode file offset 0x947a60"
!ASAP2CanNetWorkLimits methodsFor: 'recovered'!
waitframeTimeMax
    | recoveredValue0 |
    recoveredValue0 := (self) at: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b2b8; bytecode file offset 0x947d20"
!ASAP2CanNetWorkLimits methodsFor: 'recovered'!
dataLengthMax
    | recoveredValue0 |
    recoveredValue0 := (self) at: (2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a4718; bytecode file offset 0x9a1ad4"
!ASAP2CanNetWorkLimits methodsFor: 'recovered'!
getDataLengthMax: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getInteger: (recoveredValue0).
    (self) dataLengthMax: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a4d78; bytecode file offset 0x9a1ad4"
!ASAP2CanNetWorkLimits methodsFor: 'recovered'!
getWaitFrameTimeMax: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getInteger: (recoveredValue0).
    (self) waitframeTimeMax: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a5d40; bytecode file offset 0x9a27f0"
!ASAP2CanNetWorkLimits methodsFor: 'recovered'!
waitframeTimeMax: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (1) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a5f6c; bytecode file offset 0x9a2a28"
!ASAP2CanNetWorkLimits methodsFor: 'recovered'!
dataLengthMax: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (2) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d6b74; bytecode file offset 0x9d3600"
!ASAP2CanNetWorkLimits methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) putWaitFrameTimeMaxIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putDataLengthMaxIn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200d6cd4; bytecode file offset 0x9d3600"
!ASAP2CanNetWorkLimits methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) getWaitFrameTimeMax: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getDataLengthMax: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200f28ec; bytecode file offset 0x9ef1a8"
!ASAP2CanNetWorkLimits methodsFor: 'recovered'!
parseAtEnd
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) waitframeTimeMax.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataLengthMax.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200fb19c; bytecode file offset 0x9f7ee4"
!ASAP2CanNetWorkLimits methodsFor: 'recovered'!
putWaitFrameTimeMaxIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) waitframeTimeMax.
    (self) putIn: (recoveredValue1) hex: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fb408; bytecode file offset 0x9f7ee4"
!ASAP2CanNetWorkLimits methodsFor: 'recovered'!
putDataLengthMaxIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) dataLengthMax.
    (self) putIn: (recoveredValue1) hex: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20163ae0; bytecode file offset 0xa605cc"
!ASAP2CanNetWorkLimits methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putKeyWordIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putParameterIn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putOptionsIn: (recoveredValue3).
    ^self
! !

