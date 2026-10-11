"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200066b0; bytecode file offset 0x908be4"
!ASAP2GroupLabel methodsFor: 'recovered'!
allFunctionsAndGroups
    | recoveredValue0 |
    recoveredValue0 := (self) getAllSubfunctionsRecursive.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008774; bytecode file offset 0x908be4"
!ASAP2GroupLabel methodsFor: 'recovered'!
allFunctions
    | recoveredValue0 |
    recoveredValue0 := (self) getAllSubfunctionsRecursive.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000c924; bytecode file offset 0x909658"
!ASAP2GroupLabel methodsFor: 'recovered'!
includesDefCharacteristic: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2001ff10; bytecode file offset 0x92209c"
!ASAP2GroupLabel methodsFor: 'recovered'!
defCharacteristic
    ^#()
! !

"ASDBase.ic method 0x200408d0; bytecode file offset 0x93d278"
!ASAP2GroupLabel methodsFor: 'recovered'!
isSlew
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := asap2.
    recoveredValue1 := (recoveredValue0) isSlew.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200626b8; bytecode file offset 0x95f8b0"
!ASAP2GroupLabel methodsFor: 'recovered'!
allMeasurementLabels
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) asap2.
    recoveredValue1 := (self) device.
    recoveredValue2 := (recoveredValue0) allMeasurementLabelsFor: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200626e0; bytecode file offset 0x95f8b0"
!ASAP2GroupLabel methodsFor: 'recovered'!
allDataChildren
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) subFunctions.
    recoveredValue1 := (self) subGroups.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20073d20; bytecode file offset 0x970b34"
!ASAP2GroupLabel methodsFor: 'recovered'!
getAlwaysDataElementInst
    ^nil
! !

"ASDBase.ic method 0x20076d44; bytecode file offset 0x9757c8"
!ASAP2GroupLabel methodsFor: 'recovered'!
isGroup
    ^true
! !

"ASDBase.ic method 0x2007bbdc; bytecode file offset 0x97c330"
!ASAP2GroupLabel methodsFor: 'recovered'!
isProjectNode
    ^false
! !

"ASDBase.ic method 0x2008a190; bytecode file offset 0x986a78"
!ASAP2GroupLabel methodsFor: 'recovered'!
subGroup
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := asap2.
    recoveredValue1 := device.
    recoveredValue2 := (recoveredValue0) allSubGroupsFor: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a1c0; bytecode file offset 0x986a78"
!ASAP2GroupLabel methodsFor: 'recovered'!
allLabels
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := asap2.
    recoveredValue1 := device.
    recoveredValue2 := (recoveredValue0) allLabelsFor: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20092748; bytecode file offset 0x98f084"
!ASAP2GroupLabel methodsFor: 'recovered'!
getAllLabelProxiesForProjectNode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := asap2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) device.
    recoveredValue3 := (recoveredValue0) allLabelsFor: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e71b8; bytecode file offset 0x9e3bcc"
!ASAP2GroupLabel methodsFor: 'recovered'!
removeRefCharacteristic: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := asap2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asap2.
    (recoveredValue0) removeRefCharacteristic: (recoveredValue2).
    (self) setASAP2Modified.
    ^self
! !

"ASDBase.ic method 0x200e71e0; bytecode file offset 0x9e3bcc"
!ASAP2GroupLabel methodsFor: 'recovered'!
removeRefMeasurement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := asap2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asap2.
    (recoveredValue0) removeRefMeasurement: (recoveredValue2).
    (self) setASAP2Modified.
    ^self
! !

"ASDBase.ic method 0x200e71f4; bytecode file offset 0x9e3bcc"
!ASAP2GroupLabel methodsFor: 'recovered'!
addSubGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := asap2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asap2.
    (recoveredValue0) addSubGroup: (recoveredValue2).
    (self) setASAP2Modified.
    ^self
! !

"ASDBase.ic method 0x200e721c; bytecode file offset 0x9e3bcc"
!ASAP2GroupLabel methodsFor: 'recovered'!
addRefCharacteristic: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := asap2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asap2.
    (recoveredValue0) addRefCharacteristic: (recoveredValue2).
    (self) setASAP2Modified.
    ^self
! !

"ASDBase.ic method 0x200e7244; bytecode file offset 0x9e3bcc"
!ASAP2GroupLabel methodsFor: 'recovered'!
removeSubFunction: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := asap2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asap2.
    (recoveredValue0) removeFunction: (recoveredValue2).
    (self) setASAP2Modified.
    ^self
! !

"ASDBase.ic method 0x200e726c; bytecode file offset 0x9e3bcc"
!ASAP2GroupLabel methodsFor: 'recovered'!
removeSubGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := asap2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asap2.
    (recoveredValue0) removeSubGroup: (recoveredValue2).
    (self) setASAP2Modified.
    ^self
! !

"ASDBase.ic method 0x200e7280; bytecode file offset 0x9e3bcc"
!ASAP2GroupLabel methodsFor: 'recovered'!
addSubFunction: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := asap2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asap2.
    (recoveredValue0) addFunction: (recoveredValue2).
    (self) setASAP2Modified.
    ^self
! !

"ASDBase.ic method 0x200e72d0; bytecode file offset 0x9e3bcc"
!ASAP2GroupLabel methodsFor: 'recovered'!
addRefMeasurement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := asap2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asap2.
    (recoveredValue0) addRefMeasurement: (recoveredValue2).
    (self) setASAP2Modified.
    ^self
! !

"ASDBase.ic method 0x20137a9c; bytecode file offset 0xa34364"
!ASAP2GroupLabel methodsFor: 'recovered'!
allCalibrationSlews
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) allMeasurementLabels.
    recoveredValue1 := (recoveredValue0) someElement.
    recoveredValue2 := (recoveredValue1) allCalibrationSlews.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) allMeasurementLabels.
    recoveredValue5 := (recoveredValue4) someElement.
    recoveredValue6 := [].
    (recoveredValue3) remove: (recoveredValue5) ifAbsent: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2015cc88; bytecode file offset 0xa5955c"
!ASAP2GroupLabel methodsFor: 'recovered'!
refMeasurement
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := asap2.
    recoveredValue1 := (recoveredValue0) refMeasurement.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := device.
    recoveredBlock7Value2 := (recoveredBlock7Value0) labelFor: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue3 := (recoveredValue1) collect: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2015cc9c; bytecode file offset 0xa5955c"
!ASAP2GroupLabel methodsFor: 'recovered'!
subFunctions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := asap2.
    recoveredValue1 := (recoveredValue0) functionList.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := device.
    recoveredBlock7Value2 := (recoveredBlock7Value0) labelFor: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue3 := (recoveredValue1) collect: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201f06c0; bytecode file offset 0xaecfe4"
!ASAP2GroupLabel methodsFor: 'recovered'!
refCharacteristic
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := asap2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) refCharacteristic.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := device.
    recoveredBlock7Value2 := (recoveredBlock7Value0) labelFor: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := [:block280d7a84Arg1 | 
    | block280d7a84Value0 block280d7a84Value1 |
    block280d7a84Value0 := block280d7a84Arg1.
    block280d7a84Value1 := (block280d7a84Value0) notNil.
    block280d7a84Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201f0708; bytecode file offset 0xaecfe4"
!ASAP2GroupLabel methodsFor: 'recovered'!
subGroups
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := asap2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) subGroup.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := device.
    recoveredBlock7Value2 := (recoveredBlock7Value0) labelFor: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := [:block280d7af0Arg1 | 
    | block280d7af0Value0 block280d7af0Value1 |
    block280d7af0Value0 := block280d7af0Arg1.
    block280d7af0Value1 := (block280d7af0Value0) notNil.
    block280d7af0Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202dc268; bytecode file offset 0xbd8b34"
!ASAP2GroupLabel methodsFor: 'recovered'!
allCalibrationLabels
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := asap2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := device.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) allCalibrationLabelsFor: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:block280e6754Arg1 | 
    | block280e6754Value0 block280e6754Value1 |
    block280e6754Value0 := block280e6754Arg1.
    block280e6754Value1 := (block280e6754Value0) isCompuMethod.
    block280e6754Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock23Value0 |
    recoveredBlock23Value0 := recoveredLocal1.
    ^recoveredBlock23Value0
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [:block280e6778Arg1 | 
    | block280e6778Value0 block280e6778Value1 |
    block280e6778Value0 := block280e6778Arg1.
    block280e6778Value1 := (block280e6778Value0) isCompuMethod.
    block280e6778Value1
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20319700; bytecode file offset 0xc15fd4"
!ASAP2GroupLabel methodsFor: 'recovered'!
getAllSubfunctionsRecursive
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) subFunctions.
    recoveredValue1 := (self) subGroups.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := (recoveredValue3) asOrderedCollection.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal1.
            recoveredBlock21PC := 31.
        ].
        recoveredBlock21Step = 31 ifTrue: [
            recoveredBlock21Stack2 := self.
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) includes: (recoveredBlock21Stack2).
            recoveredBlock21PC := 34.
        ].
        recoveredBlock21Step = 34 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 38] ifFalse: [recoveredBlock21PC := 42].
        ].
        recoveredBlock21Step = 38 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal1.
            recoveredBlock21PC := 41.
        ].
        recoveredBlock21Step = 41 ifTrue: [
            ^recoveredBlock21Stack1
        ].
        recoveredBlock21Step = 42 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal1.
            recoveredBlock21PC := 45.
        ].
        recoveredBlock21Step = 45 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 46.
        ].
        recoveredBlock21Step = 46 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) getAllSubfunctionsRecursive.
            recoveredBlock21PC := 48.
        ].
        recoveredBlock21Step = 48 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) addAll: (recoveredBlock21Stack2).
            recoveredBlock21PC := 50.
        ].
        recoveredBlock21Step = 50 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

