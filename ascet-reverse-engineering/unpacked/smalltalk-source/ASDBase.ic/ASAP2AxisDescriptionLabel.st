"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001e680; bytecode file offset 0x92209c"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
xyzDimension
    ^#(1 0 0)
! !

"ASDBase.ic method 0x20028ae4; bytecode file offset 0x934580"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
readOnly
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) asap2.
    recoveredValue1 := (recoveredValue0) readOnly.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20028e54; bytecode file offset 0x934580"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
compuMethod
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) asap2.
    recoveredValue1 := (recoveredValue0) compuMethod.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ea94; bytecode file offset 0x934580"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
dataElementEditType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) asap2.
    recoveredValue1 := (recoveredValue0) dataElementEditType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f894; bytecode file offset 0x934580"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
functionList
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) asap2.
    recoveredValue1 := (recoveredValue0) functionList.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ff34; bytecode file offset 0x93d278"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
isStandard
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := asap2.
    recoveredValue1 := (recoveredValue0) isStandard.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200400b4; bytecode file offset 0x93d278"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
isFixed
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := asap2.
    recoveredValue1 := (recoveredValue0) isFixed.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200400c0; bytecode file offset 0x93d278"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
isCurveAxis
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := asap2.
    recoveredValue1 := (recoveredValue0) isCurveAxis.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200401d4; bytecode file offset 0x93d278"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
isRescale
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := asap2.
    recoveredValue1 := (recoveredValue0) isRescale.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200406cc; bytecode file offset 0x93d278"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
attribute
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := asap2.
    recoveredValue1 := (recoveredValue0) attribute.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20062cbc; bytecode file offset 0x95f8b0"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
formatLastDigits
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) asap2.
    recoveredValue1 := (self) dataElement.
    recoveredValue2 := (recoveredValue0) formatLastDigits: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006a51c; bytecode file offset 0x967a18"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
getDataElementInstWithoutLogging
    | recoveredValue0 |
    recoveredValue0 := dataElement.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006adcc; bytecode file offset 0x967a18"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
dataElement
    | recoveredValue0 |
    recoveredValue0 := dataElement.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b14c; bytecode file offset 0x967a18"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
getDataElementInst
    | recoveredValue0 |
    recoveredValue0 := dataElement.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008a154; bytecode file offset 0x986a78"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
allLabels
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := asap2.
    recoveredValue1 := device.
    recoveredValue2 := (recoveredValue0) allLabelsFor: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20090234; bytecode file offset 0x98cb08"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
compuMethodLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) asap2.
    recoveredValue1 := (recoveredValue0) compuMethod.
    recoveredValue2 := device.
    recoveredValue3 := (recoveredValue1) labelFor: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20090248; bytecode file offset 0x98cb08"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
curveAxisRef
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) asap2.
    recoveredValue1 := (recoveredValue0) curveAxisRef.
    recoveredValue2 := device.
    recoveredValue3 := (recoveredValue1) labelFor: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009252c; bytecode file offset 0x98ef64"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
attributeBase: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := asap2.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) attribute: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009cf24; bytecode file offset 0x999800"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
axisPtsRef
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := asap2.
    recoveredValue1 := (recoveredValue0) axisPtsRef.
    recoveredValue2 := device.
    recoveredValue3 := (recoveredValue1) labelFor: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009cf34; bytecode file offset 0x999800"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
getReferencedAxisPts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := asap2.
    recoveredValue1 := (recoveredValue0) getReferencedAxisPts.
    recoveredValue2 := device.
    recoveredValue3 := (recoveredValue1) labelFor: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c1d2c; bytecode file offset 0x9beac8"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
dataElement: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dataElement := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f7404; bytecode file offset 0x9f4e38"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
isQMDStateCompared
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsToMe.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4404Arg1 | 
    | block280c4404Value0 block280c4404Value1 |
    block280c4404Value0 := block280c4404Arg1.
    block280c4404Value1 := (block280c4404Value0) isQMDStateCompared.
    block280c4404Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f777c; bytecode file offset 0x9f4e38"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
isCompared
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsToMe.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4938Arg1 | 
    | block280c4938Value0 block280c4938Value1 |
    block280c4938Value0 := block280c4938Arg1.
    block280c4938Value1 := (block280c4938Value0) isCompared.
    block280c4938Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f7944; bytecode file offset 0x9f4e38"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
isNoDestinationCompared
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsToMe.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4be4Arg1 | 
    | block280c4be4Value0 block280c4be4Value1 |
    block280c4be4Value0 := block280c4be4Arg1.
    block280c4be4Value1 := (block280c4be4Value0) isNoDestinationCompared.
    block280c4be4Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f7a64; bytecode file offset 0x9f4e38"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
isArrayCompared
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsToMe.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4d94Arg1 | 
    | block280c4d94Value0 block280c4d94Value1 |
    block280c4d94Value0 := block280c4d94Arg1.
    block280c4d94Value1 := (block280c4d94Value0) isArrayCompared.
    block280c4d94Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f7dac; bytecode file offset 0x9f4e38"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
dataType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getReferencedAxisPts.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c5280Arg1 | 
    | block280c5280Value0 block280c5280Value1 |
    block280c5280Value0 := block280c5280Arg1.
    block280c5280Value1 := (block280c5280Value0) dataType.
    block280c5280Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f8244; bytecode file offset 0x9f4e38"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
isFunctionNoDestinationCompared
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsToMe.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c5964Arg1 | 
    | block280c5964Value0 block280c5964Value1 |
    block280c5964Value0 := block280c5964Arg1.
    block280c5964Value1 := (block280c5964Value0) isFunctionNoDestinationCompared.
    block280c5964Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f82ec; bytecode file offset 0x9f4e38"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
isHasQMD
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsToMe.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c5a60Arg1 | 
    | block280c5a60Value0 block280c5a60Value1 |
    block280c5a60Value0 := block280c5a60Arg1.
    block280c5a60Value1 := (block280c5a60Value0) isHasQMD.
    block280c5a60Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f8304; bytecode file offset 0x9f4e38"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
isQMDNoStateCompared
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsToMe.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c5a84Arg1 | 
    | block280c5a84Value0 block280c5a84Value1 |
    block280c5a84Value0 := block280c5a84Arg1.
    block280c5a84Value1 := (block280c5a84Value0) isQMDNoStateCompared.
    block280c5a84Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20119764; bytecode file offset 0xa16880"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
setCompared
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsToMe.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c7908Arg1 | 
    | block280c7908Value0 block280c7908Value1 |
    block280c7908Value0 := block280c7908Arg1.
    block280c7908Value1 := (block280c7908Value0) setCompared.
    block280c7908Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201198e4; bytecode file offset 0xa16880"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
setFunctionNoDestinationCompared
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsToMe.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c7b48Arg1 | 
    | block280c7b48Value0 block280c7b48Value1 |
    block280c7b48Value0 := block280c7b48Arg1.
    block280c7b48Value1 := (block280c7b48Value0) setFunctionNoDestinationCompared.
    block280c7b48Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011992c; bytecode file offset 0xa16880"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
clearHasQMD
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsToMe.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c7bb4Arg1 | 
    | block280c7bb4Value0 block280c7bb4Value1 |
    block280c7bb4Value0 := block280c7bb4Arg1.
    block280c7bb4Value1 := (block280c7bb4Value0) clearHasQMD.
    block280c7bb4Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011995c; bytecode file offset 0xa16880"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
clearQMDStateCompared
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsToMe.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c7bfcArg1 | 
    | block280c7bfcValue0 block280c7bfcValue1 |
    block280c7bfcValue0 := block280c7bfcArg1.
    block280c7bfcValue1 := (block280c7bfcValue0) clearQMDStateCompared.
    block280c7bfcValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20119a1c; bytecode file offset 0xa16880"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
clearArrayCompared
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsToMe.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c7d1cArg1 | 
    | block280c7d1cValue0 block280c7d1cValue1 |
    block280c7d1cValue0 := block280c7d1cArg1.
    block280c7d1cValue1 := (block280c7d1cValue0) clearArrayCompared.
    block280c7d1cValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20119b3c; bytecode file offset 0xa16880"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
setArrayCompared
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsToMe.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c7eccArg1 | 
    | block280c7eccValue0 block280c7eccValue1 |
    block280c7eccValue0 := block280c7eccArg1.
    block280c7eccValue1 := (block280c7eccValue0) setArrayCompared.
    block280c7eccValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20119b54; bytecode file offset 0xa16880"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
clearQMDNoStateCompared
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsToMe.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c7ef0Arg1 | 
    | block280c7ef0Value0 block280c7ef0Value1 |
    block280c7ef0Value0 := block280c7ef0Arg1.
    block280c7ef0Value1 := (block280c7ef0Value0) clearQMDNoStateCompared.
    block280c7ef0Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20119ca4; bytecode file offset 0xa16880"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
setHasQMD
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsToMe.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c80e8Arg1 | 
    | block280c80e8Value0 block280c80e8Value1 |
    block280c80e8Value0 := block280c80e8Arg1.
    block280c80e8Value1 := (block280c80e8Value0) setHasQMD.
    block280c80e8Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20119cd4; bytecode file offset 0xa16880"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
setQMDStateCompared
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsToMe.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c8130Arg1 | 
    | block280c8130Value0 block280c8130Value1 |
    block280c8130Value0 := block280c8130Arg1.
    block280c8130Value1 := (block280c8130Value0) setQMDStateCompared.
    block280c8130Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20119cec; bytecode file offset 0xa16880"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
setNoDestinationCompared
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsToMe.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c8154Arg1 | 
    | block280c8154Value0 block280c8154Value1 |
    block280c8154Value0 := block280c8154Arg1.
    block280c8154Value1 := (block280c8154Value0) setNoDestinationCompared.
    block280c8154Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20119dac; bytecode file offset 0xa16880"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
clearCompared
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsToMe.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c8274Arg1 | 
    | block280c8274Value0 block280c8274Value1 |
    block280c8274Value0 := block280c8274Arg1.
    block280c8274Value1 := (block280c8274Value0) clearCompared.
    block280c8274Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20119df4; bytecode file offset 0xa16880"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
clearFunctionNoDestinationCompared
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsToMe.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c82e0Arg1 | 
    | block280c82e0Value0 block280c82e0Value1 |
    block280c82e0Value0 := block280c82e0Arg1.
    block280c82e0Value1 := (block280c82e0Value0) clearFunctionNoDestinationCompared.
    block280c82e0Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20119e0c; bytecode file offset 0xa16880"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
setQMDNoStateCompared
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsToMe.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c8304Arg1 | 
    | block280c8304Value0 block280c8304Value1 |
    block280c8304Value0 := block280c8304Arg1.
    block280c8304Value1 := (block280c8304Value0) setQMDNoStateCompared.
    block280c8304Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20119f8c; bytecode file offset 0xa16880"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
clearNoDestinationCompared
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsToMe.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c8544Arg1 | 
    | block280c8544Value0 block280c8544Value1 |
    block280c8544Value0 := block280c8544Arg1.
    block280c8544Value1 := (block280c8544Value0) clearNoDestinationCompared.
    block280c8544Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012909c; bytecode file offset 0xa2595c"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
displayIdentifier
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := asap2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) displayIdentifier.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := super displayIdentifier.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201290c4; bytecode file offset 0xa259b8"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
shortName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := asap2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := super shortName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201290dc; bytecode file offset 0xa259b8"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
displayIdentifierDevice
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := asap2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) displayIdentifier.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := super displayIdentifierDevice.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201290f4; bytecode file offset 0xa259b8"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
shortNameDevice
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := asap2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := super shortNameDevice.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20129a7c; bytecode file offset 0xa26334"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
resetDataElement
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dataElement.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := dataElement.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) removeFromTarget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            dataElement := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017ee20; bytecode file offset 0xa7b6e4"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
referencesFromLabelsToMe
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := asap2.
    recoveredValue1 := (recoveredValue0) comments.
    recoveredValue2 := asap2.
    recoveredValue3 := (recoveredValue1) referencesFromLabelsToAxisDescription: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := device.
    recoveredBlock10Value2 := (recoveredBlock10Value0) labelFor: (recoveredBlock10Value1).
    recoveredBlock10Value2
].
    recoveredValue5 := (recoveredValue3) collect: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201b0778; bytecode file offset 0xaad044"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
parentForDescription
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFixed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isStandard.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsToMe.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) firstOrNil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultReturn: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) etasDevHalt.
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

"ASDBase.ic method 0x201e5ea0; bytecode file offset 0xae276c"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
allAxisPointOrCurveAxisLabelsFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := asap2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asap2.
    recoveredValue3 := (recoveredValue0) allAxisPointOrCurveAxisFrom: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := device.
    recoveredBlock9Value2 := (recoveredBlock9Value0) labelFor: (recoveredBlock9Value1).
    recoveredBlock9Value2
].
    recoveredValue5 := (recoveredValue3) collect: (recoveredValue4).
    recoveredValue6 := asap2.
    recoveredValue7 := (recoveredValue6) asap2NameSortBlock.
    recoveredValue8 := (recoveredValue5) asSameSortedCollection: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x202136f4; bytecode file offset 0xb10000"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
attribute: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := asap2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) attribute.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) attributeBase: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'attribute'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) setASAP2Modified: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'attributeBase:'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) undoRedo: (recoveredStack2) newState: (recoveredStack3) oldState: (recoveredStack4).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a0a6c; bytecode file offset 0xb9d338"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
address
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFixed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isStandard.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) axisPtsRef.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := (recoveredBlock18Value0) address.
    ^recoveredBlock18Value1
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) curveAxisRef.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 |
    recoveredBlock32Value0 := recoveredBlock32Arg1.
    recoveredBlock32Value1 := (recoveredBlock32Value0) address.
    ^recoveredBlock32Value1
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b2d48; bytecode file offset 0xbaf618"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
referencesFromLabels
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := asap2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) axisPtsRef.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := asap2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) axisPtsRef.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := asap2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) comments.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := asap2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) axisPtsRef.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) referencesFromLabelsToAxisPoint: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 |
    recoveredBlock31Value0 := recoveredBlock31Arg1.
    recoveredBlock31Value1 := device.
    recoveredBlock31Value2 := (recoveredBlock31Value0) labelFor: (recoveredBlock31Value1).
    recoveredBlock31Value2
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203331f4; bytecode file offset 0xc2fad8"
!ASAP2AxisDescriptionLabel methodsFor: 'recovered'!
isGroup
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
            recoveredStack1 := (recoveredStack1) isGroup.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := asap2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) axisPtsRef.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := asap2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) axisPtsRef.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := asap2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := SCASAP2DBMissingAxisPtsRef.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) attribute.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := asap2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) axisPtsRef.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) monitorWarning: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) asap2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := asap2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) axisPtsRef.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) referencesFromLabelsToAxisPoint: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

