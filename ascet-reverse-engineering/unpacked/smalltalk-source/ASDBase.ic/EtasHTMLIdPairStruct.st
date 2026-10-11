"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004ad18; bytecode file offset 0x947768"
!EtasHTMLIdPairStruct methodsFor: 'recovered'!
dwControlId
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b61c; bytecode file offset 0x948384"
!EtasHTMLIdPairStruct methodsFor: 'recovered'!
dwTopicId
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a5c50; bytecode file offset 0x9a25bc"
!EtasHTMLIdPairStruct methodsFor: 'recovered'!
dwControlId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a635c; bytecode file offset 0x9a2f38"
!EtasHTMLIdPairStruct methodsFor: 'recovered'!
dwTopicId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x201caa0c; bytecode file offset 0xac72d4"
!EtasHTMLIdPairStruct methodsFor: 'recovered'!
initialize
    super initialize.
    (self) dwControlId: (0).
    (self) dwTopicId: (0).
    (self) uint32At: (8) put: (0).
    ^self
! !

