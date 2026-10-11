"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20000074; bytecode file offset 0x4b1b0"
!EsAtom methodsFor: 'recovered'!
deepCopy
    ^self
! !

"kernel.ic method 0x20000164; bytecode file offset 0x4b1b0"
!EsAtom methodsFor: 'recovered'!
shallowCopy
    ^self
! !

"kernel.ic method 0x20000dec; bytecode file offset 0x4bd18"
!EsAtom methodsFor: 'recovered'!
"VM primitive/special entry 0x5b; native fast path not reconstructed; fallback bytecodes follow."
equals: recoveredArg1
    ^false
! !

"kernel.ic method 0x20000dfc; bytecode file offset 0x4bd18"
!EsAtom methodsFor: 'recovered'!
"VM primitive/special entry 0x5b; native fast path not reconstructed; fallback bytecodes follow."
equalsLiteral: recoveredArg1
    ^false
! !

"kernel.ic method 0x2000137c; bytecode file offset 0x4c28c"
!EsAtom methodsFor: 'recovered'!
"VM primitive/special entry 0x4d; native fast path not reconstructed; fallback bytecodes follow."
replaceFrom: recoveredArg1 to: recoveredArg2 with: recoveredArg3 startingAt: recoveredArg4
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"kernel.ic method 0x2001456c; bytecode file offset 0x5f490"
!EsAtom methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPut: ($#).
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) nextPut: ($#).
    recoveredValue3 := String.
    recoveredValue4 := (self) basicSize.
    recoveredValue5 := (recoveredValue3) new: (recoveredValue4).
    recoveredValue6 := (self) basicSize.
    recoveredValue7 := (recoveredValue5) replaceFrom: (1) to: (recoveredValue6) with: (self).
    (recoveredValue0) nextPutAll: (recoveredValue7).
    ^self
! !

"kernel.ic method 0x20014bc4; bytecode file offset 0x5fae8"
!EsAtom methodsFor: 'recovered'!
storeOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPut: ($#).
    (recoveredValue0) nextPut: ($#).
    recoveredValue2 := String.
    recoveredValue3 := (self) basicSize.
    recoveredValue4 := (recoveredValue2) new: (recoveredValue3).
    recoveredValue5 := (self) basicSize.
    recoveredValue6 := (recoveredValue4) replaceFrom: (1) to: (recoveredValue5) with: (self).
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) storeOn: (recoveredValue7).
    ^self
! !

