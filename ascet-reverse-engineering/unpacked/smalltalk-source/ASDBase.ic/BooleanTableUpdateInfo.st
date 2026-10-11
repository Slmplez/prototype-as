"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20018320; bytecode file offset 0x92209c"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
aspectInput
    ^'input'
! !

"ASDBase.ic method 0x20019b5c; bytecode file offset 0x92209c"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
aspectCombination
    ^'combination'
! !

"ASDBase.ic method 0x2001c73c; bytecode file offset 0x92209c"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
subAspectCell
    ^'cell'
! !

"ASDBase.ic method 0x2001c964; bytecode file offset 0x92209c"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
subAspectName
    ^'name'
! !

"ASDBase.ic method 0x20025ce4; bytecode file offset 0x923928"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
aspectOutput
    ^'output'
! !

"ASDBase.ic method 0x20050838; bytecode file offset 0x94d0fc"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
hasNoAspect
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) aspect.
    recoveredValue1 := (recoveredValue0) = (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050844; bytecode file offset 0x94d0fc"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
hasNoSubAspect
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) subAspect.
    recoveredValue1 := (recoveredValue0) = (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200570b0; bytecode file offset 0x9539d4"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
updateNeededForModel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) model.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20062188; bytecode file offset 0x95ebd4"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
hasInputAspect
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) aspect.
    recoveredValue1 := (self) aspectInput.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20062198; bytecode file offset 0x95ebd4"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
hasOutputAspect
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) aspect.
    recoveredValue1 := (self) aspectOutput.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200621b8; bytecode file offset 0x95ebd4"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
hasCombinationAspect
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) aspect.
    recoveredValue1 := (self) aspectCombination.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200621c8; bytecode file offset 0x95ebd4"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
hasCellSubAspect
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) subAspect.
    recoveredValue1 := (self) subAspectCell.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200622d8; bytecode file offset 0x95ebd4"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
hasNameSubAspect
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) subAspect.
    recoveredValue1 := (self) subAspectName.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200661dc; bytecode file offset 0x963428"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
model
    | recoveredValue0 |
    recoveredValue0 := model.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067cc4; bytecode file offset 0x9646f8"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
aspect
    | recoveredValue0 |
    recoveredValue0 := aspect.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200690d4; bytecode file offset 0x965b90"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
index
    | recoveredValue0 |
    recoveredValue0 := index.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200695b0; bytecode file offset 0x966bdc"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
subAspect
    | recoveredValue0 |
    recoveredValue0 := subAspect.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ab6c; bytecode file offset 0x967a18"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
subIndex
    | recoveredValue0 |
    recoveredValue0 := subIndex.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be3fc; bytecode file offset 0x9bb178"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
model: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    model := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200beb38; bytecode file offset 0x9bc0b4"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
aspect: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    aspect := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfdac; bytecode file offset 0x9bd228"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
index: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    index := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1290; bytecode file offset 0x9bdf14"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
subAspect: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    subAspect := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1984; bytecode file offset 0x9beac8"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
subIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    subIndex := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2016dd60; bytecode file offset 0xa6a660"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
updateInputs
    | recoveredValue0 |
    recoveredValue0 := (self) aspectInput.
    (self) aspect: (recoveredValue0).
    (self) index: (nil).
    (self) subAspect: (nil).
    (self) subIndex: (nil).
    ^self
! !

"ASDBase.ic method 0x2016dd7c; bytecode file offset 0xa6a660"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
updateOutputs
    | recoveredValue0 |
    recoveredValue0 := (self) aspectOutput.
    (self) aspect: (recoveredValue0).
    (self) index: (nil).
    (self) subAspect: (nil).
    (self) subIndex: (nil).
    ^self
! !

"ASDBase.ic method 0x2016dd98; bytecode file offset 0xa6a660"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
updateCombinations
    | recoveredValue0 |
    recoveredValue0 := (self) aspectCombination.
    (self) aspect: (recoveredValue0).
    (self) index: (nil).
    (self) subAspect: (nil).
    (self) subIndex: (nil).
    ^self
! !

"ASDBase.ic method 0x20173bd0; bytecode file offset 0xa70498"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
updateCombinationAt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) aspectCombination.
    (self) aspect: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) index: (recoveredValue1).
    (self) subAspect: (nil).
    (self) subIndex: (nil).
    ^self
! !

"ASDBase.ic method 0x20183ae8; bytecode file offset 0xa80414"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
updateInputCellsAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) aspectInput.
    (self) aspect: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) index: (recoveredValue1).
    recoveredValue2 := (self) subAspectCell.
    (self) subAspect: (recoveredValue2).
    (self) subIndex: (nil).
    ^self
! !

"ASDBase.ic method 0x20183b08; bytecode file offset 0xa80414"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
updateOutputNameAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) aspectOutput.
    (self) aspect: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) index: (recoveredValue1).
    recoveredValue2 := (self) subAspectName.
    (self) subAspect: (recoveredValue2).
    (self) subIndex: (nil).
    ^self
! !

"ASDBase.ic method 0x20183b28; bytecode file offset 0xa80414"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
updateOutputCellsAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) aspectOutput.
    (self) aspect: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) index: (recoveredValue1).
    recoveredValue2 := (self) subAspectCell.
    (self) subAspect: (recoveredValue2).
    (self) subIndex: (nil).
    ^self
! !

"ASDBase.ic method 0x20183b48; bytecode file offset 0xa80414"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
updateInputNameAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) aspectInput.
    (self) aspect: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) index: (recoveredValue1).
    recoveredValue2 := (self) subAspectName.
    (self) subAspect: (recoveredValue2).
    (self) subIndex: (nil).
    ^self
! !

"ASDBase.ic method 0x2018732c; bytecode file offset 0xa83c18"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
updateInputCellAt: recoveredArg1 combination: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) aspectInput.
    (self) aspect: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) index: (recoveredValue1).
    recoveredValue2 := (self) subAspectCell.
    (self) subAspect: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    (self) subIndex: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2018734c; bytecode file offset 0xa83c18"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
updateOutputCellAt: recoveredArg1 combination: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) aspectOutput.
    (self) aspect: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) index: (recoveredValue1).
    recoveredValue2 := (self) subAspectCell.
    (self) subAspect: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    (self) subIndex: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20395278; bytecode file offset 0xc91b68"
!BooleanTableUpdateInfo methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) model.
    recoveredValue3 := (recoveredValue2) class.
    recoveredValue4 := (recoveredValue3) printString.
    recoveredValue5 := ('Model    :') , (recoveredValue4).
    (recoveredValue1) nextPutAll: (recoveredValue5).
    (recoveredValue0) cr.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := (self) aspect.
    recoveredValue9 := (recoveredValue8) printString.
    recoveredValue10 := ('Aspect   :') , (recoveredValue9).
    (recoveredValue7) nextPutAll: (recoveredValue10).
    (recoveredValue6) cr.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := recoveredValue11.
    recoveredValue13 := (self) index.
    recoveredValue14 := (recoveredValue13) printString.
    recoveredValue15 := ('Index    :') , (recoveredValue14).
    (recoveredValue12) nextPutAll: (recoveredValue15).
    (recoveredValue11) cr.
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := recoveredValue16.
    recoveredValue18 := (self) subAspect.
    recoveredValue19 := (recoveredValue18) printString.
    recoveredValue20 := ('SubAspect:') , (recoveredValue19).
    (recoveredValue17) nextPutAll: (recoveredValue20).
    (recoveredValue16) cr.
    recoveredValue21 := recoveredArg1.
    recoveredValue22 := recoveredValue21.
    recoveredValue23 := (self) subIndex.
    recoveredValue24 := (recoveredValue23) printString.
    recoveredValue25 := ('SubIndex :') , (recoveredValue24).
    (recoveredValue22) nextPutAll: (recoveredValue25).
    (recoveredValue21) cr.
    ^self
! !

