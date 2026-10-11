"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200139f8; bytecode file offset 0x912098"
!ASAP2McMessIFData class methodsFor: 'recovered'!
kpBlobClass
    | recoveredValue0 |
    recoveredValue0 := ASAP2McMessKPBlob.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001c7a8; bytecode file offset 0x92209c"
!ASAP2McMessIFData class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'dpBlob:' 'tpBlob:' 'source:' 'kpBlob:')
! !

"ASDBase.ic method 0x20024d10; bytecode file offset 0x92209c"
!ASAP2McMessIFData class methodsFor: 'recovered'!
defaultName
    ^'ASAP1B_MCMESS'
! !

"ASDBase.ic method 0x20073ef0; bytecode file offset 0x970b34"
!ASAP2McMessIFData class methodsFor: 'recovered'!
emBehaviorId
    ^nil
! !

"ASDBase.ic method 0x200b6d28; bytecode file offset 0x9b39ac"
!ASAP2McMessIFData class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('tpBlob' 'source' 'kpBlob')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b73b8; bytecode file offset 0x9b3cb4"
!ASAP2McMessIFData class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2018a1a4; bytecode file offset 0xa86a90"
!ASAP2McMessIFData class methodsFor: 'recovered'!
createDefault
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := super createDefault.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) defaultName.
    (recoveredValue2) name: (recoveredValue3).
    recoveredValue4 := (self) kpBlobClass.
    recoveredValue5 := (recoveredValue4) createDefault.
    (recoveredValue1) kpBlob: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20359ed8; bytecode file offset 0xc567c8"
!ASAP2McMessIFData class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('TP_BLOB') put: ('getTpBlob:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('KP_BLOB') put: ('getKpBlob:').
    (recoveredValue0) at: ('SOURCE') put: ('getSource:').
    recoveredValue3 := options.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := Association.
    recoveredValue6 := (recoveredValue5) key: ('SOURCE') value: ('putIn:source:').
    (recoveredValue4) add: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    recoveredValue8 := Association.
    recoveredValue9 := (recoveredValue8) key: ('KP_BLOB') value: ('putIn:kpBlob:').
    (recoveredValue7) add: (recoveredValue9).
    recoveredValue10 := Association.
    recoveredValue11 := (recoveredValue10) key: ('TP_BLOB') value: ('putIn:tpBlob:').
    (recoveredValue3) add: (recoveredValue11).
    ^self
! !

