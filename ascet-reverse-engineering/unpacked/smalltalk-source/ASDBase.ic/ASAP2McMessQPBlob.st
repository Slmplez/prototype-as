"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004bc90; bytecode file offset 0x94877c"
!ASAP2McMessQPBlob methodsFor: 'recovered'!
samplingType
    | recoveredValue0 |
    recoveredValue0 := (self) at: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c1a8; bytecode file offset 0x948b80"
!ASAP2McMessQPBlob methodsFor: 'recovered'!
maxSize
    | recoveredValue0 |
    recoveredValue0 := (self) at: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20058a58; bytecode file offset 0x956284"
!ASAP2McMessQPBlob methodsFor: 'recovered'!
shouldBeParsed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) constants.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includesKey: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a674c; bytecode file offset 0x9a32e0"
!ASAP2McMessQPBlob methodsFor: 'recovered'!
samplingType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (5) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6da0; bytecode file offset 0x9a3694"
!ASAP2McMessQPBlob methodsFor: 'recovered'!
maxSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (6) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d6b04; bytecode file offset 0x9d3600"
!ASAP2McMessQPBlob methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) putSamplingTypeIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putMaxSizeIn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201f3848; bytecode file offset 0xaf0118"
!ASAP2McMessQPBlob methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    (self) getShortBegin: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getSamplingType: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) getMaxSize: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) keyWord.
    recoveredValue6 := (self) class.
    recoveredValue7 := (recoveredValue6) keyWords.
    (self) skipToEnd: (recoveredValue3) of: (recoveredValue5) keyWords: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x202057b0; bytecode file offset 0xb0207c"
!ASAP2McMessQPBlob methodsFor: 'recovered'!
constants
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('HANDSHAKE') put: (0).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('ANGLE') put: (8).
    (recoveredValue2) at: ('TIME') put: (12).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x202e6a2c; bytecode file offset 0xbe330c"
!ASAP2McMessQPBlob methodsFor: 'recovered'!
getSamplingType: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getString: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) constants.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) asUppercase.
    recoveredValue5 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 recoveredBlock18Value6 recoveredBlock18Value7 |
    recoveredBlock18Value0 := SCASAP2MissingEnumValue.
    recoveredBlock18Value1 := recoveredLocal1.
    recoveredBlock18Value2 := (self) constants.
    recoveredBlock18Value3 := (recoveredBlock18Value2) keys.
    recoveredBlock18Value4 := (recoveredBlock18Value3) printString.
    recoveredBlock18Value5 := (recoveredBlock18Value0) bindWith: (recoveredBlock18Value1) with: (recoveredBlock18Value4).
    (self) monitorWarning: (recoveredBlock18Value5).
    recoveredBlock18Value6 := recoveredLocal1.
    recoveredBlock18Value7 := (recoveredBlock18Value6) asInteger.
    recoveredBlock18Value7
].
    recoveredValue6 := (recoveredValue2) at: (recoveredValue4) ifAbsent: (recoveredValue5).
    (self) samplingType: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20327738; bytecode file offset 0xc2402c"
!ASAP2McMessQPBlob methodsFor: 'recovered'!
putSamplingTypeIn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) samplingType.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) putSeparatorIn: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInteger.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) constants.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 |
    recoveredBlock27Value0 := recoveredArg1.
    recoveredBlock27Value1 := recoveredLocal1.
    recoveredBlock27Value2 := (self) putIn: (recoveredBlock27Value0) integer: (recoveredBlock27Value1).
    ^recoveredBlock27Value2
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) keyAtValue: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

