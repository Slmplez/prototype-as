"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x200007b8; bytecode file offset 0x107e4"
!String methodsFor: 'recovered'!
abtAsBase10Integer
    | recoveredValue0 |
    recoveredValue0 := (self) abtAsIntegerBase: (10).
    ^recoveredValue0
! !

"abtdah.ic method 0x200064b8; bytecode file offset 0x16520"
!String methodsFor: 'recovered'!
asSmalltalkIdentifier
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := (Notification new: 0) instVarAt: 1 put: ($_); instVarAt: 2 put: ($-); yourself.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUppercase.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) abrIncludesAny: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := SubApplication.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := Bag.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 40.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Stack0 recoveredBlock58Stack1 recoveredBlock58Stack2 recoveredBlock58Stack3 recoveredBlock58PC recoveredBlock58Step recoveredBlock58Done recoveredBlock58Result |
    recoveredBlock58Stack0 := self.
    recoveredBlock58PC := 64.
    recoveredBlock58Done := false.
    [recoveredBlock58Done not] whileTrue: [
        recoveredBlock58Step := recoveredBlock58PC.
        recoveredBlock58Step = 64 ifTrue: [
            recoveredBlock58Stack1 := recoveredLocal1.
            recoveredBlock58PC := 67.
        ].
        recoveredBlock58Step = 67 ifTrue: [
            recoveredBlock58Stack2 := recoveredBlock58Arg1.
            recoveredBlock58PC := 68.
        ].
        recoveredBlock58Step = 68 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) includes: (recoveredBlock58Stack2).
            recoveredBlock58PC := 70.
        ].
        recoveredBlock58Step = 70 ifTrue: [
            (recoveredBlock58Stack1) ifTrue: [recoveredBlock58PC := 74] ifFalse: [recoveredBlock58PC := 82].
        ].
        recoveredBlock58Step = 74 ifTrue: [
            recoveredBlock58Stack1 := true.
            recoveredBlock58PC := 75.
        ].
        recoveredBlock58Step = 75 ifTrue: [
            recoveredBlock58Stack2 := recoveredBlock58Stack1.
            recoveredBlock58PC := 76.
        ].
        recoveredBlock58Step = 76 ifTrue: [
            recoveredLocal2 := recoveredBlock58Stack2.
            recoveredBlock58PC := 79.
        ].
        recoveredBlock58Step = 79 ifTrue: [
            recoveredBlock58PC := 108.
        ].
        recoveredBlock58Step = 82 ifTrue: [
            recoveredBlock58Stack1 := recoveredLocal3.
            recoveredBlock58PC := 85.
        ].
        recoveredBlock58Step = 85 ifTrue: [
            recoveredBlock58Stack2 := recoveredLocal2.
            recoveredBlock58PC := 88.
        ].
        recoveredBlock58Step = 88 ifTrue: [
            (recoveredBlock58Stack2) ifTrue: [recoveredBlock58PC := 92] ifFalse: [recoveredBlock58PC := 98].
        ].
        recoveredBlock58Step = 92 ifTrue: [
            recoveredBlock58Stack2 := recoveredBlock58Arg1.
            recoveredBlock58PC := 93.
        ].
        recoveredBlock58Step = 93 ifTrue: [
            recoveredBlock58Stack2 := (recoveredBlock58Stack2) asUppercase.
            recoveredBlock58PC := 95.
        ].
        recoveredBlock58Step = 95 ifTrue: [
            recoveredBlock58PC := 101.
        ].
        recoveredBlock58Step = 98 ifTrue: [
            recoveredBlock58Stack2 := recoveredBlock58Arg1.
            recoveredBlock58PC := 99.
        ].
        recoveredBlock58Step = 99 ifTrue: [
            recoveredBlock58Stack2 := (recoveredBlock58Stack2) asLowercase.
            recoveredBlock58PC := 101.
        ].
        recoveredBlock58Step = 101 ifTrue: [
            (recoveredBlock58Stack1) nextPut: (recoveredBlock58Stack2).
            recoveredBlock58PC := 103.
        ].
        recoveredBlock58Step = 103 ifTrue: [
            recoveredBlock58Stack1 := false.
            recoveredBlock58PC := 104.
        ].
        recoveredBlock58Step = 104 ifTrue: [
            recoveredBlock58Stack2 := recoveredBlock58Stack1.
            recoveredBlock58PC := 105.
        ].
        recoveredBlock58Step = 105 ifTrue: [
            recoveredLocal2 := recoveredBlock58Stack2.
            recoveredBlock58PC := 108.
        ].
        recoveredBlock58Step = 108 ifTrue: [
            recoveredBlock58Result := recoveredBlock58Stack1.
            recoveredBlock58Done := true.
        ].
    ].
    recoveredBlock58Result
].
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdah.ic method 0x20006a38; bytecode file offset 0x16aa4"
!String methodsFor: 'recovered'!
asSmalltalkGlobalIdentifier
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := (Notification new: 0) instVarAt: 1 put: ($_); instVarAt: 2 put: ($-); yourself.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLowercase.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) abrIncludesAny: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := SubApplication.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := Bag.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 40.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := [:recoveredBlock48Arg1 | 
    | recoveredBlock48Stack0 recoveredBlock48Stack1 recoveredBlock48Stack2 recoveredBlock48Stack3 recoveredBlock48Stack4 recoveredBlock48PC recoveredBlock48Step recoveredBlock48Done recoveredBlock48Result |
    recoveredBlock48Stack0 := self.
    recoveredBlock48PC := 54.
    recoveredBlock48Done := false.
    [recoveredBlock48Done not] whileTrue: [
        recoveredBlock48Step := recoveredBlock48PC.
        recoveredBlock48Step = 54 ifTrue: [
            recoveredBlock48Stack1 := recoveredLocal1.
            recoveredBlock48PC := 57.
        ].
        recoveredBlock48Step = 57 ifTrue: [
            recoveredBlock48Stack2 := recoveredBlock48Arg1.
            recoveredBlock48PC := 58.
        ].
        recoveredBlock48Step = 58 ifTrue: [
            recoveredBlock48Stack1 := (recoveredBlock48Stack1) includes: (recoveredBlock48Stack2).
            recoveredBlock48PC := 60.
        ].
        recoveredBlock48Step = 60 ifTrue: [
            (recoveredBlock48Stack1) ifTrue: [recoveredBlock48PC := 64] ifFalse: [recoveredBlock48PC := 72].
        ].
        recoveredBlock48Step = 64 ifTrue: [
            recoveredBlock48Stack1 := true.
            recoveredBlock48PC := 65.
        ].
        recoveredBlock48Step = 65 ifTrue: [
            recoveredBlock48Stack2 := recoveredBlock48Stack1.
            recoveredBlock48PC := 66.
        ].
        recoveredBlock48Step = 66 ifTrue: [
            recoveredLocal3 := recoveredBlock48Stack2.
            recoveredBlock48PC := 69.
        ].
        recoveredBlock48Step = 69 ifTrue: [
            recoveredBlock48PC := 124.
        ].
        recoveredBlock48Step = 72 ifTrue: [
            recoveredBlock48Stack1 := recoveredLocal4.
            recoveredBlock48PC := 75.
        ].
        recoveredBlock48Step = 75 ifTrue: [
            recoveredBlock48Stack2 := recoveredLocal3.
            recoveredBlock48PC := 78.
        ].
        recoveredBlock48Step = 78 ifTrue: [
            (recoveredBlock48Stack2) ifTrue: [recoveredBlock48PC := 82] ifFalse: [recoveredBlock48PC := 88].
        ].
        recoveredBlock48Step = 82 ifTrue: [
            recoveredBlock48Stack2 := recoveredBlock48Arg1.
            recoveredBlock48PC := 83.
        ].
        recoveredBlock48Step = 83 ifTrue: [
            recoveredBlock48Stack2 := (recoveredBlock48Stack2) asUppercase.
            recoveredBlock48PC := 85.
        ].
        recoveredBlock48Step = 85 ifTrue: [
            recoveredBlock48PC := 101.
        ].
        recoveredBlock48Step = 88 ifTrue: [
            recoveredBlock48Stack2 := recoveredLocal2.
            recoveredBlock48PC := 91.
        ].
        recoveredBlock48Step = 91 ifTrue: [
            (recoveredBlock48Stack2) ifTrue: [recoveredBlock48PC := 94] ifFalse: [recoveredBlock48PC := 100].
        ].
        recoveredBlock48Step = 94 ifTrue: [
            recoveredBlock48Stack2 := recoveredBlock48Arg1.
            recoveredBlock48PC := 95.
        ].
        recoveredBlock48Step = 95 ifTrue: [
            recoveredBlock48Stack2 := (recoveredBlock48Stack2) asLowercase.
            recoveredBlock48PC := 97.
        ].
        recoveredBlock48Step = 97 ifTrue: [
            recoveredBlock48PC := 101.
        ].
        recoveredBlock48Step = 100 ifTrue: [
            recoveredBlock48Stack2 := recoveredBlock48Arg1.
            recoveredBlock48PC := 101.
        ].
        recoveredBlock48Step = 101 ifTrue: [
            (recoveredBlock48Stack1) nextPut: (recoveredBlock48Stack2).
            recoveredBlock48PC := 103.
        ].
        recoveredBlock48Step = 103 ifTrue: [
            recoveredBlock48Stack1 := recoveredLocal3.
            recoveredBlock48PC := 106.
        ].
        recoveredBlock48Step = 106 ifTrue: [
            recoveredBlock48Stack2 := recoveredLocal2.
            recoveredBlock48PC := 109.
        ].
        recoveredBlock48Step = 109 ifTrue: [
            recoveredBlock48Stack3 := recoveredBlock48Arg1.
            recoveredBlock48PC := 110.
        ].
        recoveredBlock48Step = 110 ifTrue: [
            recoveredBlock48Stack3 := (recoveredBlock48Stack3) isUppercase.
            recoveredBlock48PC := 112.
        ].
        recoveredBlock48Step = 112 ifTrue: [
            recoveredBlock48Stack2 := (recoveredBlock48Stack2) & (recoveredBlock48Stack3).
            recoveredBlock48PC := 114.
        ].
        recoveredBlock48Step = 114 ifTrue: [
            recoveredBlock48Stack1 := (recoveredBlock48Stack1) | (recoveredBlock48Stack2).
            recoveredBlock48PC := 116.
        ].
        recoveredBlock48Step = 116 ifTrue: [
            recoveredLocal2 := recoveredBlock48Stack1.
            recoveredBlock48PC := 119.
        ].
        recoveredBlock48Step = 119 ifTrue: [
            recoveredBlock48Stack1 := false.
            recoveredBlock48PC := 120.
        ].
        recoveredBlock48Step = 120 ifTrue: [
            recoveredBlock48Stack2 := recoveredBlock48Stack1.
            recoveredBlock48PC := 121.
        ].
        recoveredBlock48Step = 121 ifTrue: [
            recoveredLocal3 := recoveredBlock48Stack2.
            recoveredBlock48PC := 124.
        ].
        recoveredBlock48Step = 124 ifTrue: [
            recoveredBlock48Result := recoveredBlock48Stack1.
            recoveredBlock48Done := true.
        ].
    ].
    recoveredBlock48Result
].
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdah.ic method 0x200079f0; bytecode file offset 0x17aac"
!String methodsFor: 'recovered'!
abtAsNumber
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLowercase.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) lcNumeric.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) thousandsSep.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtWithoutOccurencesOfString: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := CompiledMethod.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := $r.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := $r.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) upTo: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtAsInteger.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) upToEnd.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUppercase.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtAsIntegerBase: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtAsInteger.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := [:recoveredBlock81Arg1 | 
    | recoveredBlock81Stack0 recoveredBlock81Stack1 recoveredBlock81Stack2 recoveredBlock81Stack3 recoveredBlock81PC recoveredBlock81Step recoveredBlock81Done recoveredBlock81Result |
    recoveredBlock81Stack0 := self.
    recoveredBlock81PC := 88.
    recoveredBlock81Done := false.
    [recoveredBlock81Done not] whileTrue: [
        recoveredBlock81Step := recoveredBlock81PC.
        recoveredBlock81Step = 88 ifTrue: [
            recoveredBlock81Stack1 := recoveredBlock81Arg1.
            recoveredBlock81PC := 89.
        ].
        recoveredBlock81Step = 89 ifTrue: [
            recoveredBlock81Stack2 := $-.
            recoveredBlock81PC := 92.
        ].
        recoveredBlock81Step = 92 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) = (recoveredBlock81Stack2).
            recoveredBlock81PC := 93.
        ].
        recoveredBlock81Step = 93 ifTrue: [
            (recoveredBlock81Stack1) ifTrue: [recoveredBlock81PC := 96] ifFalse: [recoveredBlock81PC := 104].
        ].
        recoveredBlock81Step = 96 ifTrue: [
            recoveredBlock81Stack1 := -1.
            recoveredBlock81PC := 98.
        ].
        recoveredBlock81Step = 98 ifTrue: [
            recoveredLocal2 := recoveredBlock81Stack1.
            recoveredBlock81PC := 101.
        ].
        recoveredBlock81Step = 101 ifTrue: [
            recoveredBlock81PC := 115.
        ].
        recoveredBlock81Step = 104 ifTrue: [
            recoveredBlock81Stack1 := recoveredBlock81Arg1.
            recoveredBlock81PC := 105.
        ].
        recoveredBlock81Step = 105 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) isDigit.
            recoveredBlock81PC := 107.
        ].
        recoveredBlock81Step = 107 ifTrue: [
            (recoveredBlock81Stack1) ifTrue: [recoveredBlock81PC := 110] ifFalse: [recoveredBlock81PC := 115].
        ].
        recoveredBlock81Step = 110 ifTrue: [
            recoveredBlock81Stack1 := 1.
            recoveredBlock81PC := 112.
        ].
        recoveredBlock81Step = 112 ifTrue: [
            recoveredLocal2 := recoveredBlock81Stack1.
            recoveredBlock81PC := 115.
        ].
        recoveredBlock81Step = 115 ifTrue: [
            recoveredBlock81Stack1 := recoveredLocal2.
            recoveredBlock81PC := 118.
        ].
        recoveredBlock81Step = 118 ifTrue: [
            recoveredBlock81Stack1 := (recoveredBlock81Stack1) notNil.
            recoveredBlock81PC := 119.
        ].
        recoveredBlock81Step = 119 ifTrue: [
            recoveredBlock81Result := recoveredBlock81Stack1.
            recoveredBlock81Done := true.
        ].
    ].
    recoveredBlock81Result
].
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := [
    ^0
].
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) lcNumeric.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) decimalPoint.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) skipToAll: (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) atEnd.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack0) reset.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := $e.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) skipTo: (recoveredStack1).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredPC := 183.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := $e.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := (recoveredStack0) upTo: (recoveredStack1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := $+.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0) peekFor: (recoveredStack1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := SubApplication.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := Bag.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredPC := 216.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) next.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := (recoveredStack0) atEnd.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 223] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := (recoveredStack0) abtAsInteger.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := (recoveredStack1) raisedTo: (recoveredStack2).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := (recoveredStack1) raisedTo: (recoveredStack2).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 294] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtAsInteger.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := (recoveredStack1) raisedTo: (recoveredStack2).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := EmClassCallbackData.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKindOf: (recoveredStack1).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 314] ifFalse: [recoveredPC := 322].
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFloat.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredPC := 325.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

