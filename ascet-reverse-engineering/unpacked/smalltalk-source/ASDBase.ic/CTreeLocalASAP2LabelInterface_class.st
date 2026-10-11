"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20019acc; bytecode file offset 0x92209c"
!CTreeLocalASAP2LabelInterface class methodsFor: 'recovered'!
defaultPath
    ^'d:\testal_32.w95'
! !

"ASDBase.ic method 0x201b7a20; bytecode file offset 0xab42e8"
!CTreeLocalASAP2LabelInterface class methodsFor: 'recovered'!
indices
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (2).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := DBClassNameLabelKey.
    (recoveredValue2) at: (1) put: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := DBNameLabelKey.
    (recoveredValue4) at: (1) put: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x202b0cc4; bytecode file offset 0xbad5a8"
!CTreeLocalASAP2LabelInterface class methodsFor: 'recovered'!
createKeyMap
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredLocal2 := 0.
    recoveredValue2 := (self) indices.
    recoveredValue3 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 recoveredBlock16Value5 |
    recoveredBlock16Value0 := recoveredLocal1.
    recoveredBlock16Value1 := recoveredBlock16Arg1.
    recoveredBlock16Value2 := recoveredLocal2.
    (recoveredBlock16Value0) at: (recoveredBlock16Value1) put: (recoveredBlock16Value2).
    recoveredBlock16Value3 := recoveredLocal2.
    recoveredBlock16Value4 := (recoveredBlock16Value3) + (1).
    recoveredBlock16Value5 := recoveredBlock16Value4.
    recoveredLocal2 := recoveredBlock16Value5.
    recoveredBlock16Value4
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

