"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006c73c; bytecode file offset 0x9692b0"
!FamosDisplayProperty methodsFor: 'recovered'!
rgbRed
    | recoveredValue0 |
    recoveredValue0 := rgbRed.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d128; bytecode file offset 0x969c04"
!FamosDisplayProperty methodsFor: 'recovered'!
rgbGreen
    | recoveredValue0 |
    recoveredValue0 := rgbGreen.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d514; bytecode file offset 0x96a390"
!FamosDisplayProperty methodsFor: 'recovered'!
rgbBlue
    | recoveredValue0 |
    recoveredValue0 := rgbBlue.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e030; bytecode file offset 0x96a9dc"
!FamosDisplayProperty methodsFor: 'recovered'!
yMin
    | recoveredValue0 |
    recoveredValue0 := yMin.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e2dc; bytecode file offset 0x96af48"
!FamosDisplayProperty methodsFor: 'recovered'!
yMax
    | recoveredValue0 |
    recoveredValue0 := yMax.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c2e4c; bytecode file offset 0x9bfde0"
!FamosDisplayProperty methodsFor: 'recovered'!
rgbRed: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    rgbRed := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3c30; bytecode file offset 0x9c058c"
!FamosDisplayProperty methodsFor: 'recovered'!
rgbGreen: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    rgbGreen := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c42bc; bytecode file offset 0x9c0bf0"
!FamosDisplayProperty methodsFor: 'recovered'!
rgbBlue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    rgbBlue := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4848; bytecode file offset 0x9c11bc"
!FamosDisplayProperty methodsFor: 'recovered'!
yMin: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    yMin := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4dcc; bytecode file offset 0x9c16b0"
!FamosDisplayProperty methodsFor: 'recovered'!
yMax: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    yMax := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d93ac; bytecode file offset 0x9d5d08"
!FamosDisplayProperty methodsFor: 'recovered'!
addToSuper: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) parent: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) displayProperty: (self).
    ^true
! !

"ASDBase.ic method 0x2011d90c; bytecode file offset 0xa1a2f8"
!FamosDisplayProperty methodsFor: 'recovered'!
putFieldsIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putColorsIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putDimensionsIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putEndIn: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201a31cc; bytecode file offset 0xa9fa88"
!FamosDisplayProperty methodsFor: 'recovered'!
initialize
    super initialize.
    rgbRed := nil.
    rgbGreen := nil.
    rgbBlue := nil.
    yMin := nil.
    yMax := nil.
    ^self
! !

"ASDBase.ic method 0x201a39dc; bytecode file offset 0xaa0298"
!FamosDisplayProperty methodsFor: 'recovered'!
putDimensionsIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := yMin.
    (self) putIn: (recoveredValue1) integer: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := yMax.
    (self) putIn: (recoveredValue4) integer: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20232278; bytecode file offset 0xb2eb34"
!FamosDisplayProperty methodsFor: 'recovered'!
putColorsIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := rgbRed.
    (self) putIn: (recoveredValue1) integer: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := rgbGreen.
    (self) putIn: (recoveredValue4) integer: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := rgbBlue.
    (self) putIn: (recoveredValue7) integer: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x2023ec90; bytecode file offset 0xb3b554"
!FamosDisplayProperty methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    super getFrom: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getInteger: (recoveredValue1).
    rgbRed := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) getInteger: (recoveredValue3).
    rgbGreen := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) getInteger: (recoveredValue5).
    rgbBlue := recoveredValue6.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (self) getNumber: (recoveredValue7).
    yMin := recoveredValue8.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (self) getNumber: (recoveredValue9).
    yMax := recoveredValue10.
    ^self
! !

