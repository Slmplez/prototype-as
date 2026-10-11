"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003bab0; bytecode file offset 0x938608"
!RBGraphicUtilities methodsFor: 'recovered'!
dbXmlDeepCopy: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) dbXmlGenericDeepCopy: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2007ac04; bytecode file offset 0x97c330"
!RBGraphicUtilities methodsFor: 'recovered'!
optionGraphicsCompatibilityMode
    ^false
! !

"ASDBase.ic method 0x201b5c00; bytecode file offset 0xab24d0"
!RBGraphicUtilities methodsFor: 'recovered'!
enclosingRectFor: recoveredArg1 and: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := ('Kk') == ('Call_2007401277').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) origin.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) origin.
    recoveredValue5 := (recoveredValue2) min: (recoveredValue4).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) corner.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (recoveredValue8) corner.
    recoveredValue10 := (recoveredValue7) max: (recoveredValue9).
    recoveredValue11 := (recoveredValue5) corner: (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x201f66d0; bytecode file offset 0xaf2f98"
!RBGraphicUtilities methodsFor: 'recovered'!
wrapGOForBuilding: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) class.
    recoveredBlock4Value2 := RBBuildGO.
    recoveredBlock4Value3 := (recoveredBlock4Value1) ~= (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    (self) runtimeAssert: (recoveredValue0) additionalInfo: ('do not wrap twice into same wrapper').
    recoveredValue1 := RBBuildGO.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) createWith: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202b1604; bytecode file offset 0xbadedc"
!RBGraphicUtilities methodsFor: 'recovered'!
enclosingRectOf: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := Rectangle.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) origin: (recoveredStack2) corner: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeFirst.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := [:block280e4a38Arg1 :block280e4a38Arg2 | 
    | block280e4a38Value0 block280e4a38Value1 block280e4a38Value2 |
    block280e4a38Value0 := block280e4a38Arg1.
    block280e4a38Value1 := block280e4a38Arg2.
    block280e4a38Value2 := (block280e4a38Value0) merge: (block280e4a38Value1).
    block280e4a38Value2
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202de428; bytecode file offset 0xbdacf8"
!RBGraphicUtilities methodsFor: 'recovered'!
wrapGOForChange: recoveredArg1 at: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) class.
    recoveredBlock4Value2 := RBChangingGO.
    recoveredBlock4Value3 := (recoveredBlock4Value1) ~= (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    (self) runtimeAssert: (recoveredValue0) additionalInfo: ('do not wrap twice into same wrapper').
    recoveredValue1 := RBChangingGO.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) capturedPosition.
    recoveredValue6 := (recoveredValue3) - (recoveredValue5).
    recoveredValue7 := (recoveredValue1) createWith: (recoveredValue2) deltaFromPosition: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredArg1.
    (recoveredValue8) changeStarted.
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x2049a858; bytecode file offset 0xd97134"
!RBGraphicUtilities methodsFor: 'recovered'!
enclosingRectOfPoints: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := Rectangle.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) origin: (recoveredStack2) corner: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeFirst.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := [:recoveredBlock62Arg1 | 
    | recoveredBlock62Value0 recoveredBlock62Value1 recoveredBlock62Value2 recoveredBlock62Value3 recoveredBlock62Value4 recoveredBlock62Value5 recoveredBlock62Value6 recoveredBlock62Value7 recoveredBlock62Value8 recoveredBlock62Value9 recoveredBlock62Value10 recoveredBlock62Value11 recoveredBlock62Value12 recoveredBlock62Value13 recoveredBlock62Value14 recoveredBlock62Value15 recoveredBlock62Value16 |
    recoveredBlock62Value0 := recoveredLocal4.
    recoveredBlock62Value1 := recoveredBlock62Arg1.
    recoveredBlock62Value2 := (recoveredBlock62Value1) x.
    recoveredBlock62Value3 := (recoveredBlock62Value0) min: (recoveredBlock62Value2).
    recoveredLocal4 := recoveredBlock62Value3.
    recoveredBlock62Value4 := recoveredLocal3.
    recoveredBlock62Value5 := recoveredBlock62Arg1.
    recoveredBlock62Value6 := (recoveredBlock62Value5) y.
    recoveredBlock62Value7 := (recoveredBlock62Value4) min: (recoveredBlock62Value6).
    recoveredLocal3 := recoveredBlock62Value7.
    recoveredBlock62Value8 := recoveredLocal2.
    recoveredBlock62Value9 := recoveredBlock62Arg1.
    recoveredBlock62Value10 := (recoveredBlock62Value9) x.
    recoveredBlock62Value11 := (recoveredBlock62Value8) max: (recoveredBlock62Value10).
    recoveredLocal2 := recoveredBlock62Value11.
    recoveredBlock62Value12 := recoveredLocal1.
    recoveredBlock62Value13 := recoveredBlock62Arg1.
    recoveredBlock62Value14 := (recoveredBlock62Value13) y.
    recoveredBlock62Value15 := (recoveredBlock62Value12) max: (recoveredBlock62Value14).
    recoveredBlock62Value16 := recoveredBlock62Value15.
    recoveredLocal1 := recoveredBlock62Value16.
    recoveredBlock62Value15
].
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := Rectangle.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) origin: (recoveredStack2) corner: (recoveredStack3).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

