"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004af80; bytecode file offset 0x947a60"
!ASAP2KWP2000V30Can methodsFor: 'recovered'!
uudtCanIds
    | recoveredValue0 |
    recoveredValue0 := (self) at: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200985a4; bytecode file offset 0x995850"
!ASAP2KWP2000V30Can methodsFor: 'recovered'!
addCanId: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uudtCanIds.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a5ed8; bytecode file offset 0x9a27f0"
!ASAP2KWP2000V30Can methodsFor: 'recovered'!
uudtCanIds: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (1) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2010b938; bytecode file offset 0xa085f0"
!ASAP2KWP2000V30Can methodsFor: 'recovered'!
initializeCollections
    | recoveredValue0 recoveredValue1 |
    super initializeCollections.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) uudtCanIds: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2010bd7c; bytecode file offset 0xa08708"
!ASAP2KWP2000V30Can methodsFor: 'recovered'!
minimizeCollections
    | recoveredValue0 recoveredValue1 |
    super minimizeCollections.
    recoveredValue0 := (self) uudtCanIds.
    recoveredValue1 := (recoveredValue0) minimizeSize.
    (self) uudtCanIds: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201261dc; bytecode file offset 0xa22bf0"
!ASAP2KWP2000V30Can methodsFor: 'recovered'!
getCanId: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2KWP2000V30IdRangeCan.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) getFrom: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) addCanId: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20179018; bytecode file offset 0xa75928"
!ASAP2KWP2000V30Can methodsFor: 'recovered'!
putIn: recoveredArg1 canId: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uudtCanIds.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) putIn: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

