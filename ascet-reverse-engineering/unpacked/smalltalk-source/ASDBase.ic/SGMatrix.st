"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001323c; bytecode file offset 0x912098"
!SGMatrix methodsFor: 'recovered'!
accessClass
    | recoveredValue0 |
    recoveredValue0 := SGAccessMatrix.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014e08; bytecode file offset 0x912098"
!SGMatrix methodsFor: 'recovered'!
dataElementClass
    | recoveredValue0 |
    recoveredValue0 := RBDataMatrix.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015054; bytecode file offset 0x912098"
!SGMatrix methodsFor: 'recovered'!
dataClass
    | recoveredValue0 |
    recoveredValue0 := Matrix.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018cd4; bytecode file offset 0x92209c"
!SGMatrix methodsFor: 'recovered'!
getModelType
    ^'matrix'
! !

"ASDBase.ic method 0x2001bddc; bytecode file offset 0x92209c"
!SGMatrix methodsFor: 'recovered'!
dimensionLabel
    ^'Matrix'
! !

"ASDBase.ic method 0x2001bfb0; bytecode file offset 0x92209c"
!SGMatrix methodsFor: 'recovered'!
esdlDimensionLabel
    ^'[,]'
! !

"ASDBase.ic method 0x2001d3e4; bytecode file offset 0x92209c"
!SGMatrix methodsFor: 'recovered'!
graphicName
    ^'Matrix'
! !

"ASDBase.ic method 0x2001e1e8; bytecode file offset 0x92209c"
!SGMatrix methodsFor: 'recovered'!
iconName
    ^'ElementTypeVariableMatrix'
! !

"ASDBase.ic method 0x20022628; bytecode file offset 0x92209c"
!SGMatrix methodsFor: 'recovered'!
getDataTag
    ^'MatrixData'
! !

"ASDBase.ic method 0x20023738; bytecode file offset 0x92209c"
!SGMatrix methodsFor: 'recovered'!
getXMLType
    ^'Matrix'
! !

"ASDBase.ic method 0x20024704; bytecode file offset 0x92209c"
!SGMatrix methodsFor: 'recovered'!
typeForView
    ^'Matrix'
! !

"ASDBase.ic method 0x2002543c; bytecode file offset 0x92209c"
!SGMatrix methodsFor: 'recovered'!
getImplementationTag
    ^'MatrixImplementation'
! !

"ASDBase.ic method 0x20069568; bytecode file offset 0x966bdc"
!SGMatrix methodsFor: 'recovered'!
ySizeCheckValue
    | recoveredValue0 |
    recoveredValue0 := ySizeCheckValue.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072698; bytecode file offset 0x96f1c4"
!SGMatrix methodsFor: 'recovered'!
getNrDimensions
    ^2
! !

"ASDBase.ic method 0x200756f4; bytecode file offset 0x9757c8"
!SGMatrix methodsFor: 'recovered'!
hasYSizeCheckValue
    ^true
! !

"ASDBase.ic method 0x20076ee4; bytecode file offset 0x9757c8"
!SGMatrix methodsFor: 'recovered'!
supportVariantSizeY
    ^true
! !

"ASDBase.ic method 0x2007749c; bytecode file offset 0x9757c8"
!SGMatrix methodsFor: 'recovered'!
isSGMatrix
    ^true
! !

"ASDBase.ic method 0x20077ffc; bytecode file offset 0x9757c8"
!SGMatrix methodsFor: 'recovered'!
supportVariantSizeX
    ^true
! !

"ASDBase.ic method 0x2007d95c; bytecode file offset 0x97c330"
!SGMatrix methodsFor: 'recovered'!
isSGVector
    ^false
! !

"ASDBase.ic method 0x2008d888; bytecode file offset 0x98a14c"
!SGMatrix methodsFor: 'recovered'!
defaultMaxSize
    | recoveredValue0 |
    recoveredValue0 := (3) @ (3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a1c14; bytecode file offset 0x99e4fc"
!SGMatrix methodsFor: 'recovered'!
asap2Dimension
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) maxSize.
    recoveredValue1 := (recoveredValue0) x.
    recoveredValue2 := (self) maxSize.
    recoveredValue3 := (recoveredValue2) y.
    recoveredValue4 := (recoveredValue1) * (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200a1c28; bytecode file offset 0x99e4fc"
!SGMatrix methodsFor: 'recovered'!
mdlMaxSize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) maxSize.
    recoveredValue1 := (recoveredValue0) x.
    recoveredValue2 := (self) maxSize.
    recoveredValue3 := (recoveredValue2) y.
    recoveredValue4 := (recoveredValue1) * (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c1108; bytecode file offset 0x9bdf14"
!SGMatrix methodsFor: 'recovered'!
ySizeCheckValue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ySizeCheckValue := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e1ee8; bytecode file offset 0x9de890"
!SGMatrix methodsFor: 'recovered'!
label
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) basicType.
    recoveredValue1 := (recoveredValue0) label.
    recoveredValue2 := ('mat[') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (']').
    ^recoveredValue3
! !

"ASDBase.ic method 0x200f2f8c; bytecode file offset 0x9ef848"
!SGMatrix methodsFor: 'recovered'!
hasMaxSizeValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) xSizeCheckValue.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) ySizeCheckValue.
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

"ASDBase.ic method 0x2010b858; bytecode file offset 0xa085f0"
!SGMatrix methodsFor: 'recovered'!
setToVariableSize
    | recoveredValue0 recoveredValue1 |
    super setToVariableSize.
    recoveredValue0 := SGElement.
    recoveredValue1 := (recoveredValue0) textAsterisk.
    (self) ySizeCheckValue: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2011e960; bytecode file offset 0xa1b248"
!SGMatrix methodsFor: 'recovered'!
conformsWith: recoveredArg1
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isSGMatrix.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicType.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) conformsWith: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012eaf4; bytecode file offset 0xa2b478"
!SGMatrix methodsFor: 'recovered'!
dataElementEditType
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicType.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSGBoolean.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 'MatBool'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := 'Mat'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013ce78; bytecode file offset 0xa3974c"
!SGMatrix methodsFor: 'recovered'!
hasFixedSize
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
            recoveredStack2 := super hasFixedSize.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) ySizeCheckValue.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2016e9e0; bytecode file offset 0xa6b340"
!SGMatrix methodsFor: 'recovered'!
methodPositions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('setAt') put: (#(350 280 20)).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) at: ('getAt') put: (#(150 230 70)).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201709f8; bytecode file offset 0xa6d2c0"
!SGMatrix methodsFor: 'recovered'!
hasVariableSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := super hasVariableSize.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := SGElement.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) ySizeCheckValue.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAsterisk: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017e65c; bytecode file offset 0xa7af50"
!SGMatrix methodsFor: 'recovered'!
createData
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGMatrixData.
    recoveredValue1 := (self) basicType.
    recoveredValue2 := (recoveredValue1) defaultPhysType.
    recoveredValue3 := (recoveredValue0) createForType: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := (self) maxSize.
    (recoveredValue4) maxSize: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := (self) maxSize.
    (recoveredValue6) dimEquiDistant: (recoveredValue7).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2022f3e8; bytecode file offset 0xb2bcc8"
!SGMatrix methodsFor: 'recovered'!
getAtMethod
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := SGAliasMethod.
    recoveredValue1 := SGReservedNames.
    recoveredValue2 := (recoveredValue1) getAtMethod.
    recoveredValue3 := (self) basicType.
    recoveredValue4 := Array.
    recoveredValue5 := (recoveredValue4) with: ('x') with: ('y').
    recoveredValue6 := Array.
    recoveredValue7 := SGModelDataType.
    recoveredValue8 := (recoveredValue7) createScalar.
    recoveredValue9 := SGModelDataType.
    recoveredValue10 := (recoveredValue9) createScalar.
    recoveredValue11 := (recoveredValue6) with: (recoveredValue8) with: (recoveredValue10).
    recoveredValue12 := (recoveredValue0) createWithReturn: (recoveredValue2) returnTemplate: (recoveredValue3) inputArguments: (recoveredValue5) inputTemplates: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x20256194; bytecode file offset 0xb52a5c"
!SGMatrix methodsFor: 'recovered'!
checkForAdequateData: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGMatrixData.
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
            recoveredStack1 := (recoveredStack1) getPhysValue.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := [:recoveredBlock14Block21Arg1 | 
    | recoveredBlock14Block21Value0 recoveredBlock14Block21Value1 recoveredBlock14Block21Value2 |
    recoveredBlock14Block21Value0 := (self) basicType.
    recoveredBlock14Block21Value1 := recoveredBlock14Block21Arg1.
    recoveredBlock14Block21Value2 := (recoveredBlock14Block21Value0) checkForAdequateData: (recoveredBlock14Block21Value1).
    recoveredBlock14Block21Value2
].
    recoveredBlock14Value2 := (recoveredBlock14Value0) conform: (recoveredBlock14Value1).
    recoveredBlock14Value2
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) conform: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20268b1c; bytecode file offset 0xb65400"
!SGMatrix methodsFor: 'recovered'!
setAtMethod
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := SGAliasMethod.
    recoveredValue1 := SGReservedNames.
    recoveredValue2 := (recoveredValue1) setAtMethod.
    recoveredValue3 := Array.
    recoveredValue4 := (recoveredValue3) with: ('setAt') with: ('x') with: ('y').
    recoveredValue5 := Array.
    recoveredValue6 := (self) basicType.
    recoveredValue7 := SGModelDataType.
    recoveredValue8 := (recoveredValue7) createScalar.
    recoveredValue9 := SGModelDataType.
    recoveredValue10 := (recoveredValue9) createScalar.
    recoveredValue11 := (recoveredValue5) with: (recoveredValue6) with: (recoveredValue8) with: (recoveredValue10).
    recoveredValue12 := (recoveredValue0) createWithName: (recoveredValue2) inputArguments: (recoveredValue4) inputTemplates: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x2027c408; bytecode file offset 0xb78cd0"
!SGMatrix methodsFor: 'recovered'!
replaceAliasNames: recoveredArg1 sgClass: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super replaceAliasNames: (recoveredValue0) sgClass: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) ySizeCheckValue.
    recoveredValue4 := [
    ^nil
].
    recoveredValue5 := (recoveredValue2) at: (recoveredValue3) ifAbsent: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    (self) ySizeCheckValue: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x202cfe58; bytecode file offset 0xbcc724"
!SGMatrix methodsFor: 'recovered'!
checkForCompatibleData: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGMatrixData.
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
            recoveredStack1 := (recoveredStack1) maxSize.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxSize.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysValue.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := [:recoveredBlock24Block31Arg1 | 
    | recoveredBlock24Block31Value0 recoveredBlock24Block31Value1 recoveredBlock24Block31Value2 |
    recoveredBlock24Block31Value0 := (self) basicType.
    recoveredBlock24Block31Value1 := recoveredBlock24Block31Arg1.
    recoveredBlock24Block31Value2 := (recoveredBlock24Block31Value0) checkForCompatibleData: (recoveredBlock24Block31Value1).
    recoveredBlock24Block31Value2
].
    recoveredBlock24Value2 := (recoveredBlock24Value0) conform: (recoveredBlock24Value1).
    recoveredBlock24Value2
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) conform: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2033b900; bytecode file offset 0xc38224"
!SGMatrix methodsFor: 'recovered'!
generateScoopIX: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := (self) basicType.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) generateScoopIX: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) setCurrentTag: ('width').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) writeHeaderStart.
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (self) maxSize.
    recoveredValue7 := (recoveredValue6) x.
    recoveredValue8 := (recoveredValue7) asString.
    (recoveredValue5) attribute: ('value') with: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) writeHeaderEnd.
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) writeFooter.
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) setCurrentTag: ('width').
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) writeHeaderStart.
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := (self) maxSize.
    recoveredValue15 := (recoveredValue14) y.
    recoveredValue16 := (recoveredValue15) asString.
    (recoveredValue13) attribute: ('value') with: (recoveredValue16).
    recoveredValue17 := recoveredValue2.
    (recoveredValue17) writeHeaderEnd.
    (recoveredValue2) writeFooter.
    ^self
! !

"ASDBase.ic method 0x2034b8b8; bytecode file offset 0xc4818c"
!SGMatrix methodsFor: 'recovered'!
convertAdequateData: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxSize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxSize.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxSize.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) maxSize: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysValue.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := [:recoveredBlock25Block35Arg1 :recoveredBlock25Block35Arg2 | 
    | recoveredBlock25Block35Local1 recoveredBlock25Block35Value0 recoveredBlock25Block35Value1 recoveredBlock25Block35Value2 recoveredBlock25Block35Value3 recoveredBlock25Block35Value4 recoveredBlock25Block35Value5 recoveredBlock25Block35Value6 |
    recoveredBlock25Block35Value0 := (self) basicType.
    recoveredBlock25Block35Value1 := recoveredBlock25Block35Arg1.
    recoveredBlock25Block35Value2 := (recoveredBlock25Block35Value0) convertAdequateData: (recoveredBlock25Block35Value1).
    recoveredBlock25Block35Local1 := recoveredBlock25Block35Value2.
    recoveredBlock25Block35Value3 := recoveredBlock25Arg1.
    recoveredBlock25Block35Value4 := recoveredBlock25Block35Arg2.
    recoveredBlock25Block35Value5 := recoveredBlock25Block35Local1.
    recoveredBlock25Block35Value6 := (recoveredBlock25Block35Value3) at: (recoveredBlock25Block35Value4) put: (recoveredBlock25Block35Value5).
    recoveredBlock25Block35Value6
].
    recoveredBlock25Value2 := (recoveredBlock25Value0) doWithIndex: (recoveredBlock25Value1).
    recoveredBlock25Value2
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203afcf8; bytecode file offset 0xcac5e4"
!SGMatrix methodsFor: 'recovered'!
writeXMLElementInfo: recoveredArg1 class: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) maxSize.
    recoveredValue2 := (recoveredValue1) x.
    (recoveredValue0) attr: ('maxSizeX') nnInt: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) maxSize.
    recoveredValue5 := (recoveredValue4) y.
    (recoveredValue3) attr: ('maxSizeY') nnInt: (recoveredValue5).
    recoveredValue6 := (self) xSizeCheckValue.
    recoveredValue7 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 |
    recoveredBlock27Value0 := recoveredArg1.
    recoveredBlock27Value1 := recoveredBlock27Arg1.
    recoveredBlock27Value2 := recoveredArg2.
    recoveredBlock27Value3 := (recoveredBlock27Value0) elementRef: (recoveredBlock27Value1) in: (recoveredBlock27Value2) nameTag: ('xSizeVariantElementName') oidTag: ('xSizeVariantElementOID').
    recoveredBlock27Value3
].
    (recoveredValue6) ifNotNil: (recoveredValue7).
    recoveredValue8 := (self) ySizeCheckValue.
    recoveredValue9 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Value0 recoveredBlock54Value1 recoveredBlock54Value2 recoveredBlock54Value3 |
    recoveredBlock54Value0 := recoveredArg1.
    recoveredBlock54Value1 := recoveredBlock54Arg1.
    recoveredBlock54Value2 := recoveredArg2.
    recoveredBlock54Value3 := (recoveredBlock54Value0) elementRef: (recoveredBlock54Value1) in: (recoveredBlock54Value2) nameTag: ('ySizeVariantElementName') oidTag: ('ySizeVariantElementOID').
    recoveredBlock54Value3
].
    (recoveredValue8) ifNotNil: (recoveredValue9).
    ^self
! !

