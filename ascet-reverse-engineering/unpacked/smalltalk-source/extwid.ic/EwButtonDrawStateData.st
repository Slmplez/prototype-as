"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20002684; bytecode file offset 0x534f0"
!EwButtonDrawStateData methodsFor: 'recovered'!
state
    | recoveredValue0 |
    recoveredValue0 := state.
    ^recoveredValue0
! !

"extwid.ic method 0x200027a4; bytecode file offset 0x53678"
!EwButtonDrawStateData methodsFor: 'recovered'!
originThickness
    | recoveredValue0 |
    recoveredValue0 := originThickness.
    ^recoveredValue0
! !

"extwid.ic method 0x20002a4c; bytecode file offset 0x53810"
!EwButtonDrawStateData methodsFor: 'recovered'!
cornerThickness
    | recoveredValue0 |
    recoveredValue0 := cornerThickness.
    ^recoveredValue0
! !

"extwid.ic method 0x20002a94; bytecode file offset 0x53998"
!EwButtonDrawStateData methodsFor: 'recovered'!
imageOffset
    | recoveredValue0 |
    recoveredValue0 := imageOffset.
    ^recoveredValue0
! !

"extwid.ic method 0x20002c84; bytecode file offset 0x53ae8"
!EwButtonDrawStateData methodsFor: 'recovered'!
drawBlock
    | recoveredValue0 |
    recoveredValue0 := drawBlock.
    ^recoveredValue0
! !

"extwid.ic method 0x20002e34; bytecode file offset 0x53c68"
!EwButtonDrawStateData methodsFor: 'recovered'!
stippledFace
    | recoveredValue0 |
    recoveredValue0 := stippledFace.
    ^recoveredValue0
! !

"extwid.ic method 0x20006348; bytecode file offset 0x5710c"
!EwButtonDrawStateData methodsFor: 'recovered'!
state: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    state := recoveredValue0.
    ^self
! !

"extwid.ic method 0x200063a8; bytecode file offset 0x57284"
!EwButtonDrawStateData methodsFor: 'recovered'!
originThickness: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    originThickness := recoveredValue0.
    ^self
! !

"extwid.ic method 0x200065d0; bytecode file offset 0x57404"
!EwButtonDrawStateData methodsFor: 'recovered'!
cornerThickness: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cornerThickness := recoveredValue0.
    ^self
! !

"extwid.ic method 0x2000674c; bytecode file offset 0x57568"
!EwButtonDrawStateData methodsFor: 'recovered'!
imageOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    imageOffset := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006814; bytecode file offset 0x576a8"
!EwButtonDrawStateData methodsFor: 'recovered'!
drawBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    drawBlock := recoveredValue0.
    ^self
! !

"extwid.ic method 0x2000690c; bytecode file offset 0x577e8"
!EwButtonDrawStateData methodsFor: 'recovered'!
stippledFace: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    stippledFace := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20028568; bytecode file offset 0x79368"
!EwButtonDrawStateData methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) tab.
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) state.
    recoveredValue6 := (recoveredValue5) printString.
    recoveredValue7 := ('state: ') , (recoveredValue6).
    (recoveredValue4) nextPutAll: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) cr.
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) tab.
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) originThickness.
    recoveredValue12 := (recoveredValue11) printString.
    recoveredValue13 := ('originThickness: ') , (recoveredValue12).
    (recoveredValue10) nextPutAll: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    (recoveredValue14) cr.
    recoveredValue15 := recoveredValue1.
    (recoveredValue15) tab.
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := (self) cornerThickness.
    recoveredValue18 := (recoveredValue17) printString.
    recoveredValue19 := ('cornerThickness: ') , (recoveredValue18).
    (recoveredValue16) nextPutAll: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    (recoveredValue20) cr.
    recoveredValue21 := recoveredValue1.
    (recoveredValue21) tab.
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := (self) imageOffset.
    recoveredValue24 := (recoveredValue23) printString.
    recoveredValue25 := ('imageOffset: ') , (recoveredValue24).
    (recoveredValue22) nextPutAll: (recoveredValue25).
    (recoveredValue1) cr.
    ^self
! !

