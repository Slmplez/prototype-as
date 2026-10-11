"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200070f4; bytecode file offset 0x908be4"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
sixModelOriginIdentifier
    | recoveredValue0 |
    recoveredValue0 := (self) modelOriginIdentifier.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20007364; bytecode file offset 0x908be4"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
genSixAxisRefs
    | recoveredValue0 |
    recoveredValue0 := (self) axisRefs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008a08; bytecode file offset 0x908be4"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
genSixOffsetRefs
    | recoveredValue0 |
    recoveredValue0 := (self) offsetRefs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009d7c; bytecode file offset 0x908be4"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
genSixTypeWidth
    | recoveredValue0 |
    recoveredValue0 := (self) width.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b504; bytecode file offset 0x908be4"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
genSixDistanceRefs
    | recoveredValue0 |
    recoveredValue0 := (self) distanceRefs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b888; bytecode file offset 0x908be4"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
genSixNoAxisPtsRefs
    | recoveredValue0 |
    recoveredValue0 := (self) noAxisPtsRefs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ff64; bytecode file offset 0x92209c"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
valuesIdentifier
    ^'values'
! !

"ASDBase.ic method 0x2002d3c4; bytecode file offset 0x934580"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
mdlComplexBaseClassType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlVarDecl.
    recoveredValue1 := (recoveredValue0) mdlClass.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200376a4; bytecode file offset 0x934580"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
genSixCStructDefinitionBaseRefName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) baseReference.
    recoveredValue1 := (recoveredValue0) genSixImportedElementCName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20078214; bytecode file offset 0x9757c8"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
isScoopIXCharTableDataElement
    ^true
! !

"ASDBase.ic method 0x2008bb50; bytecode file offset 0x988408"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
isValuesField
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := identifier.
    recoveredValue1 := (self) valuesIdentifier.
    recoveredValue2 := (recoveredValue0) == (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008c72c; bytecode file offset 0x989498"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
setSizeIdentifier
    (self) identifier: ('size').
    ^self
! !

"ASDBase.ic method 0x2008d204; bytecode file offset 0x989db0"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
setValuesIdentifier
    | recoveredValue0 |
    recoveredValue0 := (self) valuesIdentifier.
    (self) identifier: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200bb810; bytecode file offset 0x9b80d0"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
genSixCName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) cNameRootPath: (recoveredValue0).
    recoveredValue1 := (self) cIdentifier.
    recoveredValue2 := (self) genSixCFieldName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c3cf4; bytecode file offset 0x9c0bf0"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
modelWidth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    width := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c418c; bytecode file offset 0x9c0bf0"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
width: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    width := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c45b8; bytecode file offset 0x9c11bc"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
axisRefs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    axisRefs := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4cf4; bytecode file offset 0x9c16b0"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
noAxisPtsRefs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    noAxisPtsRefs := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5040; bytecode file offset 0x9c1afc"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
offsetRefs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    offsetRefs := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5588; bytecode file offset 0x9c1f64"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
distanceRefs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    distanceRefs := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c599c; bytecode file offset 0x9c22c8"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
identifier: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    identifier := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200eab0c; bytecode file offset 0x9e73e8"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
genSixCFieldName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) mdlVarDecl.
    recoveredValue1 := (self) cNameRootPath.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) implType.
    recoveredValue4 := (recoveredValue0) genSixCName: (recoveredValue1) fieldCIdentifier: (recoveredValue2) type: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20116290; bytecode file offset 0xa12b48"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
width
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := width.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            width := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := width.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011638c; bytecode file offset 0xa12c44"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
axisRefs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := axisRefs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            axisRefs := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := axisRefs.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20116580; bytecode file offset 0xa12e44"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
noAxisPtsRefs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := noAxisPtsRefs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            noAxisPtsRefs := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := noAxisPtsRefs.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011667c; bytecode file offset 0xa12f34"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
offsetRefs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := offsetRefs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            offsetRefs := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := offsetRefs.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20116728; bytecode file offset 0xa12fe0"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
distanceRefs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := distanceRefs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            distanceRefs := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := distanceRefs.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20167af8; bytecode file offset 0xa643dc"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
genSixElementName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) modelOriginIdentifier.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := '_'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) sixModelOriginIdentifier.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20167b14; bytecode file offset 0xa643dc"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
genSixOriginaIdentifier: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) modelOriginIdentifier.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := '.'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) sixModelOriginIdentifier.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b8ac0; bytecode file offset 0xab53cc"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
sixElementName
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) baseReference.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixElementName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) modelOriginIdentifier.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := '.'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) modelOriginIdentifier.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b8b00; bytecode file offset 0xab53cc"
!SGMdScoopIXStructuredDataElement methodsFor: 'recovered'!
sixInstancePath
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) baseReference.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) sixInstancePath.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) modelOriginIdentifier.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := '.'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) modelOriginIdentifier.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

