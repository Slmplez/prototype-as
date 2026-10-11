"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2007609c; bytecode file offset 0x9757c8"
!ASDMappingSourceObject methodsFor: 'recovered'!
isSendAndReceive
    ^true
! !

"ASDBase.ic method 0x2007a3b4; bytecode file offset 0x97c330"
!ASDMappingSourceObject methodsFor: 'recovered'!
isMultiMappable
    ^false
! !

"ASDBase.ic method 0x200a180c; bytecode file offset 0x99e0cc"
!ASDMappingSourceObject methodsFor: 'recovered'!
nameForMapping
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) displayName.
    recoveredValue1 := (recoveredValue0) subStrings: ($.).
    recoveredValue2 := (recoveredValue1) last.
    ^recoveredValue2
! !

