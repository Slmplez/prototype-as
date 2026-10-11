"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001f07c; bytecode file offset 0x92209c"
!ASAP2BytesASAP1BAddress class methodsFor: 'recovered'!
members
    ^#('address')
! !

"ASDBase.ic method 0x200718b4; bytecode file offset 0x96e578"
!ASAP2BytesASAP1BAddress class methodsFor: 'recovered'!
bytesSize
    ^0
! !

"ASDBase.ic method 0x20072060; bytecode file offset 0x96ee04"
!ASAP2BytesASAP1BAddress class methodsFor: 'recovered'!
fixedSize
    ^1
! !

"ASDBase.ic method 0x20080cdc; bytecode file offset 0x97d590"
!ASAP2BytesASAP1BAddress class methodsFor: 'recovered'!
asap2BehaviorId
    ^220
! !

"ASDBase.ic method 0x2008909c; bytecode file offset 0x985bf8"
!ASAP2BytesASAP1BAddress class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 |
    recoveredValue0 := ASAP2DpIFData.
    (self) initializeKeyWords: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200cb200; bytecode file offset 0x9c7b3c"
!ASAP2BytesASAP1BAddress class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) address: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

