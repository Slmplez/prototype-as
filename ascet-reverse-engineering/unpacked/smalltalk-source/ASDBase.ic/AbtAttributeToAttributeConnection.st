"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004e5b8; bytecode file offset 0x94d048"
!AbtAttributeToAttributeConnection methodsFor: 'recovered'!
destroyPart
    (self) destroyPartInternals.
    ^self
! !

"ASDBase.ic method 0x200c3720; bytecode file offset 0x9c058c"
!AbtAttributeToAttributeConnection methodsFor: 'recovered'!
isBidirectional: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    bidirection := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ef89c; bytecode file offset 0x9ec178"
!AbtAttributeToAttributeConnection methodsFor: 'recovered'!
targetWithSourceAlignmentMessage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AbtUnaryAndKeywordDirectedMessage.
    recoveredValue1 := (recoveredValue0) receiver: (self) unarySelector: ('alignTargetWithSource') keywordSelector: ('alignTargetWithSourceUsingValue:').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ef8b4; bytecode file offset 0x9ec178"
!AbtAttributeToAttributeConnection methodsFor: 'recovered'!
sourceWithTargetAlignmentMessage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AbtUnaryAndKeywordDirectedMessage.
    recoveredValue1 := (recoveredValue0) receiver: (self) unarySelector: ('alignSourceWithTarget') keywordSelector: ('alignSourceWithTargetUsingValue:').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200f0700; bytecode file offset 0x9ecfb8"
!AbtAttributeToAttributeConnection methodsFor: 'recovered'!
release
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := source.
    (recoveredValue0) abrRemoveInterestFrom: (self).
    recoveredValue1 := target.
    (recoveredValue1) abrRemoveInterestFrom: (self).
    ^self
! !

"ASDBase.ic method 0x20106224; bytecode file offset 0xa02ad8"
!AbtAttributeToAttributeConnection methodsFor: 'recovered'!
isBidirectional
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := bidirection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            bidirection := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := bidirection.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013cfac; bytecode file offset 0xa39868"
!AbtAttributeToAttributeConnection methodsFor: 'recovered'!
alignTargetWithSource
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := aligning.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := sourceAttribute.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := source.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) getValueIn: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) alignTargetWithSourceUsingValue: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013cfd0; bytecode file offset 0xa3988c"
!AbtAttributeToAttributeConnection methodsFor: 'recovered'!
alignSourceWithTarget
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := aligning.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := targetAttribute.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := target.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) getValueIn: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) alignSourceWithTargetUsingValue: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201530b0; bytecode file offset 0xa4f968"
!AbtAttributeToAttributeConnection methodsFor: 'recovered'!
align: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := source.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) initializeConnection.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20204f94; bytecode file offset 0xb0184c"
!AbtAttributeToAttributeConnection methodsFor: 'recovered'!
source: recoveredArg1 attribute: recoveredArg2 with: recoveredArg3 attribute: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    source := recoveredValue0.
    recoveredValue1 := recoveredArg3.
    target := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    sourceAttName := recoveredValue2.
    recoveredValue3 := recoveredArg4.
    targetAttName := recoveredValue3.
    recoveredValue4 := source.
    recoveredValue5 := sourceAttName.
    recoveredValue6 := (recoveredValue4) abtExecutableFeatureNamed: (recoveredValue5).
    sourceAttribute := recoveredValue6.
    recoveredValue7 := target.
    recoveredValue8 := targetAttName.
    recoveredValue9 := (recoveredValue7) abtExecutableFeatureNamed: (recoveredValue8).
    targetAttribute := recoveredValue9.
    ^self
! !

"ASDBase.ic method 0x20270820; bytecode file offset 0xb6d0e0"
!AbtAttributeToAttributeConnection methodsFor: 'recovered'!
alignSourceWithTargetUsingValue: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := aligning.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'alignSourceWithTarget'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            aligning := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := sourceAttribute.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := source.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := targetAttribute.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := target.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack6 := sourceAttribute.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack7 := source.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) abtConvertValue: (recoveredStack4) in: (recoveredStack5) forAttribute: (recoveredStack6) in: (recoveredStack7).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) setValueIn: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            aligning := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2027085c; bytecode file offset 0xb6d11c"
!AbtAttributeToAttributeConnection methodsFor: 'recovered'!
alignTargetWithSourceUsingValue: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := aligning.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'alignTargetWithSource'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            aligning := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := targetAttribute.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := target.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := sourceAttribute.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := source.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack6 := targetAttribute.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack7 := target.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) abtConvertValue: (recoveredStack4) in: (recoveredStack5) forAttribute: (recoveredStack6) in: (recoveredStack7).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) setValueIn: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            aligning := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202d8bf0; bytecode file offset 0xbd54c8"
!AbtAttributeToAttributeConnection methodsFor: 'recovered'!
printOn: recoveredArg1
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
            recoveredStack2 := source.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := ' ('.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := sourceAttName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := ')'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) isBidirectional.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := ' <--> '.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := ' --> '.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := target.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := ' ('.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := targetAttName.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := ')'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030469c; bytecode file offset 0xc00f64"
!AbtAttributeToAttributeConnection methodsFor: 'recovered'!
connect
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := targetAttribute.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := targetAttribute.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := target.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReadOnlyAttributeIn: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := source.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := sourceAttName.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) targetWithSourceAlignmentMessage.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) abtWhenChanged: (recoveredStack2) perform: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBidirectional.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := sourceAttribute.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := sourceAttribute.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := source.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReadOnlyAttributeIn: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := target.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := targetAttName.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) sourceWithTargetAlignmentMessage.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) abtWhenChanged: (recoveredStack1) perform: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203db834; bytecode file offset 0xcd80fc"
!AbtAttributeToAttributeConnection methodsFor: 'recovered'!
connectSource: recoveredArg1 featureName: recoveredArg2 feature: recoveredArg3 toTarget: recoveredArg4 featureName: recoveredArg5 feature: recoveredArg6
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            source := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            target := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            sourceAttName := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            targetAttName := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg6.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            targetAttribute := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            sourceAttribute := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := targetAttribute.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := targetAttribute.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := target.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReadOnlyAttributeIn: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := sourceAttribute.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := sourceAttribute.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := source.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) targetWithSourceAlignmentMessage.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) abtWhenChangedIn: (recoveredStack2) perform: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBidirectional.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := sourceAttribute.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := sourceAttribute.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := source.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReadOnlyAttributeIn: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := targetAttribute.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := targetAttribute.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) sourceWithTargetAlignmentMessage.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) abtWhenChangedIn: (recoveredStack1) perform: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203dd15c; bytecode file offset 0xcd9a24"
!AbtAttributeToAttributeConnection methodsFor: 'recovered'!
initializeConnection
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sourceAttribute.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := targetAttribute.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := targetAttribute.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := target.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReadOnlyAttributeIn: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := sourceAttribute.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := source.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := targetAttribute.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := target.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) getValueIn: (recoveredStack2) convertedTo: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBidirectional.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := sourceAttribute.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := source.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReadOnlyAttributeIn: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := targetAttribute.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := target.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := sourceAttribute.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := source.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) getValueIn: (recoveredStack2) convertedTo: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) alignSourceWithTargetUsingValue: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) alignTargetWithSourceUsingValue: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f0c98; bytecode file offset 0xced568"
!AbtAttributeToAttributeConnection methodsFor: 'recovered'!
connectSource: recoveredArg1 featureName: recoveredArg2 feature: recoveredArg3 toTarget: recoveredArg4 variableFeatureName: recoveredArg5 featureSelector: recoveredArg6
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg5.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg6.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtExecutableFeatureNamed: (recoveredStack2) selector: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            source := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            target := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            sourceAttName := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            targetAttName := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            targetAttribute := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            sourceAttribute := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := targetAttribute.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := targetAttribute.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := target.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReadOnlyAttributeIn: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := sourceAttribute.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := sourceAttribute.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := source.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) targetWithSourceAlignmentMessage.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) abtWhenChangedIn: (recoveredStack2) perform: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBidirectional.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := sourceAttribute.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := sourceAttribute.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := source.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReadOnlyAttributeIn: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := target.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := targetAttName.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredArg6.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := (recoveredStack3) sourceWithTargetAlignmentMessage.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) abtWhenChanged: (recoveredStack1) selector: (recoveredStack2) perform: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f9e70; bytecode file offset 0xcf6740"
!AbtAttributeToAttributeConnection methodsFor: 'recovered'!
connectSource: recoveredArg1 variableFeatureName: recoveredArg2 featureSelector: recoveredArg3 toTarget: recoveredArg4 featureName: recoveredArg5 feature: recoveredArg6
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtExecutableFeatureNamed: (recoveredStack2) selector: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            source := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            target := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            sourceAttName := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            targetAttName := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg6.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            targetAttribute := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            sourceAttribute := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg6.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg6.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := target.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReadOnlyAttributeIn: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := source.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := sourceAttName.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := (recoveredStack4) targetWithSourceAlignmentMessage.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) abtWhenChanged: (recoveredStack2) selector: (recoveredStack3) perform: (recoveredStack4).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBidirectional.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 91].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := sourceAttribute.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := sourceAttribute.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := source.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReadOnlyAttributeIn: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 91] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := targetAttribute.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 91] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := targetAttribute.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) sourceWithTargetAlignmentMessage.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) abtWhenChangedIn: (recoveredStack1) perform: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20404f30; bytecode file offset 0xd017fc"
!AbtAttributeToAttributeConnection methodsFor: 'recovered'!
connectSource: recoveredArg1 variableFeatureName: recoveredArg2 featureSelector: recoveredArg3 toTarget: recoveredArg4 variableFeatureName: recoveredArg5 featureSelector: recoveredArg6
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtExecutableFeatureNamed: (recoveredStack2) selector: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg5.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg6.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtExecutableFeatureNamed: (recoveredStack2) selector: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            source := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            target := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            sourceAttName := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            targetAttName := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            targetAttribute := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            sourceAttribute := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := target.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReadOnlyAttributeIn: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := source.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := sourceAttName.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := (recoveredStack4) targetWithSourceAlignmentMessage.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) abtWhenChanged: (recoveredStack2) selector: (recoveredStack3) perform: (recoveredStack4).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBidirectional.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := source.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReadOnlyAttributeIn: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 93] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := target.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := targetAttName.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredArg6.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := (recoveredStack3) sourceWithTargetAlignmentMessage.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) abtWhenChanged: (recoveredStack1) selector: (recoveredStack2) perform: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

