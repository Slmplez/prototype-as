"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001df8; bytecode file offset 0x8ffcfc"
!RBDataBoolean methodsFor: 'recovered'!
updateImplementationRepresentation
    ^self
! !

"ASDBase.ic method 0x200036d8; bytecode file offset 0x90206c"
!RBDataBoolean methodsFor: 'recovered'!
setImplInterval: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200058d0; bytecode file offset 0x902744"
!RBDataBoolean methodsFor: 'recovered'!
updateImplIntervalLeft: recoveredArg1 right: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20006568; bytecode file offset 0x902ecc"
!RBDataBoolean methodsFor: 'recovered'!
updateRepresentationFromMasterFormulas: recoveredArg1 monitor: recoveredArg2 implConfig: recoveredArg3 variable: recoveredArg4
    ^self
! !

"ASDBase.ic method 0x200084ec; bytecode file offset 0x908be4"
!RBDataBoolean methodsFor: 'recovered'!
getCheckedImplInterval
    | recoveredValue0 |
    recoveredValue0 := (self) getImplInterval.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200087c8; bytecode file offset 0x908be4"
!RBDataBoolean methodsFor: 'recovered'!
asInteger
    | recoveredValue0 |
    recoveredValue0 := (self) getImplValue.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000e298; bytecode file offset 0x90ab8c"
!RBDataBoolean methodsFor: 'recovered'!
writeValuesToConfig: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) getPhysValue.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000e2b0; bytecode file offset 0x90ab8c"
!RBDataBoolean methodsFor: 'recovered'!
setDataToData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) getPhysValue.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20012d8c; bytecode file offset 0x912098"
!RBDataBoolean methodsFor: 'recovered'!
apiClass
    | recoveredValue0 |
    recoveredValue0 := EtasAPIScalarDataElement.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200179a8; bytecode file offset 0x92209c"
!RBDataBoolean methodsFor: 'recovered'!
label
    ^'boolImpl'
! !

"ASDBase.ic method 0x200186c8; bytecode file offset 0x92209c"
!RBDataBoolean methodsFor: 'recovered'!
damosKeyWord
    ^'FESTWERT'
! !

"ASDBase.ic method 0x20025828; bytecode file offset 0x923928"
!RBDataBoolean methodsFor: 'recovered'!
recordLayout
    ^'Standard'
! !

"ASDBase.ic method 0x200266ec; bytecode file offset 0x923928"
!RBDataBoolean methodsFor: 'recovered'!
asModelType
    ^'logic'
! !

"ASDBase.ic method 0x20027108; bytecode file offset 0x923a44"
!RBDataBoolean methodsFor: 'recovered'!
setToFalse
    | recoveredValue0 |
    recoveredValue0 := (self) setPhysValue: (false).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002727c; bytecode file offset 0x923b70"
!RBDataBoolean methodsFor: 'recovered'!
not
    | recoveredValue0 |
    recoveredValue0 := (self) not: (self).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200273f8; bytecode file offset 0x923d40"
!RBDataBoolean methodsFor: 'recovered'!
setToTrue
    | recoveredValue0 |
    recoveredValue0 := (self) setPhysValue: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200286a4; bytecode file offset 0x934580"
!RBDataBoolean methodsFor: 'recovered'!
typeAndImplHash
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getImplType.
    recoveredValue1 := (recoveredValue0) hash.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20029464; bytecode file offset 0x934580"
!RBDataBoolean methodsFor: 'recovered'!
getBasicLogType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getPhysType.
    recoveredValue1 := (recoveredValue0) getBasicLogType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ed94; bytecode file offset 0x934580"
!RBDataBoolean methodsFor: 'recovered'!
implLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getImplType.
    recoveredValue1 := (recoveredValue0) label.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031e84; bytecode file offset 0x934580"
!RBDataBoolean methodsFor: 'recovered'!
isSigned
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getImplType.
    recoveredValue1 := (recoveredValue0) isSigned.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d118; bytecode file offset 0x93bf94"
!RBDataBoolean methodsFor: 'recovered'!
defaultImplType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInt8Unsigned.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ea58; bytecode file offset 0x93bf94"
!RBDataBoolean methodsFor: 'recovered'!
allImplTypes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBBoolean.
    recoveredValue1 := (recoveredValue0) allImplTypes.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200721a8; bytecode file offset 0x96ee04"
!RBDataBoolean methodsFor: 'recovered'!
getPhysQuantization
    ^1
! !

"ASDBase.ic method 0x200721d0; bytecode file offset 0x96ee04"
!RBDataBoolean methodsFor: 'recovered'!
defaultBitMask
    ^1
! !

"ASDBase.ic method 0x2007551c; bytecode file offset 0x9757c8"
!RBDataBoolean methodsFor: 'recovered'!
isRBDataBoolean
    ^true
! !

"ASDBase.ic method 0x20076384; bytecode file offset 0x9757c8"
!RBDataBoolean methodsFor: 'recovered'!
checkDistributions
    ^true
! !

"ASDBase.ic method 0x20076c44; bytecode file offset 0x9757c8"
!RBDataBoolean methodsFor: 'recovered'!
isDigital
    ^true
! !

"ASDBase.ic method 0x20076ed4; bytecode file offset 0x9757c8"
!RBDataBoolean methodsFor: 'recovered'!
isIleBooleanType
    ^true
! !

"ASDBase.ic method 0x200783cc; bytecode file offset 0x9757c8"
!RBDataBoolean methodsFor: 'recovered'!
isImplementationMaster
    ^true
! !

"ASDBase.ic method 0x20078414; bytecode file offset 0x9757c8"
!RBDataBoolean methodsFor: 'recovered'!
isSymbolic
    ^true
! !

"ASDBase.ic method 0x20079b8c; bytecode file offset 0x97c330"
!RBDataBoolean methodsFor: 'recovered'!
supportsLimitAssignmentEdit
    ^false
! !

"ASDBase.ic method 0x2007a234; bytecode file offset 0x97c330"
!RBDataBoolean methodsFor: 'recovered'!
supportsImplIntervalEdit
    ^false
! !

"ASDBase.ic method 0x2007a26c; bytecode file offset 0x97c330"
!RBDataBoolean methodsFor: 'recovered'!
supportsImplMasterSetting
    ^false
! !

"ASDBase.ic method 0x2007ae94; bytecode file offset 0x97c330"
!RBDataBoolean methodsFor: 'recovered'!
supportsImplType
    ^false
! !

"ASDBase.ic method 0x2007b3ac; bytecode file offset 0x97c330"
!RBDataBoolean methodsFor: 'recovered'!
supportsModelIntervalEdit
    ^false
! !

"ASDBase.ic method 0x2007beb4; bytecode file offset 0x97c330"
!RBDataBoolean methodsFor: 'recovered'!
supportsFormula
    ^false
! !

"ASDBase.ic method 0x2007d2ec; bytecode file offset 0x97c330"
!RBDataBoolean methodsFor: 'recovered'!
supportsZeroNotIncludedEdit
    ^false
! !

"ASDBase.ic method 0x2007d7bc; bytecode file offset 0x97c330"
!RBDataBoolean methodsFor: 'recovered'!
isRBInteger
    ^false
! !

"ASDBase.ic method 0x2007f1d4; bytecode file offset 0x97c330"
!RBDataBoolean methodsFor: 'recovered'!
isBitData
    ^false
! !

"ASDBase.ic method 0x2007f9bc; bytecode file offset 0x97c330"
!RBDataBoolean methodsFor: 'recovered'!
supportsLimitOverflowEdit
    ^false
! !

"ASDBase.ic method 0x20084fa8; bytecode file offset 0x981ca4"
!RBDataBoolean methodsFor: 'recovered'!
updateImplType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) setImplType: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20085e24; bytecode file offset 0x9827b0"
!RBDataBoolean methodsFor: 'recovered'!
& recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) value.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) value.
    recoveredValue3 := (recoveredValue0) & (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20085e84; bytecode file offset 0x9827b0"
!RBDataBoolean methodsFor: 'recovered'!
xor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) value.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) value.
    recoveredValue3 := (recoveredValue0) xor: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20085ea4; bytecode file offset 0x9827b0"
!RBDataBoolean methodsFor: 'recovered'!
| recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) value.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) value.
    recoveredValue3 := (recoveredValue0) | (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20095618; bytecode file offset 0x991fb4"
!RBDataBoolean methodsFor: 'recovered'!
initNewExtraImplInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) defaultBitMask.
    (recoveredValue0) bitmask: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009ba38; bytecode file offset 0x998304"
!RBDataBoolean methodsFor: 'recovered'!
getOrderedValues
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: (false) with: (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cc9a4; bytecode file offset 0x9c92b0"
!RBDataBoolean methodsFor: 'recovered'!
getImplInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := (recoveredValue0) left: (0) right: (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cc9d4; bytecode file offset 0x9c92b0"
!RBDataBoolean methodsFor: 'recovered'!
asap2Limits
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := (recoveredValue0) left: (0) right: (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cc9e4; bytecode file offset 0x9c92b0"
!RBDataBoolean methodsFor: 'recovered'!
getPhysInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := (recoveredValue0) left: (0) right: (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200db930; bytecode file offset 0x9d81fc"
!RBDataBoolean methodsFor: 'recovered'!
replaceFormulaNamed: recoveredArg1 withFormula: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := ('Kk') == ('Call_68013').
    ^0
! !

"ASDBase.ic method 0x200e7db0; bytecode file offset 0x9e4668"
!RBDataBoolean methodsFor: 'recovered'!
and: recoveredArg1
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
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200e8458; bytecode file offset 0x9e4d10"
!RBDataBoolean methodsFor: 'recovered'!
or: recoveredArg1
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
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200eb020; bytecode file offset 0x9e78dc"
!RBDataBoolean methodsFor: 'recovered'!
equal: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) value.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) value.
    recoveredValue4 := (recoveredValue1) = (recoveredValue3).
    (self) setPhysValue: (recoveredValue4).
    recoveredValue5 := (self) value.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20103fa0; bytecode file offset 0xa00860"
!RBDataBoolean methodsFor: 'recovered'!
editImplConfig: recoveredArg1 context: recoveredArg2 instVar: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) implementationDialog.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) createForImpl: (recoveredValue1) instVar: (recoveredValue2) context: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) promptAtCurrentMousePosition.
    ^recoveredValue6
! !

"ASDBase.ic method 0x201288a8; bytecode file offset 0xa2516c"
!RBDataBoolean methodsFor: 'recovered'!
computeIntegerImplInterval
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) left: (0).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) right: (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2013118c; bytecode file offset 0xa2da74"
!RBDataBoolean methodsFor: 'recovered'!
hasCompatibleTypeWith: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack3 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := super hasCompatibleTypeWith: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isArithmeticElement.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20131f9c; bytecode file offset 0xa2e868"
!RBDataBoolean methodsFor: 'recovered'!
updatePrimImplValues: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getImplType.
    recoveredValue2 := (recoveredValue1) apiIdentifier.
    (recoveredValue0) implType: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) extraImplInfo.
    recoveredValue5 := (recoveredValue4) text.
    (recoveredValue3) comment: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20149810; bytecode file offset 0xa460dc"
!RBDataBoolean methodsFor: 'recovered'!
readAsyncData
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := access.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) readAsyncData.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) setImplValueDoNotRewrite: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20149864; bytecode file offset 0xa46120"
!RBDataBoolean methodsFor: 'recovered'!
readOnlineData
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := access.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) readOnlineData.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) setImplValueDoNotRewrite: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201656c0; bytecode file offset 0xa61f90"
!RBDataBoolean methodsFor: 'recovered'!
printDamosValuesOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Integer.
    recoveredValue2 := (self) getPhysValue.
    recoveredValue3 := (recoveredValue1) printBooleanPhysValue: (recoveredValue2).
    recoveredValue4 := ('   WERT ') , (recoveredValue3).
    (recoveredValue0) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (recoveredValue5) cr.
    recoveredValue6 := recoveredArg1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2017ae0c; bytecode file offset 0xa776d4"
!RBDataBoolean methodsFor: 'recovered'!
cgUniqueTypeIdentifier
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBInteger.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) cgUniqueTypeLogUIntIdentifier.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) cgUniqueTypeIdentifier.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018c850; bytecode file offset 0xa89120"
!RBDataBoolean methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBInt8Unsigned.
    recoveredValue1 := (recoveredValue0) createDefault.
    (self) initializeForType: (recoveredValue1).
    recoveredValue2 := RBBoolean.
    recoveredValue3 := (recoveredValue2) createDefault.
    (self) setPhysType: (recoveredValue3).
    (self) setPhysValue: (true).
    (self) updateImplementationRepresentation.
    ^self
! !

"ASDBase.ic method 0x20192ad4; bytecode file offset 0xa8f398"
!RBDataBoolean methodsFor: 'recovered'!
not: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) etasDevHalt.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) setToFalse.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) setToTrue.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201aadcc; bytecode file offset 0xaa7690"
!RBDataBoolean methodsFor: 'recovered'!
damosValueFormatBlock
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDDAMOSOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) optionDamosBooleanFormat.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) printBooleanPhysValue: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    ^recoveredValue3
! !

"ASDBase.ic method 0x201ca30c; bytecode file offset 0xac6c08"
!RBDataBoolean methodsFor: 'recovered'!
updateImplementationValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasVerse.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementationRepresentation.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPhysValue.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) formula.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) transformedBy: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) convert: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) setValue: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ca334; bytecode file offset 0xac6c08"
!RBDataBoolean methodsFor: 'recovered'!
updatePhysicsValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasInverse.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) physicsRepresentation.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysType.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplValue.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) formula.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) transformedByInverse: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) convert: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) setValue: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e4840; bytecode file offset 0xae1118"
!RBDataBoolean methodsFor: 'recovered'!
updatePhysicsRepresentation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) formula.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasInverse.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) physicsRepresentation.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysType.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplValue.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInteger.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) formula.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) transformedByInverse: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) convert: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) setValue: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e8784; bytecode file offset 0xae5044"
!RBDataBoolean methodsFor: 'recovered'!
decByStep: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplValue.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInteger.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) getImplValue.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) setImplValue: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e87b8; bytecode file offset 0xae5078"
!RBDataBoolean methodsFor: 'recovered'!
incByStep: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplValue.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInteger.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) getImplValue.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) setImplValue: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028f118; bytecode file offset 0xb8b9e8"
!RBDataBoolean methodsFor: 'recovered'!
updateWithDataElement: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) species.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) species.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := 'Cp'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'EHI70140'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysValue.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) asBoolean.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) setPhysValue: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDigital.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPhysValue.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) asBoolean.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) setPhysValue: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e02bc; bytecode file offset 0xbdcba0"
!RBDataBoolean methodsFor: 'recovered'!
printDamosWithNoBooleans
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := (self) dmName.
    recoveredValue1 := (recoveredValue0) asDamosName.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := (self) value.
    recoveredValue3 := (recoveredValue2) asString.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := ('* FESTWERT') , (' ').
    recoveredValue5 := recoveredLocal3.
    recoveredValue6 := (recoveredValue4) , (recoveredValue5).
    recoveredValue7 := (recoveredValue6) , ('$').
    recoveredValue8 := (recoveredValue7) , ('*    WERT').
    recoveredValue9 := (recoveredValue8) , (' ').
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := (recoveredValue9) , (recoveredValue10).
    recoveredValue12 := (recoveredValue11) , (' $').
    recoveredValue13 := (recoveredValue12) , ('* END').
    recoveredValue14 := (recoveredValue13) , ('$$').
    recoveredLocal1 := recoveredValue14.
    recoveredValue15 := recoveredLocal1.
    ^recoveredValue15
! !

"ASDBase.ic method 0x202e2168; bytecode file offset 0xbdea54"
!RBDataBoolean methodsFor: 'recovered'!
initializeForType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := RBDataDescription.
    recoveredValue1 := (recoveredValue0) createDefault.
    description := recoveredValue1.
    (self) state: (0).
    recoveredValue2 := RBTypedValue.
    recoveredValue3 := RBBoolean.
    recoveredValue4 := (recoveredValue3) createDefault.
    recoveredValue5 := (recoveredValue2) createForType: (recoveredValue4).
    (self) physicsRepresentation: (recoveredValue5).
    recoveredValue6 := RBTypedValue.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue6) createForType: (recoveredValue7).
    (self) implementationRepresentation: (recoveredValue8).
    recoveredValue9 := RBFormulaId.
    recoveredValue10 := (recoveredValue9) createDefault.
    recoveredValue11 := recoveredValue10.
    (recoveredValue11) name: ('ident').
    (self) formula: (recoveredValue10).
    (self) setPhysValue: (true).
    (self) updateImplementationRepresentation.
    ^self
! !

"ASDBase.ic method 0x20326d20; bytecode file offset 0xc23600"
!RBDataBoolean methodsFor: 'recovered'!
printDamosValuesV2On: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDDAMOSOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionDamosBooleanFormat.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := '   TEXT "'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := (recoveredStack4) getPhysValue.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) printBooleanPhysValue: (recoveredStack4).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := $".
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := '   WERT '.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) getPhysValue.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) printBooleanPhysValue: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203725f8; bytecode file offset 0xc6eed0"
!RBDataBoolean methodsFor: 'recovered'!
setPhysValue: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBoolean.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'TRUE'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementationRepresentation.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) setValue: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) updatePhysicsValue.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) write.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ea85c; bytecode file offset 0xce71a8"
!RBDataBoolean methodsFor: 'recovered'!
docuImpl
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) getPhysType.
    recoveredValue4 := (recoveredValue3) modelLabel.
    (recoveredValue2) add: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := (self) getPhysInterval.
    recoveredValue7 := (recoveredValue6) left.
    recoveredValue8 := (recoveredValue7) printString.
    (recoveredValue5) add: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := (self) getPhysInterval.
    recoveredValue11 := (recoveredValue10) right.
    recoveredValue12 := (recoveredValue11) printString.
    (recoveredValue9) add: (recoveredValue12).
    recoveredValue13 := recoveredValue1.
    recoveredValue14 := (self) getPhysQuantization.
    recoveredValue15 := (recoveredValue14) printString.
    (recoveredValue13) add: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) formula.
    recoveredValue18 := (recoveredValue17) name.
    (recoveredValue16) add: (recoveredValue18).
    recoveredValue19 := recoveredValue1.
    recoveredValue20 := (self) getImplType.
    recoveredValue21 := (recoveredValue20) getDisplayLabel.
    (recoveredValue19) add: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := (self) getImplInterval.
    recoveredValue24 := (recoveredValue23) left.
    recoveredValue25 := (recoveredValue24) printString.
    (recoveredValue22) add: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := (self) getImplInterval.
    recoveredValue28 := (recoveredValue27) right.
    recoveredValue29 := (recoveredValue28) printString.
    (recoveredValue26) add: (recoveredValue29).
    recoveredValue30 := recoveredValue1.
    recoveredValue31 := (self) extraImplInfo.
    recoveredValue32 := (recoveredValue31) text.
    (recoveredValue30) add: (recoveredValue32).
    recoveredLocal1 := recoveredValue1.
    recoveredValue33 := recoveredLocal1.
    recoveredValue34 := (recoveredValue33) asArray.
    ^recoveredValue34
! !

