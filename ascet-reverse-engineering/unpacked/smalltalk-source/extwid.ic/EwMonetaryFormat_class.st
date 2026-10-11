"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x2003c33c; bytecode file offset 0x8d194"
!EwMonetaryFormat class methodsFor: 'recovered'!
formatFrom: recoveredArg1 intDigits: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1E70UTW'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := XmMINUS.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) fracDigits.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) monGrouping.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := #('127').
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := #('127' '0').
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := #('127').
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) asNumber.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 91] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := 127.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) pSignPosn.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := XmPARENTHESES.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) pSignPosn.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := $S.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) pCsPrecedes.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 252] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) pSignPosn.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) pSepBySpace.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := $B.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) pSignPosn.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 198] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := $S.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) pSepBySpace.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 198] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := $B.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := $C.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := (recoveredStack1) pSignPosn.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 236] ifFalse: [recoveredPC := 214].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := (recoveredStack1) pSepBySpace.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 230] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := $B.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := $S.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := (recoveredStack1) pSepBySpace.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 252] ifFalse: [recoveredPC := 246].
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := $B.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredPC := 264.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack3 := $0.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack2) nextPut: (recoveredStack3).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack1 isInteger) ifTrue: [(recoveredStack1 > 0) ifTrue: [recoveredStack1 := recoveredStack1 - 1. recoveredPC := 258] ifFalse: [recoveredPC := 274]] ifFalse: [recoveredPC := 267].
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 258] ifFalse: [recoveredPC := 274].
        ].
        recoveredStep = 274 ifTrue: [
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 288] ifFalse: [recoveredPC := 282].
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := $D.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredPC := 390.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 376] ifFalse: [recoveredPC := 298].
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 302] ifFalse: [recoveredPC := 376].
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack2 := $T.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 314] ifFalse: [recoveredPC := 326].
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := (recoveredStack1) asNumber.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredPC := 372.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := (recoveredStack1) asNumber.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 362] ifFalse: [recoveredPC := 346].
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := (recoveredStack1) asNumber.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack2 := 127.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 372] ifFalse: [recoveredPC := 370].
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredPC := 390.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack2 := $9.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 292] ifFalse: [recoveredPC := 397].
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack1 := (recoveredStack1) pCsPrecedes.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 518] ifFalse: [recoveredPC := 406].
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := (recoveredStack1) pSepBySpace.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 422] ifFalse: [recoveredPC := 416].
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack2 := $B.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack1 := (recoveredStack1) pSignPosn.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 454] ifFalse: [recoveredPC := 432].
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack2 := $S.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack1 := (recoveredStack1) pSepBySpace.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 454] ifFalse: [recoveredPC := 448].
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack2 := $B.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack2 := $C.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack1 := (recoveredStack1) pSignPosn.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 492] ifFalse: [recoveredPC := 470].
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack1 := (recoveredStack1) pSepBySpace.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 486] ifFalse: [recoveredPC := 480].
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack2 := $B.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack2 := $S.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack1 := (recoveredStack1) pSignPosn.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 518] ifFalse: [recoveredPC := 502].
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack1 := (recoveredStack1) pSepBySpace.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 518] ifFalse: [recoveredPC := 512].
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack2 := $B.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack1 := (recoveredStack1) pSignPosn.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 534] ifFalse: [recoveredPC := 528].
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack2 := $S.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack2 := (recoveredStack2) reverse.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            (recoveredStack1) formatString: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack2 := (recoveredStack2) currencySymbol.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            (recoveredStack1) currencySymbol: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack2 := (recoveredStack2) monDecimalPoint.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            (recoveredStack1) decimalPoint: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredStack2 := (recoveredStack2) monThousandsSep.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            (recoveredStack1) thousandsSeparator: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack2 := (recoveredStack2) negativeSign.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            (recoveredStack1) negativeIndicator: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredStack2 := (recoveredStack2) positiveSign.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            (recoveredStack1) positiveIndicator: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            (recoveredStack1) signPolicy: (recoveredStack2).
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

