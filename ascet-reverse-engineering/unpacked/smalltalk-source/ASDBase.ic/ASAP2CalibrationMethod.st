"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200183a4; bytecode file offset 0x92209c"
!ASAP2CalibrationMethod methodsFor: 'recovered'!
getModParSetMethod
    ^'addCalibrationMethod:'
! !

"ASDBase.ic method 0x2004ba30; bytecode file offset 0x948384"
!ASAP2CalibrationMethod methodsFor: 'recovered'!
method
    | recoveredValue0 |
    recoveredValue0 := (self) at: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004bc0c; bytecode file offset 0x94877c"
!ASAP2CalibrationMethod methodsFor: 'recovered'!
version
    | recoveredValue0 |
    recoveredValue0 := (self) at: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004bfec; bytecode file offset 0x948b80"
!ASAP2CalibrationMethod methodsFor: 'recovered'!
ifData
    | recoveredValue0 |
    recoveredValue0 := (self) at: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c408; bytecode file offset 0x948e28"
!ASAP2CalibrationMethod methodsFor: 'recovered'!
calibrationHandle
    | recoveredValue0 |
    recoveredValue0 := (self) at: (7).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a4768; bytecode file offset 0x9a1ad4"
!ASAP2CalibrationMethod methodsFor: 'recovered'!
getMethod: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getString: (recoveredValue0).
    (self) method: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a4858; bytecode file offset 0x9a1ad4"
!ASAP2CalibrationMethod methodsFor: 'recovered'!
getVersion: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getInteger: (recoveredValue0).
    (self) version: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a650c; bytecode file offset 0x9a2f38"
!ASAP2CalibrationMethod methodsFor: 'recovered'!
method: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a66ec; bytecode file offset 0x9a32e0"
!ASAP2CalibrationMethod methodsFor: 'recovered'!
version: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (5) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6c2c; bytecode file offset 0x9a3694"
!ASAP2CalibrationMethod methodsFor: 'recovered'!
ifData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (6) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6f68; bytecode file offset 0x9a391c"
!ASAP2CalibrationMethod methodsFor: 'recovered'!
calibrationHandle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (7) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d6b34; bytecode file offset 0x9d3600"
!ASAP2CalibrationMethod methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) putMethodIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putVersionIn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200fb444; bytecode file offset 0x9f7ee4"
!ASAP2CalibrationMethod methodsFor: 'recovered'!
putVersionIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) version.
    (self) putIn: (recoveredValue1) integer: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fb4a8; bytecode file offset 0x9f7ee4"
!ASAP2CalibrationMethod methodsFor: 'recovered'!
putMethodIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) method.
    (self) putIn: (recoveredValue1) quotedString: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20125b44; bytecode file offset 0xa22600"
!ASAP2CalibrationMethod methodsFor: 'recovered'!
getIfData: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2CalibrationMethodIFData.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    (self) addIFData: (recoveredValue1).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) getFrom: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20125ba4; bytecode file offset 0xa22600"
!ASAP2CalibrationMethod methodsFor: 'recovered'!
getCalibrationHandle: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2CalibrationMethodHandle.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    (self) addCalibrationHandle: (recoveredValue1).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) getFrom: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20141798; bytecode file offset 0xa3e05c"
!ASAP2CalibrationMethod methodsFor: 'recovered'!
getSlewGroupName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) calibrationHandle.
    recoveredValue1 := (recoveredValue0) firstOrNil.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) getSlewGroupName.
    ^recoveredBlock6Value1
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^nil
! !

"ASDBase.ic method 0x20163c30; bytecode file offset 0xa605cc"
!ASAP2CalibrationMethod methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) getShortBegin: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getMethod: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) getVersion: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) parse: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20172e38; bytecode file offset 0xa6f7c4"
!ASAP2CalibrationMethod methodsFor: 'recovered'!
initializeCollections
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeCollections.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) ifData: (recoveredValue1).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    (self) calibrationHandle: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2018314c; bytecode file offset 0xa7fa40"
!ASAP2CalibrationMethod methodsFor: 'recovered'!
minimizeCollections
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super minimizeCollections.
    recoveredValue0 := (self) ifData.
    recoveredValue1 := (recoveredValue0) asArray.
    (self) ifData: (recoveredValue1).
    recoveredValue2 := (self) calibrationHandle.
    recoveredValue3 := (recoveredValue2) asArray.
    (self) calibrationHandle: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201a75c0; bytecode file offset 0xaa3eac"
!ASAP2CalibrationMethod methodsFor: 'recovered'!
addCalibrationHandle: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) calibrationHandle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) calibrationHandle.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) calibrationHandle: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) calibrationHandle.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b6ac0; bytecode file offset 0xab33d0"
!ASAP2CalibrationMethod methodsFor: 'recovered'!
putIn: recoveredArg1 calibrationHandle: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) calibrationHandle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) calibrationHandle.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := recoveredArg1.
    recoveredBlock10Value2 := (recoveredBlock10Value0) putIn: (recoveredBlock10Value1).
    recoveredBlock10Value2
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029d09c; bytecode file offset 0xb99960"
!ASAP2CalibrationMethod methodsFor: 'recovered'!
putIn: recoveredArg1 ifData: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifData.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := AMLalwaysState.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 |
    recoveredBlock16Value0 := recoveredLocal1.
    recoveredBlock16Value1 := [:recoveredBlock16Block25Arg1 | 
    | recoveredBlock16Block25Value0 recoveredBlock16Block25Value1 recoveredBlock16Block25Value2 |
    recoveredBlock16Block25Value0 := recoveredBlock16Block25Arg1.
    recoveredBlock16Block25Value1 := recoveredArg1.
    recoveredBlock16Block25Value2 := (recoveredBlock16Block25Value0) putIn: (recoveredBlock16Block25Value1).
    recoveredBlock16Block25Value2
].
    recoveredBlock16Value2 := (recoveredBlock16Value0) do: (recoveredBlock16Value1).
    recoveredBlock16Value2
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

