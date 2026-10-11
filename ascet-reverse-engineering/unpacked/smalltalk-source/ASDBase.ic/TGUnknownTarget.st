"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002a2d4; bytecode file offset 0x934580"
!TGUnknownTarget methodsFor: 'recovered'!
targetLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) targetType.
    recoveredValue1 := (recoveredValue0) asUndefString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006f768; bytecode file offset 0x96c1f4"
!TGUnknownTarget methodsFor: 'recovered'!
targetType
    | recoveredValue0 |
    recoveredValue0 := targetType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007ab2c; bytecode file offset 0x97c330"
!TGUnknownTarget methodsFor: 'recovered'!
isAvailableTarget
    ^false
! !

"ASDBase.ic method 0x200c5d38; bytecode file offset 0x9c2804"
!TGUnknownTarget methodsFor: 'recovered'!
targetType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    targetType := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2027692c; bytecode file offset 0xb731fc"
!TGUnknownTarget methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('Unknown Target... ').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) nextPutAll: ('     label : ').
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := (self) targetLabel.
    (recoveredValue4) nextPutAll: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) cr.
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) nextPutAll: (' identifier: ').
    recoveredValue8 := recoveredValue0.
    recoveredValue9 := (self) targetType.
    (recoveredValue8) nextPutAll: (recoveredValue9).
    (recoveredValue0) cr.
    ^self
! !

