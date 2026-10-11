"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20002be8; bytecode file offset 0x7efc0"
!CgTIFFFileFormat methodsFor: 'recovered'!
compression
    | recoveredValue0 |
    recoveredValue0 := compression.
    ^recoveredValue0
! !

"winsys.ic method 0x20002eb0; bytecode file offset 0x7f220"
!CgTIFFFileFormat methodsFor: 'recovered'!
colorScheme
    | recoveredValue0 |
    recoveredValue0 := colorScheme.
    ^recoveredValue0
! !

"winsys.ic method 0x20003148; bytecode file offset 0x7f418"
!CgTIFFFileFormat methodsFor: 'recovered'!
predictor
    | recoveredValue0 |
    recoveredValue0 := predictor.
    ^recoveredValue0
! !

"winsys.ic method 0x200074cc; bytecode file offset 0x836b4"
!CgTIFFFileFormat methodsFor: 'recovered'!
compression: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    compression := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200076bc; bytecode file offset 0x838d4"
!CgTIFFFileFormat methodsFor: 'recovered'!
colorScheme: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    colorScheme := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000787c; bytecode file offset 0x83a6c"
!CgTIFFFileFormat methodsFor: 'recovered'!
predictor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    predictor := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000ee30; bytecode file offset 0x8b000"
!CgTIFFFileFormat methodsFor: 'recovered'!
writeTag: recoveredArg1 tag: recoveredArg2
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeStruct: (recoveredStack2) swap: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x200138c0; bytecode file offset 0x8fa94"
!CgTIFFFileFormat methodsFor: 'recovered'!
initialize
    super initialize.
    (self) compression: (1).
    (self) colorScheme: (3).
    (self) predictor: (1).
    ^self
! !

"winsys.ic method 0x20017860; bytecode file offset 0x93a28"
!CgTIFFFileFormat methodsFor: 'recovered'!
tagValue: recoveredArg1 tag: recoveredArg2 default: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [
    | recoveredBlock10Value0 |
    recoveredBlock10Value0 := recoveredArg3.
    ^recoveredBlock10Value0
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) value.
    ^recoveredValue5
! !

"winsys.ic method 0x2001a0f8; bytecode file offset 0x962cc"
!CgTIFFFileFormat methodsFor: 'recovered'!
tagValue: recoveredArg1 tag: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := CgFileFormat.
    recoveredBlock10Value1 := (recoveredBlock10Value0) exception.
    recoveredBlock10Value2 := (recoveredBlock10Value1) signalWith: (17).
    ^recoveredBlock10Value2
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) value.
    ^recoveredValue5
! !

"winsys.ic method 0x200250c0; bytecode file offset 0xa12a0"
!CgTIFFFileFormat methodsFor: 'recovered'!
greyPalette: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := 65535.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := CgRGBColor.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack7 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := (recoveredStack4) red: (recoveredStack5) green: (recoveredStack6) blue: (recoveredStack7).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 18] ifFalse: [recoveredLocal1 := nil. recoveredPC := 53]] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := CgIndexedPalette.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) colors: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x200259e4; bytecode file offset 0xa1bd8"
!CgTIFFFileFormat methodsFor: 'recovered'!
writeTags: recoveredArg1 tags: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'w'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeFormat: (recoveredStack2) values: (recoveredStack3) swap: (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := [:recoveredBlock42Arg1 | 
    | recoveredBlock42Value0 recoveredBlock42Value1 recoveredBlock42Value2 recoveredBlock42Value3 recoveredBlock42Value4 |
    recoveredBlock42Value0 := recoveredArg1.
    recoveredBlock42Value1 := recoveredArg2.
    recoveredBlock42Value2 := recoveredBlock42Arg1.
    recoveredBlock42Value3 := (recoveredBlock42Value1) at: (recoveredBlock42Value2).
    recoveredBlock42Value4 := (self) writeTag: (recoveredBlock42Value0) tag: (recoveredBlock42Value3).
    recoveredBlock42Value4
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20025b38; bytecode file offset 0xa1d18"
!CgTIFFFileFormat methodsFor: 'recovered'!
greyInvPalette: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 65535.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := 65535.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := CgRGBColor.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack7 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) red: (recoveredStack5) green: (recoveredStack6) blue: (recoveredStack7).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 18] ifFalse: [recoveredLocal1 := nil. recoveredPC := 56]] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := CgIndexedPalette.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) colors: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20025fcc; bytecode file offset 0xa21ac"
!CgTIFFFileFormat methodsFor: 'recovered'!
colorPaletteFromBytes: recoveredArg1 numColors: recoveredArg2 colorSize: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := CgRGBColor.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack7 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack8 := recoveredArg3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack7 := (recoveredStack7) + (recoveredStack8).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack6 := (recoveredStack6) at: (recoveredStack7).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack7 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack8 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack9 := recoveredArg3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack8 := (recoveredStack8) + (recoveredStack9).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack9 := recoveredArg3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack8 := (recoveredStack8) + (recoveredStack9).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack7 := (recoveredStack7) at: (recoveredStack8).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := (recoveredStack4) red: (recoveredStack5) green: (recoveredStack6) blue: (recoveredStack7).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 16] ifFalse: [recoveredLocal1 := nil. recoveredPC := 57]] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := CgIndexedPalette.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) colors: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2002660c; bytecode file offset 0xa27f0"
!CgTIFFFileFormat methodsFor: 'recovered'!
swapTiffHeader: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) version.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) bitShift: (8).
    recoveredValue5 := (recoveredValue4) bitAnd: (65280).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) bitShift: (-8).
    recoveredValue8 := (recoveredValue7) bitAnd: (255).
    recoveredValue9 := (recoveredValue5) + (recoveredValue8).
    (recoveredValue2) version: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) directoryOffset.
    recoveredLocal2 := recoveredValue11.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := (recoveredValue13) bitShift: (-24).
    recoveredValue15 := (recoveredValue14) bitAnd: (255).
    recoveredValue16 := recoveredLocal2.
    recoveredValue17 := (recoveredValue16) bitShift: (-8).
    recoveredValue18 := (recoveredValue17) bitAnd: (65280).
    recoveredValue19 := (recoveredValue15) + (recoveredValue18).
    recoveredValue20 := recoveredLocal2.
    recoveredValue21 := (recoveredValue20) bitShift: (8).
    recoveredValue22 := (recoveredValue21) bitAnd: (16711680).
    recoveredValue23 := (recoveredValue19) + (recoveredValue22).
    recoveredValue24 := recoveredLocal2.
    recoveredValue25 := (recoveredValue24) bitShift: (24).
    recoveredValue26 := (recoveredValue25) bitAnd: (4278190080).
    recoveredValue27 := (recoveredValue23) + (recoveredValue26).
    (recoveredValue12) directoryOffset: (recoveredValue27).
    ^self
! !

"winsys.ic method 0x20028aec; bytecode file offset 0xa4cd8"
!CgTIFFFileFormat methodsFor: 'recovered'!
loadTags: recoveredArg1 numTags: recoveredArg2 swap: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) getTIFFTagFrom: (recoveredStack3) swap: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) dataType.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := CgByteTag.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := CgRationalTag.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := CgFileFormat.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) exception.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := 12.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) signalWith: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) tag.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 16] ifFalse: [recoveredLocal1 := nil. recoveredPC := 72]] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20028d94; bytecode file offset 0xa4f8c"
!CgTIFFFileFormat methodsFor: 'recovered'!
writeArray: recoveredArg1 to: recoveredArg2 withTag: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) frequency: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) formatChar.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) atAllPut: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack2) frequency: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) position.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) tagOffset: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeFormat: (recoveredStack2) values: (recoveredStack3) swap: (recoveredStack4).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2002aa14; bytecode file offset 0xa6bdc"
!CgTIFFFileFormat methodsFor: 'recovered'!
swapRedAndBlue: recoveredArg1 width: recoveredArg2 height: recoveredArg3 bytesPerLine: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack6 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack7 := 2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (recoveredStack7).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack2 isInteger) ifTrue: [(recoveredStack2 > 0) ifTrue: [recoveredStack2 := recoveredStack2 - 1. recoveredPC := 24] ifFalse: [recoveredPC := 65]] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) >= (recoveredStack4).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 14] ifFalse: [recoveredLocal1 := nil. recoveredPC := 80]] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20030b64; bytecode file offset 0xacd60"
!CgTIFFFileFormat methodsFor: 'recovered'!
getTIFFTagFrom: recoveredArg1 swap: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CgTIFFTag.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) fixedSize.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) read: (recoveredStack2) startingAt: (recoveredStack3) nbyte: (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 9.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := CgTIFFTag.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 'wwd'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) swap: (recoveredStack2) bytes: (recoveredStack3) startingAt: (recoveredStack4).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) frequency.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) typeSize.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := 'w'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := 9.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) swap: (recoveredStack2) bytes: (recoveredStack3) startingAt: (recoveredStack4).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := 'd'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack4 := 9.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) swap: (recoveredStack2) bytes: (recoveredStack3) startingAt: (recoveredStack4).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20031a48; bytecode file offset 0xadc44"
!CgTIFFFileFormat methodsFor: 'recovered'!
loadInfoHeader: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := CgTIFFInfoHeader.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) readStruct: (recoveredStack2) swap: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 13.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) format.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := TiffIntelFormat.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := TiffMotorolaFormat.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 13.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) bigEndian.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := TiffIntelFormat.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) bigEndian.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := TiffMotorolaFormat.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) swapTiffHeader: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) version.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := TiffVersion.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 13.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20032aac; bytecode file offset 0xaec90"
!CgTIFFFileFormat methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
decompressPackBitsData: recoveredArg1 srcOffset: recoveredArg2 numBytes: recoveredArg3 dest: recoveredArg4 destOffset: recoveredArg5 destSize: recoveredArg6
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CgServer.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := NlsCatCGa.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 46.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexedMsg: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) warning: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 117.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 128.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 257.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) withObject: (recoveredStack4).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 117.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) with: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 123].
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := recoveredArg5.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20033790; bytecode file offset 0xaf978"
!CgTIFFFileFormat methodsFor: 'recovered'!
bitsPerSample: recoveredArg1 tags: recoveredArg2 swap: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := CgTBitsPerSample.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [
    ^1
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) frequency.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) readArrayTag: (recoveredStack2) tag: (recoveredStack3) swap: (recoveredStack4).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := CgFileFormat.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := (recoveredStack3) exception.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := 17.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := (recoveredStack3) signalWith: (recoveredStack4).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack3
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 66] ifFalse: [recoveredPC := 125]] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 121] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20034200; bytecode file offset 0xb0400"
!CgTIFFFileFormat methodsFor: 'recovered'!
unloadData: recoveredArg1 image: recoveredArg2 tags: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) depth.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 7.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := TiffStripMaxSize.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := TiffStripMaxSize.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := CgTRowsPerStrip.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) compression.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := TiffPackBits.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack7 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) unloadDataPackBits: (recoveredStack1) image: (recoveredStack2) bpl: (recoveredStack3) rowsPerStrip: (recoveredStack4) numStrips: (recoveredStack5) stripOffsets: (recoveredStack6) stripSizes: (recoveredStack7).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 112.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack7 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) unloadDataUncompressed: (recoveredStack1) image: (recoveredStack2) bpl: (recoveredStack3) rowsPerStrip: (recoveredStack4) numStrips: (recoveredStack5) stripOffsets: (recoveredStack6) stripSizes: (recoveredStack7).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack4 := CgTStripOffsets.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) writeArray: (recoveredStack1) to: (recoveredStack2) withTag: (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := CgTStripByteCounts.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) writeArray: (recoveredStack1) to: (recoveredStack2) withTag: (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20036830; bytecode file offset 0xb2a3c"
!CgTIFFFileFormat methodsFor: 'recovered'!
readArrayTag: recoveredArg1 tag: recoveredArg2 swap: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) frequency.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 17.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataType.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := CgByteTag.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := $b.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) atAllPut: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataType.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := CgShortTag.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := $w.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) atAllPut: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataType.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := CgLongTag.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := $d.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) atAllPut: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 17.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := (recoveredStack2) tagOffset.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := SEEKSET.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) lseek: (recoveredStack2) whence: (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 133] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := 7.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) readFormat: (recoveredStack2) swap: (recoveredStack3).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 155] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := 9.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20036cf8; bytecode file offset 0xb2ef8"
!CgTIFFFileFormat methodsFor: 'recovered'!
unloadPalette: recoveredArg1 palette: recoveredArg2 tags: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack5 := (recoveredStack5) red.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack3) uint16At: (recoveredStack4) put: (recoveredStack5).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack5 := (recoveredStack5) green.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack3) uint16At: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack4 := (recoveredStack4) blue.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack2) uint16At: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 50] ifFalse: [recoveredLocal1 := nil. recoveredPC := 109]] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 107] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := CgTColormap.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack2) frequency: (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := (recoveredStack2) position.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) tagOffset: (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) write: (recoveredStack2) startingAt: (recoveredStack3) nbyte: (recoveredStack4).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 157] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 157 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20037fa0; bytecode file offset 0xb419c"
!CgTIFFFileFormat methodsFor: 'recovered'!
loadDataPackBits: recoveredArg1 data: recoveredArg2 stripOffsets: recoveredArg3 stripSizes: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredLocal4 := 0.
    recoveredValue0 := recoveredArg4.
    recoveredValue1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredLocal4.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) max: (recoveredBlock12Value1).
    recoveredBlock12Value3 := recoveredBlock12Value2.
    recoveredLocal4 := recoveredBlock12Value3.
    recoveredBlock12Value2
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := System.
    (recoveredValue2) scavenge.
    recoveredValue3 := ByteArray.
    recoveredValue4 := recoveredLocal4.
    recoveredValue5 := (recoveredValue3) new: (recoveredValue4).
    recoveredLocal3 := recoveredValue5.
    recoveredLocal2 := 0.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := recoveredArg4.
    recoveredValue8 := [:recoveredBlock55Arg1 :recoveredBlock55Arg2 | 
    | recoveredBlock55Stack0 recoveredBlock55Stack1 recoveredBlock55Stack2 recoveredBlock55Stack3 recoveredBlock55Stack4 recoveredBlock55Stack5 recoveredBlock55Stack6 recoveredBlock55Stack7 recoveredBlock55PC recoveredBlock55Step recoveredBlock55Done recoveredBlock55Result |
    recoveredBlock55Stack0 := self.
    recoveredBlock55PC := 62.
    recoveredBlock55Done := false.
    [recoveredBlock55Done not] whileTrue: [
        recoveredBlock55Step := recoveredBlock55PC.
        recoveredBlock55Step = 62 ifTrue: [
            recoveredBlock55Stack1 := recoveredArg1.
            recoveredBlock55PC := 65.
        ].
        recoveredBlock55Step = 65 ifTrue: [
            recoveredBlock55Stack2 := recoveredBlock55Arg1.
            recoveredBlock55PC := 66.
        ].
        recoveredBlock55Step = 66 ifTrue: [
            recoveredBlock55Stack3 := SEEKSET.
            recoveredBlock55PC := 68.
        ].
        recoveredBlock55Step = 68 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) lseek: (recoveredBlock55Stack2) whence: (recoveredBlock55Stack3).
            recoveredBlock55PC := 70.
        ].
        recoveredBlock55Step = 70 ifTrue: [
            (recoveredBlock55Stack1) ifTrue: [recoveredBlock55PC := 83] ifFalse: [recoveredBlock55PC := 74].
        ].
        recoveredBlock55Step = 74 ifTrue: [
            recoveredBlock55Stack1 := CgFileFormat.
            recoveredBlock55PC := 76.
        ].
        recoveredBlock55Step = 76 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) exception.
            recoveredBlock55PC := 78.
        ].
        recoveredBlock55Step = 78 ifTrue: [
            recoveredBlock55Stack2 := 7.
            recoveredBlock55PC := 80.
        ].
        recoveredBlock55Step = 80 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) signalWith: (recoveredBlock55Stack2).
            recoveredBlock55PC := 82.
        ].
        recoveredBlock55Step = 82 ifTrue: [
            ^recoveredBlock55Stack1
        ].
        recoveredBlock55Step = 83 ifTrue: [
            recoveredBlock55Stack1 := recoveredArg1.
            recoveredBlock55PC := 86.
        ].
        recoveredBlock55Step = 86 ifTrue: [
            recoveredBlock55Stack2 := recoveredLocal3.
            recoveredBlock55PC := 89.
        ].
        recoveredBlock55Step = 89 ifTrue: [
            recoveredBlock55Stack3 := 1.
            recoveredBlock55PC := 91.
        ].
        recoveredBlock55Step = 91 ifTrue: [
            recoveredBlock55Stack4 := recoveredBlock55Arg2.
            recoveredBlock55PC := 92.
        ].
        recoveredBlock55Step = 92 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) read: (recoveredBlock55Stack2) startingAt: (recoveredBlock55Stack3) nbyte: (recoveredBlock55Stack4).
            recoveredBlock55PC := 95.
        ].
        recoveredBlock55Step = 95 ifTrue: [
            recoveredBlock55Stack2 := recoveredBlock55Arg2.
            recoveredBlock55PC := 96.
        ].
        recoveredBlock55Step = 96 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) = (recoveredBlock55Stack2).
            recoveredBlock55PC := 97.
        ].
        recoveredBlock55Step = 97 ifTrue: [
            (recoveredBlock55Stack1) ifTrue: [recoveredBlock55PC := 109] ifFalse: [recoveredBlock55PC := 100].
        ].
        recoveredBlock55Step = 100 ifTrue: [
            recoveredBlock55Stack1 := CgFileFormat.
            recoveredBlock55PC := 102.
        ].
        recoveredBlock55Step = 102 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) exception.
            recoveredBlock55PC := 104.
        ].
        recoveredBlock55Step = 104 ifTrue: [
            recoveredBlock55Stack2 := 9.
            recoveredBlock55PC := 106.
        ].
        recoveredBlock55Step = 106 ifTrue: [
            recoveredBlock55Stack1 := (recoveredBlock55Stack1) signalWith: (recoveredBlock55Stack2).
            recoveredBlock55PC := 108.
        ].
        recoveredBlock55Step = 108 ifTrue: [
            ^recoveredBlock55Stack1
        ].
        recoveredBlock55Step = 109 ifTrue: [
            recoveredBlock55Stack1 := recoveredLocal3.
            recoveredBlock55PC := 112.
        ].
        recoveredBlock55Step = 112 ifTrue: [
            recoveredBlock55Stack2 := 0.
            recoveredBlock55PC := 114.
        ].
        recoveredBlock55Step = 114 ifTrue: [
            recoveredBlock55Stack3 := recoveredBlock55Arg2.
            recoveredBlock55PC := 115.
        ].
        recoveredBlock55Step = 115 ifTrue: [
            recoveredBlock55Stack4 := recoveredArg2.
            recoveredBlock55PC := 118.
        ].
        recoveredBlock55Step = 118 ifTrue: [
            recoveredBlock55Stack5 := recoveredLocal2.
            recoveredBlock55PC := 121.
        ].
        recoveredBlock55Step = 121 ifTrue: [
            recoveredBlock55Stack6 := recoveredArg2.
            recoveredBlock55PC := 124.
        ].
        recoveredBlock55Step = 124 ifTrue: [
            recoveredBlock55Stack6 := (recoveredBlock55Stack6) size.
            recoveredBlock55PC := 126.
        ].
        recoveredBlock55Step = 126 ifTrue: [
            recoveredBlock55Stack0 := (recoveredBlock55Stack0) decompressPackBitsData: (recoveredBlock55Stack1) srcOffset: (recoveredBlock55Stack2) numBytes: (recoveredBlock55Stack3) dest: (recoveredBlock55Stack4) destOffset: (recoveredBlock55Stack5) destSize: (recoveredBlock55Stack6).
            recoveredBlock55PC := 129.
        ].
        recoveredBlock55Step = 129 ifTrue: [
            recoveredLocal1 := recoveredBlock55Stack0.
            recoveredBlock55PC := 132.
        ].
        recoveredBlock55Step = 132 ifTrue: [
            recoveredBlock55Stack0 := recoveredLocal1.
            recoveredBlock55PC := 135.
        ].
        recoveredBlock55Step = 135 ifTrue: [
            recoveredBlock55Stack1 := 0.
            recoveredBlock55PC := 137.
        ].
        recoveredBlock55Step = 137 ifTrue: [
            recoveredBlock55Stack0 := (recoveredBlock55Stack0) < (recoveredBlock55Stack1).
            recoveredBlock55PC := 138.
        ].
        recoveredBlock55Step = 138 ifTrue: [
            (recoveredBlock55Stack0) ifTrue: [recoveredBlock55PC := 142] ifFalse: [recoveredBlock55PC := 151].
        ].
        recoveredBlock55Step = 142 ifTrue: [
            recoveredBlock55Stack0 := CgFileFormat.
            recoveredBlock55PC := 144.
        ].
        recoveredBlock55Step = 144 ifTrue: [
            recoveredBlock55Stack0 := (recoveredBlock55Stack0) exception.
            recoveredBlock55PC := 146.
        ].
        recoveredBlock55Step = 146 ifTrue: [
            recoveredBlock55Stack1 := 17.
            recoveredBlock55PC := 148.
        ].
        recoveredBlock55Step = 148 ifTrue: [
            recoveredBlock55Stack0 := (recoveredBlock55Stack0) signalWith: (recoveredBlock55Stack1).
            recoveredBlock55PC := 150.
        ].
        recoveredBlock55Step = 150 ifTrue: [
            ^recoveredBlock55Stack0
        ].
        recoveredBlock55Step = 151 ifTrue: [
            recoveredBlock55Stack0 := recoveredLocal2.
            recoveredBlock55PC := 154.
        ].
        recoveredBlock55Step = 154 ifTrue: [
            recoveredBlock55Stack1 := recoveredLocal1.
            recoveredBlock55PC := 157.
        ].
        recoveredBlock55Step = 157 ifTrue: [
            recoveredBlock55Stack0 := (recoveredBlock55Stack0) + (recoveredBlock55Stack1).
            recoveredBlock55PC := 158.
        ].
        recoveredBlock55Step = 158 ifTrue: [
            recoveredBlock55Stack1 := recoveredBlock55Stack0.
            recoveredBlock55PC := 159.
        ].
        recoveredBlock55Step = 159 ifTrue: [
            recoveredLocal2 := recoveredBlock55Stack1.
            recoveredBlock55PC := 162.
        ].
        recoveredBlock55Step = 162 ifTrue: [
            recoveredBlock55Result := recoveredBlock55Stack0.
            recoveredBlock55Done := true.
        ].
    ].
    recoveredBlock55Result
].
    (recoveredValue6) with: (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    ^recoveredValue9
! !

"winsys.ic method 0x2003b264; bytecode file offset 0xb7464"
!CgTIFFFileFormat methodsFor: 'recovered'!
unloadDataUncompressed: recoveredArg1 image: recoveredArg2 bpl: recoveredArg3 rowsPerStrip: recoveredArg4 numStrips: recoveredArg5 stripOffsets: recoveredArg6 stripSizes: recoveredArg7
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) bytesPerLine.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 177.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) height.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) min: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack6 := recoveredArg3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (-1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack6 := recoveredLocal9.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack7 := recoveredLocal4.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack3) replaceFrom: (recoveredStack4) to: (recoveredStack5) with: (recoveredStack6) startingAt: (recoveredStack7).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := recoveredLocal8.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack2 isInteger) ifTrue: [(recoveredStack2 > 0) ifTrue: [recoveredStack2 := recoveredStack2 - 1. recoveredPC := 64] ifFalse: [recoveredPC := 98]] ifFalse: [recoveredPC := 91].
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := (recoveredStack3) >= (recoveredStack4).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := (recoveredStack2) depth.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := 24.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack4 := (recoveredStack4) width.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack6 := recoveredArg3.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack2) swapRedAndBlue: (recoveredStack3) width: (recoveredStack4) height: (recoveredStack5) bytesPerLine: (recoveredStack6).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := recoveredArg6.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack4 := (recoveredStack4) position.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := (recoveredStack2) write: (recoveredStack3) startingAt: (recoveredStack4) nbyte: (recoveredStack5).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 171] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := CgFileFormat.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := (recoveredStack2) exception.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := (recoveredStack2) signalWith: (recoveredStack3).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := recoveredArg7.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 36] ifFalse: [recoveredLocal1 := nil. recoveredPC := 194]] ifFalse: [recoveredPC := 183].
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 192] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2003c81c; bytecode file offset 0xb89fc"
!CgTIFFFileFormat methodsFor: 'recovered'!
"VM primitive/special entry 0x15; native fast path not reconstructed; fallback bytecodes follow."
compressPackBitsData: recoveredArg1 srcOffset: recoveredArg2 numBytes: recoveredArg3 dest: recoveredArg4 destOffset: recoveredArg5 destSize: recoveredArg6
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CgServer.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := NlsCatCGa.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 45.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexedMsg: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) warning: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 188.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := 127.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack4 := 257.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack4 := (recoveredStack4) - (recoveredStack5).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredPC := 188.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := 127.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 200].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := recoveredArg5.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2003e1ac; bytecode file offset 0xba3b4"
!CgTIFFFileFormat methodsFor: 'recovered'!
unloadDataPackBits: recoveredArg1 image: recoveredArg2 bpl: recoveredArg3 rowsPerStrip: recoveredArg4 numStrips: recoveredArg5 stripOffsets: recoveredArg6 stripSizes: recoveredArg7
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) bytesPerLine.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 221.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) height.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) min: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 100.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack6 := recoveredArg3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (-1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack6 := recoveredLocal10.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack7 := recoveredLocal4.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack3) replaceFrom: (recoveredStack4) to: (recoveredStack5) with: (recoveredStack6) startingAt: (recoveredStack7).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack2 isInteger) ifTrue: [(recoveredStack2 > 0) ifTrue: [recoveredStack2 := recoveredStack2 - 1. recoveredPC := 76] ifFalse: [recoveredPC := 110]] ifFalse: [recoveredPC := 103].
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := (recoveredStack3) >= (recoveredStack4).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) depth.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := 24.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack4 := (recoveredStack4) width.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack6 := recoveredArg3.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack2) swapRedAndBlue: (recoveredStack3) width: (recoveredStack4) height: (recoveredStack5) bytesPerLine: (recoveredStack6).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredArg6.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack4 := (recoveredStack4) position.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack6 := recoveredLocal5.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack5 := (recoveredStack5) * (recoveredStack6).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack6 := recoveredLocal7.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack7 := 0.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack8 := recoveredLocal7.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack8 := (recoveredStack8) size.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := (recoveredStack2) compressPackBitsData: (recoveredStack3) srcOffset: (recoveredStack4) numBytes: (recoveredStack5) dest: (recoveredStack6) destOffset: (recoveredStack7) destSize: (recoveredStack8).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 191].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := CgFileFormat.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := (recoveredStack2) exception.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := (recoveredStack2) signalWith: (recoveredStack3).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := (recoveredStack2) write: (recoveredStack3) startingAt: (recoveredStack4) nbyte: (recoveredStack5).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 215] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := CgFileFormat.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := (recoveredStack2) exception.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := (recoveredStack2) signalWith: (recoveredStack3).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := recoveredArg7.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 48] ifFalse: [recoveredLocal1 := nil. recoveredPC := 238]] ifFalse: [recoveredPC := 227].
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 236] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2003e550; bytecode file offset 0xba750"
!CgTIFFFileFormat methodsFor: 'recovered'!
loadDataUncompressed: recoveredArg1 data: recoveredArg2 stripOffsets: recoveredArg3 stripSizes: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredLocal3.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) max: (recoveredBlock12Value1).
    recoveredBlock12Value3 := recoveredBlock12Value2.
    recoveredLocal3 := recoveredBlock12Value3.
    recoveredBlock12Value2
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 65536.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := [:recoveredBlock61Arg1 :recoveredBlock61Arg2 | 
    | recoveredBlock61Stack0 recoveredBlock61Stack1 recoveredBlock61Stack2 recoveredBlock61Stack3 recoveredBlock61Stack4 recoveredBlock61Stack5 recoveredBlock61PC recoveredBlock61Step recoveredBlock61Done recoveredBlock61Result |
    recoveredBlock61Stack0 := self.
    recoveredBlock61PC := 68.
    recoveredBlock61Done := false.
    [recoveredBlock61Done not] whileTrue: [
        recoveredBlock61Step := recoveredBlock61PC.
        recoveredBlock61Step = 68 ifTrue: [
            recoveredBlock61Stack1 := recoveredArg1.
            recoveredBlock61PC := 71.
        ].
        recoveredBlock61Step = 71 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Arg1.
            recoveredBlock61PC := 72.
        ].
        recoveredBlock61Step = 72 ifTrue: [
            recoveredBlock61Stack3 := SEEKSET.
            recoveredBlock61PC := 74.
        ].
        recoveredBlock61Step = 74 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) lseek: (recoveredBlock61Stack2) whence: (recoveredBlock61Stack3).
            recoveredBlock61PC := 76.
        ].
        recoveredBlock61Step = 76 ifTrue: [
            (recoveredBlock61Stack1) ifTrue: [recoveredBlock61PC := 89] ifFalse: [recoveredBlock61PC := 80].
        ].
        recoveredBlock61Step = 80 ifTrue: [
            recoveredBlock61Stack1 := CgFileFormat.
            recoveredBlock61PC := 82.
        ].
        recoveredBlock61Step = 82 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) exception.
            recoveredBlock61PC := 84.
        ].
        recoveredBlock61Step = 84 ifTrue: [
            recoveredBlock61Stack2 := 7.
            recoveredBlock61PC := 86.
        ].
        recoveredBlock61Step = 86 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) signalWith: (recoveredBlock61Stack2).
            recoveredBlock61PC := 88.
        ].
        recoveredBlock61Step = 88 ifTrue: [
            ^recoveredBlock61Stack1
        ].
        recoveredBlock61Step = 89 ifTrue: [
            recoveredBlock61Stack1 := recoveredArg1.
            recoveredBlock61PC := 92.
        ].
        recoveredBlock61Step = 92 ifTrue: [
            recoveredBlock61Stack2 := recoveredArg2.
            recoveredBlock61PC := 95.
        ].
        recoveredBlock61Step = 95 ifTrue: [
            recoveredBlock61Stack3 := recoveredLocal2.
            recoveredBlock61PC := 98.
        ].
        recoveredBlock61Step = 98 ifTrue: [
            recoveredBlock61Stack4 := recoveredBlock61Arg2.
            recoveredBlock61PC := 99.
        ].
        recoveredBlock61Step = 99 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) read: (recoveredBlock61Stack2) startingAt: (recoveredBlock61Stack3) nbyte: (recoveredBlock61Stack4).
            recoveredBlock61PC := 102.
        ].
        recoveredBlock61Step = 102 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Arg2.
            recoveredBlock61PC := 103.
        ].
        recoveredBlock61Step = 103 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) = (recoveredBlock61Stack2).
            recoveredBlock61PC := 104.
        ].
        recoveredBlock61Step = 104 ifTrue: [
            (recoveredBlock61Stack1) ifTrue: [recoveredBlock61PC := 117] ifFalse: [recoveredBlock61PC := 108].
        ].
        recoveredBlock61Step = 108 ifTrue: [
            recoveredBlock61Stack1 := CgFileFormat.
            recoveredBlock61PC := 110.
        ].
        recoveredBlock61Step = 110 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) exception.
            recoveredBlock61PC := 112.
        ].
        recoveredBlock61Step = 112 ifTrue: [
            recoveredBlock61Stack2 := 9.
            recoveredBlock61PC := 114.
        ].
        recoveredBlock61Step = 114 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) signalWith: (recoveredBlock61Stack2).
            recoveredBlock61PC := 116.
        ].
        recoveredBlock61Step = 116 ifTrue: [
            ^recoveredBlock61Stack1
        ].
        recoveredBlock61Step = 117 ifTrue: [
            recoveredBlock61Stack1 := recoveredLocal2.
            recoveredBlock61PC := 120.
        ].
        recoveredBlock61Step = 120 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Arg2.
            recoveredBlock61PC := 121.
        ].
        recoveredBlock61Step = 121 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) + (recoveredBlock61Stack2).
            recoveredBlock61PC := 122.
        ].
        recoveredBlock61Step = 122 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Stack1.
            recoveredBlock61PC := 123.
        ].
        recoveredBlock61Step = 123 ifTrue: [
            recoveredLocal2 := recoveredBlock61Stack2.
            recoveredBlock61PC := 126.
        ].
        recoveredBlock61Step = 126 ifTrue: [
            recoveredBlock61Result := recoveredBlock61Stack1.
            recoveredBlock61Done := true.
        ].
    ].
    recoveredBlock61Result
].
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) with: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredPC := 243.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1) scavenge.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := [:recoveredBlock157Arg1 :recoveredBlock157Arg2 | 
    | recoveredBlock157Stack0 recoveredBlock157Stack1 recoveredBlock157Stack2 recoveredBlock157Stack3 recoveredBlock157Stack4 recoveredBlock157Stack5 recoveredBlock157Stack6 recoveredBlock157PC recoveredBlock157Step recoveredBlock157Done recoveredBlock157Result |
    recoveredBlock157Stack0 := self.
    recoveredBlock157PC := 164.
    recoveredBlock157Done := false.
    [recoveredBlock157Done not] whileTrue: [
        recoveredBlock157Step := recoveredBlock157PC.
        recoveredBlock157Step = 164 ifTrue: [
            recoveredBlock157Stack1 := recoveredArg1.
            recoveredBlock157PC := 167.
        ].
        recoveredBlock157Step = 167 ifTrue: [
            recoveredBlock157Stack2 := recoveredBlock157Arg1.
            recoveredBlock157PC := 168.
        ].
        recoveredBlock157Step = 168 ifTrue: [
            recoveredBlock157Stack3 := SEEKSET.
            recoveredBlock157PC := 170.
        ].
        recoveredBlock157Step = 170 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) lseek: (recoveredBlock157Stack2) whence: (recoveredBlock157Stack3).
            recoveredBlock157PC := 172.
        ].
        recoveredBlock157Step = 172 ifTrue: [
            (recoveredBlock157Stack1) ifTrue: [recoveredBlock157PC := 185] ifFalse: [recoveredBlock157PC := 176].
        ].
        recoveredBlock157Step = 176 ifTrue: [
            recoveredBlock157Stack1 := CgFileFormat.
            recoveredBlock157PC := 178.
        ].
        recoveredBlock157Step = 178 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) exception.
            recoveredBlock157PC := 180.
        ].
        recoveredBlock157Step = 180 ifTrue: [
            recoveredBlock157Stack2 := 7.
            recoveredBlock157PC := 182.
        ].
        recoveredBlock157Step = 182 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) signalWith: (recoveredBlock157Stack2).
            recoveredBlock157PC := 184.
        ].
        recoveredBlock157Step = 184 ifTrue: [
            ^recoveredBlock157Stack1
        ].
        recoveredBlock157Step = 185 ifTrue: [
            recoveredBlock157Stack1 := recoveredArg1.
            recoveredBlock157PC := 188.
        ].
        recoveredBlock157Step = 188 ifTrue: [
            recoveredBlock157Stack2 := recoveredLocal1.
            recoveredBlock157PC := 191.
        ].
        recoveredBlock157Step = 191 ifTrue: [
            recoveredBlock157Stack3 := 1.
            recoveredBlock157PC := 193.
        ].
        recoveredBlock157Step = 193 ifTrue: [
            recoveredBlock157Stack4 := recoveredBlock157Arg2.
            recoveredBlock157PC := 194.
        ].
        recoveredBlock157Step = 194 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) read: (recoveredBlock157Stack2) startingAt: (recoveredBlock157Stack3) nbyte: (recoveredBlock157Stack4).
            recoveredBlock157PC := 197.
        ].
        recoveredBlock157Step = 197 ifTrue: [
            recoveredBlock157Stack2 := recoveredBlock157Arg2.
            recoveredBlock157PC := 198.
        ].
        recoveredBlock157Step = 198 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) = (recoveredBlock157Stack2).
            recoveredBlock157PC := 199.
        ].
        recoveredBlock157Step = 199 ifTrue: [
            (recoveredBlock157Stack1) ifTrue: [recoveredBlock157PC := 211] ifFalse: [recoveredBlock157PC := 202].
        ].
        recoveredBlock157Step = 202 ifTrue: [
            recoveredBlock157Stack1 := CgFileFormat.
            recoveredBlock157PC := 204.
        ].
        recoveredBlock157Step = 204 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) exception.
            recoveredBlock157PC := 206.
        ].
        recoveredBlock157Step = 206 ifTrue: [
            recoveredBlock157Stack2 := 9.
            recoveredBlock157PC := 208.
        ].
        recoveredBlock157Step = 208 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) signalWith: (recoveredBlock157Stack2).
            recoveredBlock157PC := 210.
        ].
        recoveredBlock157Step = 210 ifTrue: [
            ^recoveredBlock157Stack1
        ].
        recoveredBlock157Step = 211 ifTrue: [
            recoveredBlock157Stack1 := recoveredArg2.
            recoveredBlock157PC := 214.
        ].
        recoveredBlock157Step = 214 ifTrue: [
            recoveredBlock157Stack2 := recoveredLocal2.
            recoveredBlock157PC := 217.
        ].
        recoveredBlock157Step = 217 ifTrue: [
            recoveredBlock157Stack3 := recoveredLocal2.
            recoveredBlock157PC := 220.
        ].
        recoveredBlock157Step = 220 ifTrue: [
            recoveredBlock157Stack4 := recoveredBlock157Arg2.
            recoveredBlock157PC := 221.
        ].
        recoveredBlock157Step = 221 ifTrue: [
            recoveredBlock157Stack3 := (recoveredBlock157Stack3) + (recoveredBlock157Stack4).
            recoveredBlock157PC := 222.
        ].
        recoveredBlock157Step = 222 ifTrue: [
            recoveredBlock157Stack3 := (recoveredBlock157Stack3) + (-1).
            recoveredBlock157PC := 223.
        ].
        recoveredBlock157Step = 223 ifTrue: [
            recoveredBlock157Stack4 := recoveredLocal1.
            recoveredBlock157PC := 226.
        ].
        recoveredBlock157Step = 226 ifTrue: [
            recoveredBlock157Stack5 := 1.
            recoveredBlock157PC := 228.
        ].
        recoveredBlock157Step = 228 ifTrue: [
            (recoveredBlock157Stack1) replaceFrom: (recoveredBlock157Stack2) to: (recoveredBlock157Stack3) with: (recoveredBlock157Stack4) startingAt: (recoveredBlock157Stack5).
            recoveredBlock157PC := 231.
        ].
        recoveredBlock157Step = 231 ifTrue: [
            recoveredBlock157Stack1 := recoveredLocal2.
            recoveredBlock157PC := 234.
        ].
        recoveredBlock157Step = 234 ifTrue: [
            recoveredBlock157Stack2 := recoveredBlock157Arg2.
            recoveredBlock157PC := 235.
        ].
        recoveredBlock157Step = 235 ifTrue: [
            recoveredBlock157Stack1 := (recoveredBlock157Stack1) + (recoveredBlock157Stack2).
            recoveredBlock157PC := 236.
        ].
        recoveredBlock157Step = 236 ifTrue: [
            recoveredBlock157Stack2 := recoveredBlock157Stack1.
            recoveredBlock157PC := 237.
        ].
        recoveredBlock157Step = 237 ifTrue: [
            recoveredLocal2 := recoveredBlock157Stack2.
            recoveredBlock157PC := 240.
        ].
        recoveredBlock157Step = 240 ifTrue: [
            recoveredBlock157Result := recoveredBlock157Stack1.
            recoveredBlock157Done := true.
        ].
    ].
    recoveredBlock157Result
].
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack1) with: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2003e914; bytecode file offset 0xbab2c"
!CgTIFFFileFormat methodsFor: 'recovered'!
loadData: recoveredArg1 tags: recoveredArg2 image: recoveredArg3 compression: recoveredArg4 swap: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := CgTStripOffsets.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 |
    recoveredBlock9Value0 := CgFileFormat.
    recoveredBlock9Value1 := (recoveredBlock9Value0) exception.
    recoveredBlock9Value2 := (recoveredBlock9Value1) signalWith: (17).
    ^recoveredBlock9Value2
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) readArrayTag: (recoveredStack1) tag: (recoveredStack2) swap: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := CgTStripByteCounts.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) readArrayTag: (recoveredStack1) tag: (recoveredStack2) swap: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := #(0).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) depth.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 7.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 145] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := CgFileFormat.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) exception.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := 17.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := TiffNoCompression.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := (recoveredStack2) data.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) loadDataUncompressed: (recoveredStack1) data: (recoveredStack2) stripOffsets: (recoveredStack3) stripSizes: (recoveredStack4).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredPC := 215.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := TiffPackBits.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 208].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := (recoveredStack2) data.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack0) loadDataPackBits: (recoveredStack1) data: (recoveredStack2) stripOffsets: (recoveredStack3) stripSizes: (recoveredStack4).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredPC := 215.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := CgFileFormat.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := (recoveredStack0) exception.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := 14.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := (recoveredStack0) depth.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := 24.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 250].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := (recoveredStack2) width.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack3 := (recoveredStack3) height.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack4 := (recoveredStack4) bytesPerLine.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack0) swapRedAndBlue: (recoveredStack1) width: (recoveredStack2) height: (recoveredStack3) bytesPerLine: (recoveredStack4).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20040d48; bytecode file offset 0xbcf68"
!CgTIFFFileFormat methodsFor: 'recovered'!
loadPalette: recoveredArg1 tags: recoveredArg2 swap: recoveredArg3 depth: recoveredArg4 photoInterp: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitShift: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := TiffRGBColor.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := CgDirectPalette.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 255.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := 65280.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := 16711680.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) redMask: (recoveredStack2) greenMask: (recoveredStack3) blueMask: (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := TiffPaletteColor.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := CgTColormap.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 |
    recoveredBlock51Value0 := CgFileFormat.
    recoveredBlock51Value1 := (recoveredBlock51Value0) exception.
    recoveredBlock51Value2 := (recoveredBlock51Value1) signalWith: (17).
    ^recoveredBlock51Value2
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) readArrayTag: (recoveredStack2) tag: (recoveredStack3) swap: (recoveredStack4).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataType.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := CgByteTag.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredPC := 133.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack6 := 257.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack5 := (recoveredStack5) * (recoveredStack6).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 110] ifFalse: [recoveredPC := 161]] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 157] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := 256.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := 256.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) colorPaletteFromBytes: (recoveredStack2) numColors: (recoveredStack3) colorSize: (recoveredStack4).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := TiffGreyscale.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 244] ifFalse: [recoveredPC := 234].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack2 := TiffTranspMask.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 244] ifFalse: [recoveredPC := 269].
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := 256.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 254] ifFalse: [recoveredPC := 262].
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := 256.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := (recoveredStack1) greyPalette: (recoveredStack2).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := TiffInvGreyscale.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 278] ifFalse: [recoveredPC := 303].
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := 256.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 288] ifFalse: [recoveredPC := 296].
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := 256.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := (recoveredStack1) greyInvPalette: (recoveredStack2).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack2 := 17.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x200428e4; bytecode file offset 0xbeb6c"
!CgTIFFFileFormat methodsFor: 'recovered'!
unload: recoveredArg1 intoByteStream: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := #(1 4 8 24).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) depth.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := CgFileFormat.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) exception.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 15.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) compression.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := TiffNoCompression.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) compression.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := TiffPackBits.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := CgFileFormat.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) exception.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 14.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := TiffGreyscale.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := TiffInvGreyscale.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := TiffRGBColor.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := TiffPaletteColor.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := TiffTranspMask.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) colorScheme.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := CgFileFormat.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) exception.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := 16.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) palette.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) depth.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := 24.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := CgDirectPalette.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKindOf: (recoveredStack1).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) redMask.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := 255.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) greenMask.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := 65280.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) blueMask.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := 16711680.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 159] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := CgFileFormat.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) exception.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := 15.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 159 ifTrue: [
            recoveredPC := 179.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := CgIndexedPalette.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKindOf: (recoveredStack1).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 179] ifFalse: [recoveredPC := 170].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := CgFileFormat.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) exception.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := 15.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := CgTiffInfoHeaderSize.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := SEEKSET.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := (recoveredStack0) lseek: (recoveredStack1) whence: (recoveredStack2).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 199] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := CgFileFormat.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) exception.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := 7.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := (recoveredStack0) createTiffTags: (recoveredStack1) image: (recoveredStack2).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := CgTColormap.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 216] ifFalse: [recoveredPC := 227].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := (recoveredStack2) palette.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack0) unloadPalette: (recoveredStack1) palette: (recoveredStack2) tags: (recoveredStack3).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack0) unloadData: (recoveredStack1) image: (recoveredStack2) tags: (recoveredStack3).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := (recoveredStack0) position.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack0) writeTags: (recoveredStack1) tags: (recoveredStack2).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := 'd'.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := #(0).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeFormat: (recoveredStack1) values: (recoveredStack2) swap: (recoveredStack3).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 273] ifFalse: [recoveredPC := 264].
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := CgFileFormat.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := (recoveredStack0) exception.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := SEEKSET.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack0) lseek: (recoveredStack1) whence: (recoveredStack2).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack0 := CgTIFFInfoHeader.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack0 := (recoveredStack0) bigEndian.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 294] ifFalse: [recoveredPC := 302].
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := TiffMotorolaFormat.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack0) format: (recoveredStack1).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredPC := 307.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := TiffIntelFormat.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            (recoveredStack0) format: (recoveredStack1).
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := TiffVersion.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack0) version: (recoveredStack1).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            (recoveredStack0) directoryOffset: (recoveredStack1).
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeStruct: (recoveredStack1) swap: (recoveredStack2).
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 335] ifFalse: [recoveredPC := 326].
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := CgFileFormat.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := (recoveredStack0) exception.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20044568; bytecode file offset 0xc07b0"
!CgTIFFFileFormat methodsFor: 'recovered'!
createTiffTags: recoveredArg1 image: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := CgTImageWidth.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := CgTIFFTag.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack5 := CgTImageWidth.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack4) tag: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := CgShortTag.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack4) dataType: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack4) frequency: (recoveredStack5).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := (recoveredStack4) width.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := CgTImageLength.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := CgTIFFTag.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack5 := CgTImageLength.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack4) tag: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := CgShortTag.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack4) dataType: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack4) frequency: (recoveredStack5).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := (recoveredStack4) height.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) depth.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 24.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) depth.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 138.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) position.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 127.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := 'w'.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack4 := #[8].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack5 := false.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := (recoveredStack2) writeFormat: (recoveredStack3) values: (recoveredStack4) swap: (recoveredStack5).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 127] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := CgFileFormat.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := (recoveredStack2) exception.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := 8.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) signalWith: (recoveredStack3).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1 isInteger) ifTrue: [(recoveredStack1 > 0) ifTrue: [recoveredStack1 := recoveredStack1 - 1. recoveredPC := 102] ifFalse: [recoveredPC := 137]] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 137].
        ].
        recoveredStep = 137 ifTrue: [
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := CgTBitsPerSample.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := CgTIFFTag.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack5 := CgTBitsPerSample.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack4) tag: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack5 := CgShortTag.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack4) dataType: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack4) frequency: (recoveredStack5).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := CgTCompression.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack3 := CgTIFFTag.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack5 := CgTCompression.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack4) tag: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack5 := CgShortTag.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack4) dataType: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack4) frequency: (recoveredStack5).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack4 := (recoveredStack4) compression.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := (recoveredStack1) depth.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := 24.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 208].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := TiffRGBColor.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredPC := 212.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) colorScheme.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := CgTPhotometricInterpretation.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := CgTIFFTag.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack5 := CgTPhotometricInterpretation.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack4) tag: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack4) dataType: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack4) frequency: (recoveredStack5).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack3 := (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := CgTStripOffsets.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack3 := CgTIFFTag.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack5 := CgTStripOffsets.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack4) tag: (recoveredStack5).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack4 := CgLongTag.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack3 := (recoveredStack3) dataType: (recoveredStack4).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := (recoveredStack1) depth.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := 24.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 266] ifFalse: [recoveredPC := 272].
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredPC := 275.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := CgTSamplesPerPixel.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack3 := CgTIFFTag.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack5 := CgTSamplesPerPixel.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            (recoveredStack4) tag: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack5 := CgShortTag.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack4) dataType: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack4) frequency: (recoveredStack5).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack3 := (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack2 := CgTRowsPerStrip.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack3 := CgTIFFTag.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack5 := CgTRowsPerStrip.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack4) tag: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack5 := CgLongTag.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            (recoveredStack4) dataType: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            (recoveredStack4) frequency: (recoveredStack5).
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack4 := (recoveredStack4) height.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack3 := (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack2 := CgTStripByteCounts.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack3 := CgTIFFTag.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack5 := CgTStripByteCounts.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            (recoveredStack4) tag: (recoveredStack5).
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack4 := CgLongTag.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack3 := (recoveredStack3) dataType: (recoveredStack4).
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack2 := TiffPaletteColor.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 354] ifFalse: [recoveredPC := 371].
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack2 := CgTColormap.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack3 := CgTIFFTag.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack5 := CgTColormap.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            (recoveredStack4) tag: (recoveredStack5).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack4 := CgShortTag.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack3 := (recoveredStack3) dataType: (recoveredStack4).
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20045a9c; bytecode file offset 0xc1ce8"
!CgTIFFFileFormat methodsFor: 'recovered'!
loadFromByteStream: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadInfoHeader: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal14 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal13 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) directoryOffset.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := SEEKSET.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) lseek: (recoveredStack1) whence: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := CgFileFormat.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) exception.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 7.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 'w'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) readFormat: (recoveredStack1) swap: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := CgFileFormat.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) exception.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := 9.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadTags: (recoveredStack1) numTags: (recoveredStack2) swap: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := CgTImageWidth.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) tagValue: (recoveredStack1) tag: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := CgTImageLength.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) tagValue: (recoveredStack1) tag: (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 161].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := CgFileFormat.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) exception.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := 17.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitsPerSample: (recoveredStack1) tags: (recoveredStack2) swap: (recoveredStack3).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := CgTSamplesPerPixel.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := (recoveredStack0) tagValue: (recoveredStack1) tag: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := #(#(1 1) #(4 1) #(8 1) #(8 3)).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := [:recoveredBlock193Arg1 | 
    | recoveredBlock193Stack0 recoveredBlock193Stack1 recoveredBlock193Stack2 recoveredBlock193Stack3 recoveredBlock193Stack4 recoveredBlock193PC recoveredBlock193Step recoveredBlock193Done recoveredBlock193Result |
    recoveredBlock193Stack0 := self.
    recoveredBlock193PC := 200.
    recoveredBlock193Done := false.
    [recoveredBlock193Done not] whileTrue: [
        recoveredBlock193Step := recoveredBlock193PC.
        recoveredBlock193Step = 200 ifTrue: [
            recoveredBlock193Stack1 := false.
            recoveredBlock193PC := 201.
        ].
        recoveredBlock193Step = 201 ifTrue: [
            recoveredBlock193Stack2 := recoveredBlock193Arg1.
            recoveredBlock193PC := 202.
        ].
        recoveredBlock193Step = 202 ifTrue: [
            recoveredBlock193Stack3 := 1.
            recoveredBlock193PC := 204.
        ].
        recoveredBlock193Step = 204 ifTrue: [
            recoveredBlock193Stack2 := (recoveredBlock193Stack2) at: (recoveredBlock193Stack3).
            recoveredBlock193PC := 205.
        ].
        recoveredBlock193Step = 205 ifTrue: [
            recoveredBlock193Stack3 := recoveredLocal6.
            recoveredBlock193PC := 208.
        ].
        recoveredBlock193Step = 208 ifTrue: [
            recoveredBlock193Stack2 := (recoveredBlock193Stack2) = (recoveredBlock193Stack3).
            recoveredBlock193PC := 209.
        ].
        recoveredBlock193Step = 209 ifTrue: [
            (recoveredBlock193Stack2) ifTrue: [recoveredBlock193PC := 212] ifFalse: [recoveredBlock193PC := 221].
        ].
        recoveredBlock193Step = 212 ifTrue: [
            recoveredBlock193PC := 213.
        ].
        recoveredBlock193Step = 213 ifTrue: [
            recoveredBlock193Stack1 := recoveredBlock193Arg1.
            recoveredBlock193PC := 214.
        ].
        recoveredBlock193Step = 214 ifTrue: [
            recoveredBlock193Stack2 := 2.
            recoveredBlock193PC := 216.
        ].
        recoveredBlock193Step = 216 ifTrue: [
            recoveredBlock193Stack1 := (recoveredBlock193Stack1) at: (recoveredBlock193Stack2).
            recoveredBlock193PC := 217.
        ].
        recoveredBlock193Step = 217 ifTrue: [
            recoveredBlock193Stack2 := recoveredLocal5.
            recoveredBlock193PC := 220.
        ].
        recoveredBlock193Step = 220 ifTrue: [
            recoveredBlock193Stack1 := (recoveredBlock193Stack1) = (recoveredBlock193Stack2).
            recoveredBlock193PC := 221.
        ].
        recoveredBlock193Step = 221 ifTrue: [
            recoveredBlock193Result := recoveredBlock193Stack1.
            recoveredBlock193Done := true.
        ].
    ].
    recoveredBlock193Result
].
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock222Value0 recoveredBlock222Value1 recoveredBlock222Value2 |
    recoveredBlock222Value0 := CgFileFormat.
    recoveredBlock222Value1 := (recoveredBlock222Value0) exception.
    recoveredBlock222Value2 := (recoveredBlock222Value1) signalWith: (15).
    ^recoveredBlock222Value2
].
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack2 := CgTCompression.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := (recoveredStack0) tagValue: (recoveredStack1) tag: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 291] ifFalse: [recoveredPC := 272].
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := 32773.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 291] ifFalse: [recoveredPC := 282].
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack0 := CgFileFormat.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := (recoveredStack0) exception.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := 14.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack2 := CgTPhotometricInterpretation.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack0 := (recoveredStack0) tagValue: (recoveredStack1) tag: (recoveredStack2).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadPalette: (recoveredStack1) tags: (recoveredStack2) swap: (recoveredStack3) depth: (recoveredStack4) photoInterp: (recoveredStack5).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            (recoveredStack0) scavenge.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := CgDeviceIndependentImage.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack4 := recoveredLocal10.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack6 := ByteArray.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack7 := recoveredLocal8.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack8 := recoveredLocal4.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack7 := (recoveredStack7) * (recoveredStack8).
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack8 := 7.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack7 := (recoveredStack7) + (recoveredStack8).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack8 := 8.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack7 := (recoveredStack7) // (recoveredStack8).
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack8 := recoveredLocal7.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack7 := (recoveredStack7) * (recoveredStack8).
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack6 := (recoveredStack6) new: (recoveredStack7).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack0 := (recoveredStack0) width: (recoveredStack1) height: (recoveredStack2) depth: (recoveredStack3) palette: (recoveredStack4) scanlinePad: (recoveredStack5) data: (recoveredStack6).
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack5 := recoveredLocal9.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            (recoveredStack0) loadData: (recoveredStack1) tags: (recoveredStack2) image: (recoveredStack3) compression: (recoveredStack4) swap: (recoveredStack5).
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            (recoveredStack1) colorScheme: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            (recoveredStack1) compression: (recoveredStack2).
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack3 := CgTPredictor.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack1 := (recoveredStack1) tagValue: (recoveredStack2) tag: (recoveredStack3) default: (recoveredStack4).
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            (recoveredStack0) predictor: (recoveredStack1).
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

