"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2000d8fc; bytecode file offset 0x6e9d0"
!AbtMD5Engine methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := A.
    a := recoveredValue0.
    recoveredValue1 := B.
    b := recoveredValue1.
    recoveredValue2 := C.
    c := recoveredValue2.
    recoveredValue3 := D.
    d := recoveredValue3.
    ^self
! !

"xxx_dyn.ic method 0x2001b7fc; bytecode file offset 0x7c8d8"
!AbtMD5Engine methodsFor: 'recovered'!
operation: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5 with: recoveredArg6 with: recoveredArg7 with: recoveredArg8 with: recoveredArg9
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := recoveredArg5.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (recoveredValue0) value: (recoveredValue1) value: (recoveredValue2) value: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (recoveredValue5) + (recoveredValue6).
    recoveredValue8 := recoveredArg6.
    recoveredValue9 := recoveredArg7.
    recoveredValue10 := (recoveredValue9) + (1).
    recoveredValue11 := (recoveredValue8) at: (recoveredValue10).
    recoveredValue12 := (recoveredValue7) + (recoveredValue11).
    recoveredValue13 := T.
    recoveredValue14 := recoveredArg9.
    recoveredValue15 := (recoveredValue13) at: (recoveredValue14).
    recoveredValue16 := (recoveredValue12) + (recoveredValue15).
    recoveredValue17 := (recoveredValue16) bitAnd: (4294967295).
    recoveredLocal1 := recoveredValue17.
    recoveredValue18 := recoveredArg2.
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := recoveredArg8.
    recoveredValue21 := (recoveredValue19) abtMD5Rotate: (recoveredValue20).
    recoveredValue22 := (recoveredValue18) + (recoveredValue21).
    recoveredValue23 := (recoveredValue22) bitAnd: (4294967295).
    ^recoveredValue23
! !

"xxx_dyn.ic method 0x20023dd4; bytecode file offset 0x84eb0"
!AbtMD5Engine methodsFor: 'recovered'!
padOut: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := ByteArray.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := 128.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 64.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 56.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 56.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 120.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := ByteArray.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) abtMD5Uint64At: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x20025a48; bytecode file offset 0x86b2c"
!AbtMD5Engine methodsFor: 'recovered'!
digest: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) initialize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) padOut: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 64.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 64.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack5 := 63.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) processBlock: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 22] ifFalse: [recoveredLocal1 := nil. recoveredPC := 56]] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := ByteArray.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 16.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := a.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) abtMD5Uint32At: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := b.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) abtMD5Uint32At: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := c.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) abtMD5Uint32At: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := 12.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := d.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) abtMD5Uint32At: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2002fd04; bytecode file offset 0x90e34"
!AbtMD5Engine methodsFor: 'recovered'!
processBlock: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := a.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := b.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := c.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := d.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 16.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 16.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (-1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack6 := 4.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := (recoveredStack5) * (recoveredStack6).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := (recoveredStack4) abtMD5Uint32At: (recoveredStack5).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 32] ifFalse: [recoveredLocal1 := nil. recoveredPC := 58]] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := a.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := b.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := c.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := d.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack5 := F.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack7 := 0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack8 := S11.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack9 := 1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            a := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := d.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := a.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := b.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack4 := c.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack5 := F.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack7 := 1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack8 := S12.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack9 := 2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            d := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := c.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := d.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := a.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack4 := b.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack5 := F.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack7 := 2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack8 := S13.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack9 := 3.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            c := recoveredStack0.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := b.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := c.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := d.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack4 := a.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack5 := F.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack7 := 3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack8 := S14.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack9 := 4.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            b := recoveredStack0.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := a.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := b.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := c.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack4 := d.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack5 := F.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack7 := 4.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack8 := S11.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack9 := 5.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            a := recoveredStack0.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := d.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := a.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := b.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack4 := c.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack5 := F.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack7 := 5.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack8 := S12.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack9 := 6.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            d := recoveredStack0.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := c.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := d.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack3 := a.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack4 := b.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack5 := F.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack7 := 6.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack8 := S13.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack9 := 7.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            c := recoveredStack0.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := b.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := c.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack3 := d.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack4 := a.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack5 := F.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack7 := 7.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack8 := S14.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack9 := 8.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            b := recoveredStack0.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := a.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := b.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack3 := c.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack4 := d.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack5 := F.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack7 := 8.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack8 := S11.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack9 := 9.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            a := recoveredStack0.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := d.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack2 := a.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack3 := b.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack4 := c.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack5 := F.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack7 := 9.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack8 := S12.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack9 := 10.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            d := recoveredStack0.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := c.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := d.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack3 := a.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack4 := b.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack5 := F.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack7 := 10.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack8 := S13.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack9 := 11.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            c := recoveredStack0.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := b.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack2 := c.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack3 := d.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack4 := a.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack5 := F.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack7 := 11.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack8 := S14.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack9 := 12.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            b := recoveredStack0.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := a.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack2 := b.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack3 := c.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack4 := d.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack5 := F.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack7 := 12.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack8 := S11.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack9 := 13.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            a := recoveredStack0.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := d.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack2 := a.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack3 := b.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack4 := c.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack5 := F.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack7 := 13.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack8 := S12.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack9 := 14.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            d := recoveredStack0.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack1 := c.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack2 := d.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack3 := a.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack4 := b.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack5 := F.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack7 := 14.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack8 := S13.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack9 := 15.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            c := recoveredStack0.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack1 := b.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack2 := c.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack3 := d.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack4 := a.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack5 := F.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack7 := 15.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack8 := S14.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack9 := 16.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            b := recoveredStack0.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack1 := a.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack2 := b.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack3 := c.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack4 := d.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack5 := G.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack7 := 1.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack8 := S21.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack9 := 17.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            a := recoveredStack0.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack1 := d.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack2 := a.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack3 := b.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack4 := c.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack5 := G.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack7 := 6.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack8 := S22.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack9 := 18.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            d := recoveredStack0.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack1 := c.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack2 := d.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack3 := a.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack4 := b.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack5 := G.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack7 := 11.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack8 := S23.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack9 := 19.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            c := recoveredStack0.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack1 := b.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack2 := c.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack3 := d.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack4 := a.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack5 := G.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack7 := 0.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack8 := S24.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack9 := 20.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            b := recoveredStack0.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack1 := a.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack2 := b.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack3 := c.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack4 := d.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack5 := G.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack7 := 5.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack8 := S21.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack9 := 21.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            a := recoveredStack0.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack1 := d.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack2 := a.
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack3 := b.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack4 := c.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack5 := G.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack7 := 10.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack8 := S22.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack9 := 22.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            d := recoveredStack0.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack1 := c.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack2 := d.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack3 := a.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack4 := b.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack5 := G.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack7 := 15.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack8 := S23.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack9 := 23.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            c := recoveredStack0.
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack1 := b.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack2 := c.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack3 := d.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack4 := a.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack5 := G.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack7 := 4.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredStack8 := S24.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack9 := 24.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            b := recoveredStack0.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack1 := a.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack2 := b.
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredStack3 := c.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack4 := d.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack5 := G.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack7 := 9.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            recoveredStack8 := S21.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack9 := 25.
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            a := recoveredStack0.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack1 := d.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack2 := a.
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredStack3 := b.
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack4 := c.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack5 := G.
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredStack7 := 14.
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            recoveredStack8 := S22.
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredStack9 := 26.
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            d := recoveredStack0.
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack1 := c.
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack2 := d.
            recoveredPC := 661.
        ].
        recoveredStep = 661 ifTrue: [
            recoveredStack3 := a.
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            recoveredStack4 := b.
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack5 := G.
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            recoveredStack7 := 3.
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            recoveredStack8 := S23.
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack9 := 27.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            c := recoveredStack0.
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack1 := b.
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack2 := c.
            recoveredPC := 684.
        ].
        recoveredStep = 684 ifTrue: [
            recoveredStack3 := d.
            recoveredPC := 686.
        ].
        recoveredStep = 686 ifTrue: [
            recoveredStack4 := a.
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack5 := G.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredStack7 := 8.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack8 := S24.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack9 := 28.
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 700.
        ].
        recoveredStep = 700 ifTrue: [
            b := recoveredStack0.
            recoveredPC := 702.
        ].
        recoveredStep = 702 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack1 := a.
            recoveredPC := 705.
        ].
        recoveredStep = 705 ifTrue: [
            recoveredStack2 := b.
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            recoveredStack3 := c.
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack4 := d.
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            recoveredStack5 := G.
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            recoveredStack7 := 13.
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack8 := S21.
            recoveredPC := 718.
        ].
        recoveredStep = 718 ifTrue: [
            recoveredStack9 := 29.
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 723.
        ].
        recoveredStep = 723 ifTrue: [
            a := recoveredStack0.
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 726.
        ].
        recoveredStep = 726 ifTrue: [
            recoveredStack1 := d.
            recoveredPC := 728.
        ].
        recoveredStep = 728 ifTrue: [
            recoveredStack2 := a.
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            recoveredStack3 := b.
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            recoveredStack4 := c.
            recoveredPC := 734.
        ].
        recoveredStep = 734 ifTrue: [
            recoveredStack5 := G.
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 737.
        ].
        recoveredStep = 737 ifTrue: [
            recoveredStack7 := 2.
            recoveredPC := 739.
        ].
        recoveredStep = 739 ifTrue: [
            recoveredStack8 := S22.
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            recoveredStack9 := 30.
            recoveredPC := 743.
        ].
        recoveredStep = 743 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            d := recoveredStack0.
            recoveredPC := 748.
        ].
        recoveredStep = 748 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack1 := c.
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            recoveredStack2 := d.
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            recoveredStack3 := a.
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            recoveredStack4 := b.
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredStack5 := G.
            recoveredPC := 759.
        ].
        recoveredStep = 759 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            recoveredStack7 := 7.
            recoveredPC := 762.
        ].
        recoveredStep = 762 ifTrue: [
            recoveredStack8 := S23.
            recoveredPC := 764.
        ].
        recoveredStep = 764 ifTrue: [
            recoveredStack9 := 31.
            recoveredPC := 766.
        ].
        recoveredStep = 766 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 769.
        ].
        recoveredStep = 769 ifTrue: [
            c := recoveredStack0.
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 772.
        ].
        recoveredStep = 772 ifTrue: [
            recoveredStack1 := b.
            recoveredPC := 774.
        ].
        recoveredStep = 774 ifTrue: [
            recoveredStack2 := c.
            recoveredPC := 776.
        ].
        recoveredStep = 776 ifTrue: [
            recoveredStack3 := d.
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            recoveredStack4 := a.
            recoveredPC := 780.
        ].
        recoveredStep = 780 ifTrue: [
            recoveredStack5 := G.
            recoveredPC := 782.
        ].
        recoveredStep = 782 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 783.
        ].
        recoveredStep = 783 ifTrue: [
            recoveredStack7 := 12.
            recoveredPC := 785.
        ].
        recoveredStep = 785 ifTrue: [
            recoveredStack8 := S24.
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            recoveredStack9 := 32.
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 792.
        ].
        recoveredStep = 792 ifTrue: [
            b := recoveredStack0.
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 795.
        ].
        recoveredStep = 795 ifTrue: [
            recoveredStack1 := a.
            recoveredPC := 797.
        ].
        recoveredStep = 797 ifTrue: [
            recoveredStack2 := b.
            recoveredPC := 799.
        ].
        recoveredStep = 799 ifTrue: [
            recoveredStack3 := c.
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            recoveredStack4 := d.
            recoveredPC := 803.
        ].
        recoveredStep = 803 ifTrue: [
            recoveredStack5 := H.
            recoveredPC := 805.
        ].
        recoveredStep = 805 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 806.
        ].
        recoveredStep = 806 ifTrue: [
            recoveredStack7 := 5.
            recoveredPC := 808.
        ].
        recoveredStep = 808 ifTrue: [
            recoveredStack8 := S31.
            recoveredPC := 810.
        ].
        recoveredStep = 810 ifTrue: [
            recoveredStack9 := 33.
            recoveredPC := 812.
        ].
        recoveredStep = 812 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 815.
        ].
        recoveredStep = 815 ifTrue: [
            a := recoveredStack0.
            recoveredPC := 817.
        ].
        recoveredStep = 817 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 818.
        ].
        recoveredStep = 818 ifTrue: [
            recoveredStack1 := d.
            recoveredPC := 820.
        ].
        recoveredStep = 820 ifTrue: [
            recoveredStack2 := a.
            recoveredPC := 822.
        ].
        recoveredStep = 822 ifTrue: [
            recoveredStack3 := b.
            recoveredPC := 824.
        ].
        recoveredStep = 824 ifTrue: [
            recoveredStack4 := c.
            recoveredPC := 826.
        ].
        recoveredStep = 826 ifTrue: [
            recoveredStack5 := H.
            recoveredPC := 828.
        ].
        recoveredStep = 828 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 829.
        ].
        recoveredStep = 829 ifTrue: [
            recoveredStack7 := 8.
            recoveredPC := 831.
        ].
        recoveredStep = 831 ifTrue: [
            recoveredStack8 := S32.
            recoveredPC := 833.
        ].
        recoveredStep = 833 ifTrue: [
            recoveredStack9 := 34.
            recoveredPC := 835.
        ].
        recoveredStep = 835 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 838.
        ].
        recoveredStep = 838 ifTrue: [
            d := recoveredStack0.
            recoveredPC := 840.
        ].
        recoveredStep = 840 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 841.
        ].
        recoveredStep = 841 ifTrue: [
            recoveredStack1 := c.
            recoveredPC := 843.
        ].
        recoveredStep = 843 ifTrue: [
            recoveredStack2 := d.
            recoveredPC := 845.
        ].
        recoveredStep = 845 ifTrue: [
            recoveredStack3 := a.
            recoveredPC := 847.
        ].
        recoveredStep = 847 ifTrue: [
            recoveredStack4 := b.
            recoveredPC := 849.
        ].
        recoveredStep = 849 ifTrue: [
            recoveredStack5 := H.
            recoveredPC := 851.
        ].
        recoveredStep = 851 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 852.
        ].
        recoveredStep = 852 ifTrue: [
            recoveredStack7 := 11.
            recoveredPC := 854.
        ].
        recoveredStep = 854 ifTrue: [
            recoveredStack8 := S33.
            recoveredPC := 856.
        ].
        recoveredStep = 856 ifTrue: [
            recoveredStack9 := 35.
            recoveredPC := 858.
        ].
        recoveredStep = 858 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 861.
        ].
        recoveredStep = 861 ifTrue: [
            c := recoveredStack0.
            recoveredPC := 863.
        ].
        recoveredStep = 863 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 864.
        ].
        recoveredStep = 864 ifTrue: [
            recoveredStack1 := b.
            recoveredPC := 866.
        ].
        recoveredStep = 866 ifTrue: [
            recoveredStack2 := c.
            recoveredPC := 868.
        ].
        recoveredStep = 868 ifTrue: [
            recoveredStack3 := d.
            recoveredPC := 870.
        ].
        recoveredStep = 870 ifTrue: [
            recoveredStack4 := a.
            recoveredPC := 872.
        ].
        recoveredStep = 872 ifTrue: [
            recoveredStack5 := H.
            recoveredPC := 874.
        ].
        recoveredStep = 874 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 875.
        ].
        recoveredStep = 875 ifTrue: [
            recoveredStack7 := 14.
            recoveredPC := 877.
        ].
        recoveredStep = 877 ifTrue: [
            recoveredStack8 := S34.
            recoveredPC := 879.
        ].
        recoveredStep = 879 ifTrue: [
            recoveredStack9 := 36.
            recoveredPC := 881.
        ].
        recoveredStep = 881 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 884.
        ].
        recoveredStep = 884 ifTrue: [
            b := recoveredStack0.
            recoveredPC := 886.
        ].
        recoveredStep = 886 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 887.
        ].
        recoveredStep = 887 ifTrue: [
            recoveredStack1 := a.
            recoveredPC := 889.
        ].
        recoveredStep = 889 ifTrue: [
            recoveredStack2 := b.
            recoveredPC := 891.
        ].
        recoveredStep = 891 ifTrue: [
            recoveredStack3 := c.
            recoveredPC := 893.
        ].
        recoveredStep = 893 ifTrue: [
            recoveredStack4 := d.
            recoveredPC := 895.
        ].
        recoveredStep = 895 ifTrue: [
            recoveredStack5 := H.
            recoveredPC := 897.
        ].
        recoveredStep = 897 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 898.
        ].
        recoveredStep = 898 ifTrue: [
            recoveredStack7 := 1.
            recoveredPC := 900.
        ].
        recoveredStep = 900 ifTrue: [
            recoveredStack8 := S31.
            recoveredPC := 902.
        ].
        recoveredStep = 902 ifTrue: [
            recoveredStack9 := 37.
            recoveredPC := 904.
        ].
        recoveredStep = 904 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 907.
        ].
        recoveredStep = 907 ifTrue: [
            a := recoveredStack0.
            recoveredPC := 909.
        ].
        recoveredStep = 909 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 910.
        ].
        recoveredStep = 910 ifTrue: [
            recoveredStack1 := d.
            recoveredPC := 912.
        ].
        recoveredStep = 912 ifTrue: [
            recoveredStack2 := a.
            recoveredPC := 914.
        ].
        recoveredStep = 914 ifTrue: [
            recoveredStack3 := b.
            recoveredPC := 916.
        ].
        recoveredStep = 916 ifTrue: [
            recoveredStack4 := c.
            recoveredPC := 918.
        ].
        recoveredStep = 918 ifTrue: [
            recoveredStack5 := H.
            recoveredPC := 920.
        ].
        recoveredStep = 920 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 921.
        ].
        recoveredStep = 921 ifTrue: [
            recoveredStack7 := 4.
            recoveredPC := 923.
        ].
        recoveredStep = 923 ifTrue: [
            recoveredStack8 := S32.
            recoveredPC := 925.
        ].
        recoveredStep = 925 ifTrue: [
            recoveredStack9 := 38.
            recoveredPC := 927.
        ].
        recoveredStep = 927 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 930.
        ].
        recoveredStep = 930 ifTrue: [
            d := recoveredStack0.
            recoveredPC := 932.
        ].
        recoveredStep = 932 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 933.
        ].
        recoveredStep = 933 ifTrue: [
            recoveredStack1 := c.
            recoveredPC := 935.
        ].
        recoveredStep = 935 ifTrue: [
            recoveredStack2 := d.
            recoveredPC := 937.
        ].
        recoveredStep = 937 ifTrue: [
            recoveredStack3 := a.
            recoveredPC := 939.
        ].
        recoveredStep = 939 ifTrue: [
            recoveredStack4 := b.
            recoveredPC := 941.
        ].
        recoveredStep = 941 ifTrue: [
            recoveredStack5 := H.
            recoveredPC := 943.
        ].
        recoveredStep = 943 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 944.
        ].
        recoveredStep = 944 ifTrue: [
            recoveredStack7 := 7.
            recoveredPC := 946.
        ].
        recoveredStep = 946 ifTrue: [
            recoveredStack8 := S33.
            recoveredPC := 948.
        ].
        recoveredStep = 948 ifTrue: [
            recoveredStack9 := 39.
            recoveredPC := 950.
        ].
        recoveredStep = 950 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 953.
        ].
        recoveredStep = 953 ifTrue: [
            c := recoveredStack0.
            recoveredPC := 955.
        ].
        recoveredStep = 955 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 956.
        ].
        recoveredStep = 956 ifTrue: [
            recoveredStack1 := b.
            recoveredPC := 958.
        ].
        recoveredStep = 958 ifTrue: [
            recoveredStack2 := c.
            recoveredPC := 960.
        ].
        recoveredStep = 960 ifTrue: [
            recoveredStack3 := d.
            recoveredPC := 962.
        ].
        recoveredStep = 962 ifTrue: [
            recoveredStack4 := a.
            recoveredPC := 964.
        ].
        recoveredStep = 964 ifTrue: [
            recoveredStack5 := H.
            recoveredPC := 966.
        ].
        recoveredStep = 966 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 967.
        ].
        recoveredStep = 967 ifTrue: [
            recoveredStack7 := 10.
            recoveredPC := 969.
        ].
        recoveredStep = 969 ifTrue: [
            recoveredStack8 := S34.
            recoveredPC := 971.
        ].
        recoveredStep = 971 ifTrue: [
            recoveredStack9 := 40.
            recoveredPC := 973.
        ].
        recoveredStep = 973 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 976.
        ].
        recoveredStep = 976 ifTrue: [
            b := recoveredStack0.
            recoveredPC := 978.
        ].
        recoveredStep = 978 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 979.
        ].
        recoveredStep = 979 ifTrue: [
            recoveredStack1 := a.
            recoveredPC := 981.
        ].
        recoveredStep = 981 ifTrue: [
            recoveredStack2 := b.
            recoveredPC := 983.
        ].
        recoveredStep = 983 ifTrue: [
            recoveredStack3 := c.
            recoveredPC := 985.
        ].
        recoveredStep = 985 ifTrue: [
            recoveredStack4 := d.
            recoveredPC := 987.
        ].
        recoveredStep = 987 ifTrue: [
            recoveredStack5 := H.
            recoveredPC := 989.
        ].
        recoveredStep = 989 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 990.
        ].
        recoveredStep = 990 ifTrue: [
            recoveredStack7 := 13.
            recoveredPC := 992.
        ].
        recoveredStep = 992 ifTrue: [
            recoveredStack8 := S31.
            recoveredPC := 994.
        ].
        recoveredStep = 994 ifTrue: [
            recoveredStack9 := 41.
            recoveredPC := 996.
        ].
        recoveredStep = 996 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 999.
        ].
        recoveredStep = 999 ifTrue: [
            a := recoveredStack0.
            recoveredPC := 1001.
        ].
        recoveredStep = 1001 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1002.
        ].
        recoveredStep = 1002 ifTrue: [
            recoveredStack1 := d.
            recoveredPC := 1004.
        ].
        recoveredStep = 1004 ifTrue: [
            recoveredStack2 := a.
            recoveredPC := 1006.
        ].
        recoveredStep = 1006 ifTrue: [
            recoveredStack3 := b.
            recoveredPC := 1008.
        ].
        recoveredStep = 1008 ifTrue: [
            recoveredStack4 := c.
            recoveredPC := 1010.
        ].
        recoveredStep = 1010 ifTrue: [
            recoveredStack5 := H.
            recoveredPC := 1012.
        ].
        recoveredStep = 1012 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 1013.
        ].
        recoveredStep = 1013 ifTrue: [
            recoveredStack7 := 0.
            recoveredPC := 1015.
        ].
        recoveredStep = 1015 ifTrue: [
            recoveredStack8 := S32.
            recoveredPC := 1017.
        ].
        recoveredStep = 1017 ifTrue: [
            recoveredStack9 := 42.
            recoveredPC := 1019.
        ].
        recoveredStep = 1019 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 1022.
        ].
        recoveredStep = 1022 ifTrue: [
            d := recoveredStack0.
            recoveredPC := 1024.
        ].
        recoveredStep = 1024 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1025.
        ].
        recoveredStep = 1025 ifTrue: [
            recoveredStack1 := c.
            recoveredPC := 1027.
        ].
        recoveredStep = 1027 ifTrue: [
            recoveredStack2 := d.
            recoveredPC := 1029.
        ].
        recoveredStep = 1029 ifTrue: [
            recoveredStack3 := a.
            recoveredPC := 1031.
        ].
        recoveredStep = 1031 ifTrue: [
            recoveredStack4 := b.
            recoveredPC := 1033.
        ].
        recoveredStep = 1033 ifTrue: [
            recoveredStack5 := H.
            recoveredPC := 1035.
        ].
        recoveredStep = 1035 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 1036.
        ].
        recoveredStep = 1036 ifTrue: [
            recoveredStack7 := 3.
            recoveredPC := 1038.
        ].
        recoveredStep = 1038 ifTrue: [
            recoveredStack8 := S33.
            recoveredPC := 1040.
        ].
        recoveredStep = 1040 ifTrue: [
            recoveredStack9 := 43.
            recoveredPC := 1042.
        ].
        recoveredStep = 1042 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 1045.
        ].
        recoveredStep = 1045 ifTrue: [
            c := recoveredStack0.
            recoveredPC := 1047.
        ].
        recoveredStep = 1047 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1048.
        ].
        recoveredStep = 1048 ifTrue: [
            recoveredStack1 := b.
            recoveredPC := 1050.
        ].
        recoveredStep = 1050 ifTrue: [
            recoveredStack2 := c.
            recoveredPC := 1052.
        ].
        recoveredStep = 1052 ifTrue: [
            recoveredStack3 := d.
            recoveredPC := 1054.
        ].
        recoveredStep = 1054 ifTrue: [
            recoveredStack4 := a.
            recoveredPC := 1056.
        ].
        recoveredStep = 1056 ifTrue: [
            recoveredStack5 := H.
            recoveredPC := 1058.
        ].
        recoveredStep = 1058 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 1059.
        ].
        recoveredStep = 1059 ifTrue: [
            recoveredStack7 := 6.
            recoveredPC := 1061.
        ].
        recoveredStep = 1061 ifTrue: [
            recoveredStack8 := S34.
            recoveredPC := 1063.
        ].
        recoveredStep = 1063 ifTrue: [
            recoveredStack9 := 44.
            recoveredPC := 1065.
        ].
        recoveredStep = 1065 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 1068.
        ].
        recoveredStep = 1068 ifTrue: [
            b := recoveredStack0.
            recoveredPC := 1070.
        ].
        recoveredStep = 1070 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1071.
        ].
        recoveredStep = 1071 ifTrue: [
            recoveredStack1 := a.
            recoveredPC := 1073.
        ].
        recoveredStep = 1073 ifTrue: [
            recoveredStack2 := b.
            recoveredPC := 1075.
        ].
        recoveredStep = 1075 ifTrue: [
            recoveredStack3 := c.
            recoveredPC := 1077.
        ].
        recoveredStep = 1077 ifTrue: [
            recoveredStack4 := d.
            recoveredPC := 1079.
        ].
        recoveredStep = 1079 ifTrue: [
            recoveredStack5 := H.
            recoveredPC := 1081.
        ].
        recoveredStep = 1081 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 1082.
        ].
        recoveredStep = 1082 ifTrue: [
            recoveredStack7 := 9.
            recoveredPC := 1084.
        ].
        recoveredStep = 1084 ifTrue: [
            recoveredStack8 := S31.
            recoveredPC := 1086.
        ].
        recoveredStep = 1086 ifTrue: [
            recoveredStack9 := 45.
            recoveredPC := 1088.
        ].
        recoveredStep = 1088 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 1091.
        ].
        recoveredStep = 1091 ifTrue: [
            a := recoveredStack0.
            recoveredPC := 1093.
        ].
        recoveredStep = 1093 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1094.
        ].
        recoveredStep = 1094 ifTrue: [
            recoveredStack1 := d.
            recoveredPC := 1096.
        ].
        recoveredStep = 1096 ifTrue: [
            recoveredStack2 := a.
            recoveredPC := 1098.
        ].
        recoveredStep = 1098 ifTrue: [
            recoveredStack3 := b.
            recoveredPC := 1100.
        ].
        recoveredStep = 1100 ifTrue: [
            recoveredStack4 := c.
            recoveredPC := 1102.
        ].
        recoveredStep = 1102 ifTrue: [
            recoveredStack5 := H.
            recoveredPC := 1104.
        ].
        recoveredStep = 1104 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 1105.
        ].
        recoveredStep = 1105 ifTrue: [
            recoveredStack7 := 12.
            recoveredPC := 1107.
        ].
        recoveredStep = 1107 ifTrue: [
            recoveredStack8 := S32.
            recoveredPC := 1109.
        ].
        recoveredStep = 1109 ifTrue: [
            recoveredStack9 := 46.
            recoveredPC := 1111.
        ].
        recoveredStep = 1111 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 1114.
        ].
        recoveredStep = 1114 ifTrue: [
            d := recoveredStack0.
            recoveredPC := 1116.
        ].
        recoveredStep = 1116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1117.
        ].
        recoveredStep = 1117 ifTrue: [
            recoveredStack1 := c.
            recoveredPC := 1119.
        ].
        recoveredStep = 1119 ifTrue: [
            recoveredStack2 := d.
            recoveredPC := 1121.
        ].
        recoveredStep = 1121 ifTrue: [
            recoveredStack3 := a.
            recoveredPC := 1123.
        ].
        recoveredStep = 1123 ifTrue: [
            recoveredStack4 := b.
            recoveredPC := 1125.
        ].
        recoveredStep = 1125 ifTrue: [
            recoveredStack5 := H.
            recoveredPC := 1127.
        ].
        recoveredStep = 1127 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 1128.
        ].
        recoveredStep = 1128 ifTrue: [
            recoveredStack7 := 15.
            recoveredPC := 1130.
        ].
        recoveredStep = 1130 ifTrue: [
            recoveredStack8 := S33.
            recoveredPC := 1132.
        ].
        recoveredStep = 1132 ifTrue: [
            recoveredStack9 := 47.
            recoveredPC := 1134.
        ].
        recoveredStep = 1134 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 1137.
        ].
        recoveredStep = 1137 ifTrue: [
            c := recoveredStack0.
            recoveredPC := 1139.
        ].
        recoveredStep = 1139 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1140.
        ].
        recoveredStep = 1140 ifTrue: [
            recoveredStack1 := b.
            recoveredPC := 1142.
        ].
        recoveredStep = 1142 ifTrue: [
            recoveredStack2 := c.
            recoveredPC := 1144.
        ].
        recoveredStep = 1144 ifTrue: [
            recoveredStack3 := d.
            recoveredPC := 1146.
        ].
        recoveredStep = 1146 ifTrue: [
            recoveredStack4 := a.
            recoveredPC := 1148.
        ].
        recoveredStep = 1148 ifTrue: [
            recoveredStack5 := H.
            recoveredPC := 1150.
        ].
        recoveredStep = 1150 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 1151.
        ].
        recoveredStep = 1151 ifTrue: [
            recoveredStack7 := 2.
            recoveredPC := 1153.
        ].
        recoveredStep = 1153 ifTrue: [
            recoveredStack8 := S34.
            recoveredPC := 1155.
        ].
        recoveredStep = 1155 ifTrue: [
            recoveredStack9 := 48.
            recoveredPC := 1157.
        ].
        recoveredStep = 1157 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 1160.
        ].
        recoveredStep = 1160 ifTrue: [
            b := recoveredStack0.
            recoveredPC := 1162.
        ].
        recoveredStep = 1162 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1163.
        ].
        recoveredStep = 1163 ifTrue: [
            recoveredStack1 := a.
            recoveredPC := 1165.
        ].
        recoveredStep = 1165 ifTrue: [
            recoveredStack2 := b.
            recoveredPC := 1167.
        ].
        recoveredStep = 1167 ifTrue: [
            recoveredStack3 := c.
            recoveredPC := 1169.
        ].
        recoveredStep = 1169 ifTrue: [
            recoveredStack4 := d.
            recoveredPC := 1171.
        ].
        recoveredStep = 1171 ifTrue: [
            recoveredStack5 := I.
            recoveredPC := 1173.
        ].
        recoveredStep = 1173 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 1174.
        ].
        recoveredStep = 1174 ifTrue: [
            recoveredStack7 := 0.
            recoveredPC := 1176.
        ].
        recoveredStep = 1176 ifTrue: [
            recoveredStack8 := S41.
            recoveredPC := 1178.
        ].
        recoveredStep = 1178 ifTrue: [
            recoveredStack9 := 49.
            recoveredPC := 1180.
        ].
        recoveredStep = 1180 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 1183.
        ].
        recoveredStep = 1183 ifTrue: [
            a := recoveredStack0.
            recoveredPC := 1185.
        ].
        recoveredStep = 1185 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1186.
        ].
        recoveredStep = 1186 ifTrue: [
            recoveredStack1 := d.
            recoveredPC := 1188.
        ].
        recoveredStep = 1188 ifTrue: [
            recoveredStack2 := a.
            recoveredPC := 1190.
        ].
        recoveredStep = 1190 ifTrue: [
            recoveredStack3 := b.
            recoveredPC := 1192.
        ].
        recoveredStep = 1192 ifTrue: [
            recoveredStack4 := c.
            recoveredPC := 1194.
        ].
        recoveredStep = 1194 ifTrue: [
            recoveredStack5 := I.
            recoveredPC := 1196.
        ].
        recoveredStep = 1196 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 1197.
        ].
        recoveredStep = 1197 ifTrue: [
            recoveredStack7 := 7.
            recoveredPC := 1199.
        ].
        recoveredStep = 1199 ifTrue: [
            recoveredStack8 := S42.
            recoveredPC := 1201.
        ].
        recoveredStep = 1201 ifTrue: [
            recoveredStack9 := 50.
            recoveredPC := 1203.
        ].
        recoveredStep = 1203 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 1206.
        ].
        recoveredStep = 1206 ifTrue: [
            d := recoveredStack0.
            recoveredPC := 1208.
        ].
        recoveredStep = 1208 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1209.
        ].
        recoveredStep = 1209 ifTrue: [
            recoveredStack1 := c.
            recoveredPC := 1211.
        ].
        recoveredStep = 1211 ifTrue: [
            recoveredStack2 := d.
            recoveredPC := 1213.
        ].
        recoveredStep = 1213 ifTrue: [
            recoveredStack3 := a.
            recoveredPC := 1215.
        ].
        recoveredStep = 1215 ifTrue: [
            recoveredStack4 := b.
            recoveredPC := 1217.
        ].
        recoveredStep = 1217 ifTrue: [
            recoveredStack5 := I.
            recoveredPC := 1219.
        ].
        recoveredStep = 1219 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 1220.
        ].
        recoveredStep = 1220 ifTrue: [
            recoveredStack7 := 14.
            recoveredPC := 1222.
        ].
        recoveredStep = 1222 ifTrue: [
            recoveredStack8 := S43.
            recoveredPC := 1224.
        ].
        recoveredStep = 1224 ifTrue: [
            recoveredStack9 := 51.
            recoveredPC := 1226.
        ].
        recoveredStep = 1226 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 1229.
        ].
        recoveredStep = 1229 ifTrue: [
            c := recoveredStack0.
            recoveredPC := 1231.
        ].
        recoveredStep = 1231 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1232.
        ].
        recoveredStep = 1232 ifTrue: [
            recoveredStack1 := b.
            recoveredPC := 1234.
        ].
        recoveredStep = 1234 ifTrue: [
            recoveredStack2 := c.
            recoveredPC := 1236.
        ].
        recoveredStep = 1236 ifTrue: [
            recoveredStack3 := d.
            recoveredPC := 1238.
        ].
        recoveredStep = 1238 ifTrue: [
            recoveredStack4 := a.
            recoveredPC := 1240.
        ].
        recoveredStep = 1240 ifTrue: [
            recoveredStack5 := I.
            recoveredPC := 1242.
        ].
        recoveredStep = 1242 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 1243.
        ].
        recoveredStep = 1243 ifTrue: [
            recoveredStack7 := 5.
            recoveredPC := 1245.
        ].
        recoveredStep = 1245 ifTrue: [
            recoveredStack8 := S44.
            recoveredPC := 1247.
        ].
        recoveredStep = 1247 ifTrue: [
            recoveredStack9 := 52.
            recoveredPC := 1249.
        ].
        recoveredStep = 1249 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 1252.
        ].
        recoveredStep = 1252 ifTrue: [
            b := recoveredStack0.
            recoveredPC := 1254.
        ].
        recoveredStep = 1254 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1255.
        ].
        recoveredStep = 1255 ifTrue: [
            recoveredStack1 := a.
            recoveredPC := 1257.
        ].
        recoveredStep = 1257 ifTrue: [
            recoveredStack2 := b.
            recoveredPC := 1259.
        ].
        recoveredStep = 1259 ifTrue: [
            recoveredStack3 := c.
            recoveredPC := 1261.
        ].
        recoveredStep = 1261 ifTrue: [
            recoveredStack4 := d.
            recoveredPC := 1263.
        ].
        recoveredStep = 1263 ifTrue: [
            recoveredStack5 := I.
            recoveredPC := 1265.
        ].
        recoveredStep = 1265 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 1266.
        ].
        recoveredStep = 1266 ifTrue: [
            recoveredStack7 := 12.
            recoveredPC := 1268.
        ].
        recoveredStep = 1268 ifTrue: [
            recoveredStack8 := S41.
            recoveredPC := 1270.
        ].
        recoveredStep = 1270 ifTrue: [
            recoveredStack9 := 53.
            recoveredPC := 1272.
        ].
        recoveredStep = 1272 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 1275.
        ].
        recoveredStep = 1275 ifTrue: [
            a := recoveredStack0.
            recoveredPC := 1277.
        ].
        recoveredStep = 1277 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1278.
        ].
        recoveredStep = 1278 ifTrue: [
            recoveredStack1 := d.
            recoveredPC := 1280.
        ].
        recoveredStep = 1280 ifTrue: [
            recoveredStack2 := a.
            recoveredPC := 1282.
        ].
        recoveredStep = 1282 ifTrue: [
            recoveredStack3 := b.
            recoveredPC := 1284.
        ].
        recoveredStep = 1284 ifTrue: [
            recoveredStack4 := c.
            recoveredPC := 1286.
        ].
        recoveredStep = 1286 ifTrue: [
            recoveredStack5 := I.
            recoveredPC := 1288.
        ].
        recoveredStep = 1288 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 1289.
        ].
        recoveredStep = 1289 ifTrue: [
            recoveredStack7 := 3.
            recoveredPC := 1291.
        ].
        recoveredStep = 1291 ifTrue: [
            recoveredStack8 := S42.
            recoveredPC := 1293.
        ].
        recoveredStep = 1293 ifTrue: [
            recoveredStack9 := 54.
            recoveredPC := 1295.
        ].
        recoveredStep = 1295 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 1298.
        ].
        recoveredStep = 1298 ifTrue: [
            d := recoveredStack0.
            recoveredPC := 1300.
        ].
        recoveredStep = 1300 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1301.
        ].
        recoveredStep = 1301 ifTrue: [
            recoveredStack1 := c.
            recoveredPC := 1303.
        ].
        recoveredStep = 1303 ifTrue: [
            recoveredStack2 := d.
            recoveredPC := 1305.
        ].
        recoveredStep = 1305 ifTrue: [
            recoveredStack3 := a.
            recoveredPC := 1307.
        ].
        recoveredStep = 1307 ifTrue: [
            recoveredStack4 := b.
            recoveredPC := 1309.
        ].
        recoveredStep = 1309 ifTrue: [
            recoveredStack5 := I.
            recoveredPC := 1311.
        ].
        recoveredStep = 1311 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 1312.
        ].
        recoveredStep = 1312 ifTrue: [
            recoveredStack7 := 10.
            recoveredPC := 1314.
        ].
        recoveredStep = 1314 ifTrue: [
            recoveredStack8 := S43.
            recoveredPC := 1316.
        ].
        recoveredStep = 1316 ifTrue: [
            recoveredStack9 := 55.
            recoveredPC := 1318.
        ].
        recoveredStep = 1318 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 1321.
        ].
        recoveredStep = 1321 ifTrue: [
            c := recoveredStack0.
            recoveredPC := 1323.
        ].
        recoveredStep = 1323 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1324.
        ].
        recoveredStep = 1324 ifTrue: [
            recoveredStack1 := b.
            recoveredPC := 1326.
        ].
        recoveredStep = 1326 ifTrue: [
            recoveredStack2 := c.
            recoveredPC := 1328.
        ].
        recoveredStep = 1328 ifTrue: [
            recoveredStack3 := d.
            recoveredPC := 1330.
        ].
        recoveredStep = 1330 ifTrue: [
            recoveredStack4 := a.
            recoveredPC := 1332.
        ].
        recoveredStep = 1332 ifTrue: [
            recoveredStack5 := I.
            recoveredPC := 1334.
        ].
        recoveredStep = 1334 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 1335.
        ].
        recoveredStep = 1335 ifTrue: [
            recoveredStack7 := 1.
            recoveredPC := 1337.
        ].
        recoveredStep = 1337 ifTrue: [
            recoveredStack8 := S44.
            recoveredPC := 1339.
        ].
        recoveredStep = 1339 ifTrue: [
            recoveredStack9 := 56.
            recoveredPC := 1341.
        ].
        recoveredStep = 1341 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 1344.
        ].
        recoveredStep = 1344 ifTrue: [
            b := recoveredStack0.
            recoveredPC := 1346.
        ].
        recoveredStep = 1346 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1347.
        ].
        recoveredStep = 1347 ifTrue: [
            recoveredStack1 := a.
            recoveredPC := 1349.
        ].
        recoveredStep = 1349 ifTrue: [
            recoveredStack2 := b.
            recoveredPC := 1351.
        ].
        recoveredStep = 1351 ifTrue: [
            recoveredStack3 := c.
            recoveredPC := 1353.
        ].
        recoveredStep = 1353 ifTrue: [
            recoveredStack4 := d.
            recoveredPC := 1355.
        ].
        recoveredStep = 1355 ifTrue: [
            recoveredStack5 := I.
            recoveredPC := 1357.
        ].
        recoveredStep = 1357 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 1358.
        ].
        recoveredStep = 1358 ifTrue: [
            recoveredStack7 := 8.
            recoveredPC := 1360.
        ].
        recoveredStep = 1360 ifTrue: [
            recoveredStack8 := S41.
            recoveredPC := 1362.
        ].
        recoveredStep = 1362 ifTrue: [
            recoveredStack9 := 57.
            recoveredPC := 1364.
        ].
        recoveredStep = 1364 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 1367.
        ].
        recoveredStep = 1367 ifTrue: [
            a := recoveredStack0.
            recoveredPC := 1369.
        ].
        recoveredStep = 1369 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1370.
        ].
        recoveredStep = 1370 ifTrue: [
            recoveredStack1 := d.
            recoveredPC := 1372.
        ].
        recoveredStep = 1372 ifTrue: [
            recoveredStack2 := a.
            recoveredPC := 1374.
        ].
        recoveredStep = 1374 ifTrue: [
            recoveredStack3 := b.
            recoveredPC := 1376.
        ].
        recoveredStep = 1376 ifTrue: [
            recoveredStack4 := c.
            recoveredPC := 1378.
        ].
        recoveredStep = 1378 ifTrue: [
            recoveredStack5 := I.
            recoveredPC := 1380.
        ].
        recoveredStep = 1380 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 1381.
        ].
        recoveredStep = 1381 ifTrue: [
            recoveredStack7 := 15.
            recoveredPC := 1383.
        ].
        recoveredStep = 1383 ifTrue: [
            recoveredStack8 := S42.
            recoveredPC := 1385.
        ].
        recoveredStep = 1385 ifTrue: [
            recoveredStack9 := 58.
            recoveredPC := 1387.
        ].
        recoveredStep = 1387 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 1390.
        ].
        recoveredStep = 1390 ifTrue: [
            d := recoveredStack0.
            recoveredPC := 1392.
        ].
        recoveredStep = 1392 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1393.
        ].
        recoveredStep = 1393 ifTrue: [
            recoveredStack1 := c.
            recoveredPC := 1395.
        ].
        recoveredStep = 1395 ifTrue: [
            recoveredStack2 := d.
            recoveredPC := 1397.
        ].
        recoveredStep = 1397 ifTrue: [
            recoveredStack3 := a.
            recoveredPC := 1399.
        ].
        recoveredStep = 1399 ifTrue: [
            recoveredStack4 := b.
            recoveredPC := 1401.
        ].
        recoveredStep = 1401 ifTrue: [
            recoveredStack5 := I.
            recoveredPC := 1403.
        ].
        recoveredStep = 1403 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 1404.
        ].
        recoveredStep = 1404 ifTrue: [
            recoveredStack7 := 6.
            recoveredPC := 1406.
        ].
        recoveredStep = 1406 ifTrue: [
            recoveredStack8 := S43.
            recoveredPC := 1408.
        ].
        recoveredStep = 1408 ifTrue: [
            recoveredStack9 := 59.
            recoveredPC := 1410.
        ].
        recoveredStep = 1410 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 1413.
        ].
        recoveredStep = 1413 ifTrue: [
            c := recoveredStack0.
            recoveredPC := 1415.
        ].
        recoveredStep = 1415 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1416.
        ].
        recoveredStep = 1416 ifTrue: [
            recoveredStack1 := b.
            recoveredPC := 1418.
        ].
        recoveredStep = 1418 ifTrue: [
            recoveredStack2 := c.
            recoveredPC := 1420.
        ].
        recoveredStep = 1420 ifTrue: [
            recoveredStack3 := d.
            recoveredPC := 1422.
        ].
        recoveredStep = 1422 ifTrue: [
            recoveredStack4 := a.
            recoveredPC := 1424.
        ].
        recoveredStep = 1424 ifTrue: [
            recoveredStack5 := I.
            recoveredPC := 1426.
        ].
        recoveredStep = 1426 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 1427.
        ].
        recoveredStep = 1427 ifTrue: [
            recoveredStack7 := 13.
            recoveredPC := 1429.
        ].
        recoveredStep = 1429 ifTrue: [
            recoveredStack8 := S44.
            recoveredPC := 1431.
        ].
        recoveredStep = 1431 ifTrue: [
            recoveredStack9 := 60.
            recoveredPC := 1433.
        ].
        recoveredStep = 1433 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 1436.
        ].
        recoveredStep = 1436 ifTrue: [
            b := recoveredStack0.
            recoveredPC := 1438.
        ].
        recoveredStep = 1438 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1439.
        ].
        recoveredStep = 1439 ifTrue: [
            recoveredStack1 := a.
            recoveredPC := 1441.
        ].
        recoveredStep = 1441 ifTrue: [
            recoveredStack2 := b.
            recoveredPC := 1443.
        ].
        recoveredStep = 1443 ifTrue: [
            recoveredStack3 := c.
            recoveredPC := 1445.
        ].
        recoveredStep = 1445 ifTrue: [
            recoveredStack4 := d.
            recoveredPC := 1447.
        ].
        recoveredStep = 1447 ifTrue: [
            recoveredStack5 := I.
            recoveredPC := 1449.
        ].
        recoveredStep = 1449 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 1450.
        ].
        recoveredStep = 1450 ifTrue: [
            recoveredStack7 := 4.
            recoveredPC := 1452.
        ].
        recoveredStep = 1452 ifTrue: [
            recoveredStack8 := S41.
            recoveredPC := 1454.
        ].
        recoveredStep = 1454 ifTrue: [
            recoveredStack9 := 61.
            recoveredPC := 1456.
        ].
        recoveredStep = 1456 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 1459.
        ].
        recoveredStep = 1459 ifTrue: [
            a := recoveredStack0.
            recoveredPC := 1461.
        ].
        recoveredStep = 1461 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1462.
        ].
        recoveredStep = 1462 ifTrue: [
            recoveredStack1 := d.
            recoveredPC := 1464.
        ].
        recoveredStep = 1464 ifTrue: [
            recoveredStack2 := a.
            recoveredPC := 1466.
        ].
        recoveredStep = 1466 ifTrue: [
            recoveredStack3 := b.
            recoveredPC := 1468.
        ].
        recoveredStep = 1468 ifTrue: [
            recoveredStack4 := c.
            recoveredPC := 1470.
        ].
        recoveredStep = 1470 ifTrue: [
            recoveredStack5 := I.
            recoveredPC := 1472.
        ].
        recoveredStep = 1472 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 1473.
        ].
        recoveredStep = 1473 ifTrue: [
            recoveredStack7 := 11.
            recoveredPC := 1475.
        ].
        recoveredStep = 1475 ifTrue: [
            recoveredStack8 := S42.
            recoveredPC := 1477.
        ].
        recoveredStep = 1477 ifTrue: [
            recoveredStack9 := 62.
            recoveredPC := 1479.
        ].
        recoveredStep = 1479 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 1482.
        ].
        recoveredStep = 1482 ifTrue: [
            d := recoveredStack0.
            recoveredPC := 1484.
        ].
        recoveredStep = 1484 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1485.
        ].
        recoveredStep = 1485 ifTrue: [
            recoveredStack1 := c.
            recoveredPC := 1487.
        ].
        recoveredStep = 1487 ifTrue: [
            recoveredStack2 := d.
            recoveredPC := 1489.
        ].
        recoveredStep = 1489 ifTrue: [
            recoveredStack3 := a.
            recoveredPC := 1491.
        ].
        recoveredStep = 1491 ifTrue: [
            recoveredStack4 := b.
            recoveredPC := 1493.
        ].
        recoveredStep = 1493 ifTrue: [
            recoveredStack5 := I.
            recoveredPC := 1495.
        ].
        recoveredStep = 1495 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 1496.
        ].
        recoveredStep = 1496 ifTrue: [
            recoveredStack7 := 2.
            recoveredPC := 1498.
        ].
        recoveredStep = 1498 ifTrue: [
            recoveredStack8 := S43.
            recoveredPC := 1500.
        ].
        recoveredStep = 1500 ifTrue: [
            recoveredStack9 := 63.
            recoveredPC := 1502.
        ].
        recoveredStep = 1502 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 1505.
        ].
        recoveredStep = 1505 ifTrue: [
            c := recoveredStack0.
            recoveredPC := 1507.
        ].
        recoveredStep = 1507 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1508.
        ].
        recoveredStep = 1508 ifTrue: [
            recoveredStack1 := b.
            recoveredPC := 1510.
        ].
        recoveredStep = 1510 ifTrue: [
            recoveredStack2 := c.
            recoveredPC := 1512.
        ].
        recoveredStep = 1512 ifTrue: [
            recoveredStack3 := d.
            recoveredPC := 1514.
        ].
        recoveredStep = 1514 ifTrue: [
            recoveredStack4 := a.
            recoveredPC := 1516.
        ].
        recoveredStep = 1516 ifTrue: [
            recoveredStack5 := I.
            recoveredPC := 1518.
        ].
        recoveredStep = 1518 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 1519.
        ].
        recoveredStep = 1519 ifTrue: [
            recoveredStack7 := 9.
            recoveredPC := 1521.
        ].
        recoveredStep = 1521 ifTrue: [
            recoveredStack8 := S44.
            recoveredPC := 1523.
        ].
        recoveredStep = 1523 ifTrue: [
            recoveredStack9 := 64.
            recoveredPC := 1526.
        ].
        recoveredStep = 1526 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8) with: (recoveredStack9).
            recoveredPC := 1529.
        ].
        recoveredStep = 1529 ifTrue: [
            b := recoveredStack0.
            recoveredPC := 1531.
        ].
        recoveredStep = 1531 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 1533.
        ].
        recoveredStep = 1533 ifTrue: [
            recoveredStack1 := a.
            recoveredPC := 1535.
        ].
        recoveredStep = 1535 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 1536.
        ].
        recoveredStep = 1536 ifTrue: [
            recoveredStack1 := 4294967295.
            recoveredPC := 1538.
        ].
        recoveredStep = 1538 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 1540.
        ].
        recoveredStep = 1540 ifTrue: [
            a := recoveredStack0.
            recoveredPC := 1542.
        ].
        recoveredStep = 1542 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 1544.
        ].
        recoveredStep = 1544 ifTrue: [
            recoveredStack1 := b.
            recoveredPC := 1546.
        ].
        recoveredStep = 1546 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 1547.
        ].
        recoveredStep = 1547 ifTrue: [
            recoveredStack1 := 4294967295.
            recoveredPC := 1549.
        ].
        recoveredStep = 1549 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 1551.
        ].
        recoveredStep = 1551 ifTrue: [
            b := recoveredStack0.
            recoveredPC := 1553.
        ].
        recoveredStep = 1553 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 1554.
        ].
        recoveredStep = 1554 ifTrue: [
            recoveredStack1 := c.
            recoveredPC := 1556.
        ].
        recoveredStep = 1556 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 1557.
        ].
        recoveredStep = 1557 ifTrue: [
            recoveredStack1 := 4294967295.
            recoveredPC := 1559.
        ].
        recoveredStep = 1559 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 1561.
        ].
        recoveredStep = 1561 ifTrue: [
            c := recoveredStack0.
            recoveredPC := 1563.
        ].
        recoveredStep = 1563 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 1564.
        ].
        recoveredStep = 1564 ifTrue: [
            recoveredStack1 := d.
            recoveredPC := 1566.
        ].
        recoveredStep = 1566 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 1567.
        ].
        recoveredStep = 1567 ifTrue: [
            recoveredStack1 := 4294967295.
            recoveredPC := 1569.
        ].
        recoveredStep = 1569 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 1571.
        ].
        recoveredStep = 1571 ifTrue: [
            d := recoveredStack0.
            recoveredPC := 1573.
        ].
        recoveredStep = 1573 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1574.
        ].
        recoveredStep = 1574 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

