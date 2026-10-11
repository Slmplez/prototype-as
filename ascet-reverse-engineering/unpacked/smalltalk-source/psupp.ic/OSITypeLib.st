"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2001d8f4; bytecode file offset 0x1711b0"
!OSITypeLib methodsFor: 'recovered'!
getTypeInfoCount
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := GetTypeInfoCount.
    recoveredValue1 := (recoveredValue0) callWith: (3) with: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x200230dc; bytecode file offset 0x176988"
!OSITypeLib methodsFor: 'recovered'!
getLibAttr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := GetLibAttr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (7) with: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x200231ac; bytecode file offset 0x176a68"
!OSITypeLib methodsFor: 'recovered'!
getTypeComp: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := GetTypeComp.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (8) with: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2002337c; bytecode file offset 0x176c58"
!OSITypeLib methodsFor: 'recovered'!
releaseTLibAttr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ReleaseTLibAttr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (12) with: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20025988; bytecode file offset 0x179274"
!OSITypeLib methodsFor: 'recovered'!
getTypeInfo: recoveredArg1 ppitinfo: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := GetTypeInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (4) with: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20025a18; bytecode file offset 0x179334"
!OSITypeLib methodsFor: 'recovered'!
getTypeInfoType: recoveredArg1 ptkind: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := GetTypeInfoType.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (5) with: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20025ae8; bytecode file offset 0x1793d4"
!OSITypeLib methodsFor: 'recovered'!
getTypeInfoOfGuid: recoveredArg1 pptinfo: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := GetTypeInfoOfGuid.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (6) with: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20029664; bytecode file offset 0x17cf04"
!OSITypeLib methodsFor: 'recovered'!
isName: recoveredArg1 lHashVal: recoveredArg2 pfName: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := IsName.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asOlePSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue0) callWith: (10) with: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x2002b2d8; bytecode file offset 0x17eb74"
!OSITypeLib methodsFor: 'recovered'!
getDocumentation: recoveredArg1 pbstrName: recoveredArg2 pbstrDocString: recoveredArg3 pdwHelpContext: recoveredArg4 pbstrHelpFile: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := GetDocumentation.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := (recoveredValue0) callWith: (9) with: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    ^recoveredValue6
! !

"psupp.ic method 0x2002bc34; bytecode file offset 0x17f4d4"
!OSITypeLib methodsFor: 'recovered'!
findName: recoveredArg1 lHashVal: recoveredArg2 rgptinfo: recoveredArg3 rgmemid: recoveredArg4 pcFound: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := FindName.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asOlePSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := (recoveredValue0) callWith: (11) with: (self) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    ^recoveredValue7
! !

