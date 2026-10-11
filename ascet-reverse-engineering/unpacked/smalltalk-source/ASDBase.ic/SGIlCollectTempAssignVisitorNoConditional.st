"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20096260; bytecode file offset 0x992bec"
!SGIlCollectTempAssignVisitorNoConditional methodsFor: 'recovered'!
binaryLogicExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) leftExpr.
    (self) visitNode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202fada4; bytecode file offset 0xbf766c"
!SGIlCollectTempAssignVisitorNoConditional methodsFor: 'recovered'!
nestedDo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) tempAssigns.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := (self) visitedTempAssignExprs.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    tempAssigns := recoveredValue3.
    visitedTempAssignExprs := nil.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 |
    recoveredBlock24Value0 := tempAssigns.
    recoveredLocal1 := recoveredBlock24Value0.
    recoveredBlock24Value1 := recoveredLocal2.
    tempAssigns := recoveredBlock24Value1.
    recoveredBlock24Value2 := recoveredLocal3.
    recoveredBlock24Value3 := recoveredBlock24Value2.
    visitedTempAssignExprs := recoveredBlock24Value3.
    recoveredBlock24Value2
].
    (recoveredValue4) ensure: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20380bb8; bytecode file offset 0xc7d48c"
!SGIlCollectTempAssignVisitorNoConditional methodsFor: 'recovered'!
muxExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) condExpr.
    (self) visitNode: (recoveredValue1).
    recoveredValue2 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredArg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) leftExpr.
    recoveredBlock11Value2 := (self) visitNode: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    recoveredValue3 := (self) nestedDo: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := [
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 |
    recoveredBlock29Value0 := recoveredArg1.
    recoveredBlock29Value1 := (recoveredBlock29Value0) rightExpr.
    recoveredBlock29Value2 := (self) visitNode: (recoveredBlock29Value1).
    recoveredBlock29Value2
].
    recoveredValue5 := (self) nestedDo: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := tempAssigns.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Value0 recoveredBlock52Value1 recoveredBlock52Value2 |
    recoveredBlock52Value0 := recoveredLocal2.
    recoveredBlock52Value1 := recoveredBlock52Arg1.
    recoveredBlock52Value2 := (recoveredBlock52Value0) includes: (recoveredBlock52Value1).
    recoveredBlock52Value2
].
    recoveredValue9 := (recoveredValue7) select: (recoveredValue8).
    (recoveredValue6) addAll: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x203eb594; bytecode file offset 0xce7e70"
!SGIlCollectTempAssignVisitorNoConditional methodsFor: 'recovered'!
multiplexExpr: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) condExpr.
    (self) visitNode: (recoveredValue1).
    recoveredValue2 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredArg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) defaultExpr.
    recoveredBlock11Value2 := (self) visitNode: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    recoveredValue3 := (self) nestedDo: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) choices.
    recoveredValue6 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Local1 recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 recoveredBlock33Value4 recoveredBlock33Value5 |
    recoveredBlock33Value0 := [
    | recoveredBlock33Block40Value0 recoveredBlock33Block40Value1 |
    recoveredBlock33Block40Value0 := recoveredBlock33Arg1.
    recoveredBlock33Block40Value1 := (self) visitNode: (recoveredBlock33Block40Value0).
    recoveredBlock33Block40Value1
].
    recoveredBlock33Value1 := (self) nestedDo: (recoveredBlock33Value0).
    recoveredBlock33Local1 := recoveredBlock33Value1.
    recoveredBlock33Value2 := recoveredLocal1.
    recoveredBlock33Value3 := [:recoveredBlock33Block58Arg1 | 
    | recoveredBlock33Block58Value0 recoveredBlock33Block58Value1 recoveredBlock33Block58Value2 |
    recoveredBlock33Block58Value0 := recoveredBlock33Local1.
    recoveredBlock33Block58Value1 := recoveredBlock33Block58Arg1.
    recoveredBlock33Block58Value2 := (recoveredBlock33Block58Value0) includes: (recoveredBlock33Block58Value1).
    recoveredBlock33Block58Value2
].
    recoveredBlock33Value4 := (recoveredBlock33Value2) select: (recoveredBlock33Value3).
    recoveredBlock33Value5 := recoveredBlock33Value4.
    recoveredLocal1 := recoveredBlock33Value5.
    recoveredBlock33Value4
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := (self) tempAssigns.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue7) addAll: (recoveredValue8).
    ^self
! !

