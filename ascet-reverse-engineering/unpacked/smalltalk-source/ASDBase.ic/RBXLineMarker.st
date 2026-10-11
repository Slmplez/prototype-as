"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006ea78; bytecode file offset 0x96b41c"
!RBXLineMarker methodsFor: 'recovered'!
p1
    | recoveredValue0 |
    recoveredValue0 := p1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f0a8; bytecode file offset 0x96bc1c"
!RBXLineMarker methodsFor: 'recovered'!
displayedObjects
    | recoveredValue0 |
    recoveredValue0 := displayedObjects.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c5190; bytecode file offset 0x9c1afc"
!RBXLineMarker methodsFor: 'recovered'!
p1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    p1 := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5438; bytecode file offset 0x9c1f64"
!RBXLineMarker methodsFor: 'recovered'!
p2: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    p2 := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e6a00; bytecode file offset 0x9e32bc"
!RBXLineMarker methodsFor: 'recovered'!
initialize
    super initialize.
    delta := 50.
    ^self
! !

"ASDBase.ic method 0x2010656c; bytecode file offset 0xa02e20"
!RBXLineMarker methodsFor: 'recovered'!
getPosition
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := p2.
    recoveredValue1 := p1.
    recoveredValue2 := (recoveredValue0) - (recoveredValue1).
    recoveredValue3 := (recoveredValue2) // (2).
    recoveredValue4 := p1.
    recoveredValue5 := (recoveredValue3) + (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2015beb8; bytecode file offset 0xa58778"
!RBXLineMarker methodsFor: 'recovered'!
copyForChangeDisplay
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := RBLineGO.
    recoveredValue1 := lineStyle.
    recoveredValue2 := (recoveredValue1) copy.
    recoveredValue3 := manager.
    recoveredValue4 := p1.
    recoveredValue5 := (recoveredValue4) copy.
    recoveredValue6 := p2.
    recoveredValue7 := (recoveredValue6) copy.
    recoveredValue8 := (recoveredValue0) createWithLineStyle: (recoveredValue2) manager: (recoveredValue3) pointA: (recoveredValue5) pointB: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x20168078; bytecode file offset 0xa64934"
!RBXLineMarker methodsFor: 'recovered'!
displayOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := displayedObjects.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) displayOn: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2016fa1c; bytecode file offset 0xa6c2d8"
!RBXLineMarker methodsFor: 'recovered'!
logicFrame
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := p1.
    recoveredValue1 := delta.
    recoveredValue2 := (recoveredValue1) @ (0).
    recoveredValue3 := (recoveredValue0) - (recoveredValue2).
    recoveredValue4 := p2.
    recoveredValue5 := delta.
    recoveredValue6 := (recoveredValue5) @ (0).
    recoveredValue7 := (recoveredValue4) + (recoveredValue6).
    recoveredValue8 := (recoveredValue3) corner: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201f6440; bytecode file offset 0xaf2d00"
!RBXLineMarker methodsFor: 'recovered'!
lineColor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super lineColor: (recoveredValue0).
    recoveredValue1 := displayedObjects.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredArg1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) lineColor: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x202e69dc; bytecode file offset 0xbe32a4"
!RBXLineMarker methodsFor: 'recovered'!
moveTo: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) x.
    recoveredValue2 := p1.
    recoveredValue3 := (recoveredValue2) x.
    recoveredValue4 := (recoveredValue1) - (recoveredValue3).
    recoveredValue5 := (recoveredValue4) @ (0).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := displayedObjects.
    recoveredValue7 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := recoveredLocal1.
    recoveredBlock20Value2 := (recoveredBlock20Value0) moveDelta: (recoveredBlock20Value1).
    recoveredBlock20Value2
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := p1.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) x.
    (recoveredValue8) x: (recoveredValue10).
    recoveredValue11 := p2.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) x.
    (recoveredValue11) x: (recoveredValue13).
    ^self
! !

"ASDBase.ic method 0x204d052c; bytecode file offset 0xdcce14"
!RBXLineMarker methodsFor: 'recovered'!
initFrom: recoveredArg1 to: recoveredArg2 lineStyle: recoveredArg3 delta: recoveredArg4 manager: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 |
    recoveredValue0 := recoveredArg3.
    (self) lineStyle: (recoveredValue0).
    recoveredValue1 := recoveredArg5.
    (self) manager: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    p1 := recoveredValue2.
    recoveredValue3 := recoveredArg2.
    p2 := recoveredValue3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue4) asInteger.
    delta := recoveredValue5.
    recoveredValue6 := delta.
    recoveredValue7 := (recoveredValue6) * (#[102 102 102 102 102 102 246 63]).
    recoveredValue8 := (recoveredValue7) asInteger.
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := OrderedCollection.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := delta.
    recoveredValue12 := (recoveredValue11) @ (0).
    recoveredValue13 := (recoveredValue10) - (recoveredValue12).
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := delta.
    recoveredValue16 := (recoveredValue15) @ (0).
    recoveredValue17 := (recoveredValue14) + (recoveredValue16).
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := (0) @ (recoveredValue19).
    recoveredValue21 := (recoveredValue18) + (recoveredValue20).
    recoveredValue22 := recoveredArg1.
    recoveredValue23 := delta.
    recoveredValue24 := (recoveredValue23) @ (0).
    recoveredValue25 := (recoveredValue22) - (recoveredValue24).
    recoveredValue26 := (recoveredValue9) with: (recoveredValue13) with: (recoveredValue17) with: (recoveredValue21) with: (recoveredValue25).
    recoveredLocal3 := recoveredValue26.
    recoveredValue27 := OrderedCollection.
    recoveredValue28 := recoveredArg2.
    recoveredValue29 := delta.
    recoveredValue30 := (recoveredValue29) @ (0).
    recoveredValue31 := (recoveredValue28) - (recoveredValue30).
    recoveredValue32 := recoveredArg2.
    recoveredValue33 := delta.
    recoveredValue34 := (recoveredValue33) @ (0).
    recoveredValue35 := (recoveredValue32) + (recoveredValue34).
    recoveredValue36 := recoveredArg2.
    recoveredValue37 := recoveredLocal1.
    recoveredValue38 := (0) @ (recoveredValue37).
    recoveredValue39 := (recoveredValue36) - (recoveredValue38).
    recoveredValue40 := recoveredArg2.
    recoveredValue41 := delta.
    recoveredValue42 := (recoveredValue41) @ (0).
    recoveredValue43 := (recoveredValue40) - (recoveredValue42).
    recoveredValue44 := (recoveredValue27) with: (recoveredValue31) with: (recoveredValue35) with: (recoveredValue39) with: (recoveredValue43).
    recoveredLocal2 := recoveredValue44.
    recoveredValue45 := Array.
    recoveredValue46 := RBLineGO.
    recoveredValue47 := recoveredArg3.
    recoveredValue48 := recoveredArg5.
    recoveredValue49 := recoveredArg1.
    recoveredValue50 := recoveredArg2.
    recoveredValue51 := (recoveredValue46) createWithLineStyle: (recoveredValue47) manager: (recoveredValue48) pointA: (recoveredValue49) pointB: (recoveredValue50).
    recoveredValue52 := RBPolygonGO.
    recoveredValue53 := recoveredLocal3.
    recoveredValue54 := recoveredArg3.
    recoveredValue55 := recoveredArg5.
    recoveredValue56 := (recoveredValue52) createWithPointColl: (recoveredValue53) lineStyle: (recoveredValue54) areaStyle: (nil) manager: (recoveredValue55).
    recoveredValue57 := RBPolygonGO.
    recoveredValue58 := recoveredLocal2.
    recoveredValue59 := recoveredArg3.
    recoveredValue60 := recoveredArg5.
    recoveredValue61 := (recoveredValue57) createWithPointColl: (recoveredValue58) lineStyle: (recoveredValue59) areaStyle: (nil) manager: (recoveredValue60).
    recoveredValue62 := (recoveredValue45) with: (recoveredValue51) with: (recoveredValue56) with: (recoveredValue61).
    displayedObjects := recoveredValue62.
    ^self
! !

