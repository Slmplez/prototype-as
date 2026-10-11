"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005ec4; bytecode file offset 0x902de8"
!RBEquiDistanceSetupDialog methodsFor: 'recovered'!
distanceTextModify: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2000647c; bytecode file offset 0x902de8"
!RBEquiDistanceSetupDialog methodsFor: 'recovered'!
offsetTextModify: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2004374c; bytecode file offset 0x9451f8"
!RBEquiDistanceSetupDialog methodsFor: 'recovered'!
offsetLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('offsetLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004543c; bytecode file offset 0x9451f8"
!RBEquiDistanceSetupDialog methodsFor: 'recovered'!
cancelButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('cancelButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004621c; bytecode file offset 0x9451f8"
!RBEquiDistanceSetupDialog methodsFor: 'recovered'!
okButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('okButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046c5c; bytecode file offset 0x9451f8"
!RBEquiDistanceSetupDialog methodsFor: 'recovered'!
distanceText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('distanceText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200472cc; bytecode file offset 0x9451f8"
!RBEquiDistanceSetupDialog methodsFor: 'recovered'!
offsetText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('offsetText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004837c; bytecode file offset 0x9451f8"
!RBEquiDistanceSetupDialog methodsFor: 'recovered'!
distanceLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('distanceLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005a4ac; bytecode file offset 0x957a6c"
!RBEquiDistanceSetupDialog methodsFor: 'recovered'!
cancelButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) close.
    ^self
! !

"ASDBase.ic method 0x2005a794; bytecode file offset 0x957a6c"
!RBEquiDistanceSetupDialog methodsFor: 'recovered'!
okButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x20064574; bytecode file offset 0x961970"
!RBEquiDistanceSetupDialog methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredValue0 |
    recoveredValue0 := (self) offsetText.
    (recoveredValue0) setInputFocus.
    ^self
! !

"ASDBase.ic method 0x200701f0; bytecode file offset 0x96cb7c"
!RBEquiDistanceSetupDialog methodsFor: 'recovered'!
offset
    | recoveredValue0 |
    recoveredValue0 := offset.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007044c; bytecode file offset 0x96ce40"
!RBEquiDistanceSetupDialog methodsFor: 'recovered'!
distance
    | recoveredValue0 |
    recoveredValue0 := distance.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070740; bytecode file offset 0x96d06c"
!RBEquiDistanceSetupDialog methodsFor: 'recovered'!
characterCheckMethod
    | recoveredValue0 |
    recoveredValue0 := characterCheckMethod.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20095628; bytecode file offset 0x991fb4"
!RBEquiDistanceSetupDialog methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) name.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c66f8; bytecode file offset 0x9c3164"
!RBEquiDistanceSetupDialog methodsFor: 'recovered'!
offset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    offset := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6bbc; bytecode file offset 0x9c3470"
!RBEquiDistanceSetupDialog methodsFor: 'recovered'!
distance: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    distance := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6d48; bytecode file offset 0x9c36ec"
!RBEquiDistanceSetupDialog methodsFor: 'recovered'!
characterCheckMethod: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    characterCheckMethod := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c71c0; bytecode file offset 0x9c3a8c"
!RBEquiDistanceSetupDialog methodsFor: 'recovered'!
title: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    title := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e6018; bytecode file offset 0x9e28d8"
!RBEquiDistanceSetupDialog methodsFor: 'recovered'!
initialize
    super initialize.
    title := 'EquiDistanceSetup Dialog'.
    ^self
! !

"ASDBase.ic method 0x201623f8; bytecode file offset 0xa5ecbc"
!RBEquiDistanceSetupDialog methodsFor: 'recovered'!
finalCleanUp
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super finalCleanUp.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := valueFont.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := valueFont.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) fontStruct.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) freeFont.
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

"ASDBase.ic method 0x2032077c; bytecode file offset 0xc1d060"
!RBEquiDistanceSetupDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := XKCancel.
    (recoveredValue5) at: (recoveredValue6) put: ('cancel').
    recoveredValue7 := recoveredValue4.
    recoveredValue8 := Character.
    recoveredValue9 := (recoveredValue8) value: (13).
    (recoveredValue7) at: (recoveredValue9) put: ('ok').
    recoveredValue10 := recoveredValue4.
    recoveredValue11 := HKOk.
    (recoveredValue10) at: (recoveredValue11) put: ('ok').
    recoveredValue12 := recoveredValue4.
    recoveredValue13 := HKCancel.
    (recoveredValue12) at: (recoveredValue13) put: ('cancel').
    recoveredValue14 := recoveredLocal2.
    recoveredValue15 := (self) shell.
    recoveredValue16 := recoveredLocal1.
    (recoveredValue14) at: (recoveredValue15) put: (recoveredValue16).
    recoveredValue17 := recoveredLocal2.
    (self) widgetKeyActions: (recoveredValue17).
    ^self
! !

"ASDBase.ic method 0x20401b9c; bytecode file offset 0xcfe48c"
!RBEquiDistanceSetupDialog methodsFor: 'recovered'!
ok
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) characterCheckMethod.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'checkHex:'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) offsetText.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIntegerFromHex.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) offset: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) distanceText.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIntegerFromHex.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) distance: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) characterCheckMethod.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'checkInteger:'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) characterCheckMethod.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'checkUnsignedInteger:'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) offsetText.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInteger.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) offset: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) distanceText.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) distance: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) characterCheckMethod.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 'checkFloat:'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) offsetText.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) asFloat.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) offset: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) distanceText.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFloat.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) distance: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            result := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) close.
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

"ASDBase.ic method 0x204980f4; bytecode file offset 0xd949fc"
!RBEquiDistanceSetupDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initializeAfterCreate.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) grayBackground.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) installActionKeys.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) characterCheckMethod.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'checkHex:'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) offsetText.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) offset.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) asHexString.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) distanceText.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) distance.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) asHexString.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) offsetText.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) offset.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) distanceText.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) distance.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) offsetText.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) characterCheckMethod.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) characterMethod: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) distanceText.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) characterCheckMethod.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) characterMethod: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := 'Call_54093'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) characterCheckMethod.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := 'checkFloat:'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 107].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) distanceText.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := 'checkFloat:'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) characterMethod: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) characterCheckMethod.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := 'checkInteger:'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 123].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) distanceText.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := 'checkInteger:'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) characterMethod: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) updateFonts.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := title.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20677648; bytecode file offset 0xf74060"
!RBEquiDistanceSetupDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block28127af8Arg1 | 
    | block28127af8Value0 block28127af8Value1 block28127af8Value2 block28127af8Value3 block28127af8Value4 block28127af8Value5 |
    block28127af8Value0 := block28127af8Arg1.
    block28127af8Value1 := block28127af8Value0.
    block28127af8Value2 := MWMINPUTSYSTEMMODAL.
    (block28127af8Value1) mwmInputMode: (block28127af8Value2).
    block28127af8Value3 := block28127af8Value0.
    (block28127af8Value3) title: ('Equidistance Setup').
    block28127af8Value4 := block28127af8Value0.
    (block28127af8Value4) height: (120).
    block28127af8Value5 := (block28127af8Value0) width: (330).
    block28127af8Value5
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 'Call_48615'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := [:block28127b1cArg1 | 
    | block28127b1cValue0 block28127b1cValue1 block28127b1cValue2 block28127b1cValue3 block28127b1cValue4 block28127b1cValue5 |
    block28127b1cValue0 := block28127b1cArg1.
    block28127b1cValue1 := block28127b1cValue0.
    (block28127b1cValue1) x: (155).
    block28127b1cValue2 := block28127b1cValue0.
    block28127b1cValue3 := XmVERTICAL.
    (block28127b1cValue2) orientation: (block28127b1cValue3).
    block28127b1cValue4 := block28127b1cValue0.
    (block28127b1cValue4) height: (131).
    block28127b1cValue5 := (block28127b1cValue0) width: (1).
    block28127b1cValue5
].
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := [:block28127b40Arg1 | 
    | block28127b40Value0 block28127b40Value1 block28127b40Value2 block28127b40Value3 block28127b40Value4 block28127b40Value5 block28127b40Value6 |
    block28127b40Value0 := block28127b40Arg1.
    block28127b40Value1 := block28127b40Value0.
    (block28127b40Value1) x: (109).
    block28127b40Value2 := block28127b40Value0.
    (block28127b40Value2) showAsDefault: (1).
    block28127b40Value3 := block28127b40Value0.
    (block28127b40Value3) labelString: ('Ok').
    block28127b40Value4 := block28127b40Value0.
    (block28127b40Value4) y: (10).
    block28127b40Value5 := block28127b40Value0.
    (block28127b40Value5) height: (25).
    block28127b40Value6 := (block28127b40Value0) width: (110).
    block28127b40Value6
].
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := [:block28127b64Arg1 | 
    | block28127b64Value0 block28127b64Value1 block28127b64Value2 block28127b64Value3 block28127b64Value4 block28127b64Value5 |
    block28127b64Value0 := block28127b64Arg1.
    block28127b64Value1 := block28127b64Value0.
    (block28127b64Value1) x: (109).
    block28127b64Value2 := block28127b64Value0.
    (block28127b64Value2) labelString: ('Cancel').
    block28127b64Value3 := block28127b64Value0.
    (block28127b64Value3) y: (35).
    block28127b64Value4 := block28127b64Value0.
    (block28127b64Value4) height: (25).
    block28127b64Value5 := (block28127b64Value0) width: (110).
    block28127b64Value5
].
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := 'offsetText'.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack3 := [:block28127b88Arg1 | 
    | block28127b88Value0 block28127b88Value1 block28127b88Value2 block28127b88Value3 |
    block28127b88Value0 := block28127b88Arg1.
    block28127b88Value1 := block28127b88Value0.
    (block28127b88Value1) y: (25).
    block28127b88Value2 := block28127b88Value0.
    (block28127b88Value2) x: (5).
    block28127b88Value3 := (block28127b88Value0) width: (190).
    block28127b88Value3
].
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack2 := 'offsetText'.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack2 := 'distanceText'.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack3 := [:block28127bacArg1 | 
    | block28127bacValue0 block28127bacValue1 block28127bacValue2 block28127bacValue3 |
    block28127bacValue0 := block28127bacArg1.
    block28127bacValue1 := block28127bacValue0.
    (block28127bacValue1) y: (75).
    block28127bacValue2 := block28127bacValue0.
    (block28127bacValue2) x: (5).
    block28127bacValue3 := (block28127bacValue0) width: (190).
    block28127bacValue3
].
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack2 := 'distanceText'.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack2 := 'distanceLabel'.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack3 := [:recoveredBlock375Arg1 | 
    | recoveredBlock375Value0 recoveredBlock375Value1 recoveredBlock375Value2 recoveredBlock375Value3 recoveredBlock375Value4 recoveredBlock375Value5 recoveredBlock375Value6 recoveredBlock375Value7 recoveredBlock375Value8 recoveredBlock375Value9 |
    recoveredBlock375Value0 := recoveredBlock375Arg1.
    recoveredBlock375Value1 := recoveredBlock375Value0.
    (recoveredBlock375Value1) x: (5).
    recoveredBlock375Value2 := recoveredBlock375Value0.
    recoveredBlock375Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock375Value2) alignment: (recoveredBlock375Value3).
    recoveredBlock375Value4 := recoveredBlock375Value0.
    (recoveredBlock375Value4) labelString: ('Distance').
    recoveredBlock375Value5 := recoveredBlock375Value0.
    (recoveredBlock375Value5) y: (55).
    recoveredBlock375Value6 := recoveredBlock375Value0.
    (recoveredBlock375Value6) height: (20).
    recoveredBlock375Value7 := recoveredBlock375Value0.
    (recoveredBlock375Value7) width: (90).
    recoveredBlock375Value8 := (self) defaultLabelBlue.
    recoveredBlock375Value9 := (recoveredBlock375Value0) foregroundColor: (recoveredBlock375Value8).
    recoveredBlock375Value9
].
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack2 := 'distanceLabel'.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack2 := 'offsetLabel'.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack3 := [:recoveredBlock442Arg1 | 
    | recoveredBlock442Value0 recoveredBlock442Value1 recoveredBlock442Value2 recoveredBlock442Value3 recoveredBlock442Value4 recoveredBlock442Value5 recoveredBlock442Value6 recoveredBlock442Value7 recoveredBlock442Value8 recoveredBlock442Value9 recoveredBlock442Value10 recoveredBlock442Value11 recoveredBlock442Value12 recoveredBlock442Value13 |
    recoveredBlock442Value0 := recoveredBlock442Arg1.
    recoveredBlock442Value1 := recoveredBlock442Value0.
    (recoveredBlock442Value1) x: (10).
    recoveredBlock442Value2 := recoveredBlock442Value0.
    (recoveredBlock442Value2) marginRight: (10).
    recoveredBlock442Value3 := recoveredBlock442Value0.
    recoveredBlock442Value4 := XmALIGNMENTBEGINNING.
    (recoveredBlock442Value3) alignment: (recoveredBlock442Value4).
    recoveredBlock442Value5 := recoveredBlock442Value0.
    (recoveredBlock442Value5) labelString: ('Offset').
    recoveredBlock442Value6 := recoveredBlock442Value0.
    (recoveredBlock442Value6) marginWidth: (0).
    recoveredBlock442Value7 := recoveredBlock442Value0.
    (recoveredBlock442Value7) marginHeight: (0).
    recoveredBlock442Value8 := recoveredBlock442Value0.
    (recoveredBlock442Value8) y: (10).
    recoveredBlock442Value9 := recoveredBlock442Value0.
    (recoveredBlock442Value9) height: (20).
    recoveredBlock442Value10 := recoveredBlock442Value0.
    (recoveredBlock442Value10) marginBottom: (10).
    recoveredBlock442Value11 := recoveredBlock442Value0.
    (recoveredBlock442Value11) width: (90).
    recoveredBlock442Value12 := (self) defaultLabelBlue.
    recoveredBlock442Value13 := (recoveredBlock442Value0) foregroundColor: (recoveredBlock442Value12).
    recoveredBlock442Value13
].
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack2 := 'offsetLabel'.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack2 := [:recoveredBlock534Arg1 | 
    | recoveredBlock534Value0 recoveredBlock534Value1 recoveredBlock534Value2 |
    recoveredBlock534Value0 := recoveredBlock534Arg1.
    recoveredBlock534Value1 := recoveredLocal8.
    recoveredBlock534Value2 := (recoveredBlock534Value0) workWindow: (recoveredBlock534Value1).
    recoveredBlock534Value2
].
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack2 := [:recoveredBlock558Arg1 | 
    | recoveredBlock558Value0 recoveredBlock558Value1 recoveredBlock558Value2 recoveredBlock558Value3 recoveredBlock558Value4 recoveredBlock558Value5 recoveredBlock558Value6 recoveredBlock558Value7 recoveredBlock558Value8 recoveredBlock558Value9 recoveredBlock558Value10 recoveredBlock558Value11 |
    recoveredBlock558Value0 := recoveredBlock558Arg1.
    recoveredBlock558Value1 := recoveredBlock558Value0.
    recoveredBlock558Value2 := XmATTACHFORM.
    (recoveredBlock558Value1) topAttachment: (recoveredBlock558Value2).
    recoveredBlock558Value3 := recoveredBlock558Value0.
    (recoveredBlock558Value3) topOffset: (0).
    recoveredBlock558Value4 := recoveredBlock558Value0.
    recoveredBlock558Value5 := XmATTACHWIDGET.
    (recoveredBlock558Value4) rightAttachment: (recoveredBlock558Value5).
    recoveredBlock558Value6 := recoveredBlock558Value0.
    recoveredBlock558Value7 := recoveredLocal6.
    (recoveredBlock558Value6) rightWidget: (recoveredBlock558Value7).
    recoveredBlock558Value8 := recoveredBlock558Value0.
    (recoveredBlock558Value8) rightOffset: (5).
    recoveredBlock558Value9 := recoveredBlock558Value0.
    recoveredBlock558Value10 := XmATTACHFORM.
    (recoveredBlock558Value9) bottomAttachment: (recoveredBlock558Value10).
    recoveredBlock558Value11 := (recoveredBlock558Value0) bottomOffset: (0).
    recoveredBlock558Value11
].
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack2 := [:recoveredBlock626Arg1 | 
    | recoveredBlock626Value0 recoveredBlock626Value1 recoveredBlock626Value2 recoveredBlock626Value3 recoveredBlock626Value4 recoveredBlock626Value5 recoveredBlock626Value6 recoveredBlock626Value7 recoveredBlock626Value8 |
    recoveredBlock626Value0 := recoveredBlock626Arg1.
    recoveredBlock626Value1 := recoveredBlock626Value0.
    recoveredBlock626Value2 := XmATTACHFORM.
    (recoveredBlock626Value1) topAttachment: (recoveredBlock626Value2).
    recoveredBlock626Value3 := recoveredBlock626Value0.
    (recoveredBlock626Value3) topOffset: (5).
    recoveredBlock626Value4 := recoveredBlock626Value0.
    recoveredBlock626Value5 := XmATTACHWIDGET.
    (recoveredBlock626Value4) rightAttachment: (recoveredBlock626Value5).
    recoveredBlock626Value6 := recoveredBlock626Value0.
    recoveredBlock626Value7 := recoveredLocal7.
    (recoveredBlock626Value6) rightWidget: (recoveredBlock626Value7).
    recoveredBlock626Value8 := (recoveredBlock626Value0) rightOffset: (5).
    recoveredBlock626Value8
].
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack2 := [:recoveredBlock680Arg1 | 
    | recoveredBlock680Value0 recoveredBlock680Value1 recoveredBlock680Value2 recoveredBlock680Value3 recoveredBlock680Value4 recoveredBlock680Value5 recoveredBlock680Value6 recoveredBlock680Value7 recoveredBlock680Value8 recoveredBlock680Value9 recoveredBlock680Value10 |
    recoveredBlock680Value0 := recoveredBlock680Arg1.
    recoveredBlock680Value1 := recoveredBlock680Value0.
    recoveredBlock680Value2 := XmATTACHWIDGET.
    (recoveredBlock680Value1) topAttachment: (recoveredBlock680Value2).
    recoveredBlock680Value3 := recoveredBlock680Value0.
    recoveredBlock680Value4 := recoveredLocal1.
    (recoveredBlock680Value3) topWidget: (recoveredBlock680Value4).
    recoveredBlock680Value5 := recoveredBlock680Value0.
    (recoveredBlock680Value5) topOffset: (0).
    recoveredBlock680Value6 := recoveredBlock680Value0.
    recoveredBlock680Value7 := XmATTACHWIDGET.
    (recoveredBlock680Value6) rightAttachment: (recoveredBlock680Value7).
    recoveredBlock680Value8 := recoveredBlock680Value0.
    recoveredBlock680Value9 := recoveredLocal7.
    (recoveredBlock680Value8) rightWidget: (recoveredBlock680Value9).
    recoveredBlock680Value10 := (recoveredBlock680Value0) rightOffset: (5).
    recoveredBlock680Value10
].
            recoveredPC := 734.
        ].
        recoveredStep = 734 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 739.
        ].
        recoveredStep = 739 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            recoveredStack2 := [:recoveredBlock742Arg1 | 
    | recoveredBlock742Value0 recoveredBlock742Value1 recoveredBlock742Value2 recoveredBlock742Value3 recoveredBlock742Value4 recoveredBlock742Value5 recoveredBlock742Value6 recoveredBlock742Value7 recoveredBlock742Value8 recoveredBlock742Value9 recoveredBlock742Value10 |
    recoveredBlock742Value0 := recoveredBlock742Arg1.
    recoveredBlock742Value1 := recoveredBlock742Value0.
    recoveredBlock742Value2 := XmATTACHWIDGET.
    (recoveredBlock742Value1) topAttachment: (recoveredBlock742Value2).
    recoveredBlock742Value3 := recoveredBlock742Value0.
    recoveredBlock742Value4 := recoveredLocal4.
    (recoveredBlock742Value3) topWidget: (recoveredBlock742Value4).
    recoveredBlock742Value5 := recoveredBlock742Value0.
    (recoveredBlock742Value5) topOffset: (5).
    recoveredBlock742Value6 := recoveredBlock742Value0.
    recoveredBlock742Value7 := XmATTACHWIDGET.
    (recoveredBlock742Value6) rightAttachment: (recoveredBlock742Value7).
    recoveredBlock742Value8 := recoveredBlock742Value0.
    recoveredBlock742Value9 := recoveredLocal7.
    (recoveredBlock742Value8) rightWidget: (recoveredBlock742Value9).
    recoveredBlock742Value10 := (recoveredBlock742Value0) rightOffset: (5).
    recoveredBlock742Value10
].
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 804.
        ].
        recoveredStep = 804 ifTrue: [
            recoveredStack2 := [:recoveredBlock804Arg1 | 
    | recoveredBlock804Value0 recoveredBlock804Value1 recoveredBlock804Value2 recoveredBlock804Value3 recoveredBlock804Value4 recoveredBlock804Value5 recoveredBlock804Value6 recoveredBlock804Value7 recoveredBlock804Value8 recoveredBlock804Value9 recoveredBlock804Value10 |
    recoveredBlock804Value0 := recoveredBlock804Arg1.
    recoveredBlock804Value1 := recoveredBlock804Value0.
    recoveredBlock804Value2 := XmATTACHWIDGET.
    (recoveredBlock804Value1) topAttachment: (recoveredBlock804Value2).
    recoveredBlock804Value3 := recoveredBlock804Value0.
    recoveredBlock804Value4 := recoveredLocal2.
    (recoveredBlock804Value3) topWidget: (recoveredBlock804Value4).
    recoveredBlock804Value5 := recoveredBlock804Value0.
    (recoveredBlock804Value5) topOffset: (0).
    recoveredBlock804Value6 := recoveredBlock804Value0.
    recoveredBlock804Value7 := XmATTACHWIDGET.
    (recoveredBlock804Value6) rightAttachment: (recoveredBlock804Value7).
    recoveredBlock804Value8 := recoveredBlock804Value0.
    recoveredBlock804Value9 := recoveredLocal7.
    (recoveredBlock804Value8) rightWidget: (recoveredBlock804Value9).
    recoveredBlock804Value10 := (recoveredBlock804Value0) rightOffset: (5).
    recoveredBlock804Value10
].
            recoveredPC := 858.
        ].
        recoveredStep = 858 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 863.
        ].
        recoveredStep = 863 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 866.
        ].
        recoveredStep = 866 ifTrue: [
            recoveredStack2 := [:block28127bd0Arg1 | 
    | block28127bd0Value0 block28127bd0Value1 block28127bd0Value2 block28127bd0Value3 block28127bd0Value4 block28127bd0Value5 block28127bd0Value6 |
    block28127bd0Value0 := block28127bd0Arg1.
    block28127bd0Value1 := block28127bd0Value0.
    block28127bd0Value2 := XmATTACHFORM.
    (block28127bd0Value1) topAttachment: (block28127bd0Value2).
    block28127bd0Value3 := block28127bd0Value0.
    (block28127bd0Value3) topOffset: (5).
    block28127bd0Value4 := block28127bd0Value0.
    block28127bd0Value5 := XmATTACHFORM.
    (block28127bd0Value4) rightAttachment: (block28127bd0Value5).
    block28127bd0Value6 := (block28127bd0Value0) rightOffset: (5).
    block28127bd0Value6
].
            recoveredPC := 870.
        ].
        recoveredStep = 870 ifTrue: [
            recoveredPC := 906.
        ].
        recoveredStep = 906 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 911.
        ].
        recoveredStep = 911 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 914.
        ].
        recoveredStep = 914 ifTrue: [
            recoveredStack2 := [:recoveredBlock914Arg1 | 
    | recoveredBlock914Value0 recoveredBlock914Value1 recoveredBlock914Value2 recoveredBlock914Value3 recoveredBlock914Value4 recoveredBlock914Value5 recoveredBlock914Value6 recoveredBlock914Value7 recoveredBlock914Value8 |
    recoveredBlock914Value0 := recoveredBlock914Arg1.
    recoveredBlock914Value1 := recoveredBlock914Value0.
    recoveredBlock914Value2 := XmATTACHWIDGET.
    (recoveredBlock914Value1) topAttachment: (recoveredBlock914Value2).
    recoveredBlock914Value3 := recoveredBlock914Value0.
    recoveredBlock914Value4 := recoveredLocal6.
    (recoveredBlock914Value3) topWidget: (recoveredBlock914Value4).
    recoveredBlock914Value5 := recoveredBlock914Value0.
    (recoveredBlock914Value5) topOffset: (5).
    recoveredBlock914Value6 := recoveredBlock914Value0.
    recoveredBlock914Value7 := XmATTACHFORM.
    (recoveredBlock914Value6) rightAttachment: (recoveredBlock914Value7).
    recoveredBlock914Value8 := (recoveredBlock914Value0) rightOffset: (5).
    recoveredBlock914Value8
].
            recoveredPC := 960.
        ].
        recoveredStep = 960 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 965.
        ].
        recoveredStep = 965 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 968.
        ].
        recoveredStep = 968 ifTrue: [
            recoveredStack2 := [:recoveredBlock968Arg1 | 
    | recoveredBlock968Value0 recoveredBlock968Value1 recoveredBlock968Value2 recoveredBlock968Value3 recoveredBlock968Value4 recoveredBlock968Value5 recoveredBlock968Value6 recoveredBlock968Value7 |
    recoveredBlock968Value0 := recoveredBlock968Arg1.
    recoveredBlock968Value1 := recoveredBlock968Value0.
    recoveredBlock968Value2 := XmATTACHWIDGET.
    (recoveredBlock968Value1) topAttachment: (recoveredBlock968Value2).
    recoveredBlock968Value3 := recoveredBlock968Value0.
    recoveredBlock968Value4 := recoveredLocal1.
    (recoveredBlock968Value3) topWidget: (recoveredBlock968Value4).
    recoveredBlock968Value5 := recoveredBlock968Value0.
    recoveredBlock968Value6 := XmATTACHFORM.
    (recoveredBlock968Value5) leftAttachment: (recoveredBlock968Value6).
    recoveredBlock968Value7 := (recoveredBlock968Value0) leftOffset: (5).
    recoveredBlock968Value7
].
            recoveredPC := 1008.
        ].
        recoveredStep = 1008 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1013.
        ].
        recoveredStep = 1013 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1016.
        ].
        recoveredStep = 1016 ifTrue: [
            recoveredStack2 := [:recoveredBlock1016Arg1 | 
    | recoveredBlock1016Value0 recoveredBlock1016Value1 recoveredBlock1016Value2 recoveredBlock1016Value3 recoveredBlock1016Value4 recoveredBlock1016Value5 recoveredBlock1016Value6 recoveredBlock1016Value7 |
    recoveredBlock1016Value0 := recoveredBlock1016Arg1.
    recoveredBlock1016Value1 := recoveredBlock1016Value0.
    recoveredBlock1016Value2 := XmATTACHWIDGET.
    (recoveredBlock1016Value1) topAttachment: (recoveredBlock1016Value2).
    recoveredBlock1016Value3 := recoveredBlock1016Value0.
    recoveredBlock1016Value4 := recoveredLocal2.
    (recoveredBlock1016Value3) topWidget: (recoveredBlock1016Value4).
    recoveredBlock1016Value5 := recoveredBlock1016Value0.
    recoveredBlock1016Value6 := XmATTACHFORM.
    (recoveredBlock1016Value5) leftAttachment: (recoveredBlock1016Value6).
    recoveredBlock1016Value7 := (recoveredBlock1016Value0) leftOffset: (5).
    recoveredBlock1016Value7
].
            recoveredPC := 1056.
        ].
        recoveredStep = 1056 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1061.
        ].
        recoveredStep = 1061 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1064.
        ].
        recoveredStep = 1064 ifTrue: [
            recoveredStack2 := [:recoveredBlock1064Arg1 | 
    | recoveredBlock1064Value0 recoveredBlock1064Value1 recoveredBlock1064Value2 recoveredBlock1064Value3 recoveredBlock1064Value4 recoveredBlock1064Value5 recoveredBlock1064Value6 recoveredBlock1064Value7 recoveredBlock1064Value8 |
    recoveredBlock1064Value0 := recoveredBlock1064Arg1.
    recoveredBlock1064Value1 := recoveredBlock1064Value0.
    recoveredBlock1064Value2 := XmATTACHWIDGET.
    (recoveredBlock1064Value1) topAttachment: (recoveredBlock1064Value2).
    recoveredBlock1064Value3 := recoveredBlock1064Value0.
    recoveredBlock1064Value4 := recoveredLocal4.
    (recoveredBlock1064Value3) topWidget: (recoveredBlock1064Value4).
    recoveredBlock1064Value5 := recoveredBlock1064Value0.
    (recoveredBlock1064Value5) topOffset: (10).
    recoveredBlock1064Value6 := recoveredBlock1064Value0.
    recoveredBlock1064Value7 := XmATTACHFORM.
    (recoveredBlock1064Value6) leftAttachment: (recoveredBlock1064Value7).
    recoveredBlock1064Value8 := (recoveredBlock1064Value0) leftOffset: (5).
    recoveredBlock1064Value8
].
            recoveredPC := 1110.
        ].
        recoveredStep = 1110 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1115.
        ].
        recoveredStep = 1115 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1118.
        ].
        recoveredStep = 1118 ifTrue: [
            recoveredStack2 := [:block28127bf4Arg1 | 
    | block28127bf4Value0 block28127bf4Value1 block28127bf4Value2 block28127bf4Value3 block28127bf4Value4 block28127bf4Value5 block28127bf4Value6 |
    block28127bf4Value0 := block28127bf4Arg1.
    block28127bf4Value1 := block28127bf4Value0.
    block28127bf4Value2 := XmATTACHFORM.
    (block28127bf4Value1) topAttachment: (block28127bf4Value2).
    block28127bf4Value3 := block28127bf4Value0.
    (block28127bf4Value3) topOffset: (5).
    block28127bf4Value4 := block28127bf4Value0.
    block28127bf4Value5 := XmATTACHFORM.
    (block28127bf4Value4) leftAttachment: (block28127bf4Value5).
    block28127bf4Value6 := (block28127bf4Value0) leftOffset: (5).
    block28127bf4Value6
].
            recoveredPC := 1122.
        ].
        recoveredStep = 1122 ifTrue: [
            recoveredPC := 1158.
        ].
        recoveredStep = 1158 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1163.
        ].
        recoveredStep = 1163 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1166.
        ].
        recoveredStep = 1166 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1170.
        ].
        recoveredStep = 1170 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1171.
        ].
        recoveredStep = 1171 ifTrue: [
            recoveredStack4 := 'okButtonActivate:clientData:callData:'.
            recoveredPC := 1174.
        ].
        recoveredStep = 1174 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1175.
        ].
        recoveredStep = 1175 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1179.
        ].
        recoveredStep = 1179 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1182.
        ].
        recoveredStep = 1182 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1186.
        ].
        recoveredStep = 1186 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1187.
        ].
        recoveredStep = 1187 ifTrue: [
            recoveredStack4 := 'cancelButtonActivate:clientData:callData:'.
            recoveredPC := 1190.
        ].
        recoveredStep = 1190 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1191.
        ].
        recoveredStep = 1191 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1195.
        ].
        recoveredStep = 1195 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1198.
        ].
        recoveredStep = 1198 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 1202.
        ].
        recoveredStep = 1202 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1203.
        ].
        recoveredStep = 1203 ifTrue: [
            recoveredStack4 := 'offsetTextModify:clientData:callData:'.
            recoveredPC := 1206.
        ].
        recoveredStep = 1206 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1207.
        ].
        recoveredStep = 1207 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1211.
        ].
        recoveredStep = 1211 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1214.
        ].
        recoveredStep = 1214 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 1218.
        ].
        recoveredStep = 1218 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1219.
        ].
        recoveredStep = 1219 ifTrue: [
            recoveredStack4 := 'distanceTextModify:clientData:callData:'.
            recoveredPC := 1222.
        ].
        recoveredStep = 1222 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1223.
        ].
        recoveredStep = 1223 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1227.
        ].
        recoveredStep = 1227 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1230.
        ].
        recoveredStep = 1230 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1235.
        ].
        recoveredStep = 1235 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1238.
        ].
        recoveredStep = 1238 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1243.
        ].
        recoveredStep = 1243 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1246.
        ].
        recoveredStep = 1246 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1251.
        ].
        recoveredStep = 1251 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1254.
        ].
        recoveredStep = 1254 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1259.
        ].
        recoveredStep = 1259 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1262.
        ].
        recoveredStep = 1262 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 1265.
        ].
        recoveredStep = 1265 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 1268.
        ].
        recoveredStep = 1268 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1273.
        ].
        recoveredStep = 1273 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

