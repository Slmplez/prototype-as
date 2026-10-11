"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017f60; bytecode file offset 0x92209c"
!SGMethodImplementation methodsFor: 'recovered'!
inliningSettingAutomatic
    ^'Automatic'
! !

"ASDBase.ic method 0x20018668; bytecode file offset 0x92209c"
!SGMethodImplementation methodsFor: 'recovered'!
inliningSettingsKey
    ^'inlining'
! !

"ASDBase.ic method 0x20019db4; bytecode file offset 0x92209c"
!SGMethodImplementation methodsFor: 'recovered'!
inliningSettingModel
    ^'Model'
! !

"ASDBase.ic method 0x200224fc; bytecode file offset 0x92209c"
!SGMethodImplementation methodsFor: 'recovered'!
inliningSettingCompiler
    ^'Compiler'
! !

"ASDBase.ic method 0x20022f34; bytecode file offset 0x92209c"
!SGMethodImplementation methodsFor: 'recovered'!
inliningSettingNone
    ^'None'
! !

"ASDBase.ic method 0x20026f98; bytecode file offset 0x923928"
!SGMethodImplementation methodsFor: 'recovered'!
inliningSettingPreprocessorEvaluation
    ^'Preprocessor Evaluation'
! !

"ASDBase.ic method 0x20027b8c; bytecode file offset 0x92454c"
!SGMethodImplementation methodsFor: 'recovered'!
isUseFPU
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) isUseFPUInverted.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200281c4; bytecode file offset 0x934580"
!SGMethodImplementation methodsFor: 'recovered'!
inliningLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) inlining.
    recoveredValue1 := (recoveredValue0) asString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005ff14; bytecode file offset 0x95c7e0"
!SGMethodImplementation methodsFor: 'recovered'!
initAttributes
    attributes := 0.
    ^self
! !

"ASDBase.ic method 0x200622e8; bytecode file offset 0x95ebd4"
!SGMethodImplementation methodsFor: 'recovered'!
isInline
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) inlining.
    recoveredValue1 := (self) inliningSettingCompiler.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200660cc; bytecode file offset 0x963428"
!SGMethodImplementation methodsFor: 'recovered'!
attributes
    | recoveredValue0 |
    recoveredValue0 := attributes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067554; bytecode file offset 0x9646f8"
!SGMethodImplementation methodsFor: 'recovered'!
memoryClass
    | recoveredValue0 |
    recoveredValue0 := memoryClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072490; bytecode file offset 0x96ee04"
!SGMethodImplementation methodsFor: 'recovered'!
bitInline
    ^1
! !

"ASDBase.ic method 0x200725a0; bytecode file offset 0x96f1c4"
!SGMethodImplementation methodsFor: 'recovered'!
bitUseFPUInverted
    ^2
! !

"ASDBase.ic method 0x20072780; bytecode file offset 0x96f1c4"
!SGMethodImplementation methodsFor: 'recovered'!
bitUseFPU
    ^2
! !

"ASDBase.ic method 0x20082f18; bytecode file offset 0x97f81c"
!SGMethodImplementation methodsFor: 'recovered'!
memoryClass: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    memoryClass := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008d3c4; bytecode file offset 0x989db0"
!SGMethodImplementation methodsFor: 'recovered'!
convertToASDV630
    | recoveredValue0 |
    recoveredValue0 := (self) inliningDefaultValue.
    (self) inlining: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008e6d0; bytecode file offset 0x98b0bc"
!SGMethodImplementation methodsFor: 'recovered'!
isCacheOff
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) memorySegmentID.
    recoveredValue1 := TGPlatform.
    recoveredValue2 := (recoveredValue1) memorySegmentIDOff.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008e784; bytecode file offset 0x98b0bc"
!SGMethodImplementation methodsFor: 'recovered'!
isCacheAutomatic
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) memorySegmentID.
    recoveredValue1 := TGPlatform.
    recoveredValue2 := (recoveredValue1) memorySegmentIDAutomatic.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008e7c0; bytecode file offset 0x98b0bc"
!SGMethodImplementation methodsFor: 'recovered'!
isCacheOn
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) memorySegmentID.
    recoveredValue1 := TGPlatform.
    recoveredValue2 := (recoveredValue1) memorySegmentIDOn.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009e890; bytecode file offset 0x99b544"
!SGMethodImplementation methodsFor: 'recovered'!
clearInline
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65534).
    recoveredValue2 := (self) attributes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009e908; bytecode file offset 0x99b544"
!SGMethodImplementation methodsFor: 'recovered'!
setUseFPU
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65533).
    recoveredValue2 := (self) attributes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009ef0c; bytecode file offset 0x99b844"
!SGMethodImplementation methodsFor: 'recovered'!
setInline
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitOr: (1).
    recoveredValue2 := (self) attributes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009f044; bytecode file offset 0x99b918"
!SGMethodImplementation methodsFor: 'recovered'!
clearUseFPU
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitOr: (2).
    recoveredValue2 := (self) attributes: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ab2d4; bytecode file offset 0x9a7bf8"
!SGMethodImplementation methodsFor: 'recovered'!
inlining: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) settings.
    recoveredValue1 := (self) inliningSettingsKey.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b4a6c; bytecode file offset 0x9b1368"
!SGMethodImplementation methodsFor: 'recovered'!
isInlineAttribute
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (1).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b4cac; bytecode file offset 0x9b15b8"
!SGMethodImplementation methodsFor: 'recovered'!
isUseFPUInverted
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (2).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bdf8c; bytecode file offset 0x9bb178"
!SGMethodImplementation methodsFor: 'recovered'!
attributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    attributes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0c38; bytecode file offset 0x9bdf14"
!SGMethodImplementation methodsFor: 'recovered'!
memorySegmentID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    memorySegmentID := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f0a74; bytecode file offset 0x9ed32c"
!SGMethodImplementation methodsFor: 'recovered'!
convertToASDV60
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := symbol.
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
            symbol := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011a994; bytecode file offset 0xa17254"
!SGMethodImplementation methodsFor: 'recovered'!
inliningDefaultValue
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInlineAttribute.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) inliningSettingCompiler.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) inliningSettingAutomatic.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20131d5c; bytecode file offset 0xa2e6a8"
!SGMethodImplementation methodsFor: 'recovered'!
useFPU: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) setUseFPU.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) clearUseFPU.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20139bf4; bytecode file offset 0xa36580"
!SGMethodImplementation methodsFor: 'recovered'!
inliningSettingsValues
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) inliningSettingAutomatic.
    recoveredValue2 := (self) inliningSettingNone.
    recoveredValue3 := (self) inliningSettingPreprocessorEvaluation.
    recoveredValue4 := (self) inliningSettingCompiler.
    recoveredValue5 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2015d13c; bytecode file offset 0xa599fc"
!SGMethodImplementation methodsFor: 'recovered'!
settings
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := settings.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := LookupTable.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    settings := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20160b44; bytecode file offset 0xa5d40c"
!SGMethodImplementation methodsFor: 'recovered'!
inlining
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) settings.
    recoveredValue1 := (self) inliningSettingsKey.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := (self) inliningDefaultValue.
    recoveredBlock7Value1 := (self) inlining: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20162794; bytecode file offset 0xa5f05c"
!SGMethodImplementation methodsFor: 'recovered'!
initialize
    super initialize.
    (self) initAttributes.
    (self) useFPU: (true).
    symbol := ''.
    ^self
! !

"ASDBase.ic method 0x201627c8; bytecode file offset 0xa5f094"
!SGMethodImplementation methodsFor: 'recovered'!
xmlInit
    super initialize.
    (self) initAttributes.
    (self) setUseFPU.
    (self) symbol: ('').
    ^self
! !

"ASDBase.ic method 0x201633c4; bytecode file offset 0xa5fc84"
!SGMethodImplementation methodsFor: 'recovered'!
memorySegmentID
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := memorySegmentID.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := TGPlatform.
    recoveredBlock6Value1 := (recoveredBlock6Value0) memorySegmentIDAutomatic.
    ^recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := memorySegmentID.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2016590c; bytecode file offset 0xa621cc"
!SGMethodImplementation methodsFor: 'recovered'!
inline: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) setInline.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) clearInline.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017f20c; bytecode file offset 0xa7bac8"
!SGMethodImplementation methodsFor: 'recovered'!
symbol
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := symbol.
    recoveredValue1 := [
    symbol := ''.
    ''
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := symbol.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201f4214; bytecode file offset 0xaf0b10"
!SGMethodImplementation methodsFor: 'recovered'!
attributesPrintOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) isInline.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := ('isInline: ') , (recoveredValue3).
    (recoveredValue1) nextPutAll: (recoveredValue4).
    (recoveredValue0) cr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := (self) isUseFPUInverted.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := ('isUseFPUInverted: ') , (recoveredValue8).
    (recoveredValue6) nextPutAll: (recoveredValue9).
    (recoveredValue5) cr.
    ^self
! !

"ASDBase.ic method 0x202561d8; bytecode file offset 0xb52aa0"
!SGMethodImplementation methodsFor: 'recovered'!
symbol: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := $%.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := '_'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) replace: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := '_'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) replace: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValidANSICIdentifier.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            symbol := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203045ec; bytecode file offset 0xc00eb8"
!SGMethodImplementation methodsFor: 'recovered'!
convertToASDV621
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := memorySegmentID.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := TGPlatform.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) memorySegmentIDAutomatic.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            memorySegmentID := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 16.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := TGPlatform.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) memorySegmentIDOff.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            memorySegmentID := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := TGPlatform.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) memorySegmentIDOn.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            memorySegmentID := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034484c; bytecode file offset 0xc41128"
!SGMethodImplementation methodsFor: 'recovered'!
inliningXMLWriter
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := [
    | recoveredBlock4Value0 |
    recoveredBlock4Value0 := (self) inlining.
    recoveredBlock4Value0
].
    recoveredValue1 := (self) inliningSettingNone.
    recoveredValue2 := [
    ^'none'
].
    recoveredValue3 := (self) inliningSettingAutomatic.
    recoveredValue4 := [
    ^'automatic'
].
    recoveredValue5 := (self) inliningSettingPreprocessorEvaluation.
    recoveredValue6 := [
    ^'preprocessor'
].
    recoveredValue7 := (self) inliningSettingCompiler.
    recoveredValue8 := [
    ^'compiler'
].
    (recoveredValue0) case: (recoveredValue1) do: (recoveredValue2) case: (recoveredValue3) do: (recoveredValue4) case: (recoveredValue5) do: (recoveredValue6) case: (recoveredValue7) do: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x2039c370; bytecode file offset 0xc98e14"
!SGMethodImplementation methodsFor: 'recovered'!
attributesTest
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := (recoveredValue0) on: (' ').
    recoveredLocal1 := recoveredValue1.
    (self) setInline.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPutAll: ('--------setInline--------').
    (recoveredValue2) cr.
    recoveredValue4 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue4).
    (self) clearUseFPU.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) nextPutAll: ('--------clearUseFPU--------').
    (recoveredValue5) cr.
    recoveredValue7 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue7).
    (self) clearInline.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredValue8.
    (recoveredValue9) nextPutAll: ('--------clearInline--------').
    (recoveredValue8) cr.
    recoveredValue10 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue10).
    (self) setUseFPU.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredValue11.
    (recoveredValue12) nextPutAll: ('--------setUseFPU--------').
    (recoveredValue11) cr.
    recoveredValue13 := recoveredLocal1.
    (self) attributesPrintOn: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (recoveredValue14) contents.
    (recoveredValue15) edit.
    ^self
! !

