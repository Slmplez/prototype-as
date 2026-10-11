"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d184; bytecode file offset 0x909ab8"
!SGStateSupportGO methodsFor: 'recovered'!
getPointedGOFor: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2004220c; bytecode file offset 0x93eb24"
!SGStateSupportGO methodsFor: 'recovered'!
copyForChangeDisplay
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := frameGO.
    recoveredValue1 := (recoveredValue0) copy.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20073748; bytecode file offset 0x970b34"
!SGStateSupportGO methodsFor: 'recovered'!
getMenu
    ^nil
! !

"ASDBase.ic method 0x2007c75c; bytecode file offset 0x97c330"
!SGStateSupportGO methodsFor: 'recovered'!
getSelectFlag
    ^false
! !

"ASDBase.ic method 0x200cf3e0; bytecode file offset 0x9cbc98"
!SGStateSupportGO methodsFor: 'recovered'!
changeStarted
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := frameGO.
    (recoveredValue0) changeStarted.
    recoveredValue1 := symbolGO.
    (recoveredValue1) changeStarted.
    ^self
! !

"ASDBase.ic method 0x200fbeac; bytecode file offset 0x9f8770"
!SGStateSupportGO methodsFor: 'recovered'!
displayOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := frameGO.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) displayOn: (recoveredValue1).
    recoveredValue2 := symbolGO.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) displayOn: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200fbeb8; bytecode file offset 0x9f8770"
!SGStateSupportGO methodsFor: 'recovered'!
moveTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := frameGO.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) moveTo: (recoveredValue1).
    recoveredValue2 := symbolGO.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) moveTo: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20103ae4; bytecode file offset 0xa003a4"
!SGStateSupportGO methodsFor: 'recovered'!
scale: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) logicFrame.
    recoveredValue1 := (recoveredValue0) extent.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    (self) moveTo: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2017a590; bytecode file offset 0xa76e54"
!SGStateSupportGO methodsFor: 'recovered'!
giveRedisplayRects
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := frameGO.
    recoveredValue4 := (recoveredValue3) giveRedisplayRects.
    (recoveredValue2) addAll: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := symbolGO.
    recoveredValue7 := (recoveredValue6) giveRedisplayRects.
    (recoveredValue5) addAll: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x20198e6c; bytecode file offset 0xa95734"
!SGStateSupportGO methodsFor: 'recovered'!
logicFrame
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := frameGO.
    recoveredValue4 := (recoveredValue3) logicFrame.
    (recoveredValue2) add: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := symbolGO.
    recoveredValue7 := (recoveredValue6) logicFrame.
    (recoveredValue5) add: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (self) enclosingRectOf: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x20325a5c; bytecode file offset 0xc2233c"
!SGStateSupportGO methodsFor: 'recovered'!
initAt: recoveredArg1 symbol: recoveredArg2 lineStyle: recoveredArg3 manager: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg4.
    super initRBLineStyle: (recoveredValue0) manager: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    position := recoveredValue2.
    recoveredValue3 := RBTextGO.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := FontNames.
    recoveredValue7 := (recoveredValue6) font.
    recoveredValue8 := recoveredArg3.
    recoveredValue9 := recoveredArg4.
    recoveredValue10 := (recoveredValue3) createAt: (recoveredValue4) text: (recoveredValue5) alignment: ('TaCenter') font: (recoveredValue7) lineStyle: (recoveredValue8) manager: (recoveredValue9).
    symbolGO := recoveredValue10.
    recoveredValue11 := RBEllipseGO.
    recoveredValue12 := (recoveredValue11) new.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := FontNames.
    recoveredValue15 := (recoveredValue14) height.
    recoveredValue16 := (recoveredValue15) // (2).
    recoveredValue17 := FontNames.
    recoveredValue18 := (recoveredValue17) height.
    recoveredValue19 := (recoveredValue18) // (2).
    recoveredValue20 := recoveredArg3.
    recoveredValue21 := recoveredArg4.
    recoveredValue22 := (recoveredValue12) initAt: (recoveredValue13) xAxis: (recoveredValue16) yAxis: (recoveredValue19) lineStyle: (recoveredValue20) areaStyle: (nil) manager: (recoveredValue21).
    frameGO := recoveredValue22.
    ^self
! !

