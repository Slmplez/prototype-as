"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x200003e4; bytecode file offset 0x4b474"
!Character class methodsFor: 'recovered'!
new
    | recoveredValue0 |
    recoveredValue0 := (self) shouldNotImplement.
    ^recoveredValue0
! !

"kernel.ic method 0x20000630; bytecode file offset 0x4b634"
!Character class methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
fromTTY
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"kernel.ic method 0x20000e30; bytecode file offset 0x4bd40"
!Character class methodsFor: 'recovered'!
"VM primitive/special entry 0x65; native fast path not reconstructed; fallback bytecodes follow."
value: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"kernel.ic method 0x20001640; bytecode file offset 0x4c844"
!Character class methodsFor: 'recovered'!
cr
    | recoveredValue0 |
    recoveredValue0 := Cr.
    ^recoveredValue0
! !

"kernel.ic method 0x200016b8; bytecode file offset 0x4c844"
!Character class methodsFor: 'recovered'!
lf
    | recoveredValue0 |
    recoveredValue0 := Lf.
    ^recoveredValue0
! !

"kernel.ic method 0x20001784; bytecode file offset 0x4c844"
!Character class methodsFor: 'recovered'!
space
    | recoveredValue0 |
    recoveredValue0 := Space.
    ^recoveredValue0
! !

"kernel.ic method 0x20001898; bytecode file offset 0x4c844"
!Character class methodsFor: 'recovered'!
tab
    | recoveredValue0 |
    recoveredValue0 := Tab.
    ^recoveredValue0
! !

"kernel.ic method 0x200021cc; bytecode file offset 0x4d118"
!Character class methodsFor: 'recovered'!
codePoint: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) value: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x20002a80; bytecode file offset 0x4d99c"
!Character class methodsFor: 'recovered'!
initializeAfterLoad
    (self) initialize.
    ^self
! !

"kernel.ic method 0x20005888; bytecode file offset 0x5079c"
!Character class methodsFor: 'recovered'!
digitValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) + (1).
    recoveredValue2 := ('0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ') at: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x200136c4; bytecode file offset 0x5e5f0"
!Character class methodsFor: 'recovered'!
initialize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 256.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            DigitValues := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:block28008e04Arg1 :block28008e04Arg2 | 
    | block28008e04Value0 block28008e04Value1 block28008e04Value2 block28008e04Value3 block28008e04Value4 |
    block28008e04Value0 := DigitValues.
    block28008e04Value1 := block28008e04Arg1.
    block28008e04Value2 := (block28008e04Value1) value.
    block28008e04Value3 := block28008e04Arg2.
    block28008e04Value4 := (block28008e04Value0) at: (block28008e04Value2) put: (block28008e04Value3).
    block28008e04Value4
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x200310b0; bytecode file offset 0x7c014"
!Character class methodsFor: 'recovered'!
initializeBitFlags
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 32.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 256.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack3) bitAt: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 22] ifFalse: [recoveredPC := 63]] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
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
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := '1234567890'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := [:recoveredBlock73Arg1 | 
    | recoveredBlock73Value0 recoveredBlock73Value1 recoveredBlock73Value2 recoveredBlock73Value3 recoveredBlock73Value4 |
    recoveredBlock73Value0 := recoveredLocal2.
    recoveredBlock73Value1 := recoveredBlock73Arg1.
    recoveredBlock73Value2 := (recoveredBlock73Value1) value.
    recoveredBlock73Value3 := (recoveredBlock73Value2) + (1).
    recoveredBlock73Value4 := (recoveredBlock73Value0) bitAt: (recoveredBlock73Value3) put: (1).
    recoveredBlock73Value4
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := DigitBitFlags.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 109] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            DigitBitFlags := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := [:recoveredBlock118Arg1 | 
    | recoveredBlock118Value0 recoveredBlock118Value1 recoveredBlock118Value2 recoveredBlock118Value3 recoveredBlock118Value4 |
    recoveredBlock118Value0 := recoveredLocal2.
    recoveredBlock118Value1 := recoveredBlock118Arg1.
    recoveredBlock118Value2 := (recoveredBlock118Value1) value.
    recoveredBlock118Value3 := (recoveredBlock118Value2) + (1).
    recoveredBlock118Value4 := (recoveredBlock118Value0) bitAt: (recoveredBlock118Value3) put: (1).
    recoveredBlock118Value4
].
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := LetterBitFlags.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 153] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            LetterBitFlags := recoveredStack1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := 'abcdefghijklmnopqrstuvwxyz'.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := [:recoveredBlock162Arg1 | 
    | recoveredBlock162Value0 recoveredBlock162Value1 recoveredBlock162Value2 recoveredBlock162Value3 recoveredBlock162Value4 |
    recoveredBlock162Value0 := recoveredLocal2.
    recoveredBlock162Value1 := recoveredBlock162Arg1.
    recoveredBlock162Value2 := (recoveredBlock162Value1) value.
    recoveredBlock162Value3 := (recoveredBlock162Value2) + (1).
    recoveredBlock162Value4 := (recoveredBlock162Value0) bitAt: (recoveredBlock162Value3) put: (1).
    recoveredBlock162Value4
].
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := LowercaseBitFlags.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 197] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            LowercaseBitFlags := recoveredStack1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := [:recoveredBlock206Arg1 | 
    | recoveredBlock206Value0 recoveredBlock206Value1 recoveredBlock206Value2 recoveredBlock206Value3 recoveredBlock206Value4 |
    recoveredBlock206Value0 := recoveredLocal2.
    recoveredBlock206Value1 := recoveredBlock206Arg1.
    recoveredBlock206Value2 := (recoveredBlock206Value1) value.
    recoveredBlock206Value3 := (recoveredBlock206Value2) + (1).
    recoveredBlock206Value4 := (recoveredBlock206Value0) bitAt: (recoveredBlock206Value3) put: (1).
    recoveredBlock206Value4
].
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := UppercaseBitFlags.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 241] ifFalse: [recoveredPC := 236].
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            UppercaseBitFlags := recoveredStack1.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := Tab.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack1) bitAt: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := Space.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack1) bitAt: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := Cr.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            (recoveredStack1) bitAt: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack2 := Lf.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack1) bitAt: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack2 := Ff.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack1) bitAt: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := SeparatorBitFlags.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 323] ifFalse: [recoveredPC := 318].
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            SeparatorBitFlags := recoveredStack1.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := 'AEIOUaeiou'.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack2 := [:recoveredBlock332Arg1 | 
    | recoveredBlock332Value0 recoveredBlock332Value1 recoveredBlock332Value2 recoveredBlock332Value3 recoveredBlock332Value4 |
    recoveredBlock332Value0 := recoveredLocal2.
    recoveredBlock332Value1 := recoveredBlock332Arg1.
    recoveredBlock332Value2 := (recoveredBlock332Value1) value.
    recoveredBlock332Value3 := (recoveredBlock332Value2) + (1).
    recoveredBlock332Value4 := (recoveredBlock332Value0) bitAt: (recoveredBlock332Value3) put: (1).
    recoveredBlock332Value4
].
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := VowelBitFlags.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 367] ifFalse: [recoveredPC := 362].
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            VowelBitFlags := recoveredStack1.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20031a80; bytecode file offset 0x7c9ec"
!Character class methodsFor: 'recovered'!
relocalize
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CurrentLCCType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) cType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ByteArray.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 32.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 256.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := 0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack3) bitAt: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 28] ifFalse: [recoveredPC := 69]] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredPC := 292.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack4 := UppercaseMask.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := (recoveredStack3) bitAnd: (recoveredStack4).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := (recoveredStack3) ~= (recoveredStack4).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 170].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack3) bitAt: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack3) bitAt: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack4 := LowercaseMask.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack3 := (recoveredStack3) bitAnd: (recoveredStack4).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack3 := (recoveredStack3) ~= (recoveredStack4).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 208].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack3) bitAt: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack3) bitAt: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack4 := SpaceMask.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack3 := (recoveredStack3) bitAnd: (recoveredStack4).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := (recoveredStack3) ~= (recoveredStack4).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 236].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack3) bitAt: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack4 := NumberMask.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack3 := (recoveredStack3) bitAnd: (recoveredStack4).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack3 := (recoveredStack3) ~= (recoveredStack4).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 254] ifFalse: [recoveredPC := 264].
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack3) bitAt: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack4 := PunctuationMask.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack3 := (recoveredStack3) bitAnd: (recoveredStack4).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack3 := (recoveredStack3) ~= (recoveredStack4).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 282] ifFalse: [recoveredPC := 292].
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            (recoveredStack3) bitAt: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 128] ifFalse: [recoveredPC := 324]] ifFalse: [recoveredPC := 297].
        ].
        recoveredStep = 297 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 320] ifFalse: [recoveredPC := 314].
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredPC := 131.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack1 := UppercaseBitFlags.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 339] ifFalse: [recoveredPC := 334].
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            UppercaseBitFlags := recoveredStack1.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := LowercaseBitFlags.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 353] ifFalse: [recoveredPC := 348].
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            LowercaseBitFlags := recoveredStack1.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := LetterBitFlags.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 367] ifFalse: [recoveredPC := 362].
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            LetterBitFlags := recoveredStack1.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := SeparatorBitFlags.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 381] ifFalse: [recoveredPC := 376].
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            SeparatorBitFlags := recoveredStack1.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack1 := DigitBitFlags.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 395] ifFalse: [recoveredPC := 390].
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            DigitBitFlags := recoveredStack1.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := PunctuationBitFlags.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 409] ifFalse: [recoveredPC := 404].
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            PunctuationBitFlags := recoveredStack1.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack1 := 'AEIOUaeiou'.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack2 := [:recoveredBlock419Arg1 | 
    | recoveredBlock419Value0 recoveredBlock419Value1 recoveredBlock419Value2 recoveredBlock419Value3 recoveredBlock419Value4 |
    recoveredBlock419Value0 := recoveredLocal3.
    recoveredBlock419Value1 := recoveredBlock419Arg1.
    recoveredBlock419Value2 := (recoveredBlock419Value1) value.
    recoveredBlock419Value3 := (recoveredBlock419Value2) + (1).
    recoveredBlock419Value4 := (recoveredBlock419Value0) bitAt: (recoveredBlock419Value3) put: (1).
    recoveredBlock419Value4
].
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack1 := VowelBitFlags.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 455] ifFalse: [recoveredPC := 450].
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            VowelBitFlags := recoveredStack1.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

