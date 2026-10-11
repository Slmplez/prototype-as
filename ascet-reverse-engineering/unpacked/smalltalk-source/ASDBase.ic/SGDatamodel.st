"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000498; bytecode file offset 0x8ffcfc"
!SGDatamodel methodsFor: 'recovered'!
reference
    ^self
! !

"ASDBase.ic method 0x2000ce6c; bytecode file offset 0x909ab8"
!SGDatamodel methodsFor: 'recovered'!
customerDataInfoForElement: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2001b974; bytecode file offset 0x92209c"
!SGDatamodel methodsFor: 'recovered'!
typeForView
    ^'undefined'
! !

"ASDBase.ic method 0x20073c20; bytecode file offset 0x970b34"
!SGDatamodel methodsFor: 'recovered'!
customerDataInfo
    ^nil
! !

"ASDBase.ic method 0x2007953c; bytecode file offset 0x97c330"
!SGDatamodel methodsFor: 'recovered'!
isMonitoringVariable
    ^false
! !

"ASDBase.ic method 0x2007985c; bytecode file offset 0x97c330"
!SGDatamodel methodsFor: 'recovered'!
isLimitedInteger
    ^false
! !

"ASDBase.ic method 0x20079914; bytecode file offset 0x97c330"
!SGDatamodel methodsFor: 'recovered'!
isMethod
    ^false
! !

"ASDBase.ic method 0x20079df4; bytecode file offset 0x97c330"
!SGDatamodel methodsFor: 'recovered'!
isGraphicObjectWrapper
    ^false
! !

"ASDBase.ic method 0x2007aa64; bytecode file offset 0x97c330"
!SGDatamodel methodsFor: 'recovered'!
isAliasDummy
    ^false
! !

"ASDBase.ic method 0x2007adc4; bytecode file offset 0x97c330"
!SGDatamodel methodsFor: 'recovered'!
isProject
    ^false
! !

"ASDBase.ic method 0x2007aeec; bytecode file offset 0x97c330"
!SGDatamodel methodsFor: 'recovered'!
isRunnable
    ^false
! !

"ASDBase.ic method 0x2007b644; bytecode file offset 0x97c330"
!SGDatamodel methodsFor: 'recovered'!
isElement
    ^false
! !

"ASDBase.ic method 0x2007b7bc; bytecode file offset 0x97c330"
!SGDatamodel methodsFor: 'recovered'!
xmlNeedsOwner
    ^false
! !

"ASDBase.ic method 0x2007b8e4; bytecode file offset 0x97c330"
!SGDatamodel methodsFor: 'recovered'!
isSimEntry
    ^false
! !

"ASDBase.ic method 0x2007c524; bytecode file offset 0x97c330"
!SGDatamodel methodsFor: 'recovered'!
isAliasForSelf
    ^false
! !

"ASDBase.ic method 0x2007c7bc; bytecode file offset 0x97c330"
!SGDatamodel methodsFor: 'recovered'!
isProcess
    ^false
! !

"ASDBase.ic method 0x2007c9b4; bytecode file offset 0x97c330"
!SGDatamodel methodsFor: 'recovered'!
isFolder
    ^false
! !

"ASDBase.ic method 0x2007cb5c; bytecode file offset 0x97c330"
!SGDatamodel methodsFor: 'recovered'!
isRealizedMethodSignature
    ^false
! !

"ASDBase.ic method 0x2007d39c; bytecode file offset 0x97c330"
!SGDatamodel methodsFor: 'recovered'!
isMethodSignature
    ^false
! !

"ASDBase.ic method 0x2007d6fc; bytecode file offset 0x97c330"
!SGDatamodel methodsFor: 'recovered'!
isGraphicObject
    ^false
! !

"ASDBase.ic method 0x2007d9b4; bytecode file offset 0x97c330"
!SGDatamodel methodsFor: 'recovered'!
isSpecification
    ^false
! !

"ASDBase.ic method 0x2007de4c; bytecode file offset 0x97c330"
!SGDatamodel methodsFor: 'recovered'!
isRealizedMethodElement
    ^false
! !

"ASDBase.ic method 0x2007e24c; bytecode file offset 0x97c330"
!SGDatamodel methodsFor: 'recovered'!
isRealizedMethodReturn
    ^false
! !

"ASDBase.ic method 0x2007e5cc; bytecode file offset 0x97c330"
!SGDatamodel methodsFor: 'recovered'!
isSGClass
    ^false
! !

"ASDBase.ic method 0x2007e654; bytecode file offset 0x97c330"
!SGDatamodel methodsFor: 'recovered'!
hasMaxSize
    ^false
! !

"ASDBase.ic method 0x2007f2f4; bytecode file offset 0x97c330"
!SGDatamodel methodsFor: 'recovered'!
supportsChangingScope
    ^false
! !

"ASDBase.ic method 0x2007f44c; bytecode file offset 0x97c330"
!SGDatamodel methodsFor: 'recovered'!
isWrapAroundInteger
    ^false
! !

"ASDBase.ic method 0x2008e5c0; bytecode file offset 0x98aef8"
!SGDatamodel methodsFor: 'recovered'!
isComponentEditable
    | recoveredValue0 recoveredValue1 |
    (self) etasDevHalt.
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (recoveredValue0) isComponentEditable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20093494; bytecode file offset 0x98fed0"
!SGDatamodel methodsFor: 'recovered'!
uuid: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) datamodelPropertyAt: ('UUID') put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20099e58; bytecode file offset 0x997194"
!SGDatamodel methodsFor: 'recovered'!
datamodelPropertyAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009da10; bytecode file offset 0x99a2e4"
!SGDatamodel methodsFor: 'recovered'!
uuid
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [].
    recoveredValue1 := (self) datamodelPropertyAt: ('UUID') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201471a0; bytecode file offset 0xa43a60"
!SGDatamodel methodsFor: 'recovered'!
datamodelPropertyAt: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := properties.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) properties.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014cdac; bytecode file offset 0xa49664"
!SGDatamodel methodsFor: 'recovered'!
clearProperties
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := properties.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := properties.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            properties := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015cadc; bytecode file offset 0xa5939c"
!SGDatamodel methodsFor: 'recovered'!
properties
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := properties.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := LookupTable.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    properties := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    recoveredValue2 := (recoveredValue0) ifNil: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201b4e98; bytecode file offset 0xab1774"
!SGDatamodel methodsFor: 'recovered'!
hasDatamodelPropertyAt: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) properties.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [:block280d42d4Arg1 | 
    true
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b59d0; bytecode file offset 0xab2298"
!SGDatamodel methodsFor: 'recovered'!
writeXMLDatamodelUUID: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uuid.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value1) asString.
    recoveredBlock5Value3 := (recoveredBlock5Value0) attr: ('UUID') string: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202786c4; bytecode file offset 0xb74f94"
!SGDatamodel methodsFor: 'recovered'!
writeXMLCustomerDatas: recoveredArg1 forElement: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) destVersion.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 'V6.0.0'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) customerDataInfoForElement: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 |
    recoveredBlock22Value0 := recoveredArg1.
    recoveredBlock22Value1 := recoveredBlock22Arg1.
    recoveredBlock22Value2 := (recoveredBlock22Value1) allCustomerDatas.
    recoveredBlock22Value3 := (recoveredBlock22Value0) writeCustomerDatas: (recoveredBlock22Value2).
    recoveredBlock22Value3
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d072c; bytecode file offset 0xbccffc"
!SGDatamodel methodsFor: 'recovered'!
writeXMLCustomerDatas: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) controller.
    recoveredValue2 := (recoveredValue1) destVersion.
    recoveredValue3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack2 := 'V6.0.0'.
            recoveredBlock9PC := 19.
        ].
        recoveredBlock9Step = 19 ifTrue: [
            recoveredBlock9Stack1 := (recoveredBlock9Stack1) < (recoveredBlock9Stack2).
            recoveredBlock9PC := 20.
        ].
        recoveredBlock9Step = 20 ifTrue: [
            (recoveredBlock9Stack1) ifTrue: [recoveredBlock9PC := 24] ifFalse: [recoveredBlock9PC := 26].
        ].
        recoveredBlock9Step = 24 ifTrue: [
            recoveredBlock9Stack1 := self.
            recoveredBlock9PC := 25.
        ].
        recoveredBlock9Step = 25 ifTrue: [
            ^recoveredBlock9Stack1
        ].
        recoveredBlock9Step = 26 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) customerDataInfo.
            recoveredBlock9PC := 27.
        ].
        recoveredBlock9Step = 27 ifTrue: [
            recoveredBlock9Stack1 := [:recoveredBlock9Block27Arg1 | 
    | recoveredBlock9Block27Value0 recoveredBlock9Block27Value1 recoveredBlock9Block27Value2 recoveredBlock9Block27Value3 |
    recoveredBlock9Block27Value0 := recoveredArg1.
    recoveredBlock9Block27Value1 := recoveredBlock9Block27Arg1.
    recoveredBlock9Block27Value2 := (recoveredBlock9Block27Value1) allCustomerDatas.
    recoveredBlock9Block27Value3 := (recoveredBlock9Block27Value0) writeCustomerDatas: (recoveredBlock9Block27Value2).
    recoveredBlock9Block27Value3
].
            recoveredBlock9PC := 43.
        ].
        recoveredBlock9Step = 43 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) ifNotNil: (recoveredBlock9Stack1).
            recoveredBlock9PC := 45.
        ].
        recoveredBlock9Step = 45 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack0.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    ^self
! !

