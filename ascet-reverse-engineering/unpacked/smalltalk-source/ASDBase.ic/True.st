"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017018; bytecode file offset 0x92209c"
!True methodsFor: 'recovered'!
xmlDefaultValue
    ^'true'
! !

"ASDBase.ic method 0x2001b470; bytecode file offset 0x92209c"
!True methodsFor: 'recovered'!
asString
    ^'true'
! !

"ASDBase.ic method 0x200253f4; bytecode file offset 0x92209c"
!True methodsFor: 'recovered'!
asFloat
    ^#[0 0 0 0 0 0 240 63]
! !

"ASDBase.ic method 0x20072128; bytecode file offset 0x96ee04"
!True methodsFor: 'recovered'!
abtAsNumber
    ^1
! !

"ASDBase.ic method 0x20072320; bytecode file offset 0x96ee04"
!True methodsFor: 'recovered'!
abrAsCLangBoolean
    ^1
! !

"ASDBase.ic method 0x20072510; bytecode file offset 0x96ee04"
!True methodsFor: 'recovered'!
abrAsCLangChar
    ^1
! !

"ASDBase.ic method 0x2007599c; bytecode file offset 0x9757c8"
!True methodsFor: 'recovered'!
isSingularClass
    ^true
! !

"ASDBase.ic method 0x20076ce4; bytecode file offset 0x9757c8"
!True methodsFor: 'recovered'!
isTerminalClass
    ^true
! !

"ASDBase.ic method 0x20094b14; bytecode file offset 0x9913f0"
!True methodsFor: 'recovered'!
printEscapedStringOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('true').
    ^self
! !

"ASDBase.ic method 0x205d4824; bytecode file offset 0xed110c"
!True methodsFor: 'recovered'!
wbDrawUsing: recoveredArg1 backgroundColor: recoveredArg2 style: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            super wbDrawUsing: (recoveredStack1) backgroundColor: (recoveredStack2) style: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) wbHeightUsing: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) wbWidthUsing: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) getForeground.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 15.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) setForeground: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := XmONEOFMANY.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawable.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack5 := 5.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := (recoveredStack4) - (recoveredStack5).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack6 := 5.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack5 := (recoveredStack5) - (recoveredStack6).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) fillRectangle: (recoveredStack1) x: (recoveredStack2) y: (recoveredStack3) width: (recoveredStack4) height: (recoveredStack5).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredPC := 350.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawable.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) gc.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack6 := 2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack5 := (recoveredStack5) // (recoveredStack6).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (-1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack5 := (recoveredStack5) x.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack7 := 2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack6 := (recoveredStack6) // (recoveredStack7).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (-1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack6 := (recoveredStack6) y.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack7 := recoveredLocal3.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack8 := 5.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack7 := (recoveredStack7) - (recoveredStack8).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (recoveredStack7).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) drawLine: (recoveredStack2) x1: (recoveredStack3) y1: (recoveredStack4) x2: (recoveredStack5) y2: (recoveredStack6).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := (recoveredStack2) gc.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack6 := 2.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack5 := (recoveredStack5) // (recoveredStack6).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack5 := (recoveredStack5) x.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack7 := 2.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack6 := (recoveredStack6) // (recoveredStack7).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (-1).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack6 := (recoveredStack6) y.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack7 := recoveredLocal3.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack8 := 4.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack7 := (recoveredStack7) - (recoveredStack8).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (recoveredStack7).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1) drawLine: (recoveredStack2) x1: (recoveredStack3) y1: (recoveredStack4) x2: (recoveredStack5) y2: (recoveredStack6).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := (recoveredStack2) gc.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack6 := 2.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack5 := (recoveredStack5) // (recoveredStack6).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (1).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack5 := (recoveredStack5) x.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack7 := 2.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack6 := (recoveredStack6) // (recoveredStack7).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (-1).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack6 := (recoveredStack6) y.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack7 := recoveredLocal3.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack8 := 3.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack7 := (recoveredStack7) - (recoveredStack8).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (recoveredStack7).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack1) drawLine: (recoveredStack2) x1: (recoveredStack3) y1: (recoveredStack4) x2: (recoveredStack5) y2: (recoveredStack6).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := (recoveredStack2) gc.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack4 := (recoveredStack4) // (recoveredStack5).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack6 := 5.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack5 := (recoveredStack5) - (recoveredStack6).
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack5 := (recoveredStack5) x.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack7 := 3.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack6 := (recoveredStack6) - (recoveredStack7).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack6 := (recoveredStack6) y.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack7 := 3.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (recoveredStack7).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack1) drawLine: (recoveredStack2) x1: (recoveredStack3) y1: (recoveredStack4) x2: (recoveredStack5) y2: (recoveredStack6).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := (recoveredStack2) gc.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack4 := (recoveredStack4) // (recoveredStack5).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack6 := 4.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack5 := (recoveredStack5) - (recoveredStack6).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack5 := (recoveredStack5) x.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack7 := 3.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack6 := (recoveredStack6) - (recoveredStack7).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack6 := (recoveredStack6) y.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack7 := 4.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (recoveredStack7).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            (recoveredStack1) drawLine: (recoveredStack2) x1: (recoveredStack3) y1: (recoveredStack4) x2: (recoveredStack5) y2: (recoveredStack6).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := (recoveredStack2) gc.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack4 := (recoveredStack4) // (recoveredStack5).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack6 := 3.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack5 := (recoveredStack5) - (recoveredStack6).
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack5 := (recoveredStack5) x.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack7 := 3.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack6 := (recoveredStack6) - (recoveredStack7).
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack6 := (recoveredStack6) y.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack7 := 5.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack6 := (recoveredStack6) + (recoveredStack7).
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            (recoveredStack1) drawLine: (recoveredStack2) x1: (recoveredStack3) y1: (recoveredStack4) x2: (recoveredStack5) y2: (recoveredStack6).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            (recoveredStack0) setForeground: (recoveredStack1).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

