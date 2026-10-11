"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001128; bytecode file offset 0x155d58"
!OSAcl methodsFor: 'recovered'!
AclRevision
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002588; bytecode file offset 0x155e38"
!OSAcl methodsFor: 'recovered'!
Sbz1
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (1).
    ^recoveredValue0
! !

"psupp.ic method 0x200025e4; bytecode file offset 0x1561c4"
!OSAcl methodsFor: 'recovered'!
AclSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x20002c48; bytecode file offset 0x157170"
!OSAcl methodsFor: 'recovered'!
AceCount
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003960; bytecode file offset 0x1572b8"
!OSAcl methodsFor: 'recovered'!
Sbz2
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (6).
    ^recoveredValue0
! !

"psupp.ic method 0x20008f08; bytecode file offset 0x15caa4"
!OSAcl methodsFor: 'recovered'!
isValidAcl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := IsValidAcl.
    recoveredValue1 := (recoveredValue0) callWith: (self).
    ^recoveredValue1
! !

"psupp.ic method 0x2000efcc; bytecode file offset 0x163098"
!OSAcl methodsFor: 'recovered'!
deleteAce: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := DeleteAce.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000f0fc; bytecode file offset 0x163098"
!OSAcl methodsFor: 'recovered'!
findFirstFreeAce: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := FindFirstFreeAce.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) callWith: (self) with: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20010c04; bytecode file offset 0x165330"
!OSAcl methodsFor: 'recovered'!
AclRevision: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011b58; bytecode file offset 0x16542c"
!OSAcl methodsFor: 'recovered'!
Sbz1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (1) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011cb4; bytecode file offset 0x1657d4"
!OSAcl methodsFor: 'recovered'!
AclSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012c68; bytecode file offset 0x166e00"
!OSAcl methodsFor: 'recovered'!
AceCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200135b0; bytecode file offset 0x166f5c"
!OSAcl methodsFor: 'recovered'!
Sbz2: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (6) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20020e2c; bytecode file offset 0x174df8"
!OSAcl methodsFor: 'recovered'!
initializeAcl: recoveredArg1 dwAclRevision: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := InitializeAcl.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20020f9c; bytecode file offset 0x174df8"
!OSAcl methodsFor: 'recovered'!
getAce: recoveredArg1 pAce: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := GetAce.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x200240d8; bytecode file offset 0x1781a4"
!OSAcl methodsFor: 'recovered'!
addAccessAllowedAce: recoveredArg1 accessMask: recoveredArg2 pSid: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := AddAccessAllowedAce.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x200245a8; bytecode file offset 0x1781a4"
!OSAcl methodsFor: 'recovered'!
setAclInformation: recoveredArg1 nAclInformationLength: recoveredArg2 dwAclInformationClass: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SetAclInformation.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x200246f8; bytecode file offset 0x1781a4"
!OSAcl methodsFor: 'recovered'!
addAccessDeniedAce: recoveredArg1 accessMask: recoveredArg2 pSid: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := AddAccessDeniedAce.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x200247e8; bytecode file offset 0x1781a4"
!OSAcl methodsFor: 'recovered'!
getAclInformation: recoveredArg1 nAclInformationLength: recoveredArg2 dwAclInformationClass: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := GetAclInformation.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x2002620c; bytecode file offset 0x179e98"
!OSAcl methodsFor: 'recovered'!
addAce: recoveredArg1 dwStartingAceIndex: recoveredArg2 pAceList: recoveredArg3 nAceListLength: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AddAce.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^recoveredValue5
! !

"psupp.ic method 0x20029ab4; bytecode file offset 0x17d4c0"
!OSAcl methodsFor: 'recovered'!
addAuditAccessAce: recoveredArg1 dwAccessMask: recoveredArg2 pSid: recoveredArg3 bAuditSuccess: recoveredArg4 bAuditFailure: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := AddAuditAccessAce.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    ^recoveredValue6
! !

