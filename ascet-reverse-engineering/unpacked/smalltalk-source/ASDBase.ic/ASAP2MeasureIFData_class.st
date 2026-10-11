"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013818; bytecode file offset 0x912098"
!ASAP2MeasureIFData class methodsFor: 'recovered'!
kpBlobClass
    | recoveredValue0 |
    recoveredValue0 := ASAP2RasterKPBlob.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a360; bytecode file offset 0x92209c"
!ASAP2MeasureIFData class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'dpBlob:' 'paBlob:' 'kpBlob:')
! !

"ASDBase.ic method 0x2001f418; bytecode file offset 0x92209c"
!ASAP2MeasureIFData class methodsFor: 'recovered'!
defaultName
    ^'anIfData'
! !

"ASDBase.ic method 0x20080428; bytecode file offset 0x97ccdc"
!ASAP2MeasureIFData class methodsFor: 'recovered'!
emBehaviorId
    ^57
! !

"ASDBase.ic method 0x20090f10; bytecode file offset 0x98d9dc"
!ASAP2MeasureIFData class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b6da0; bytecode file offset 0x9b39ac"
!ASAP2MeasureIFData class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('kpBlob')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2018a1c4; bytecode file offset 0xa86a90"
!ASAP2MeasureIFData class methodsFor: 'recovered'!
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

"ASDBase.ic method 0x201f2e60; bytecode file offset 0xaef814"
!ASAP2MeasureIFData class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    (recoveredValue0) at: ('KP_BLOB') put: ('getKpBlob:').
    recoveredValue1 := options.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('KP_BLOB') value: ('putIn:kpBlob:').
    (recoveredValue1) add: (recoveredValue3).
    ^self
! !

