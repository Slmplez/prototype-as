"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20020414; bytecode file offset 0x92209c"
!CTreeLocalLabelInterface class methodsFor: 'recovered'!
defaultPath
    ^'d:\testl_32.w95'
! !

"ASDBase.ic method 0x202febe0; bytecode file offset 0xbfb4b8"
!CTreeLocalLabelInterface class methodsFor: 'recovered'!
indices
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (6).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := DBClassNameKey.
    (recoveredValue3) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := DBNameKey.
    (recoveredValue5) at: (2) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := DBFunctionKey.
    (recoveredValue7) at: (3) put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := DBCompleteNameKey.
    (recoveredValue9) at: (4) put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := DBClassNameFunctionKey.
    (recoveredValue11) at: (5) put: (recoveredValue12).
    recoveredValue13 := DBCompleteNameFunctionKey.
    (recoveredValue2) at: (6) put: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    ^recoveredValue14
! !

"ASDBase.ic method 0x20392730; bytecode file offset 0xc8f00c"
!CTreeLocalLabelInterface class methodsFor: 'recovered'!
createKeyMap
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
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
    recoveredValue5 := DBClassNameLabelKey.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := DBClassNameKey.
    recoveredValue8 := (recoveredValue6) at: (recoveredValue7).
    (recoveredValue4) at: (recoveredValue5) put: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := DBNameLabelKey.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := DBNameKey.
    recoveredValue13 := (recoveredValue11) at: (recoveredValue12).
    (recoveredValue9) at: (recoveredValue10) put: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    ^recoveredValue14
! !

