"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2060331c; bytecode file offset 0xeffc40"
!LCNumeric methodsFor: 'recovered'!
printNumber: recoveredArg1 on: recoveredArg2 maxDigits: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNumber.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ExCLDTInvalidClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNaNFast.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) printOn: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInteger.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFloat.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFloat.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := $-.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFloat.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 286].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) negated.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) power: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) scale.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) raisedToInteger: (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := #[0 0 0 0 0 0 240 63].
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredPC := 262.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := (recoveredStack2) negated.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := -1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 262].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := (recoveredStack2) raisedToInteger: (recoveredStack3).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := (recoveredStack2) truncated.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredPC := 192.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := #[0 0 0 0 0 0 36 64].
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := (recoveredStack3) truncated.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack1 isInteger) ifTrue: [(recoveredStack1 > 0) ifTrue: [recoveredStack1 := recoveredStack1 - 1. recoveredPC := 176] ifFalse: [recoveredPC := 202]] ifFalse: [recoveredPC := 195].
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredPC := 231.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 36 64].
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := (recoveredStack2) truncated.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 240] ifFalse: [recoveredPC := 248].
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncated.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 210] ifFalse: [recoveredPC := 248].
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncated.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 262] ifFalse: [recoveredPC := 258].
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := (recoveredStack2) raisedToInteger: (recoveredStack3).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncated.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredPC := 291.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := (recoveredStack0) grouping.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 300] ifFalse: [recoveredPC := 310].
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredPC := 329.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack3 := encodedGroupingFormat.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack4 := (recoveredStack4) thousandsSep.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := (recoveredStack1) asGroupedString: (recoveredStack2) basedOn: (recoveredStack3) separateGroupsWith: (recoveredStack4).
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFloat.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 338] ifFalse: [recoveredPC := 336].
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncated.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := (recoveredStack1) decimalPoint.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredPC := 420.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := #[0 0 0 0 0 0 36 64].
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncated.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack0 := (recoveredStack0) truncated.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 394] ifFalse: [recoveredPC := 406].
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack1 := $0.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredPC := 420.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := Character.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack2 := (recoveredStack2) truncated.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack1 := (recoveredStack1) digitValue: (recoveredStack2).
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 364] ifFalse: [recoveredPC := 426].
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 434] ifFalse: [recoveredPC := 448].
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack1 := $e.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2060c344; bytecode file offset 0xf08c64"
!LCNumeric methodsFor: 'recovered'!
printSimNumber: recoveredArg1 digits: recoveredArg2 on: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNumber.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ExCLDTInvalidClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInteger.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFloat.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFloat.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := $-.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := $ .
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := 6.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFloat.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := #[141 237 181 160 247 198 160 62].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) scale.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) raisedToInteger: (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := #[0 0 0 0 0 0 240 63].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredPC := 254.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := (recoveredStack2) negated.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := -1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 254].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := (recoveredStack2) raisedToInteger: (recoveredStack3).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := (recoveredStack2) truncated.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredPC := 188.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := #[0 0 0 0 0 0 36 64].
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := (recoveredStack3) truncated.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack1 isInteger) ifTrue: [(recoveredStack1 > 0) ifTrue: [recoveredStack1 := recoveredStack1 - 1. recoveredPC := 172] ifFalse: [recoveredPC := 198]] ifFalse: [recoveredPC := 191].
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredPC := 225.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 36 64].
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := (recoveredStack2) truncated.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 232] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncated.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 206] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncated.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 254] ifFalse: [recoveredPC := 250].
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := (recoveredStack2) raisedToInteger: (recoveredStack3).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncated.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredPC := 283.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := (recoveredStack0) grouping.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 292] ifFalse: [recoveredPC := 302].
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredPC := 320.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := LCNumeric.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack3 := encodedGroupingFormat.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack4 := (recoveredStack4) thousandsSep.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := (recoveredStack1) asGroupedString: (recoveredStack2) basedOn: (recoveredStack3) separateGroupsWith: (recoveredStack4).
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFloat.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 328] ifFalse: [recoveredPC := 326].
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncated.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := (recoveredStack1) decimalPoint.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredPC := 430.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := #[0 0 0 0 0 0 36 64].
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncated.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack0 := (recoveredStack0) truncated.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 384] ifFalse: [recoveredPC := 390].
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredPC := 430.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredPC := 402.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack2 := $0.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            (recoveredStack0 isInteger) ifTrue: [(recoveredStack0 > 0) ifTrue: [recoveredStack0 := recoveredStack0 - 1. recoveredPC := 394] ifFalse: [recoveredPC := 412]] ifFalse: [recoveredPC := 405].
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 394] ifFalse: [recoveredPC := 412].
        ].
        recoveredStep = 412 ifTrue: [
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack1 := Character.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack2 := (recoveredStack2) truncated.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack1 := (recoveredStack1) digitValue: (recoveredStack2).
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 352] ifFalse: [recoveredPC := 437].
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 442] ifFalse: [recoveredPC := 450].
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack1 := $0.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 458] ifFalse: [recoveredPC := 472].
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack1 := $e.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2060c594; bytecode file offset 0xf08e9c"
!LCNumeric methodsFor: 'recovered'!
printFloat: recoveredArg1 on: recoveredArg2 maxDigits: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 14.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := #[155 43 161 134 155 132 246 60].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) scale.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal9 := recoveredStack2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncated.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) grouping.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) printOn: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) decimalPoint.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := $0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal9 := recoveredStack2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 130.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := #[0 0 0 0 0 0 224 63].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) powerOfTen.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := (recoveredStack2) truncated.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal10 := recoveredStack3.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredPC := 278.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := (recoveredStack2) powerOfTen.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := -1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 267].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := (recoveredStack2) truncated.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredPC := 197.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack3 := #[0 0 0 0 0 0 36 64].
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack3 := (recoveredStack3) truncated.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack1 isInteger) ifTrue: [(recoveredStack1 > 0) ifTrue: [recoveredStack1 := recoveredStack1 - 1. recoveredPC := 182] ifFalse: [recoveredPC := 207]] ifFalse: [recoveredPC := 200].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 207].
        ].
        recoveredStep = 207 ifTrue: [
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredPC := 232.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 36 64].
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := (recoveredStack2) truncated.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 240] ifFalse: [recoveredPC := 247].
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncated.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 214] ifFalse: [recoveredPC := 247].
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncated.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 267] ifFalse: [recoveredPC := 256].
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack2 := (recoveredStack2) truncated.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredLocal10 := recoveredStack3.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 286] ifFalse: [recoveredPC := 294].
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack2 := $-.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := (recoveredStack0) grouping.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 302] ifFalse: [recoveredPC := 312].
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredPC := 330.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := LCNumeric.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack3 := encodedGroupingFormat.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack4 := (recoveredStack4) thousandsSep.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack1 := (recoveredStack1) asGroupedString: (recoveredStack2) basedOn: (recoveredStack3) separateGroupsWith: (recoveredStack4).
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFloat.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 338] ifFalse: [recoveredPC := 336].
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := (recoveredStack1) decimalPoint.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredPC := 426.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 36 64].
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack2 := (recoveredStack2) truncated.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredLocal8 := recoveredStack3.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 388] ifFalse: [recoveredPC := 382].
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredPC := 426.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredPC := 400.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack3 := $0.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            (recoveredStack2) nextPut: (recoveredStack3).
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            (recoveredStack1 isInteger) ifTrue: [(recoveredStack1 > 0) ifTrue: [recoveredStack1 := recoveredStack1 - 1. recoveredPC := 392] ifFalse: [recoveredPC := 410]] ifFalse: [recoveredPC := 403].
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 392] ifFalse: [recoveredPC := 410].
        ].
        recoveredStep = 410 ifTrue: [
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack2 := Character.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack2 := (recoveredStack2) digitValue: (recoveredStack3).
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            (recoveredStack0 isInteger) ifTrue: [(recoveredStack0 > 0) ifTrue: [recoveredStack0 := recoveredStack0 - 1. recoveredPC := 356] ifFalse: [recoveredPC := 436]] ifFalse: [recoveredPC := 429].
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 356] ifFalse: [recoveredPC := 436].
        ].
        recoveredStep = 436 ifTrue: [
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 442] ifFalse: [recoveredPC := 450].
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack1 := $0.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 472] ifFalse: [recoveredPC := 458].
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack1 := $e.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

