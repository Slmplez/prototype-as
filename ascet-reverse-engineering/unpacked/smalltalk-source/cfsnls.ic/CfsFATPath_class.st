"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20000a44; bytecode file offset 0x23de0"
!CfsFATPath class methodsFor: 'recovered'!
description
    ^'FAT'
! !

"cfsnls.ic method 0x20000a74; bytecode file offset 0x23de0"
!CfsFATPath class methodsFor: 'recovered'!
fileSystemType
    ^'FAT'
! !

"cfsnls.ic method 0x20002174; bytecode file offset 0x253a4"
!CfsFATPath class methodsFor: 'recovered'!
maximumFileNameLength
    ^12
! !

"cfsnls.ic method 0x20002288; bytecode file offset 0x254f8"
!CfsFATPath class methodsFor: 'recovered'!
preservesCase
    ^false
! !

"cfsnls.ic method 0x2000232c; bytecode file offset 0x2555c"
!CfsFATPath class methodsFor: 'recovered'!
maximumLength
    ^75
! !

"cfsnls.ic method 0x200024bc; bytecode file offset 0x25704"
!CfsFATPath class methodsFor: 'recovered'!
isIllegalCharacter: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ('"*+,/:.;<=>?[\]|') includes: (recoveredValue0).
    ^recoveredValue1
! !

"cfsnls.ic method 0x20014828; bytecode file offset 0x37abc"
!CfsFATPath class methodsFor: 'recovered'!
makeValidFormatFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) maximumLength.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) pathSeparator.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) partsFrom: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal10 := recoveredStack2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPathSeparator: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := $:.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 276.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := '.'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 273].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := '..'.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredPC := 257.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitAtExtension: (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := [:recoveredBlock129Arg1 | 
    | recoveredBlock129Value0 recoveredBlock129Value1 |
    recoveredBlock129Value0 := recoveredBlock129Arg1.
    recoveredBlock129Value1 := (self) isIllegalCharacter: (recoveredBlock129Value0).
    recoveredBlock129Value1
].
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := 8.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredPC := 166.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := (recoveredStack3) asLowercase.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack2) nextPut: (recoveredStack3).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack1) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 156] ifFalse: [recoveredLocal2 := nil. recoveredPC := 180]] ifFalse: [recoveredPC := 170].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 178] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 253] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := [:recoveredBlock199Arg1 | 
    | recoveredBlock199Value0 recoveredBlock199Value1 |
    recoveredBlock199Value0 := recoveredBlock199Arg1.
    recoveredBlock199Value1 := (self) isIllegalCharacter: (recoveredBlock199Value0).
    recoveredBlock199Value1
].
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredPC := 236.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack3 := (recoveredStack3) asLowercase.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack2) nextPut: (recoveredStack3).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 226] ifFalse: [recoveredLocal1 := nil. recoveredPC := 250]] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 248] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 273] ifFalse: [recoveredPC := 266].
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathSeparator.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal6 isInteger]) ifTrue: [(recoveredLocal6 + 1 <= recoveredStack0) ifTrue: [recoveredLocal6 := recoveredLocal6 + 1. recoveredPC := 86] ifFalse: [recoveredLocal6 := nil. recoveredPC := 295]] ifFalse: [recoveredPC := 281].
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredLocal6 := recoveredStack3.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 292] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := (recoveredStack1) maximumLength.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 306] ifFalse: [recoveredPC := 317].
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack2 := (recoveredStack2) maximumLength.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack0 := (recoveredStack0) trimTrailingPeriods.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 330] ifFalse: [recoveredPC := 326].
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentPathName.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack0 := (recoveredStack0) trimTrailingPeriods.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

