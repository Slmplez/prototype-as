"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20018344; bytecode file offset 0x92209c"
!EtasGlobalInfo class methodsFor: 'recovered'!
members
    ^#('newSpaceSize' 'fixedSpaceSize' 'oldSpaceSize' 'allocationIncrement' 'lowMinimum' 'memoryMax' 'allowMergedSpaces' 'codeCacheSize')
! !

"ASDBase.ic method 0x20049cdc; bytecode file offset 0x947128"
!EtasGlobalInfo class methodsFor: 'recovered'!
globalInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) vmGlobalInfoAddress.
    recoveredValue1 := (self) address: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004eabc; bytecode file offset 0x94d048"
!EtasGlobalInfo class methodsFor: 'recovered'!
startup
    (self) inca8000000.
    ^self
! !

"ASDBase.ic method 0x2004f3ec; bytecode file offset 0x94d048"
!EtasGlobalInfo class methodsFor: 'recovered'!
startUp
    (self) startup.
    ^self
! !

"ASDBase.ic method 0x20071d6c; bytecode file offset 0x96e680"
!EtasGlobalInfo class methodsFor: 'recovered'!
fixedSize
    ^256
! !

"ASDBase.ic method 0x20099fc8; bytecode file offset 0x997194"
!EtasGlobalInfo class methodsFor: 'recovered'!
do: recoveredArg1 withExtendedMemorySegmentSize: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) globalInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) do: (recoveredValue1) withExtendedMemorySegmentSize: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ef570; bytecode file offset 0x9ebe34"
!EtasGlobalInfo class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) members.
    (self) members: (recoveredValue0).
    recoveredValue1 := (self) fixedSize.
    (self) fixedSize: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20139a94; bytecode file offset 0xa36360"
!EtasGlobalInfo class methodsFor: 'recovered'!
vmGlobalInfoAddress
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OSVoid.
    recoveredValue1 := Processor.
    recoveredValue2 := (recoveredValue1) activeProcess.
    recoveredValue3 := (recoveredValue2) vmStateAddress.
    recoveredValue4 := (recoveredValue0) address: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) uint32At: (104).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201bfb08; bytecode file offset 0xabc3f4"
!EtasGlobalInfo class methodsFor: 'recovered'!
inca62default
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) globalInfo.
    recoveredLocal4 := recoveredValue0.
    recoveredValue1 := recoveredLocal4.
    recoveredValue2 := (recoveredValue1) newSpaceSize.
    recoveredLocal3 := recoveredValue2.
    recoveredLocal1 := 5000000.
    recoveredValue3 := recoveredLocal4.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) lowMinimum: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) newSpaceSize: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    (recoveredValue3) oldSpaceSize: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x201bfb28; bytecode file offset 0xabc3f4"
!EtasGlobalInfo class methodsFor: 'recovered'!
inca8000000
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) globalInfo.
    recoveredLocal4 := recoveredValue0.
    recoveredValue1 := recoveredLocal4.
    recoveredValue2 := (recoveredValue1) newSpaceSize.
    recoveredLocal3 := recoveredValue2.
    recoveredLocal1 := 80000000.
    recoveredValue3 := recoveredLocal4.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) lowMinimum: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) newSpaceSize: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    (recoveredValue3) oldSpaceSize: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x20393c94; bytecode file offset 0xc90560"
!EtasGlobalInfo class methodsFor: 'recovered'!
do: recoveredArg1 withNewSpaceSize: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) globalInfo.
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := recoveredLocal3.
    recoveredValue2 := (recoveredValue1) newSpaceSize.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal3.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) lowMinimum: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredArg2.
    (recoveredValue6) newSpaceSize: (recoveredValue7).
    recoveredValue8 := recoveredArg2.
    (recoveredValue3) oldSpaceSize: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := [
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 recoveredBlock38Value4 recoveredBlock38Value5 recoveredBlock38Value6 |
    recoveredBlock38Value0 := recoveredLocal3.
    recoveredBlock38Value1 := recoveredBlock38Value0.
    recoveredBlock38Value2 := recoveredLocal2.
    (recoveredBlock38Value1) lowMinimum: (recoveredBlock38Value2).
    recoveredBlock38Value3 := recoveredBlock38Value0.
    recoveredBlock38Value4 := recoveredLocal2.
    (recoveredBlock38Value3) newSpaceSize: (recoveredBlock38Value4).
    recoveredBlock38Value5 := recoveredLocal2.
    recoveredBlock38Value6 := (recoveredBlock38Value0) oldSpaceSize: (recoveredBlock38Value5).
    recoveredBlock38Value6
].
    recoveredValue11 := (recoveredValue9) ensure: (recoveredValue10).
    recoveredLocal1 := recoveredValue11.
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

