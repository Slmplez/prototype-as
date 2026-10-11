"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200001b0; bytecode file offset 0x8ffcfc"
!SGCgEnumType methodsFor: 'recovered'!
asTempVarType
    ^self
! !

"ASDBase.ic method 0x20002bb0; bytecode file offset 0x8ffcfc"
!SGCgEnumType methodsFor: 'recovered'!
asMdlClassType
    ^self
! !

"ASDBase.ic method 0x20004460; bytecode file offset 0x90206c"
!SGCgEnumType methodsFor: 'recovered'!
csInterface: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004928; bytecode file offset 0x90206c"
!SGCgEnumType methodsFor: 'recovered'!
implementation: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20007b68; bytecode file offset 0x908be4"
!SGCgEnumType methodsFor: 'recovered'!
asModelType
    | recoveredValue0 |
    recoveredValue0 := (self) className.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20007cf4; bytecode file offset 0x908be4"
!SGCgEnumType methodsFor: 'recovered'!
mdlImplKey
    | recoveredValue0 |
    recoveredValue0 := (self) mdlStandardKey.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008a50; bytecode file offset 0x908be4"
!SGCgEnumType methodsFor: 'recovered'!
mdlLabel
    | recoveredValue0 |
    recoveredValue0 := (self) className.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008e64; bytecode file offset 0x908be4"
!SGCgEnumType methodsFor: 'recovered'!
mdlFormulaName
    | recoveredValue0 |
    recoveredValue0 := (self) className.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009584; bytecode file offset 0x908be4"
!SGCgEnumType methodsFor: 'recovered'!
mdlStandardKey
    | recoveredValue0 |
    recoveredValue0 := (self) classId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009950; bytecode file offset 0x908be4"
!SGCgEnumType methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := (self) className.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009fec; bytecode file offset 0x908be4"
!SGCgEnumType methodsFor: 'recovered'!
createUniqueBaseTypeIdentifier
    | recoveredValue0 |
    recoveredValue0 := (self) cgUniqueTypeIdentifier.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a280; bytecode file offset 0x908be4"
!SGCgEnumType methodsFor: 'recovered'!
mdlImplLabel
    | recoveredValue0 |
    recoveredValue0 := (self) implName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a2b0; bytecode file offset 0x908be4"
!SGCgEnumType methodsFor: 'recovered'!
mdlTypeLabel
    | recoveredValue0 |
    recoveredValue0 := (self) mdlLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001c37c; bytecode file offset 0x92209c"
!SGCgEnumType methodsFor: 'recovered'!
implName
    ^''
! !

"ASDBase.ic method 0x2002069c; bytecode file offset 0x92209c"
!SGCgEnumType methodsFor: 'recovered'!
ileFormulaName
    ^''
! !

"ASDBase.ic method 0x2002d924; bytecode file offset 0x934580"
!SGCgEnumType methodsFor: 'recovered'!
asCType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getImplType.
    recoveredValue1 := (recoveredValue0) asCType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f364; bytecode file offset 0x934580"
!SGCgEnumType methodsFor: 'recovered'!
isSigned
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getImplType.
    recoveredValue1 := (recoveredValue0) isSigned.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200333d4; bytecode file offset 0x934580"
!SGCgEnumType methodsFor: 'recovered'!
expandAREnumDefines
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) isCgAttrARType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035394; bytecode file offset 0x934580"
!SGCgEnumType methodsFor: 'recovered'!
definesForEnums
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) isCgAttrDefinesForEnum.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e158; bytecode file offset 0x93bf94"
!SGCgEnumType methodsFor: 'recovered'!
arCategory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgAutosarSettings.
    recoveredValue1 := (recoveredValue0) categoryEnumType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200753e4; bytecode file offset 0x9757c8"
!SGCgEnumType methodsFor: 'recovered'!
needsIntegerType
    ^true
! !

"ASDBase.ic method 0x20076174; bytecode file offset 0x9757c8"
!SGCgEnumType methodsFor: 'recovered'!
isCgEnumType
    ^true
! !

"ASDBase.ic method 0x2007a66c; bytecode file offset 0x97c330"
!SGCgEnumType methodsFor: 'recovered'!
isPrimitive
    ^false
! !

"ASDBase.ic method 0x200bb544; bytecode file offset 0x9b7e04"
!SGCgEnumType methodsFor: 'recovered'!
setOptimizations: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) lookupClassInterface: (self).
    recoveredValue2 := (recoveredValue1) optimizations.
    (self) optimizations: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200d210c; bytecode file offset 0x9ceaf0"
!SGCgEnumType methodsFor: 'recovered'!
createErrLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) className.
    recoveredValue1 := ('enumeration "') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , ('"').
    ^recoveredValue2
! !

"ASDBase.ic method 0x2012bafc; bytecode file offset 0xa28470"
!SGCgEnumType methodsFor: 'recovered'!
expandEnumDefines
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
            recoveredStack2 := (recoveredStack2) attributes.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCgAttrExpandEnumDefines.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrARType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20132b68; bytecode file offset 0xa2f4dc"
!SGCgEnumType methodsFor: 'recovered'!
isCgTypeIdentical: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isCgEnumType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := super isCgTypeIdentical: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20176150; bytecode file offset 0xa72a18"
!SGCgEnumType methodsFor: 'recovered'!
convertCgTypeWith: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgLimitedIntegerType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGCgTypeFactory.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplType.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) interval.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLimitedDiscreteType: (recoveredStack2) interval: (recoveredStack3) physicalUnit: (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a9bf4; bytecode file offset 0xaa64c8"
!SGCgEnumType methodsFor: 'recovered'!
nilVariables
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) with: ('implName') with: ('implId') with: ('ileName') with: ('optimizations').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) add: ('implementation').
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201fd5fc; bytecode file offset 0xaf9ec0"
!SGCgEnumType methodsFor: 'recovered'!
isCgZeroNotIncluded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := zeroNotIncluded.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) enumerationMap.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280d8750Arg1 | 
    | block280d8750Value0 block280d8750Value1 block280d8750Value2 |
    block280d8750Value0 := block280d8750Arg1.
    block280d8750Value1 := (block280d8750Value0) enumeratorCode.
    block280d8750Value2 := (block280d8750Value1) = (0).
    block280d8750Value2
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            zeroNotIncluded := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := zeroNotIncluded.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2030f228; bytecode file offset 0xc0baf8"
!SGCgEnumType methodsFor: 'recovered'!
arDescription
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) errLabel.
    recoveredValue1 := (recoveredValue0) , (' { ').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) enumerationLabels.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) , (recoveredBlock13Value1).
    recoveredBlock13Value3 := recoveredBlock13Value2.
    recoveredLocal1 := recoveredBlock13Value3.
    recoveredBlock13Value2
].
    recoveredValue4 := [
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 |
    recoveredBlock30Value0 := recoveredLocal1.
    recoveredBlock30Value1 := (recoveredBlock30Value0) , (', ').
    recoveredBlock30Value2 := recoveredBlock30Value1.
    recoveredLocal1 := recoveredBlock30Value2.
    recoveredBlock30Value1
].
    (recoveredValue2) do: (recoveredValue3) andBetweenDo: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) , (' }').
    ^recoveredValue6
! !

"ASDBase.ic method 0x2034aa64; bytecode file offset 0xc47348"
!SGCgEnumType methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) className.
    (recoveredValue1) nextPutAll: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) nextPutAll: ('::').
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := (self) implName.
    (recoveredValue4) nextPutAll: (recoveredValue5).
    (recoveredValue0) cr.
    recoveredValue6 := (self) classId.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) printOn: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    (recoveredValue8) cr.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredValue9.
    (recoveredValue10) nextPutAll: ('defines for enum:    ').
    recoveredValue11 := recoveredValue9.
    recoveredValue12 := (self) definesForEnums.
    recoveredValue13 := (recoveredValue12) asString.
    (recoveredValue11) nextPutAll: (recoveredValue13).
    recoveredValue14 := recoveredValue9.
    (recoveredValue14) cr.
    recoveredValue15 := recoveredValue9.
    (recoveredValue15) nextPutAll: ('expand enum defines: ').
    recoveredValue16 := recoveredValue9.
    recoveredValue17 := (self) expandEnumDefines.
    recoveredValue18 := (recoveredValue17) asString.
    (recoveredValue16) nextPutAll: (recoveredValue18).
    (recoveredValue9) cr.
    ^self
! !

"ASDBase.ic method 0x2035f17c; bytecode file offset 0xc5ba48"
!SGCgEnumType methodsFor: 'recovered'!
hasCgConsecutiveValues
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) enumerationCodes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) enumerationCodes.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:block280f0564Arg1 :block280f0564Arg2 | 
    | block280f0564Value0 block280f0564Value1 block280f0564Value2 |
    block280f0564Value0 := block280f0564Arg1.
    block280f0564Value1 := block280f0564Arg2.
    block280f0564Value2 := (block280f0564Value0) < (block280f0564Value1).
    block280f0564Value2
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) enumerationCodes.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := [:recoveredBlock39Arg1 :recoveredBlock39Arg2 | 
    | recoveredBlock39Stack0 recoveredBlock39Stack1 recoveredBlock39Stack2 recoveredBlock39Stack3 recoveredBlock39Stack4 recoveredBlock39Stack5 recoveredBlock39PC recoveredBlock39Step recoveredBlock39Done recoveredBlock39Result |
    recoveredBlock39Stack0 := self.
    recoveredBlock39PC := 46.
    recoveredBlock39Done := false.
    [recoveredBlock39Done not] whileTrue: [
        recoveredBlock39Step := recoveredBlock39PC.
        recoveredBlock39Step = 46 ifTrue: [
            recoveredBlock39Stack1 := nil.
            recoveredBlock39PC := 47.
        ].
        recoveredBlock39Step = 47 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 48.
        ].
        recoveredBlock39Step = 48 ifTrue: [
            recoveredBlock39Stack3 := recoveredLocal2.
            recoveredBlock39PC := 51.
        ].
        recoveredBlock39Step = 51 ifTrue: [
            recoveredBlock39Stack4 := recoveredBlock39Arg2.
            recoveredBlock39PC := 52.
        ].
        recoveredBlock39Step = 52 ifTrue: [
            recoveredBlock39Stack3 := (recoveredBlock39Stack3) + (recoveredBlock39Stack4).
            recoveredBlock39PC := 53.
        ].
        recoveredBlock39Step = 53 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) = (recoveredBlock39Stack3).
            recoveredBlock39PC := 54.
        ].
        recoveredBlock39Step = 54 ifTrue: [
            (recoveredBlock39Stack2) ifTrue: [recoveredBlock39PC := 61] ifFalse: [recoveredBlock39PC := 58].
        ].
        recoveredBlock39Step = 58 ifTrue: [
            recoveredBlock39PC := 59.
        ].
        recoveredBlock39Step = 59 ifTrue: [
            recoveredBlock39Stack1 := false.
            recoveredBlock39PC := 60.
        ].
        recoveredBlock39Step = 60 ifTrue: [
            ^recoveredBlock39Stack1
        ].
        recoveredBlock39Step = 61 ifTrue: [
            recoveredBlock39Result := recoveredBlock39Stack1.
            recoveredBlock39Done := true.
        ].
    ].
    recoveredBlock39Result
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

