"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20001230; bytecode file offset 0x24470"
!EswCachedIdentityDictionary class methodsFor: 'recovered'!
new
    | recoveredValue0 |
    recoveredValue0 := (self) new: (0).
    ^recoveredValue0
! !

"cfsnls.ic method 0x20002160; bytecode file offset 0x25390"
!EswCachedIdentityDictionary class methodsFor: 'recovered'!
minimumSize
    ^10
! !

"cfsnls.ic method 0x20004d20; bytecode file offset 0x27f60"
!EswCachedIdentityDictionary class methodsFor: 'recovered'!
new: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) basicNew.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredValue5 := (self) minimumSize.
    recoveredValue6 := (recoveredValue4) max: (recoveredValue5).
    (recoveredValue1) initialize: (recoveredValue6).
    ^recoveredValue0
! !

