"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200003dc; bytecode file offset 0x7c6d8"
!CgFontStruct methodsFor: 'recovered'!
firstChar
    | recoveredValue0 |
    recoveredValue0 := (self) minCharOrByte2.
    ^recoveredValue0
! !

"winsys.ic method 0x20000484; bytecode file offset 0x7c6d8"
!CgFontStruct methodsFor: 'recovered'!
lastChar
    | recoveredValue0 |
    recoveredValue0 := (self) maxCharOrByte2.
    ^recoveredValue0
! !

"winsys.ic method 0x200029a8; bytecode file offset 0x7ed00"
!CgFontStruct methodsFor: 'recovered'!
font
    | recoveredValue0 |
    recoveredValue0 := fid.
    ^recoveredValue0
! !

"winsys.ic method 0x200029d0; bytecode file offset 0x7ed00"
!CgFontStruct methodsFor: 'recovered'!
fid
    | recoveredValue0 |
    recoveredValue0 := fid.
    ^recoveredValue0
! !

"winsys.ic method 0x20002c50; bytecode file offset 0x7efc0"
!CgFontStruct methodsFor: 'recovered'!
direction
    | recoveredValue0 |
    recoveredValue0 := direction.
    ^recoveredValue0
! !

"winsys.ic method 0x20002fc8; bytecode file offset 0x7f220"
!CgFontStruct methodsFor: 'recovered'!
minCharOrByte2
    | recoveredValue0 |
    recoveredValue0 := minCharOrByte2.
    ^recoveredValue0
! !

"winsys.ic method 0x20003210; bytecode file offset 0x7f418"
!CgFontStruct methodsFor: 'recovered'!
maxCharOrByte2
    | recoveredValue0 |
    recoveredValue0 := maxCharOrByte2.
    ^recoveredValue0
! !

"winsys.ic method 0x200032a8; bytecode file offset 0x7f5b8"
!CgFontStruct methodsFor: 'recovered'!
minByte1
    | recoveredValue0 |
    recoveredValue0 := minByte1.
    ^recoveredValue0
! !

"winsys.ic method 0x20003520; bytecode file offset 0x7f720"
!CgFontStruct methodsFor: 'recovered'!
maxByte1
    | recoveredValue0 |
    recoveredValue0 := maxByte1.
    ^recoveredValue0
! !

"winsys.ic method 0x20003688; bytecode file offset 0x7f878"
!CgFontStruct methodsFor: 'recovered'!
allCharsExist
    | recoveredValue0 |
    recoveredValue0 := allCharsExist.
    ^recoveredValue0
! !

"winsys.ic method 0x20003780; bytecode file offset 0x7f9b8"
!CgFontStruct methodsFor: 'recovered'!
defaultChar
    | recoveredValue0 |
    recoveredValue0 := defaultChar.
    ^recoveredValue0
! !

"winsys.ic method 0x200038b8; bytecode file offset 0x7fac0"
!CgFontStruct methodsFor: 'recovered'!
properties
    | recoveredValue0 |
    recoveredValue0 := properties.
    ^recoveredValue0
! !

"winsys.ic method 0x200039c8; bytecode file offset 0x7fbb0"
!CgFontStruct methodsFor: 'recovered'!
minBounds
    | recoveredValue0 |
    recoveredValue0 := minBounds.
    ^recoveredValue0
! !

"winsys.ic method 0x20003a48; bytecode file offset 0x7fc78"
!CgFontStruct methodsFor: 'recovered'!
maxBounds
    | recoveredValue0 |
    recoveredValue0 := maxBounds.
    ^recoveredValue0
! !

"winsys.ic method 0x20003b94; bytecode file offset 0x7fdc4"
!CgFontStruct methodsFor: 'recovered'!
ascent
    | recoveredValue0 |
    recoveredValue0 := ascent.
    ^recoveredValue0
! !

"winsys.ic method 0x20003c80; bytecode file offset 0x7fe50"
!CgFontStruct methodsFor: 'recovered'!
descent
    | recoveredValue0 |
    recoveredValue0 := descent.
    ^recoveredValue0
! !

"winsys.ic method 0x20004ecc; bytecode file offset 0x81098"
!CgFontStruct methodsFor: 'recovered'!
logicalFontDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CgLogicalFontDescription.
    recoveredValue1 := (self) name.
    recoveredValue2 := (recoveredValue0) name: (recoveredValue1).
    ^recoveredValue2
! !

"winsys.ic method 0x20005050; bytecode file offset 0x81214"
!CgFontStruct methodsFor: 'recovered'!
defaultInfo1D
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := defaultChar.
    recoveredValue1 := (self) charInfo1D: (recoveredValue0) default: (nil).
    ^recoveredValue1
! !

"winsys.ic method 0x20005068; bytecode file offset 0x81228"
!CgFontStruct methodsFor: 'recovered'!
height
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ascent.
    recoveredValue1 := descent.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    ^recoveredValue2
! !

"winsys.ic method 0x20005434; bytecode file offset 0x815fc"
!CgFontStruct methodsFor: 'recovered'!
numChars
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) lastChar.
    recoveredValue1 := (self) firstChar.
    recoveredValue2 := (recoveredValue0) - (recoveredValue1).
    recoveredValue3 := (recoveredValue2) + (1).
    ^recoveredValue3
! !

"winsys.ic method 0x2000615c; bytecode file offset 0x8231c"
!CgFontStruct methodsFor: 'recovered'!
perCharNumColumns
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := maxCharOrByte2.
    recoveredValue1 := minCharOrByte2.
    recoveredValue2 := (recoveredValue0) - (recoveredValue1).
    recoveredValue3 := (recoveredValue2) + (1).
    ^recoveredValue3
! !

"winsys.ic method 0x2000618c; bytecode file offset 0x8234c"
!CgFontStruct methodsFor: 'recovered'!
perCharNumRows
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := maxByte1.
    recoveredValue1 := minByte1.
    recoveredValue2 := (recoveredValue0) - (recoveredValue1).
    recoveredValue3 := (recoveredValue2) + (1).
    ^recoveredValue3
! !

"winsys.ic method 0x20006af4; bytecode file offset 0x82cb8"
!CgFontStruct methodsFor: 'recovered'!
perCharAtRow: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := fid.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) charInfoForRow: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"winsys.ic method 0x2000722c; bytecode file offset 0x8346c"
!CgFontStruct methodsFor: 'recovered'!
fid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fid := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200073a4; bytecode file offset 0x836b4"
!CgFontStruct methodsFor: 'recovered'!
direction: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    direction := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000770c; bytecode file offset 0x838d4"
!CgFontStruct methodsFor: 'recovered'!
minCharOrByte2: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    minCharOrByte2 := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000778c; bytecode file offset 0x83a6c"
!CgFontStruct methodsFor: 'recovered'!
maxCharOrByte2: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    maxCharOrByte2 := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200078f0; bytecode file offset 0x83bb0"
!CgFontStruct methodsFor: 'recovered'!
minByte1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    minByte1 := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007a28; bytecode file offset 0x83ce8"
!CgFontStruct methodsFor: 'recovered'!
maxByte1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    maxByte1 := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007b78; bytecode file offset 0x83df0"
!CgFontStruct methodsFor: 'recovered'!
allCharsExist: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    allCharsExist := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007c70; bytecode file offset 0x83ed0"
!CgFontStruct methodsFor: 'recovered'!
defaultChar: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    defaultChar := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007da0; bytecode file offset 0x83f98"
!CgFontStruct methodsFor: 'recovered'!
properties: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    properties := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007e20; bytecode file offset 0x84048"
!CgFontStruct methodsFor: 'recovered'!
minBounds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    minBounds := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007f0c; bytecode file offset 0x840d4"
!CgFontStruct methodsFor: 'recovered'!
maxBounds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    maxBounds := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007fa0; bytecode file offset 0x84168"
!CgFontStruct methodsFor: 'recovered'!
perChar: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    perChar := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007ffc; bytecode file offset 0x841fc"
!CgFontStruct methodsFor: 'recovered'!
ascent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ascent := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200080a8; bytecode file offset 0x84280"
!CgFontStruct methodsFor: 'recovered'!
descent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    descent := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000acb4; bytecode file offset 0x86e78"
!CgFontStruct methodsFor: 'recovered'!
fidValid
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := fid.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := fid.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValid.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2000d150; bytecode file offset 0x89338"
!CgFontStruct methodsFor: 'recovered'!
name
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'name'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) stringPropertyAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2000d168; bytecode file offset 0x89338"
!CgFontStruct methodsFor: 'recovered'!
spacing
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'spacing'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    'P'
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) stringPropertyAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2000dd58; bytecode file offset 0x89f1c"
!CgFontStruct methodsFor: 'recovered'!
perChar
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := perChar.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) perCharAtRow: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            perChar := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := perChar.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2000e614; bytecode file offset 0x8a7e0"
!CgFontStruct methodsFor: 'recovered'!
defaultInfo2D
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := defaultChar.
    recoveredValue1 := (recoveredValue0) bitShift: (-8).
    recoveredValue2 := defaultChar.
    recoveredValue3 := (recoveredValue2) bitAnd: (255).
    recoveredValue4 := (self) charInfo2D: (recoveredValue1) col: (recoveredValue3) default: (nil).
    ^recoveredValue4
! !

"winsys.ic method 0x2000e8ec; bytecode file offset 0x8aab8"
!CgFontStruct methodsFor: 'recovered'!
hash
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) fid.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := super hash.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) fid.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) hash.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20017528; bytecode file offset 0x93704"
!CgFontStruct methodsFor: 'recovered'!
freeFont
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) fid.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := CgFont.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKindOf: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) unloadFont.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) display.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := BadFont.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2001ad00; bytecode file offset 0x96ed4"
!CgFontStruct methodsFor: 'recovered'!
stringPropertyAt: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) name.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 |
    recoveredBlock19Value0 := recoveredArg2.
    recoveredBlock19Value1 := (recoveredBlock19Value0) value.
    ^recoveredBlock19Value1
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asString.
    ^recoveredValue4
! !

"winsys.ic method 0x2001b7f0; bytecode file offset 0x979c4"
!CgFontStruct methodsFor: 'recovered'!
getFontProperty: recoveredArg1 valueReturn: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) properties.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) name.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 22] ifFalse: [recoveredBlock5PC := 32].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg2.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) card32.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            (recoveredBlock5Stack1) value: (recoveredBlock5Stack2).
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack1 := true.
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^false
! !

"winsys.ic method 0x2001d058; bytecode file offset 0x99220"
!CgFontStruct methodsFor: 'recovered'!
= recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) fid.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) fid.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) fid.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) fid.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20021f98; bytecode file offset 0x9e168"
!CgFontStruct methodsFor: 'recovered'!
charInfo1D: recoveredArg1 default: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := minCharOrByte2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := maxCharOrByte2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) fidValid.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) perChar.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := minCharOrByte2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := minBounds.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x200248ac; bytecode file offset 0xa0a78"
!CgFontStruct methodsFor: 'recovered'!
rowZeroCharInfo2D: recoveredArg1 default: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := minByte1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := minCharOrByte2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := maxCharOrByte2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) fidValid.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := perChar.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := minCharOrByte2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := minBounds.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20029be4; bytecode file offset 0xa5db4"
!CgFontStruct methodsFor: 'recovered'!
charInfo2D: recoveredArg1 col: recoveredArg2 default: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := minByte1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := maxByte1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := minCharOrByte2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := maxCharOrByte2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) fidValid.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) perChar.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := minByte1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := maxCharOrByte2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := minCharOrByte2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := minCharOrByte2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := minBounds.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2002a5fc; bytecode file offset 0xa67e0"
!CgFontStruct methodsFor: 'recovered'!
charStructsFor: recoveredArg1 do: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) fidValid.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) firstChar.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 recoveredBlock17Value5 recoveredBlock17Value6 recoveredBlock17Value7 |
    recoveredBlock17Value0 := recoveredArg2.
    recoveredBlock17Value1 := (self) perChar.
    recoveredBlock17Value2 := recoveredBlock17Arg1.
    recoveredBlock17Value3 := (recoveredBlock17Value2) asInteger.
    recoveredBlock17Value4 := recoveredLocal1.
    recoveredBlock17Value5 := (recoveredBlock17Value3) - (recoveredBlock17Value4).
    recoveredBlock17Value6 := (recoveredBlock17Value1) at: (recoveredBlock17Value5).
    recoveredBlock17Value7 := (recoveredBlock17Value0) value: (recoveredBlock17Value6).
    recoveredBlock17Value7
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) minBounds.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0 isInteger) ifTrue: [(recoveredStack0 > 0) ifTrue: [recoveredStack0 := recoveredStack0 - 1. recoveredPC := 60] ifFalse: [recoveredPC := 78]] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20032404; bytecode file offset 0xae5e8"
!CgFontStruct methodsFor: 'recovered'!
textWidth: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := fid.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := fid.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValidFont.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := fid.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) textWidth: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := maxByte1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultInfo1D.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultInfo2D.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Stack0 recoveredBlock56Stack1 recoveredBlock56Stack2 recoveredBlock56Stack3 recoveredBlock56Stack4 recoveredBlock56PC recoveredBlock56Step recoveredBlock56Done recoveredBlock56Result |
    recoveredBlock56Stack0 := self.
    recoveredBlock56PC := 62.
    recoveredBlock56Done := false.
    [recoveredBlock56Done not] whileTrue: [
        recoveredBlock56Step := recoveredBlock56PC.
        recoveredBlock56Step = 62 ifTrue: [
            recoveredBlock56Stack1 := recoveredLocal3.
            recoveredBlock56PC := 65.
        ].
        recoveredBlock56Step = 65 ifTrue: [
            (recoveredBlock56Stack1) ifTrue: [recoveredBlock56PC := 68] ifFalse: [recoveredBlock56PC := 84].
        ].
        recoveredBlock56Step = 68 ifTrue: [
            recoveredBlock56Stack1 := self.
            recoveredBlock56PC := 69.
        ].
        recoveredBlock56Step = 69 ifTrue: [
            recoveredBlock56Stack2 := recoveredBlock56Arg1.
            recoveredBlock56PC := 70.
        ].
        recoveredBlock56Step = 70 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) asInteger.
            recoveredBlock56PC := 72.
        ].
        recoveredBlock56Step = 72 ifTrue: [
            recoveredBlock56Stack3 := recoveredLocal2.
            recoveredBlock56PC := 75.
        ].
        recoveredBlock56Step = 75 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) charInfo1D: (recoveredBlock56Stack2) default: (recoveredBlock56Stack3).
            recoveredBlock56PC := 77.
        ].
        recoveredBlock56Step = 77 ifTrue: [
            recoveredLocal1 := recoveredBlock56Stack1.
            recoveredBlock56PC := 80.
        ].
        recoveredBlock56Step = 80 ifTrue: [
            recoveredBlock56PC := 96.
        ].
        recoveredBlock56Step = 84 ifTrue: [
            recoveredBlock56Stack1 := self.
            recoveredBlock56PC := 85.
        ].
        recoveredBlock56Step = 85 ifTrue: [
            recoveredBlock56Stack2 := recoveredBlock56Arg1.
            recoveredBlock56PC := 86.
        ].
        recoveredBlock56Step = 86 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) asInteger.
            recoveredBlock56PC := 88.
        ].
        recoveredBlock56Step = 88 ifTrue: [
            recoveredBlock56Stack3 := recoveredLocal2.
            recoveredBlock56PC := 91.
        ].
        recoveredBlock56Step = 91 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) rowZeroCharInfo2D: (recoveredBlock56Stack2) default: (recoveredBlock56Stack3).
            recoveredBlock56PC := 93.
        ].
        recoveredBlock56Step = 93 ifTrue: [
            recoveredLocal1 := recoveredBlock56Stack1.
            recoveredBlock56PC := 96.
        ].
        recoveredBlock56Step = 96 ifTrue: [
            recoveredBlock56Stack1 := nil.
            recoveredBlock56PC := 97.
        ].
        recoveredBlock56Step = 97 ifTrue: [
            recoveredBlock56Stack2 := recoveredLocal1.
            recoveredBlock56PC := 100.
        ].
        recoveredBlock56Step = 100 ifTrue: [
            (recoveredBlock56Stack2 == nil) ifTrue: [recoveredBlock56PC := 118] ifFalse: [recoveredBlock56PC := 104].
        ].
        recoveredBlock56Step = 104 ifTrue: [
            recoveredBlock56PC := 105.
        ].
        recoveredBlock56Step = 105 ifTrue: [
            recoveredBlock56Stack1 := recoveredLocal4.
            recoveredBlock56PC := 108.
        ].
        recoveredBlock56Step = 108 ifTrue: [
            recoveredBlock56Stack2 := recoveredLocal1.
            recoveredBlock56PC := 111.
        ].
        recoveredBlock56Step = 111 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) width.
            recoveredBlock56PC := 113.
        ].
        recoveredBlock56Step = 113 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) + (recoveredBlock56Stack2).
            recoveredBlock56PC := 114.
        ].
        recoveredBlock56Step = 114 ifTrue: [
            recoveredBlock56Stack2 := recoveredBlock56Stack1.
            recoveredBlock56PC := 115.
        ].
        recoveredBlock56Step = 115 ifTrue: [
            recoveredLocal4 := recoveredBlock56Stack2.
            recoveredBlock56PC := 118.
        ].
        recoveredBlock56Step = 118 ifTrue: [
            recoveredBlock56Result := recoveredBlock56Stack1.
            recoveredBlock56Done := true.
        ].
    ].
    recoveredBlock56Result
].
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2003bc1c; bytecode file offset 0xb7e58"
!CgFontStruct methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) nextPut: ($().
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) cr.
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := (self) direction.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := ('direction: ') , (recoveredValue8).
    (recoveredValue6) nextPutAll: (recoveredValue9).
    recoveredValue10 := recoveredValue0.
    (recoveredValue10) cr.
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := (self) minCharOrByte2.
    recoveredValue13 := (recoveredValue12) printString.
    recoveredValue14 := ('minCharOrByte2: ') , (recoveredValue13).
    (recoveredValue11) nextPutAll: (recoveredValue14).
    recoveredValue15 := recoveredValue0.
    (recoveredValue15) cr.
    recoveredValue16 := recoveredValue0.
    recoveredValue17 := (self) maxCharOrByte2.
    recoveredValue18 := (recoveredValue17) printString.
    recoveredValue19 := ('maxCharOrByte2: ') , (recoveredValue18).
    (recoveredValue16) nextPutAll: (recoveredValue19).
    recoveredValue20 := recoveredValue0.
    (recoveredValue20) cr.
    recoveredValue21 := recoveredValue0.
    recoveredValue22 := (self) minByte1.
    recoveredValue23 := (recoveredValue22) printString.
    recoveredValue24 := ('minByte1: ') , (recoveredValue23).
    (recoveredValue21) nextPutAll: (recoveredValue24).
    recoveredValue25 := recoveredValue0.
    (recoveredValue25) cr.
    recoveredValue26 := recoveredValue0.
    recoveredValue27 := (self) maxByte1.
    recoveredValue28 := (recoveredValue27) printString.
    recoveredValue29 := ('maxByte1: ') , (recoveredValue28).
    (recoveredValue26) nextPutAll: (recoveredValue29).
    recoveredValue30 := recoveredValue0.
    (recoveredValue30) cr.
    recoveredValue31 := recoveredValue0.
    recoveredValue32 := (self) allCharsExist.
    recoveredValue33 := (recoveredValue32) printString.
    recoveredValue34 := ('allCharsExist: ') , (recoveredValue33).
    (recoveredValue31) nextPutAll: (recoveredValue34).
    recoveredValue35 := recoveredValue0.
    (recoveredValue35) cr.
    recoveredValue36 := recoveredValue0.
    recoveredValue37 := (self) defaultChar.
    recoveredValue38 := (recoveredValue37) printString.
    recoveredValue39 := ('defaultChar: ') , (recoveredValue38).
    (recoveredValue36) nextPutAll: (recoveredValue39).
    recoveredValue40 := recoveredValue0.
    (recoveredValue40) cr.
    recoveredValue41 := recoveredValue0.
    recoveredValue42 := (self) properties.
    recoveredValue43 := (recoveredValue42) printString.
    recoveredValue44 := ('properties: ') , (recoveredValue43).
    (recoveredValue41) nextPutAll: (recoveredValue44).
    recoveredValue45 := recoveredValue0.
    (recoveredValue45) cr.
    recoveredValue46 := recoveredValue0.
    recoveredValue47 := (self) minBounds.
    recoveredValue48 := (recoveredValue47) printString.
    recoveredValue49 := ('minBounds: ') , (recoveredValue48).
    (recoveredValue46) nextPutAll: (recoveredValue49).
    recoveredValue50 := recoveredValue0.
    (recoveredValue50) cr.
    recoveredValue51 := recoveredValue0.
    recoveredValue52 := (self) maxBounds.
    recoveredValue53 := (recoveredValue52) printString.
    recoveredValue54 := ('maxBounds: ') , (recoveredValue53).
    (recoveredValue51) nextPutAll: (recoveredValue54).
    recoveredValue55 := recoveredValue0.
    (recoveredValue55) cr.
    recoveredValue56 := recoveredValue0.
    recoveredValue57 := (self) ascent.
    recoveredValue58 := (recoveredValue57) printString.
    recoveredValue59 := ('ascent: ') , (recoveredValue58).
    (recoveredValue56) nextPutAll: (recoveredValue59).
    recoveredValue60 := recoveredValue0.
    (recoveredValue60) cr.
    recoveredValue61 := recoveredValue0.
    recoveredValue62 := (self) descent.
    recoveredValue63 := (recoveredValue62) printString.
    recoveredValue64 := ('descent: ') , (recoveredValue63).
    (recoveredValue61) nextPutAll: (recoveredValue64).
    (recoveredValue0) nextPut: ($)).
    ^self
! !

"winsys.ic method 0x200418ac; bytecode file offset 0xbdab0"
!CgFontStruct methodsFor: 'recovered'!
textExtents: recoveredArg1 directionReturn: recoveredArg2 fontAscentReturn: recoveredArg3 fontDescentReturn: recoveredArg4 overallReturn: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := direction.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := ascent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := descent.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := maxByte1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal9 := recoveredStack2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultInfo1D.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultInfo2D.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := [:recoveredBlock59Arg1 | 
    | recoveredBlock59Stack0 recoveredBlock59Stack1 recoveredBlock59Stack2 recoveredBlock59Stack3 recoveredBlock59Stack4 recoveredBlock59PC recoveredBlock59Step recoveredBlock59Done recoveredBlock59Result |
    recoveredBlock59Stack0 := self.
    recoveredBlock59PC := 66.
    recoveredBlock59Done := false.
    [recoveredBlock59Done not] whileTrue: [
        recoveredBlock59Step := recoveredBlock59PC.
        recoveredBlock59Step = 66 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal9.
            recoveredBlock59PC := 69.
        ].
        recoveredBlock59Step = 69 ifTrue: [
            (recoveredBlock59Stack1) ifTrue: [recoveredBlock59PC := 72] ifFalse: [recoveredBlock59PC := 86].
        ].
        recoveredBlock59Step = 72 ifTrue: [
            recoveredBlock59Stack1 := self.
            recoveredBlock59PC := 73.
        ].
        recoveredBlock59Step = 73 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Arg1.
            recoveredBlock59PC := 74.
        ].
        recoveredBlock59Step = 74 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) asInteger.
            recoveredBlock59PC := 75.
        ].
        recoveredBlock59Step = 75 ifTrue: [
            recoveredBlock59Stack3 := recoveredLocal8.
            recoveredBlock59PC := 78.
        ].
        recoveredBlock59Step = 78 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) charInfo1D: (recoveredBlock59Stack2) default: (recoveredBlock59Stack3).
            recoveredBlock59PC := 80.
        ].
        recoveredBlock59Step = 80 ifTrue: [
            recoveredLocal7 := recoveredBlock59Stack1.
            recoveredBlock59PC := 83.
        ].
        recoveredBlock59Step = 83 ifTrue: [
            recoveredBlock59PC := 97.
        ].
        recoveredBlock59Step = 86 ifTrue: [
            recoveredBlock59Stack1 := self.
            recoveredBlock59PC := 87.
        ].
        recoveredBlock59Step = 87 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Arg1.
            recoveredBlock59PC := 88.
        ].
        recoveredBlock59Step = 88 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) asInteger.
            recoveredBlock59PC := 89.
        ].
        recoveredBlock59Step = 89 ifTrue: [
            recoveredBlock59Stack3 := recoveredLocal8.
            recoveredBlock59PC := 92.
        ].
        recoveredBlock59Step = 92 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) rowZeroCharInfo2D: (recoveredBlock59Stack2) default: (recoveredBlock59Stack3).
            recoveredBlock59PC := 94.
        ].
        recoveredBlock59Step = 94 ifTrue: [
            recoveredLocal7 := recoveredBlock59Stack1.
            recoveredBlock59PC := 97.
        ].
        recoveredBlock59Step = 97 ifTrue: [
            recoveredBlock59Stack1 := nil.
            recoveredBlock59PC := 98.
        ].
        recoveredBlock59Step = 98 ifTrue: [
            recoveredBlock59Stack2 := recoveredLocal7.
            recoveredBlock59PC := 101.
        ].
        recoveredBlock59Step = 101 ifTrue: [
            (recoveredBlock59Stack2 == nil) ifTrue: [recoveredBlock59PC := 237] ifFalse: [recoveredBlock59PC := 104].
        ].
        recoveredBlock59Step = 104 ifTrue: [
            recoveredBlock59PC := 105.
        ].
        recoveredBlock59Step = 105 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal1.
            recoveredBlock59PC := 108.
        ].
        recoveredBlock59Step = 108 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) + (1).
            recoveredBlock59PC := 109.
        ].
        recoveredBlock59Step = 109 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Stack1.
            recoveredBlock59PC := 110.
        ].
        recoveredBlock59Step = 110 ifTrue: [
            recoveredLocal1 := recoveredBlock59Stack2.
            recoveredBlock59PC := 113.
        ].
        recoveredBlock59Step = 113 ifTrue: [
            recoveredBlock59Stack2 := 1.
            recoveredBlock59PC := 115.
        ].
        recoveredBlock59Step = 115 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) = (recoveredBlock59Stack2).
            recoveredBlock59PC := 116.
        ].
        recoveredBlock59Step = 116 ifTrue: [
            (recoveredBlock59Stack1) ifTrue: [recoveredBlock59PC := 120] ifFalse: [recoveredBlock59PC := 164].
        ].
        recoveredBlock59Step = 120 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal7.
            recoveredBlock59PC := 123.
        ].
        recoveredBlock59Step = 123 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) ascent.
            recoveredBlock59PC := 125.
        ].
        recoveredBlock59Step = 125 ifTrue: [
            recoveredLocal6 := recoveredBlock59Stack1.
            recoveredBlock59PC := 128.
        ].
        recoveredBlock59Step = 128 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal7.
            recoveredBlock59PC := 131.
        ].
        recoveredBlock59Step = 131 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) descent.
            recoveredBlock59PC := 133.
        ].
        recoveredBlock59Step = 133 ifTrue: [
            recoveredLocal5 := recoveredBlock59Stack1.
            recoveredBlock59PC := 136.
        ].
        recoveredBlock59Step = 136 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal7.
            recoveredBlock59PC := 139.
        ].
        recoveredBlock59Step = 139 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) lbearing.
            recoveredBlock59PC := 141.
        ].
        recoveredBlock59Step = 141 ifTrue: [
            recoveredLocal4 := recoveredBlock59Stack1.
            recoveredBlock59PC := 144.
        ].
        recoveredBlock59Step = 144 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal7.
            recoveredBlock59PC := 147.
        ].
        recoveredBlock59Step = 147 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) rbearing.
            recoveredBlock59PC := 149.
        ].
        recoveredBlock59Step = 149 ifTrue: [
            recoveredLocal3 := recoveredBlock59Stack1.
            recoveredBlock59PC := 152.
        ].
        recoveredBlock59Step = 152 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal7.
            recoveredBlock59PC := 155.
        ].
        recoveredBlock59Step = 155 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) width.
            recoveredBlock59PC := 157.
        ].
        recoveredBlock59Step = 157 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Stack1.
            recoveredBlock59PC := 158.
        ].
        recoveredBlock59Step = 158 ifTrue: [
            recoveredLocal2 := recoveredBlock59Stack2.
            recoveredBlock59PC := 161.
        ].
        recoveredBlock59Step = 161 ifTrue: [
            recoveredBlock59PC := 237.
        ].
        recoveredBlock59Step = 164 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal6.
            recoveredBlock59PC := 167.
        ].
        recoveredBlock59Step = 167 ifTrue: [
            recoveredBlock59Stack2 := recoveredLocal7.
            recoveredBlock59PC := 170.
        ].
        recoveredBlock59Step = 170 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) ascent.
            recoveredBlock59PC := 172.
        ].
        recoveredBlock59Step = 172 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) max: (recoveredBlock59Stack2).
            recoveredBlock59PC := 174.
        ].
        recoveredBlock59Step = 174 ifTrue: [
            recoveredLocal6 := recoveredBlock59Stack1.
            recoveredBlock59PC := 177.
        ].
        recoveredBlock59Step = 177 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal5.
            recoveredBlock59PC := 180.
        ].
        recoveredBlock59Step = 180 ifTrue: [
            recoveredBlock59Stack2 := recoveredLocal7.
            recoveredBlock59PC := 183.
        ].
        recoveredBlock59Step = 183 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) descent.
            recoveredBlock59PC := 185.
        ].
        recoveredBlock59Step = 185 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) max: (recoveredBlock59Stack2).
            recoveredBlock59PC := 187.
        ].
        recoveredBlock59Step = 187 ifTrue: [
            recoveredLocal5 := recoveredBlock59Stack1.
            recoveredBlock59PC := 190.
        ].
        recoveredBlock59Step = 190 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal4.
            recoveredBlock59PC := 193.
        ].
        recoveredBlock59Step = 193 ifTrue: [
            recoveredBlock59Stack2 := recoveredLocal2.
            recoveredBlock59PC := 196.
        ].
        recoveredBlock59Step = 196 ifTrue: [
            recoveredBlock59Stack3 := recoveredLocal7.
            recoveredBlock59PC := 199.
        ].
        recoveredBlock59Step = 199 ifTrue: [
            recoveredBlock59Stack3 := (recoveredBlock59Stack3) lbearing.
            recoveredBlock59PC := 201.
        ].
        recoveredBlock59Step = 201 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) + (recoveredBlock59Stack3).
            recoveredBlock59PC := 202.
        ].
        recoveredBlock59Step = 202 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) min: (recoveredBlock59Stack2).
            recoveredBlock59PC := 204.
        ].
        recoveredBlock59Step = 204 ifTrue: [
            recoveredLocal4 := recoveredBlock59Stack1.
            recoveredBlock59PC := 207.
        ].
        recoveredBlock59Step = 207 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal3.
            recoveredBlock59PC := 210.
        ].
        recoveredBlock59Step = 210 ifTrue: [
            recoveredBlock59Stack2 := recoveredLocal2.
            recoveredBlock59PC := 213.
        ].
        recoveredBlock59Step = 213 ifTrue: [
            recoveredBlock59Stack3 := recoveredLocal7.
            recoveredBlock59PC := 216.
        ].
        recoveredBlock59Step = 216 ifTrue: [
            recoveredBlock59Stack3 := (recoveredBlock59Stack3) rbearing.
            recoveredBlock59PC := 218.
        ].
        recoveredBlock59Step = 218 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) + (recoveredBlock59Stack3).
            recoveredBlock59PC := 219.
        ].
        recoveredBlock59Step = 219 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) max: (recoveredBlock59Stack2).
            recoveredBlock59PC := 221.
        ].
        recoveredBlock59Step = 221 ifTrue: [
            recoveredLocal3 := recoveredBlock59Stack1.
            recoveredBlock59PC := 224.
        ].
        recoveredBlock59Step = 224 ifTrue: [
            recoveredBlock59Stack1 := recoveredLocal2.
            recoveredBlock59PC := 227.
        ].
        recoveredBlock59Step = 227 ifTrue: [
            recoveredBlock59Stack2 := recoveredLocal7.
            recoveredBlock59PC := 230.
        ].
        recoveredBlock59Step = 230 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) width.
            recoveredBlock59PC := 232.
        ].
        recoveredBlock59Step = 232 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) + (recoveredBlock59Stack2).
            recoveredBlock59PC := 233.
        ].
        recoveredBlock59Step = 233 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Stack1.
            recoveredBlock59PC := 234.
        ].
        recoveredBlock59Step = 234 ifTrue: [
            recoveredLocal2 := recoveredBlock59Stack2.
            recoveredBlock59PC := 237.
        ].
        recoveredBlock59Step = 237 ifTrue: [
            recoveredBlock59Result := recoveredBlock59Stack1.
            recoveredBlock59Done := true.
        ].
    ].
    recoveredBlock59Result
].
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 250] ifFalse: [recoveredPC := 271].
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := fid.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 294] ifFalse: [recoveredPC := 276].
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := fid.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValidFont.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 284] ifFalse: [recoveredPC := 294].
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := fid.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := (recoveredStack1) textWidth: (recoveredStack2).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack6 := recoveredLocal5.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack7 := 0.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            (recoveredStack1) lbearing: (recoveredStack2) rbearing: (recoveredStack3) width: (recoveredStack4) ascent: (recoveredStack5) descent: (recoveredStack6) attributes: (recoveredStack7).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

