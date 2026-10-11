"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2016fa44; bytecode file offset 0xa6c300"
!RBYLineMarker methodsFor: 'recovered'!
logicFrame
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := p1.
    recoveredValue1 := delta.
    recoveredValue2 := (0) @ (recoveredValue1).
    recoveredValue3 := (recoveredValue0) - (recoveredValue2).
    recoveredValue4 := p2.
    recoveredValue5 := delta.
    recoveredValue6 := (0) @ (recoveredValue5).
    recoveredValue7 := (recoveredValue4) + (recoveredValue6).
    recoveredValue8 := (recoveredValue3) corner: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x202e6bec; bytecode file offset 0xbe34b4"
!RBYLineMarker methodsFor: 'recovered'!
moveTo: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) y.
    recoveredValue2 := p1.
    recoveredValue3 := (recoveredValue2) y.
    recoveredValue4 := (recoveredValue1) - (recoveredValue3).
    recoveredValue5 := (0) @ (recoveredValue4).
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
    recoveredValue10 := (recoveredValue9) y.
    (recoveredValue8) y: (recoveredValue10).
    recoveredValue11 := p2.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) y.
    (recoveredValue11) y: (recoveredValue13).
    ^self
! !

"ASDBase.ic method 0x204d0604; bytecode file offset 0xdcceec"
!RBYLineMarker methodsFor: 'recovered'!
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
    recoveredValue12 := (0) @ (recoveredValue11).
    recoveredValue13 := (recoveredValue10) - (recoveredValue12).
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := delta.
    recoveredValue16 := (0) @ (recoveredValue15).
    recoveredValue17 := (recoveredValue14) + (recoveredValue16).
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := (recoveredValue19) @ (0).
    recoveredValue21 := (recoveredValue18) + (recoveredValue20).
    recoveredValue22 := recoveredArg1.
    recoveredValue23 := delta.
    recoveredValue24 := (0) @ (recoveredValue23).
    recoveredValue25 := (recoveredValue22) - (recoveredValue24).
    recoveredValue26 := (recoveredValue9) with: (recoveredValue13) with: (recoveredValue17) with: (recoveredValue21) with: (recoveredValue25).
    recoveredLocal3 := recoveredValue26.
    recoveredValue27 := OrderedCollection.
    recoveredValue28 := recoveredArg2.
    recoveredValue29 := delta.
    recoveredValue30 := (0) @ (recoveredValue29).
    recoveredValue31 := (recoveredValue28) - (recoveredValue30).
    recoveredValue32 := recoveredArg2.
    recoveredValue33 := delta.
    recoveredValue34 := (0) @ (recoveredValue33).
    recoveredValue35 := (recoveredValue32) + (recoveredValue34).
    recoveredValue36 := recoveredArg2.
    recoveredValue37 := recoveredLocal1.
    recoveredValue38 := (recoveredValue37) @ (0).
    recoveredValue39 := (recoveredValue36) - (recoveredValue38).
    recoveredValue40 := recoveredArg2.
    recoveredValue41 := delta.
    recoveredValue42 := (0) @ (recoveredValue41).
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

