"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ETargetPrototyping.ic method 0x20000014; bytecode file offset 0x2708"
!TGTargetPrototyping methodsFor: 'recovered'!
preempLevelsMaximum: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) preempLevels.
    ^recoveredValue0
! !

"ETargetPrototyping.ic method 0x20000020; bytecode file offset 0x2708"
!TGTargetPrototyping methodsFor: 'recovered'!
coopLevelsMaximum: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) coopLevels.
    ^recoveredValue0
! !

"ETargetPrototyping.ic method 0x20000074; bytecode file offset 0x2760"
!TGTargetPrototyping methodsFor: 'recovered'!
defaultForEmptyOSType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) ercosekType.
    ^recoveredValue1
! !

"ETargetPrototyping.ic method 0x2000008c; bytecode file offset 0x2770"
!TGTargetPrototyping methodsFor: 'recovered'!
targetTypeId
    ^3
! !

"ETargetPrototyping.ic method 0x200000a0; bytecode file offset 0x27ac"
!TGTargetPrototyping methodsFor: 'recovered'!
isOnlineTransferTarget
    ^true
! !

"ETargetPrototyping.ic method 0x200000a8; bytecode file offset 0x27ac"
!TGTargetPrototyping methodsFor: 'recovered'!
isOnlineINTECRIOTarget
    ^true
! !

"ETargetPrototyping.ic method 0x200000b8; bytecode file offset 0x27ac"
!TGTargetPrototyping methodsFor: 'recovered'!
isPrototypingTarget
    ^true
! !

"ETargetPrototyping.ic method 0x200000c0; bytecode file offset 0x27ac"
!TGTargetPrototyping methodsFor: 'recovered'!
requiresScoopixGeneration
    ^true
! !

"ETargetPrototyping.ic method 0x200000c8; bytecode file offset 0x27ac"
!TGTargetPrototyping methodsFor: 'recovered'!
isBigEndian
    ^true
! !

"ETargetPrototyping.ic method 0x200000dc; bytecode file offset 0x27e0"
!TGTargetPrototyping methodsFor: 'recovered'!
isOfflineRPTarget
    ^false
! !

"ETargetPrototyping.ic method 0x20000134; bytecode file offset 0x2820"
!TGTargetPrototyping methodsFor: 'recovered'!
prioLevelsMaximum: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) coopLevelsMaximum: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) preempLevelsMaximum: (recoveredValue2).
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    ^recoveredValue4
! !

"ETargetPrototyping.ic method 0x20000150; bytecode file offset 0x284c"
!TGTargetPrototyping methodsFor: 'recovered'!
hasFixedCoopLevels
    | recoveredValue0 |
    recoveredValue0 := ('hw') == ('call_306253').
    ^true
! !

"ETargetPrototyping.ic method 0x20000160; bytecode file offset 0x284c"
!TGTargetPrototyping methodsFor: 'recovered'!
hasFixedPreempLevels
    | recoveredValue0 |
    recoveredValue0 := ('hw') == ('call_306253').
    ^true
! !

"ETargetPrototyping.ic method 0x200001dc; bytecode file offset 0x28d8"
!TGTargetPrototyping methodsFor: 'recovered'!
validScoopixSchemaVersions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super validScoopixSchemaVersions.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) with: ('SIX14').
    recoveredValue3 := (recoveredValue0) , (recoveredValue2).
    ^recoveredValue3
! !

