"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20002614; bytecode file offset 0x4d578"
!Color class methodsFor: 'recovered'!
darkGray
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (Fraction) numerator: (1) denominator: (2).
    recoveredValue1 := (self) scaledIntensity: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x20004230; bytecode file offset 0x4f14c"
!Color class methodsFor: 'recovered'!
black
    | recoveredValue0 |
    recoveredValue0 := black.
    ^recoveredValue0
! !

"kernel.ic method 0x20004264; bytecode file offset 0x4f190"
!Color class methodsFor: 'recovered'!
white
    | recoveredValue0 |
    recoveredValue0 := white.
    ^recoveredValue0
! !

"kernel.ic method 0x200043e4; bytecode file offset 0x4f2f0"
!Color class methodsFor: 'recovered'!
halfIntensity
    ^128
! !

"kernel.ic method 0x20004978; bytecode file offset 0x4f884"
!Color class methodsFor: 'recovered'!
maximumIntensity
    ^255
! !

"kernel.ic method 0x200054d8; bytecode file offset 0x503e8"
!Color class methodsFor: 'recovered'!
gray
    | recoveredValue0 |
    recoveredValue0 := (self) intensity: (192).
    ^recoveredValue0
! !

"kernel.ic method 0x20007470; bytecode file offset 0x52384"
!Color class methodsFor: 'recovered'!
intensity: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) basicNew.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) initialize: (recoveredValue1) green: (recoveredValue2) blue: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x20007b04; bytecode file offset 0x52a10"
!Color class methodsFor: 'recovered'!
black: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    black := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007b20; bytecode file offset 0x52a5c"
!Color class methodsFor: 'recovered'!
white: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    white := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007f08; bytecode file offset 0x52e3c"
!Color class methodsFor: 'recovered'!
red: recoveredArg1 green: recoveredArg2 blue: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) basicNew.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) initialize: (recoveredValue1) green: (recoveredValue2) blue: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x20008f80; bytecode file offset 0x53ea4"
!Color class methodsFor: 'recovered'!
yellow
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) maximumIntensity.
    recoveredValue1 := (self) maximumIntensity.
    recoveredValue2 := (self) red: (recoveredValue0) green: (recoveredValue1) blue: (0).
    ^recoveredValue2
! !

"kernel.ic method 0x20008f90; bytecode file offset 0x53ea4"
!Color class methodsFor: 'recovered'!
darkBrown
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) halfIntensity.
    recoveredValue1 := (self) halfIntensity.
    recoveredValue2 := (self) red: (recoveredValue0) green: (recoveredValue1) blue: (0).
    ^recoveredValue2
! !

"kernel.ic method 0x20008fd4; bytecode file offset 0x53ee8"
!Color class methodsFor: 'recovered'!
darkMagenta
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) halfIntensity.
    recoveredValue1 := (self) halfIntensity.
    recoveredValue2 := (self) red: (recoveredValue0) green: (0) blue: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20008ff4; bytecode file offset 0x53f18"
!Color class methodsFor: 'recovered'!
darkRed
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) halfIntensity.
    recoveredValue1 := (self) red: (recoveredValue0) green: (0) blue: (0).
    ^recoveredValue1
! !

"kernel.ic method 0x20009004; bytecode file offset 0x53f18"
!Color class methodsFor: 'recovered'!
red
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) maximumIntensity.
    recoveredValue1 := (self) red: (recoveredValue0) green: (0) blue: (0).
    ^recoveredValue1
! !

"kernel.ic method 0x200090f0; bytecode file offset 0x54014"
!Color class methodsFor: 'recovered'!
cyan
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) maximumIntensity.
    recoveredValue1 := (self) maximumIntensity.
    recoveredValue2 := (self) red: (0) green: (recoveredValue0) blue: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20009100; bytecode file offset 0x54014"
!Color class methodsFor: 'recovered'!
darkCyan
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) halfIntensity.
    recoveredValue1 := (self) halfIntensity.
    recoveredValue2 := (self) red: (0) green: (recoveredValue0) blue: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20009120; bytecode file offset 0x54044"
!Color class methodsFor: 'recovered'!
darkGreen
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) halfIntensity.
    recoveredValue1 := (self) red: (0) green: (recoveredValue0) blue: (0).
    ^recoveredValue1
! !

"kernel.ic method 0x20009130; bytecode file offset 0x54044"
!Color class methodsFor: 'recovered'!
green
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) maximumIntensity.
    recoveredValue1 := (self) red: (0) green: (recoveredValue0) blue: (0).
    ^recoveredValue1
! !

"kernel.ic method 0x20009150; bytecode file offset 0x54074"
!Color class methodsFor: 'recovered'!
blue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) maximumIntensity.
    recoveredValue1 := (self) red: (0) green: (0) blue: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x20009160; bytecode file offset 0x54074"
!Color class methodsFor: 'recovered'!
darkBlue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) halfIntensity.
    recoveredValue1 := (self) red: (0) green: (0) blue: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x20009d0c; bytecode file offset 0x54c20"
!Color class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) basicNew.
    recoveredValue1 := (recoveredValue0) initialize: (0) green: (0) blue: (0).
    ^recoveredValue1
! !

"kernel.ic method 0x2000a4ec; bytecode file offset 0x553fc"
!Color class methodsFor: 'recovered'!
brown
    | recoveredValue0 |
    recoveredValue0 := (self) red: (165) green: (42) blue: (42).
    ^recoveredValue0
! !

"kernel.ic method 0x2000ba8c; bytecode file offset 0x5699c"
!Color class methodsFor: 'recovered'!
purple
    | recoveredValue0 |
    recoveredValue0 := (self) red: (160) green: (32) blue: (240).
    ^recoveredValue0
! !

"kernel.ic method 0x2000c180; bytecode file offset 0x5709c"
!Color class methodsFor: 'recovered'!
initializeOnLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) intensity: (0).
    (self) black: (recoveredValue0).
    recoveredValue1 := (self) maximumIntensity.
    recoveredValue2 := (self) intensity: (recoveredValue1).
    (self) white: (recoveredValue2).
    ^self
! !

"kernel.ic method 0x2000cfa4; bytecode file offset 0x57eb4"
!Color class methodsFor: 'recovered'!
lightGray
    | recoveredValue0 |
    recoveredValue0 := (self) red: (211) green: (211) blue: (211).
    ^recoveredValue0
! !

"kernel.ic method 0x2000cfc4; bytecode file offset 0x57ed4"
!Color class methodsFor: 'recovered'!
pink
    | recoveredValue0 |
    recoveredValue0 := (self) red: (255) green: (192) blue: (203).
    ^recoveredValue0
! !

"kernel.ic method 0x2000f2e0; bytecode file offset 0x5a1f8"
!Color class methodsFor: 'recovered'!
r: recoveredArg1 g: recoveredArg2 b: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) maximumIntensity.
    recoveredValue2 := (recoveredValue0) * (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asInteger.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (self) maximumIntensity.
    recoveredValue6 := (recoveredValue4) * (recoveredValue5).
    recoveredValue7 := (recoveredValue6) asInteger.
    recoveredValue8 := recoveredArg3.
    recoveredValue9 := (self) maximumIntensity.
    recoveredValue10 := (recoveredValue8) * (recoveredValue9).
    recoveredValue11 := (recoveredValue10) asInteger.
    recoveredValue12 := (self) red: (recoveredValue3) green: (recoveredValue7) blue: (recoveredValue11).
    ^recoveredValue12
! !

"kernel.ic method 0x20010d54; bytecode file offset 0x5bc74"
!Color class methodsFor: 'recovered'!
scaledIntensity: recoveredArg1
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
            recoveredStack2 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'invalid parameter'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) maximumIntensity.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) intensity: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2002e4ac; bytecode file offset 0x793e8"
!Color class methodsFor: 'recovered'!
fromString: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmptyOrNil.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Color.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) white.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := $#.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := Color.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) white.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 190.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 171.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack4 := 16.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := $0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := (recoveredStack3) <= (recoveredStack4).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := $9.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := (recoveredStack3) <= (recoveredStack4).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack4 := (recoveredStack4) value.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack5 := $0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack5 := (recoveredStack5) value.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack4 := (recoveredStack4) - (recoveredStack5).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredPC := 166.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := $A.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := (recoveredStack3) <= (recoveredStack4).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack4 := $F.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := (recoveredStack3) <= (recoveredStack4).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack4 := (recoveredStack4) value.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack5 := $A.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack5 := (recoveredStack5) value.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack4 := (recoveredStack4) - (recoveredStack5).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack5 := 10.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredPC := 166.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := Color.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack3 := (recoveredStack3) white.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            ^recoveredStack3
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack2 isInteger) ifTrue: [(recoveredStack2 > 0) ifTrue: [recoveredStack2 := recoveredStack2 - 1. recoveredPC := 80] ifFalse: [recoveredPC := 181]] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := (recoveredStack3) >= (recoveredStack4).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 181].
        ].
        recoveredStep = 181 ifTrue: [
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack1) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 72] ifFalse: [recoveredLocal3 := nil. recoveredPC := 206]] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := (recoveredStack0) red: (recoveredStack1) green: (recoveredStack2) blue: (recoveredStack3).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

