"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ETargetPrototyping.ic method 0x20000000; bytecode file offset 0x26e8"
!TGTargetPrototyping class methodsFor: 'recovered'!
targetType
    | recoveredValue0 |
    recoveredValue0 := (self) prototypingTargetType.
    ^recoveredValue0
! !

"ETargetPrototyping.ic method 0x20000034; bytecode file offset 0x2728"
!TGTargetPrototyping class methodsFor: 'recovered'!
targetLabel
    | recoveredValue0 |
    recoveredValue0 := Prototyping.
    ^recoveredValue0
! !

"ETargetPrototyping.ic method 0x20000040; bytecode file offset 0x2728"
!TGTargetPrototyping class methodsFor: 'recovered'!
variantKey
    | recoveredValue0 |
    recoveredValue0 := Prototyping.
    ^recoveredValue0
! !

"ETargetPrototyping.ic method 0x20000054; bytecode file offset 0x2748"
!TGTargetPrototyping class methodsFor: 'recovered'!
supportedOS
    ^''
! !

"ETargetPrototyping.ic method 0x20000060; bytecode file offset 0x2748"
!TGTargetPrototyping class methodsFor: 'recovered'!
relativeTargetPath
    ^'Prototyping\'
! !

"ETargetPrototyping.ic method 0x200000b0; bytecode file offset 0x27ac"
!TGTargetPrototyping class methodsFor: 'recovered'!
onlineSimulation
    ^true
! !

"ETargetPrototyping.ic method 0x200000e4; bytecode file offset 0x27e0"
!TGTargetPrototyping class methodsFor: 'recovered'!
offlineSimulation
    ^false
! !

"ETargetPrototyping.ic method 0x200000ec; bytecode file offset 0x27e0"
!TGTargetPrototyping class methodsFor: 'recovered'!
hwcEditor
    ^false
! !

"ETargetPrototyping.ic method 0x200000f4; bytecode file offset 0x27e0"
!TGTargetPrototyping class methodsFor: 'recovered'!
incaSimulation
    ^false
! !

"ETargetPrototyping.ic method 0x200000fc; bytecode file offset 0x27e0"
!TGTargetPrototyping class methodsFor: 'recovered'!
isAbstract
    ^false
! !

"ETargetPrototyping.ic method 0x20000110; bytecode file offset 0x2804"
!TGTargetPrototyping class methodsFor: 'recovered'!
defaultCompilerTools
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) with: ('GNUCV34x').
    recoveredValue2 := (self) findCompilerRepresentation: (recoveredValue1).
    ^recoveredValue2
! !

"ETargetPrototyping.ic method 0x2000017c; bytecode file offset 0x2878"
!TGTargetPrototyping class methodsFor: 'recovered'!
preempLevels
    | recoveredValue0 |
    recoveredValue0 := ('Kli') == ('WHAT5754').
    ^100
! !

"ETargetPrototyping.ic method 0x2000018c; bytecode file offset 0x2878"
!TGTargetPrototyping class methodsFor: 'recovered'!
coopLevels
    | recoveredValue0 |
    recoveredValue0 := ('Kli') == ('WHAT5754').
    ^100
! !

"ETargetPrototyping.ic method 0x200001ac; bytecode file offset 0x28a8"
!TGTargetPrototyping class methodsFor: 'recovered'!
defaultOSTools
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := TGOperatingSystemTool.
    recoveredValue2 := TGTarget.
    recoveredValue3 := (recoveredValue2) genericOsType.
    recoveredValue4 := (recoveredValue1) selectedTool: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) with: (recoveredValue4).
    ^recoveredValue5
! !

"ETargetPrototyping.ic method 0x20000210; bytecode file offset 0x2928"
!TGTargetPrototyping class methodsFor: 'recovered'!
events
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := TGTargetEvent.
    recoveredValue4 := (recoveredValue3) create.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) name: ('Int0').
    recoveredValue6 := recoveredValue4.
    (recoveredValue6) minPrio: (0).
    recoveredValue7 := recoveredValue4.
    (recoveredValue7) maxPrio: (20).
    recoveredValue8 := recoveredValue4.
    (recoveredValue8) id: (3).
    (recoveredValue2) add: (recoveredValue4).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := TGTargetEvent.
    recoveredValue11 := (recoveredValue10) create.
    recoveredValue12 := recoveredValue11.
    (recoveredValue12) name: ('Int1').
    recoveredValue13 := recoveredValue11.
    (recoveredValue13) minPrio: (0).
    recoveredValue14 := recoveredValue11.
    (recoveredValue14) maxPrio: (20).
    recoveredValue15 := recoveredValue11.
    (recoveredValue15) id: (4).
    (recoveredValue9) add: (recoveredValue11).
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := TGTargetEvent.
    recoveredValue18 := (recoveredValue17) create.
    recoveredValue19 := recoveredValue18.
    (recoveredValue19) name: ('Int2').
    recoveredValue20 := recoveredValue18.
    (recoveredValue20) minPrio: (0).
    recoveredValue21 := recoveredValue18.
    (recoveredValue21) maxPrio: (20).
    recoveredValue22 := recoveredValue18.
    (recoveredValue22) id: (5).
    (recoveredValue16) add: (recoveredValue18).
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := (recoveredValue23) asArray.
    ^recoveredValue24
! !

