"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001338c; bytecode file offset 0x912098"
!ASAP2BytesAxisDescription class methodsFor: 'recovered'!
TypeClasses
    | recoveredValue0 |
    recoveredValue0 := TypeClasses.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016334; bytecode file offset 0x92209c"
!ASAP2BytesAxisDescription class methodsFor: 'recovered'!
keyWord
    ^'AXIS_DESCR'
! !

"ASDBase.ic method 0x2001724c; bytecode file offset 0x92209c"
!ASAP2BytesAxisDescription class methodsFor: 'recovered'!
members
    ^#('name' 'attribute' 'comments' 'extendedLimits' 'input' 'compuMethod' 'axisPtsRef' 'fixAxisPar' 'fixAxisParDist' 'fixAxisParList' 'maxSize' 'lowerBound' 'upperBound' 'maxGrad' 'format' 'byteOrder' 'deposit' 'monotony' 'readOnly')
! !

"ASDBase.ic method 0x200242a8; bytecode file offset 0x92209c"
!ASAP2BytesAxisDescription class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'attribute:' 'input:' 'compuMethod:' 'axisPtsRef:' 'fixAxisPar:' 'fixAxisParDist:' 'fixAxisParList:' 'maxSize:' 'lowerBound:' 'upperBound:' 'maxGrad:' 'format:' 'byteOrder:' 'deposit:' 'monotony:' 'readOnly:' 'curveAxisRef:')
! !

"ASDBase.ic method 0x20053de0; bytecode file offset 0x951190"
!ASAP2BytesAxisDescription class methodsFor: 'recovered'!
TypeClasses: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    TypeClasses := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20072ae0; bytecode file offset 0x96f3cc"
!ASAP2BytesAxisDescription class methodsFor: 'recovered'!
floatSize
    ^3
! !

"ASDBase.ic method 0x200746a4; bytecode file offset 0x970f98"
!ASAP2BytesAxisDescription class methodsFor: 'recovered'!
bytesSize
    ^10
! !

"ASDBase.ic method 0x200747a8; bytecode file offset 0x9710d4"
!ASAP2BytesAxisDescription class methodsFor: 'recovered'!
fixedSize
    ^12
! !

"ASDBase.ic method 0x201152dc; bytecode file offset 0xa11bc0"
!ASAP2BytesAxisDescription class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASAP2AxisDescription.
    recoveredValue1 := (recoveredValue0) keyWords.
    (self) keyWords: (recoveredValue1).
    recoveredValue2 := ASAP2AxisDescription.
    recoveredValue3 := (recoveredValue2) options.
    (self) options: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2013dd78; bytecode file offset 0xa3a640"
!ASAP2BytesAxisDescription class methodsFor: 'recovered'!
availableAttributes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubclasses.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280cbcf4Arg1 | 
    | block280cbcf4Value0 block280cbcf4Value1 block280cbcf4Value2 |
    block280cbcf4Value0 := block280cbcf4Arg1.
    block280cbcf4Value1 := (block280cbcf4Value0) basicNew: (0).
    block280cbcf4Value2 := (block280cbcf4Value1) attribute.
    block280cbcf4Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ec758; bytecode file offset 0xae902c"
!ASAP2BytesAxisDescription class methodsFor: 'recovered'!
referenceAccessors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := super referenceAccessors.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := ASAP2BytesCompuMethod.
    recoveredValue3 := (recoveredValue2) withAllSubclasses.
    (recoveredValue1) at: ('compuMethod') put: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := ASAP2BytesAxisPoints.
    recoveredValue6 := (recoveredValue5) withAllSubclasses.
    (recoveredValue4) at: ('axisPtsRef') put: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x20237214; bytecode file offset 0xb33ae8"
!ASAP2BytesAxisDescription class methodsFor: 'recovered'!
attributeAccessors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := super attributeAccessors.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (self) formatAttrib: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    (self) lowerBoundAttrib: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    (self) maxSizeAttrib: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) maxGradAttrib: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    (self) readOnlyAttrib: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    (self) upperBoundAttrib: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x202db0fc; bytecode file offset 0xbd79e8"
!ASAP2BytesAxisDescription class methodsFor: 'recovered'!
initializeClass
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new: (5).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := ASAP2BytesStdAxisDescription.
    (recoveredValue3) at: ('STD_AXIS') put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := ASAP2BytesComAxisDescription.
    (recoveredValue5) at: ('COM_AXIS') put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := ASAP2BytesResAxisDescription.
    (recoveredValue7) at: ('RES_AXIS') put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := ASAP2BytesFixAxisDescription.
    (recoveredValue9) at: ('FIX_AXIS') put: (recoveredValue10).
    recoveredValue11 := ASAP2BytesCurveAxisDescription.
    (recoveredValue2) at: ('CURVE_AXIS') put: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    (self) TypeClasses: (recoveredValue12).
    ^self
! !

