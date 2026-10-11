"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x2000644c; bytecode file offset 0x82614"
!CgColorDatabase methodsFor: 'recovered'!
readFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) readDictFrom: (recoveredValue0).
    (self) fromDictionary: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x2000e728; bytecode file offset 0x8a8f4"
!CgColorDatabase methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    size := 0.
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (26).
    startIndices := recoveredValue1.
    storage := ''.
    ^self
! !

"winsys.ic method 0x20022568; bytecode file offset 0x9e744"
!CgColorDatabase methodsFor: 'recovered'!
nextWord: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) next.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) peek.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAlphaNumeric.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) position.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) skip: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) peek.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAlphaNumeric.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) position.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x200266f8; bytecode file offset 0xa28e0"
!CgColorDatabase methodsFor: 'recovered'!
readDictFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextWord: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) asNumber.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextWord: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) asNumber.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextWord: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) asNumber.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextLine.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimSeparators.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack5 := 256.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack5 := 65536.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 63] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20038bac; bytecode file offset 0xb4d88"
!CgColorDatabase methodsFor: 'recovered'!
at: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack2 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := $a.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := $z.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := startIndices.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInteger.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := $a.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) asInteger.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := storage.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOfSubCollection: (recoveredStack2) startingAt: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := storage.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := storage.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := storage.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := storage.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := storage.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := CgRGBColor.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := 257.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack4 := 257.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack5 := 257.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) red: (recoveredStack2) green: (recoveredStack3) blue: (recoveredStack4).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2003be98; bytecode file offset 0xb80a4"
!CgColorDatabase methodsFor: 'recovered'!
fromDictionary: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (26).
    recoveredLocal6 := recoveredValue1.
    recoveredValue2 := WriteStream.
    recoveredValue3 := String.
    recoveredValue4 := (recoveredValue3) new: (10000).
    recoveredValue5 := (recoveredValue2) on: (recoveredValue4).
    recoveredLocal5 := recoveredValue5.
    recoveredLocal4 := nil.
    recoveredLocal3 := 0.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) keys.
    recoveredValue8 := (recoveredValue7) asSortedCollection.
    recoveredValue9 := [:recoveredBlock42Arg1 | 
    | recoveredBlock42Stack0 recoveredBlock42Stack1 recoveredBlock42Stack2 recoveredBlock42Stack3 recoveredBlock42Stack4 recoveredBlock42Stack5 recoveredBlock42PC recoveredBlock42Step recoveredBlock42Done recoveredBlock42Result |
    recoveredBlock42Stack0 := self.
    recoveredBlock42PC := 48.
    recoveredBlock42Done := false.
    [recoveredBlock42Done not] whileTrue: [
        recoveredBlock42Step := recoveredBlock42PC.
        recoveredBlock42Step = 48 ifTrue: [
            recoveredBlock42Stack1 := nil.
            recoveredBlock42PC := 49.
        ].
        recoveredBlock42Step = 49 ifTrue: [
            recoveredBlock42Stack2 := recoveredBlock42Arg1.
            recoveredBlock42PC := 50.
        ].
        recoveredBlock42Step = 50 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) size.
            recoveredBlock42PC := 52.
        ].
        recoveredBlock42Step = 52 ifTrue: [
            recoveredBlock42Stack3 := 1.
            recoveredBlock42PC := 54.
        ].
        recoveredBlock42Step = 54 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) >= (recoveredBlock42Stack3).
            recoveredBlock42PC := 55.
        ].
        recoveredBlock42Step = 55 ifTrue: [
            (recoveredBlock42Stack2) ifTrue: [recoveredBlock42PC := 58] ifFalse: [recoveredBlock42PC := 187].
        ].
        recoveredBlock42Step = 58 ifTrue: [
            recoveredBlock42Stack2 := recoveredBlock42Arg1.
            recoveredBlock42PC := 59.
        ].
        recoveredBlock42Step = 59 ifTrue: [
            recoveredBlock42Stack3 := 1.
            recoveredBlock42PC := 61.
        ].
        recoveredBlock42Step = 61 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) at: (recoveredBlock42Stack3).
            recoveredBlock42PC := 63.
        ].
        recoveredBlock42Step = 63 ifTrue: [
            recoveredBlock42Stack3 := recoveredBlock42Stack2.
            recoveredBlock42PC := 64.
        ].
        recoveredBlock42Step = 64 ifTrue: [
            recoveredLocal2 := recoveredBlock42Stack3.
            recoveredBlock42PC := 67.
        ].
        recoveredBlock42Step = 67 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) isLetter.
            recoveredBlock42PC := 69.
        ].
        recoveredBlock42Step = 69 ifTrue: [
            (recoveredBlock42Stack2) ifTrue: [recoveredBlock42PC := 72] ifFalse: [recoveredBlock42PC := 187].
        ].
        recoveredBlock42Step = 72 ifTrue: [
            recoveredBlock42PC := 73.
        ].
        recoveredBlock42Step = 73 ifTrue: [
            recoveredBlock42Stack1 := recoveredLocal2.
            recoveredBlock42PC := 76.
        ].
        recoveredBlock42Step = 76 ifTrue: [
            recoveredBlock42Stack2 := recoveredLocal4.
            recoveredBlock42PC := 79.
        ].
        recoveredBlock42Step = 79 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) = (recoveredBlock42Stack2).
            recoveredBlock42PC := 80.
        ].
        recoveredBlock42Step = 80 ifTrue: [
            (recoveredBlock42Stack1) ifTrue: [recoveredBlock42PC := 114] ifFalse: [recoveredBlock42PC := 84].
        ].
        recoveredBlock42Step = 84 ifTrue: [
            recoveredBlock42Stack1 := recoveredLocal6.
            recoveredBlock42PC := 87.
        ].
        recoveredBlock42Step = 87 ifTrue: [
            recoveredBlock42Stack2 := recoveredLocal2.
            recoveredBlock42PC := 90.
        ].
        recoveredBlock42Step = 90 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) asInteger.
            recoveredBlock42PC := 92.
        ].
        recoveredBlock42Step = 92 ifTrue: [
            recoveredBlock42Stack3 := $a.
            recoveredBlock42PC := 96.
        ].
        recoveredBlock42Step = 96 ifTrue: [
            recoveredBlock42Stack3 := (recoveredBlock42Stack3) asInteger.
            recoveredBlock42PC := 98.
        ].
        recoveredBlock42Step = 98 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) - (recoveredBlock42Stack3).
            recoveredBlock42PC := 99.
        ].
        recoveredBlock42Step = 99 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) + (1).
            recoveredBlock42PC := 100.
        ].
        recoveredBlock42Step = 100 ifTrue: [
            recoveredBlock42Stack3 := recoveredLocal5.
            recoveredBlock42PC := 103.
        ].
        recoveredBlock42Step = 103 ifTrue: [
            recoveredBlock42Stack3 := (recoveredBlock42Stack3) position.
            recoveredBlock42PC := 105.
        ].
        recoveredBlock42Step = 105 ifTrue: [
            recoveredBlock42Stack3 := (recoveredBlock42Stack3) + (1).
            recoveredBlock42PC := 106.
        ].
        recoveredBlock42Step = 106 ifTrue: [
            (recoveredBlock42Stack1) at: (recoveredBlock42Stack2) put: (recoveredBlock42Stack3).
            recoveredBlock42PC := 108.
        ].
        recoveredBlock42Step = 108 ifTrue: [
            recoveredBlock42Stack1 := recoveredLocal2.
            recoveredBlock42PC := 111.
        ].
        recoveredBlock42Step = 111 ifTrue: [
            recoveredLocal4 := recoveredBlock42Stack1.
            recoveredBlock42PC := 114.
        ].
        recoveredBlock42Step = 114 ifTrue: [
            recoveredBlock42Stack1 := recoveredArg1.
            recoveredBlock42PC := 117.
        ].
        recoveredBlock42Step = 117 ifTrue: [
            recoveredBlock42Stack2 := recoveredBlock42Arg1.
            recoveredBlock42PC := 118.
        ].
        recoveredBlock42Step = 118 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) at: (recoveredBlock42Stack2).
            recoveredBlock42PC := 120.
        ].
        recoveredBlock42Step = 120 ifTrue: [
            recoveredLocal1 := recoveredBlock42Stack1.
            recoveredBlock42PC := 123.
        ].
        recoveredBlock42Step = 123 ifTrue: [
            recoveredBlock42Stack1 := recoveredLocal5.
            recoveredBlock42PC := 126.
        ].
        recoveredBlock42Step = 126 ifTrue: [
            recoveredBlock42Stack2 := recoveredBlock42Stack1.
            recoveredBlock42PC := 127.
        ].
        recoveredBlock42Step = 127 ifTrue: [
            recoveredBlock42Stack3 := recoveredBlock42Arg1.
            recoveredBlock42PC := 128.
        ].
        recoveredBlock42Step = 128 ifTrue: [
            (recoveredBlock42Stack2) nextPutAll: (recoveredBlock42Stack3).
            recoveredBlock42Stack2 := recoveredBlock42Stack1.
            recoveredBlock42PC := 131.
        ].
        recoveredBlock42Step = 131 ifTrue: [
            recoveredBlock42Stack3 := 0.
            recoveredBlock42PC := 133.
        ].
        recoveredBlock42Step = 133 ifTrue: [
            recoveredBlock42Stack3 := (recoveredBlock42Stack3) asCharacter.
            recoveredBlock42PC := 135.
        ].
        recoveredBlock42Step = 135 ifTrue: [
            (recoveredBlock42Stack2) nextPut: (recoveredBlock42Stack3).
            recoveredBlock42Stack2 := recoveredBlock42Stack1.
            recoveredBlock42PC := 138.
        ].
        recoveredBlock42Step = 138 ifTrue: [
            recoveredBlock42Stack3 := recoveredLocal1.
            recoveredBlock42PC := 141.
        ].
        recoveredBlock42Step = 141 ifTrue: [
            recoveredBlock42Stack4 := 256.
            recoveredBlock42PC := 144.
        ].
        recoveredBlock42Step = 144 ifTrue: [
            recoveredBlock42Stack3 := (recoveredBlock42Stack3) \\ (recoveredBlock42Stack4).
            recoveredBlock42PC := 145.
        ].
        recoveredBlock42Step = 145 ifTrue: [
            recoveredBlock42Stack3 := (recoveredBlock42Stack3) asCharacter.
            recoveredBlock42PC := 147.
        ].
        recoveredBlock42Step = 147 ifTrue: [
            (recoveredBlock42Stack2) nextPut: (recoveredBlock42Stack3).
            recoveredBlock42Stack2 := recoveredBlock42Stack1.
            recoveredBlock42PC := 150.
        ].
        recoveredBlock42Step = 150 ifTrue: [
            recoveredBlock42Stack3 := recoveredLocal1.
            recoveredBlock42PC := 153.
        ].
        recoveredBlock42Step = 153 ifTrue: [
            recoveredBlock42Stack4 := 256.
            recoveredBlock42PC := 156.
        ].
        recoveredBlock42Step = 156 ifTrue: [
            recoveredBlock42Stack3 := (recoveredBlock42Stack3) // (recoveredBlock42Stack4).
            recoveredBlock42PC := 157.
        ].
        recoveredBlock42Step = 157 ifTrue: [
            recoveredBlock42Stack4 := 256.
            recoveredBlock42PC := 160.
        ].
        recoveredBlock42Step = 160 ifTrue: [
            recoveredBlock42Stack3 := (recoveredBlock42Stack3) \\ (recoveredBlock42Stack4).
            recoveredBlock42PC := 161.
        ].
        recoveredBlock42Step = 161 ifTrue: [
            recoveredBlock42Stack3 := (recoveredBlock42Stack3) asCharacter.
            recoveredBlock42PC := 163.
        ].
        recoveredBlock42Step = 163 ifTrue: [
            (recoveredBlock42Stack2) nextPut: (recoveredBlock42Stack3).
            recoveredBlock42PC := 165.
        ].
        recoveredBlock42Step = 165 ifTrue: [
            recoveredBlock42Stack2 := recoveredLocal1.
            recoveredBlock42PC := 168.
        ].
        recoveredBlock42Step = 168 ifTrue: [
            recoveredBlock42Stack3 := 65536.
            recoveredBlock42PC := 170.
        ].
        recoveredBlock42Step = 170 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) // (recoveredBlock42Stack3).
            recoveredBlock42PC := 171.
        ].
        recoveredBlock42Step = 171 ifTrue: [
            recoveredBlock42Stack3 := 256.
            recoveredBlock42PC := 174.
        ].
        recoveredBlock42Step = 174 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) \\ (recoveredBlock42Stack3).
            recoveredBlock42PC := 175.
        ].
        recoveredBlock42Step = 175 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) asCharacter.
            recoveredBlock42PC := 177.
        ].
        recoveredBlock42Step = 177 ifTrue: [
            (recoveredBlock42Stack1) nextPut: (recoveredBlock42Stack2).
            recoveredBlock42PC := 179.
        ].
        recoveredBlock42Step = 179 ifTrue: [
            recoveredBlock42Stack1 := recoveredLocal3.
            recoveredBlock42PC := 182.
        ].
        recoveredBlock42Step = 182 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) + (1).
            recoveredBlock42PC := 183.
        ].
        recoveredBlock42Step = 183 ifTrue: [
            recoveredBlock42Stack2 := recoveredBlock42Stack1.
            recoveredBlock42PC := 184.
        ].
        recoveredBlock42Step = 184 ifTrue: [
            recoveredLocal3 := recoveredBlock42Stack2.
            recoveredBlock42PC := 187.
        ].
        recoveredBlock42Step = 187 ifTrue: [
            recoveredBlock42Result := recoveredBlock42Stack1.
            recoveredBlock42Done := true.
        ].
    ].
    recoveredBlock42Result
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := recoveredLocal3.
    size := recoveredValue10.
    recoveredValue11 := recoveredLocal6.
    startIndices := recoveredValue11.
    recoveredValue12 := recoveredLocal5.
    recoveredValue13 := (recoveredValue12) contents.
    storage := recoveredValue13.
    ^self
! !

