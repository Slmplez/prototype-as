"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20002cc8; bytecode file offset 0x7efc0"
!CgFontScalableEntry methodsFor: 'recovered'!
fileName
    | recoveredValue0 |
    recoveredValue0 := fileName.
    ^recoveredValue0
! !

"winsys.ic method 0x20002ec0; bytecode file offset 0x7f220"
!CgFontScalableEntry methodsFor: 'recovered'!
renderer
    | recoveredValue0 |
    recoveredValue0 := renderer.
    ^recoveredValue0
! !

"winsys.ic method 0x20003130; bytecode file offset 0x7f418"
!CgFontScalableEntry methodsFor: 'recovered'!
defaults
    | recoveredValue0 |
    recoveredValue0 := defaults.
    ^recoveredValue0
! !

"winsys.ic method 0x20003390; bytecode file offset 0x7f5b8"
!CgFontScalableEntry methodsFor: 'recovered'!
scaled
    | recoveredValue0 |
    recoveredValue0 := scaled.
    ^recoveredValue0
! !

"winsys.ic method 0x20003470; bytecode file offset 0x7f720"
!CgFontScalableEntry methodsFor: 'recovered'!
private
    | recoveredValue0 |
    recoveredValue0 := private.
    ^recoveredValue0
! !

"winsys.ic method 0x2000739c; bytecode file offset 0x836b4"
!CgFontScalableEntry methodsFor: 'recovered'!
fileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fileName := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200076ac; bytecode file offset 0x838d4"
!CgFontScalableEntry methodsFor: 'recovered'!
renderer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    renderer := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200078ac; bytecode file offset 0x83a6c"
!CgFontScalableEntry methodsFor: 'recovered'!
defaults: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    defaults := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200079d8; bytecode file offset 0x83bb0"
!CgFontScalableEntry methodsFor: 'recovered'!
scaled: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    scaled := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007af8; bytecode file offset 0x83ce8"
!CgFontScalableEntry methodsFor: 'recovered'!
private: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    private := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20019d50; bytecode file offset 0x95f20"
!CgFontScalableEntry methodsFor: 'recovered'!
removeScaledInstance: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := scaled.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) font.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg1.
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) = (recoveredBlock7Stack3).
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 24] ifFalse: [recoveredBlock7PC := 30].
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack1 := scaled.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) remove: (recoveredBlock7Stack2).
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"winsys.ic method 0x2001b0c4; bytecode file offset 0x972a0"
!CgFontScalableEntry methodsFor: 'recovered'!
addScaledInstance: recoveredArg1 font: recoveredArg2 bitmapName: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CgFontScaled.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) vals: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) font: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) bitmap: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := scaled.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) fpePrivate: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x2003ca4c; bytecode file offset 0xb8c40"
!CgFontScalableEntry methodsFor: 'recovered'!
findScaledInstance: recoveredArg1 noSpecificSize: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := scaled.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := scaled.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) vals.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) point.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) point.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := scaled.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 140.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := scaled.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) vals.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := scaled.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := (recoveredStack3) isAnamorphic.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack4 := (recoveredStack4) x.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := (recoveredStack3) point.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack4 := (recoveredStack4) point.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := (recoveredStack3) abs.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := (recoveredStack3) < (recoveredStack4).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := scaled.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredLocal5 := recoveredStack3.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 46] ifFalse: [recoveredPC := 169]] ifFalse: [recoveredPC := 143].
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 165] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := scaled.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := [:recoveredBlock176Arg1 | 
    | recoveredBlock176Stack0 recoveredBlock176Stack1 recoveredBlock176Stack2 recoveredBlock176Stack3 recoveredBlock176Stack4 recoveredBlock176PC recoveredBlock176Step recoveredBlock176Done recoveredBlock176Result |
    recoveredBlock176Stack0 := self.
    recoveredBlock176PC := 182.
    recoveredBlock176Done := false.
    [recoveredBlock176Done not] whileTrue: [
        recoveredBlock176Step := recoveredBlock176PC.
        recoveredBlock176Step = 182 ifTrue: [
            recoveredBlock176Stack1 := nil.
            recoveredBlock176PC := 183.
        ].
        recoveredBlock176Step = 183 ifTrue: [
            recoveredBlock176Stack2 := recoveredBlock176Arg1.
            recoveredBlock176PC := 184.
        ].
        recoveredBlock176Step = 184 ifTrue: [
            recoveredBlock176Stack2 := (recoveredBlock176Stack2) vals.
            recoveredBlock176PC := 185.
        ].
        recoveredBlock176Step = 185 ifTrue: [
            recoveredBlock176Stack3 := recoveredArg1.
            recoveredBlock176PC := 188.
        ].
        recoveredBlock176Step = 188 ifTrue: [
            recoveredBlock176Stack2 := (recoveredBlock176Stack2) match: (recoveredBlock176Stack3).
            recoveredBlock176PC := 190.
        ].
        recoveredBlock176Step = 190 ifTrue: [
            (recoveredBlock176Stack2) ifTrue: [recoveredBlock176PC := 194] ifFalse: [recoveredBlock176PC := 215].
        ].
        recoveredBlock176Step = 194 ifTrue: [
            recoveredBlock176Stack2 := recoveredArg1.
            recoveredBlock176PC := 197.
        ].
        recoveredBlock176Step = 197 ifTrue: [
            recoveredBlock176Stack2 := (recoveredBlock176Stack2) width.
            recoveredBlock176PC := 199.
        ].
        recoveredBlock176Step = 199 ifTrue: [
            recoveredBlock176Stack3 := 0.
            recoveredBlock176PC := 201.
        ].
        recoveredBlock176Step = 201 ifTrue: [
            recoveredBlock176Stack2 := (recoveredBlock176Stack2) ~= (recoveredBlock176Stack3).
            recoveredBlock176PC := 202.
        ].
        recoveredBlock176Step = 202 ifTrue: [
            (recoveredBlock176Stack2) ifTrue: [recoveredBlock176PC := 212] ifFalse: [recoveredBlock176PC := 206].
        ].
        recoveredBlock176Step = 206 ifTrue: [
            recoveredBlock176Stack2 := recoveredBlock176Arg1.
            recoveredBlock176PC := 207.
        ].
        recoveredBlock176Step = 207 ifTrue: [
            recoveredBlock176Stack2 := (recoveredBlock176Stack2) isAnamorphic.
            recoveredBlock176PC := 209.
        ].
        recoveredBlock176Step = 209 ifTrue: [
            (recoveredBlock176Stack2) ifTrue: [recoveredBlock176PC := 215] ifFalse: [recoveredBlock176PC := 212].
        ].
        recoveredBlock176Step = 212 ifTrue: [
            recoveredBlock176PC := 213.
        ].
        recoveredBlock176Step = 213 ifTrue: [
            recoveredBlock176Stack1 := recoveredBlock176Arg1.
            recoveredBlock176PC := 214.
        ].
        recoveredBlock176Step = 214 ifTrue: [
            ^recoveredBlock176Stack1
        ].
        recoveredBlock176Step = 215 ifTrue: [
            recoveredBlock176Result := recoveredBlock176Stack1.
            recoveredBlock176Done := true.
        ].
    ].
    recoveredBlock176Result
].
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

