"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20009c68; bytecode file offset 0x908be4"
!Rectangle methodsFor: 'recovered'!
rightTop
    | recoveredValue0 |
    recoveredValue0 := (self) topRight.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a0a0; bytecode file offset 0x908be4"
!Rectangle methodsFor: 'recovered'!
leftBottom
    | recoveredValue0 |
    recoveredValue0 := (self) bottomLeft.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200329e4; bytecode file offset 0x934580"
!Rectangle methodsFor: 'recovered'!
abtNormalized
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) copy.
    recoveredValue1 := (recoveredValue0) abtNormalize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b348; bytecode file offset 0x938608"
!Rectangle methodsFor: 'recovered'!
dbXmlDeepCopy: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) dbXmlGenericDeepCopy: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b894; bytecode file offset 0x938608"
!Rectangle methodsFor: 'recovered'!
mapToWindow: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mapScreenToClient: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003bd14; bytecode file offset 0x938608"
!Rectangle methodsFor: 'recovered'!
mapToScreen: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mapClientToScreen: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006208c; bytecode file offset 0x95e948"
!Rectangle methodsFor: 'recovered'!
abtIsNormalized
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) corner.
    recoveredValue1 := (self) origin.
    recoveredValue2 := (recoveredValue0) >= (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20065af4; bytecode file offset 0x963428"
!Rectangle methodsFor: 'recovered'!
leftTop
    | recoveredValue0 |
    recoveredValue0 := origin.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006799c; bytecode file offset 0x9646f8"
!Rectangle methodsFor: 'recovered'!
rightBottom
    | recoveredValue0 |
    recoveredValue0 := corner.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20084948; bytecode file offset 0x981ca4"
!Rectangle methodsFor: 'recovered'!
leftBottom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) bottomLeft: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20085134; bytecode file offset 0x981ca4"
!Rectangle methodsFor: 'recovered'!
rightTop: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) topRight: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200870e4; bytecode file offset 0x9839e0"
!Rectangle methodsFor: 'recovered'!
mapFromWindow: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mapToScreen: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) mapToWindow: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200998a0; bytecode file offset 0x9961d0"
!Rectangle methodsFor: 'recovered'!
leftTop: recoveredArg1 rightBottom: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) origin: (recoveredValue0) corner: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20099900; bytecode file offset 0x9961d0"
!Rectangle methodsFor: 'recovered'!
leftTop: recoveredArg1 extent: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) origin: (recoveredValue0) extent: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200be4ec; bytecode file offset 0x9bb178"
!Rectangle methodsFor: 'recovered'!
leftTop: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    origin := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf298; bytecode file offset 0x9bc0b4"
!Rectangle methodsFor: 'recovered'!
rightBottom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    corner := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e7330; bytecode file offset 0x9e3bfc"
!Rectangle methodsFor: 'recovered'!
mapClientToScreen: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := origin.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) mapClientToScreen: (recoveredValue1).
    recoveredValue3 := corner.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) mapClientToScreen: (recoveredValue4).
    recoveredValue6 := (recoveredValue2) corner: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x200e7340; bytecode file offset 0x9e3bfc"
!Rectangle methodsFor: 'recovered'!
mapScreenToClient: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := origin.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) mapScreenToClient: (recoveredValue1).
    recoveredValue3 := corner.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) mapScreenToClient: (recoveredValue4).
    recoveredValue6 := (recoveredValue2) corner: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x200ea0a8; bytecode file offset 0x9e696c"
!Rectangle methodsFor: 'recovered'!
abtBecomeLike: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) origin.
    recoveredValue2 := (recoveredValue1) copy.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) corner.
    recoveredValue5 := (recoveredValue4) copy.
    (self) origin: (recoveredValue2) corner: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20110c44; bytecode file offset 0xa0d504"
!Rectangle methodsFor: 'recovered'!
leftBottom: recoveredArg1 extent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) y.
    recoveredValue3 := (recoveredValue0) - (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) x.
    recoveredValue7 := (recoveredValue4) + (recoveredValue6).
    (self) origin: (recoveredValue3) corner: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20130d48; bytecode file offset 0xa2d608"
!Rectangle methodsFor: 'recovered'!
containsRectangle: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack3 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := (recoveredStack3) origin.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) containsPoint: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) corner.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) containsPoint: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20130e7c; bytecode file offset 0xa2d730"
!Rectangle methodsFor: 'recovered'!
containsPointWithBorder: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack3 := origin.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := corner.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20130eb4; bytecode file offset 0xa2d780"
!Rectangle methodsFor: 'recovered'!
tobTBIncludesPoint: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack3 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := (recoveredStack3) origin.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) corner.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20130ec4; bytecode file offset 0xa2d780"
!Rectangle methodsFor: 'recovered'!
abtIncludesPoint: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack3 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := (recoveredStack3) origin.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) corner.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20147a84; bytecode file offset 0xa44344"
!Rectangle methodsFor: 'recovered'!
leftBottom: recoveredArg1 rightTop: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) x.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) y.
    recoveredValue4 := (recoveredValue1) @ (recoveredValue3).
    origin := recoveredValue4.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) x.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) y.
    recoveredValue9 := (recoveredValue6) @ (recoveredValue8).
    corner := recoveredValue9.
    ^self
! !

"ASDBase.ic method 0x2018fdec; bytecode file offset 0xa8c6b8"
!Rectangle methodsFor: 'recovered'!
abtNormalize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtIsNormalized.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) origin.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) corner.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) origin.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) corner.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) origin: (recoveredStack1) corner: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

