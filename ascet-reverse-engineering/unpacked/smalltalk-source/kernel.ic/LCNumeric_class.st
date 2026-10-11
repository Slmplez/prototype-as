"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x200018ec; bytecode file offset 0x4c844"
!LCNumeric class methodsFor: 'recovered'!
default
    | recoveredValue0 |
    recoveredValue0 := Default.
    ^recoveredValue0
! !

"kernel.ic method 0x20011360; bytecode file offset 0x5c2bc"
!LCNumeric class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    Default := recoveredValue1.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) decimalPoint: ('.').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) thousandsSep: (' ').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) grouping: ('3 0').
    (recoveredValue0) markReadOnly: (true).
    ^self
! !

"kernel.ic method 0x20011ae4; bytecode file offset 0x5ca20"
!LCNumeric class methodsFor: 'recovered'!
for: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Locale.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) localePrimitiveClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) primitiveGetNumeric: (recoveredStack2) name: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) initializeEncodedFormats.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x20027be0; bytecode file offset 0x72b20"
!LCNumeric class methodsFor: 'recovered'!
groupingStringToArray: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := ReadStream.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 100.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := Space.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) upTo: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) asNumber.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 127.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) asArray.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) asArray.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) asArray.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := (recoveredStack2) asArray.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x20031670; bytecode file offset 0x7c59c"
!LCNumeric class methodsFor: 'recovered'!
asGroupedString: recoveredArg1 basedOn: recoveredArg2 separateGroupsWith: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredPC := 156.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-2).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredPC := 202.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := Locale.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) preferredStringClass.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack4 := [:recoveredBlock228Arg1 | 
    | recoveredBlock228Stack0 recoveredBlock228Stack1 recoveredBlock228Stack2 recoveredBlock228Stack3 recoveredBlock228Stack4 recoveredBlock228Stack5 recoveredBlock228Stack6 recoveredBlock228Stack7 recoveredBlock228PC recoveredBlock228Step recoveredBlock228Done recoveredBlock228Result |
    recoveredBlock228Stack0 := self.
    recoveredBlock228PC := 234.
    recoveredBlock228Done := false.
    [recoveredBlock228Done not] whileTrue: [
        recoveredBlock228Step := recoveredBlock228PC.
        recoveredBlock228Step = 234 ifTrue: [
            recoveredBlock228Stack1 := recoveredLocal3.
            recoveredBlock228PC := 237.
        ].
        recoveredBlock228Step = 237 ifTrue: [
            recoveredBlock228Stack2 := recoveredBlock228Arg1.
            recoveredBlock228PC := 238.
        ].
        recoveredBlock228Step = 238 ifTrue: [
            recoveredBlock228Stack1 := (recoveredBlock228Stack1) - (recoveredBlock228Stack2).
            recoveredBlock228PC := 239.
        ].
        recoveredBlock228Step = 239 ifTrue: [
            recoveredBlock228Stack2 := recoveredLocal1.
            recoveredBlock228PC := 242.
        ].
        recoveredBlock228Step = 242 ifTrue: [
            recoveredBlock228Stack1 := (recoveredBlock228Stack1) + (recoveredBlock228Stack2).
            recoveredBlock228PC := 243.
        ].
        recoveredBlock228Step = 243 ifTrue: [
            recoveredBlock228Stack1 := (recoveredBlock228Stack1) + (1).
            recoveredBlock228PC := 244.
        ].
        recoveredBlock228Step = 244 ifTrue: [
            recoveredLocal2 := recoveredBlock228Stack1.
            recoveredBlock228PC := 247.
        ].
        recoveredBlock228Step = 247 ifTrue: [
            recoveredBlock228Stack1 := recoveredLocal10.
            recoveredBlock228PC := 250.
        ].
        recoveredBlock228Step = 250 ifTrue: [
            recoveredBlock228Stack2 := recoveredLocal2.
            recoveredBlock228PC := 253.
        ].
        recoveredBlock228Step = 253 ifTrue: [
            recoveredBlock228Stack3 := recoveredLocal3.
            recoveredBlock228PC := 256.
        ].
        recoveredBlock228Step = 256 ifTrue: [
            recoveredBlock228Stack4 := recoveredArg1.
            recoveredBlock228PC := 259.
        ].
        recoveredBlock228Step = 259 ifTrue: [
            recoveredBlock228Stack5 := recoveredLocal7.
            recoveredBlock228PC := 262.
        ].
        recoveredBlock228Step = 262 ifTrue: [
            recoveredBlock228Stack6 := recoveredBlock228Arg1.
            recoveredBlock228PC := 263.
        ].
        recoveredBlock228Step = 263 ifTrue: [
            recoveredBlock228Stack5 := (recoveredBlock228Stack5) - (recoveredBlock228Stack6).
            recoveredBlock228PC := 264.
        ].
        recoveredBlock228Step = 264 ifTrue: [
            recoveredBlock228Stack5 := (recoveredBlock228Stack5) + (1).
            recoveredBlock228PC := 265.
        ].
        recoveredBlock228Step = 265 ifTrue: [
            (recoveredBlock228Stack1) replaceFrom: (recoveredBlock228Stack2) to: (recoveredBlock228Stack3) with: (recoveredBlock228Stack4) startingAt: (recoveredBlock228Stack5).
            recoveredBlock228PC := 268.
        ].
        recoveredBlock228Step = 268 ifTrue: [
            recoveredBlock228Stack1 := recoveredBlock228Arg1.
            recoveredBlock228PC := 269.
        ].
        recoveredBlock228Step = 269 ifTrue: [
            recoveredLocal1 := recoveredBlock228Stack1.
            recoveredBlock228PC := 272.
        ].
        recoveredBlock228Step = 272 ifTrue: [
            recoveredBlock228Stack1 := nil.
            recoveredBlock228PC := 273.
        ].
        recoveredBlock228Step = 273 ifTrue: [
            recoveredBlock228Stack2 := recoveredLocal2.
            recoveredBlock228PC := 276.
        ].
        recoveredBlock228Step = 276 ifTrue: [
            recoveredBlock228Stack3 := recoveredLocal6.
            recoveredBlock228PC := 279.
        ].
        recoveredBlock228Step = 279 ifTrue: [
            recoveredBlock228Stack2 := (recoveredBlock228Stack2) - (recoveredBlock228Stack3).
            recoveredBlock228PC := 280.
        ].
        recoveredBlock228Step = 280 ifTrue: [
            recoveredBlock228Stack2 := (recoveredBlock228Stack2) + (-1).
            recoveredBlock228PC := 281.
        ].
        recoveredBlock228Step = 281 ifTrue: [
            recoveredBlock228Stack3 := recoveredBlock228Stack2.
            recoveredBlock228PC := 282.
        ].
        recoveredBlock228Step = 282 ifTrue: [
            recoveredLocal3 := recoveredBlock228Stack3.
            recoveredBlock228PC := 285.
        ].
        recoveredBlock228Step = 285 ifTrue: [
            recoveredBlock228Stack3 := 0.
            recoveredBlock228PC := 287.
        ].
        recoveredBlock228Step = 287 ifTrue: [
            recoveredBlock228Stack2 := (recoveredBlock228Stack2) > (recoveredBlock228Stack3).
            recoveredBlock228PC := 288.
        ].
        recoveredBlock228Step = 288 ifTrue: [
            (recoveredBlock228Stack2) ifTrue: [recoveredBlock228PC := 292] ifFalse: [recoveredBlock228PC := 312].
        ].
        recoveredBlock228Step = 292 ifTrue: [
            recoveredBlock228PC := 293.
        ].
        recoveredBlock228Step = 293 ifTrue: [
            recoveredBlock228Stack1 := recoveredLocal10.
            recoveredBlock228PC := 296.
        ].
        recoveredBlock228Step = 296 ifTrue: [
            recoveredBlock228Stack2 := recoveredLocal3.
            recoveredBlock228PC := 299.
        ].
        recoveredBlock228Step = 299 ifTrue: [
            recoveredBlock228Stack2 := (recoveredBlock228Stack2) + (1).
            recoveredBlock228PC := 300.
        ].
        recoveredBlock228Step = 300 ifTrue: [
            recoveredBlock228Stack3 := recoveredLocal2.
            recoveredBlock228PC := 303.
        ].
        recoveredBlock228Step = 303 ifTrue: [
            recoveredBlock228Stack3 := (recoveredBlock228Stack3) + (-1).
            recoveredBlock228PC := 304.
        ].
        recoveredBlock228Step = 304 ifTrue: [
            recoveredBlock228Stack4 := recoveredArg3.
            recoveredBlock228PC := 307.
        ].
        recoveredBlock228Step = 307 ifTrue: [
            recoveredBlock228Stack5 := 1.
            recoveredBlock228PC := 309.
        ].
        recoveredBlock228Step = 309 ifTrue: [
            recoveredBlock228Stack1 := (recoveredBlock228Stack1) replaceFrom: (recoveredBlock228Stack2) to: (recoveredBlock228Stack3) with: (recoveredBlock228Stack4) startingAt: (recoveredBlock228Stack5).
            recoveredBlock228PC := 312.
        ].
        recoveredBlock228Step = 312 ifTrue: [
            recoveredBlock228Result := recoveredBlock228Stack1.
            recoveredBlock228Done := true.
        ].
    ].
    recoveredBlock228Result
].
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            (recoveredStack1) from: (recoveredStack2) to: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 326] ifFalse: [recoveredPC := 413].
        ].
        recoveredStep = 326 ifTrue: [
            recoveredPC := 397.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack5 := recoveredLocal8.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) with: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 378] ifFalse: [recoveredPC := 397].
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) with: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 330] ifFalse: [recoveredPC := 413].
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack1 := (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) with: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

