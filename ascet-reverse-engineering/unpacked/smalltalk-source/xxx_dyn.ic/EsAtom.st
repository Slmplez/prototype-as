"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000af8; bytecode file offset 0x61bd4"
!EsAtom methodsFor: 'recovered'!
"VM primitive/special entry 0x17; native fast path not reconstructed; fallback bytecodes follow."
sstConvertFromPlatform: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20004650; bytecode file offset 0x6592c"
!EsAtom methodsFor: 'recovered'!
sstIsExportKey
    ^true
! !

"xxx_dyn.ic method 0x200046c0; bytecode file offset 0x6592c"
!EsAtom methodsFor: 'recovered'!
sstIsComponentName
    ^true
! !

"xxx_dyn.ic method 0x200047d8; bytecode file offset 0x6592c"
!EsAtom methodsFor: 'recovered'!
sstIsImmutable
    ^true
! !

"xxx_dyn.ic method 0x20004d78; bytecode file offset 0x65e64"
!EsAtom methodsFor: 'recovered'!
sstIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) sstIn: (recoveredValue0) context: (nil).
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x20009520; bytecode file offset 0x6a5fc"
!EsAtom methodsFor: 'recovered'!
sstIn: recoveredArg1 context: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SstRemoteReference.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) forKey: (self) in: (recoveredValue1) context: (recoveredValue2).
    ^recoveredValue3
! !

