"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20000444; bytecode file offset 0x5132c"
!EwButtonDrawOutlinedPolicy methodsFor: 'recovered'!
deepPressedStateDrawBlock
    | recoveredValue0 |
    recoveredValue0 := (self) pressedStateDrawBlock.
    ^recoveredValue0
! !

"extwid.ic method 0x200004f8; bytecode file offset 0x5132c"
!EwButtonDrawOutlinedPolicy methodsFor: 'recovered'!
deepPressedState
    | recoveredValue0 |
    recoveredValue0 := (self) pressedState.
    ^recoveredValue0
! !

"extwid.ic method 0x20004b50; bytecode file offset 0x55918"
!EwButtonDrawOutlinedPolicy methodsFor: 'recovered'!
defineAssumedBorder
    (self) assumedBorder: (0).
    ^self
! !

"extwid.ic method 0x20008c2c; bytecode file offset 0x599f8"
!EwButtonDrawOutlinedPolicy methodsFor: 'recovered'!
defineBevelThickness
    (self) bevelWidth: (1).
    (self) bevelHeight: (1).
    ^self
! !

"extwid.ic method 0x200199ac; bytecode file offset 0x6a7d0"
!EwButtonDrawOutlinedPolicy methodsFor: 'recovered'!
pressedState
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EwButtonDrawStateData.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) state: ('pressed').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) originThickness: (1).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) cornerThickness: (0).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) stippledFace: (false).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (1) @ (1).
    (recoveredValue6) imageOffset: (recoveredValue7).
    recoveredValue8 := (self) pressedStateDrawBlock.
    recoveredValue9 := (recoveredValue1) drawBlock: (recoveredValue8).
    ^recoveredValue9
! !

"extwid.ic method 0x20019a40; bytecode file offset 0x6a830"
!EwButtonDrawOutlinedPolicy methodsFor: 'recovered'!
checkedState
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EwButtonDrawStateData.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) state: ('checked').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) originThickness: (1).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) cornerThickness: (0).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) stippledFace: (true).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (0) @ (0).
    (recoveredValue6) imageOffset: (recoveredValue7).
    recoveredValue8 := (self) checkedStateDrawBlock.
    recoveredValue9 := (recoveredValue1) drawBlock: (recoveredValue8).
    ^recoveredValue9
! !

"extwid.ic method 0x20019b00; bytecode file offset 0x6a924"
!EwButtonDrawOutlinedPolicy methodsFor: 'recovered'!
upState
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EwButtonDrawStateData.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) state: ('up').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) originThickness: (1).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) cornerThickness: (2).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) stippledFace: (false).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (0) @ (0).
    (recoveredValue6) imageOffset: (recoveredValue7).
    recoveredValue8 := (self) upStateDrawBlock.
    recoveredValue9 := (recoveredValue1) drawBlock: (recoveredValue8).
    ^recoveredValue9
! !

"extwid.ic method 0x20023ec0; bytecode file offset 0x74ca8"
!EwButtonDrawOutlinedPolicy methodsFor: 'recovered'!
checkedStateDrawBlock
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 :recoveredBlock4Arg2 | 
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Local3 recoveredBlock4Local4 recoveredBlock4Local5 recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 recoveredBlock4Value9 recoveredBlock4Value10 recoveredBlock4Value11 recoveredBlock4Value12 recoveredBlock4Value13 recoveredBlock4Value14 recoveredBlock4Value15 recoveredBlock4Value16 recoveredBlock4Value17 recoveredBlock4Value18 recoveredBlock4Value19 recoveredBlock4Value20 recoveredBlock4Value21 recoveredBlock4Value22 recoveredBlock4Value23 recoveredBlock4Value24 recoveredBlock4Value25 recoveredBlock4Value26 recoveredBlock4Value27 recoveredBlock4Value28 recoveredBlock4Value29 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) renderContext.
    rc := recoveredBlock4Value1.
    recoveredBlock4Value2 := rc.
    recoveredBlock4Value3 := (recoveredBlock4Value2) x.
    recoveredBlock4Local4 := recoveredBlock4Value3.
    recoveredBlock4Value4 := rc.
    recoveredBlock4Value5 := (recoveredBlock4Value4) y.
    recoveredBlock4Local2 := recoveredBlock4Value5.
    recoveredBlock4Value6 := rc.
    recoveredBlock4Value7 := (recoveredBlock4Value6) right.
    recoveredBlock4Value8 := (recoveredBlock4Value7) + (-1).
    recoveredBlock4Local5 := recoveredBlock4Value8.
    recoveredBlock4Value9 := rc.
    recoveredBlock4Value10 := (recoveredBlock4Value9) bottom.
    recoveredBlock4Value11 := (recoveredBlock4Value10) + (-1).
    recoveredBlock4Local3 := recoveredBlock4Value11.
    recoveredBlock4Value12 := recoveredBlock4Arg1.
    recoveredBlock4Value13 := (recoveredBlock4Value12) shadingGC.
    recoveredBlock4Local1 := recoveredBlock4Value13.
    recoveredBlock4Value14 := rc.
    recoveredBlock4Value15 := (recoveredBlock4Value14) drawable.
    recoveredBlock4Value16 := recoveredBlock4Value15.
    recoveredBlock4Value17 := recoveredBlock4Local1.
    recoveredBlock4Value18 := recoveredBlock4Local5.
    recoveredBlock4Value19 := recoveredBlock4Local2.
    recoveredBlock4Value20 := recoveredBlock4Local4.
    recoveredBlock4Value21 := recoveredBlock4Local2.
    (recoveredBlock4Value16) drawLine: (recoveredBlock4Value17) x1: (recoveredBlock4Value18) y1: (recoveredBlock4Value19) x2: (recoveredBlock4Value20) y2: (recoveredBlock4Value21).
    recoveredBlock4Value22 := recoveredBlock4Local1.
    recoveredBlock4Value23 := recoveredBlock4Local4.
    recoveredBlock4Value24 := recoveredBlock4Local2.
    recoveredBlock4Value25 := recoveredBlock4Local4.
    recoveredBlock4Value26 := recoveredBlock4Local3.
    (recoveredBlock4Value15) drawLine: (recoveredBlock4Value22) x1: (recoveredBlock4Value23) y1: (recoveredBlock4Value24) x2: (recoveredBlock4Value25) y2: (recoveredBlock4Value26).
    recoveredBlock4Value27 := recoveredBlock4Arg1.
    recoveredBlock4Value28 := recoveredBlock4Arg2.
    recoveredBlock4Value29 := (self) drawImage: (recoveredBlock4Value27) data: (recoveredBlock4Value28).
    recoveredBlock4Value29
].
    ^recoveredValue0
! !

"extwid.ic method 0x2002b490; bytecode file offset 0x7c278"
!EwButtonDrawOutlinedPolicy methodsFor: 'recovered'!
pressedStateDrawBlock
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 :recoveredBlock4Arg2 | 
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Local3 recoveredBlock4Local4 recoveredBlock4Local5 recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 recoveredBlock4Value9 recoveredBlock4Value10 recoveredBlock4Value11 recoveredBlock4Value12 recoveredBlock4Value13 recoveredBlock4Value14 recoveredBlock4Value15 recoveredBlock4Value16 recoveredBlock4Value17 recoveredBlock4Value18 recoveredBlock4Value19 recoveredBlock4Value20 recoveredBlock4Value21 recoveredBlock4Value22 recoveredBlock4Value23 recoveredBlock4Value24 recoveredBlock4Value25 recoveredBlock4Value26 recoveredBlock4Value27 recoveredBlock4Value28 recoveredBlock4Value29 recoveredBlock4Value30 recoveredBlock4Value31 recoveredBlock4Value32 recoveredBlock4Value33 recoveredBlock4Value34 recoveredBlock4Value35 recoveredBlock4Value36 recoveredBlock4Value37 recoveredBlock4Value38 recoveredBlock4Value39 recoveredBlock4Value40 recoveredBlock4Value41 recoveredBlock4Value42 recoveredBlock4Value43 recoveredBlock4Value44 recoveredBlock4Value45 recoveredBlock4Value46 recoveredBlock4Value47 recoveredBlock4Value48 recoveredBlock4Value49 recoveredBlock4Value50 recoveredBlock4Value51 recoveredBlock4Value52 recoveredBlock4Value53 recoveredBlock4Value54 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) renderContext.
    rc := recoveredBlock4Value1.
    recoveredBlock4Value2 := rc.
    recoveredBlock4Value3 := (recoveredBlock4Value2) x.
    recoveredBlock4Local4 := recoveredBlock4Value3.
    recoveredBlock4Value4 := rc.
    recoveredBlock4Value5 := (recoveredBlock4Value4) y.
    recoveredBlock4Local2 := recoveredBlock4Value5.
    recoveredBlock4Value6 := rc.
    recoveredBlock4Value7 := (recoveredBlock4Value6) right.
    recoveredBlock4Value8 := (recoveredBlock4Value7) + (-1).
    recoveredBlock4Local5 := recoveredBlock4Value8.
    recoveredBlock4Value9 := rc.
    recoveredBlock4Value10 := (recoveredBlock4Value9) bottom.
    recoveredBlock4Value11 := (recoveredBlock4Value10) + (-1).
    recoveredBlock4Local3 := recoveredBlock4Value11.
    recoveredBlock4Value12 := recoveredBlock4Arg1.
    recoveredBlock4Value13 := (recoveredBlock4Value12) shadingGC.
    recoveredBlock4Local1 := recoveredBlock4Value13.
    recoveredBlock4Value14 := rc.
    recoveredBlock4Value15 := (recoveredBlock4Value14) drawable.
    recoveredBlock4Value16 := recoveredBlock4Value15.
    recoveredBlock4Value17 := recoveredBlock4Local1.
    recoveredBlock4Value18 := recoveredBlock4Local5.
    recoveredBlock4Value19 := recoveredBlock4Local2.
    recoveredBlock4Value20 := recoveredBlock4Local4.
    recoveredBlock4Value21 := recoveredBlock4Local2.
    (recoveredBlock4Value16) drawLine: (recoveredBlock4Value17) x1: (recoveredBlock4Value18) y1: (recoveredBlock4Value19) x2: (recoveredBlock4Value20) y2: (recoveredBlock4Value21).
    recoveredBlock4Value22 := recoveredBlock4Value15.
    recoveredBlock4Value23 := recoveredBlock4Local1.
    recoveredBlock4Value24 := recoveredBlock4Local4.
    recoveredBlock4Value25 := recoveredBlock4Local2.
    recoveredBlock4Value26 := recoveredBlock4Local4.
    recoveredBlock4Value27 := recoveredBlock4Local3.
    (recoveredBlock4Value22) drawLine: (recoveredBlock4Value23) x1: (recoveredBlock4Value24) y1: (recoveredBlock4Value25) x2: (recoveredBlock4Value26) y2: (recoveredBlock4Value27).
    recoveredBlock4Value28 := recoveredBlock4Value15.
    recoveredBlock4Value29 := recoveredBlock4Local1.
    recoveredBlock4Value30 := recoveredBlock4Local4.
    recoveredBlock4Value31 := recoveredBlock4Local3.
    recoveredBlock4Value32 := recoveredBlock4Local4.
    recoveredBlock4Value33 := (recoveredBlock4Value32) + (1).
    recoveredBlock4Value34 := recoveredBlock4Local3.
    (recoveredBlock4Value28) drawLine: (recoveredBlock4Value29) x1: (recoveredBlock4Value30) y1: (recoveredBlock4Value31) x2: (recoveredBlock4Value33) y2: (recoveredBlock4Value34).
    recoveredBlock4Value35 := recoveredBlock4Value15.
    recoveredBlock4Value36 := recoveredBlock4Local1.
    recoveredBlock4Value37 := recoveredBlock4Local4.
    recoveredBlock4Value38 := (recoveredBlock4Value37) + (1).
    recoveredBlock4Value39 := recoveredBlock4Local3.
    recoveredBlock4Value40 := recoveredBlock4Local4.
    recoveredBlock4Value41 := (recoveredBlock4Value40) + (1).
    recoveredBlock4Value42 := recoveredBlock4Local2.
    recoveredBlock4Value43 := (recoveredBlock4Value42) + (1).
    (recoveredBlock4Value35) drawLine: (recoveredBlock4Value36) x1: (recoveredBlock4Value38) y1: (recoveredBlock4Value39) x2: (recoveredBlock4Value41) y2: (recoveredBlock4Value43).
    recoveredBlock4Value44 := recoveredBlock4Local1.
    recoveredBlock4Value45 := recoveredBlock4Local4.
    recoveredBlock4Value46 := (recoveredBlock4Value45) + (1).
    recoveredBlock4Value47 := recoveredBlock4Local2.
    recoveredBlock4Value48 := (recoveredBlock4Value47) + (1).
    recoveredBlock4Value49 := recoveredBlock4Local5.
    recoveredBlock4Value50 := recoveredBlock4Local2.
    recoveredBlock4Value51 := (recoveredBlock4Value50) + (1).
    (recoveredBlock4Value15) drawLine: (recoveredBlock4Value44) x1: (recoveredBlock4Value46) y1: (recoveredBlock4Value48) x2: (recoveredBlock4Value49) y2: (recoveredBlock4Value51).
    recoveredBlock4Value52 := recoveredBlock4Arg1.
    recoveredBlock4Value53 := recoveredBlock4Arg2.
    recoveredBlock4Value54 := (self) drawImage: (recoveredBlock4Value52) data: (recoveredBlock4Value53).
    recoveredBlock4Value54
].
    ^recoveredValue0
! !

"extwid.ic method 0x20030bd4; bytecode file offset 0x819c0"
!EwButtonDrawOutlinedPolicy methodsFor: 'recovered'!
upStateDrawBlock
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 :recoveredBlock4Arg2 | 
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Local3 recoveredBlock4Local4 recoveredBlock4Local5 recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 recoveredBlock4Value9 recoveredBlock4Value10 recoveredBlock4Value11 recoveredBlock4Value12 recoveredBlock4Value13 recoveredBlock4Value14 recoveredBlock4Value15 recoveredBlock4Value16 recoveredBlock4Value17 recoveredBlock4Value18 recoveredBlock4Value19 recoveredBlock4Value20 recoveredBlock4Value21 recoveredBlock4Value22 recoveredBlock4Value23 recoveredBlock4Value24 recoveredBlock4Value25 recoveredBlock4Value26 recoveredBlock4Value27 recoveredBlock4Value28 recoveredBlock4Value29 recoveredBlock4Value30 recoveredBlock4Value31 recoveredBlock4Value32 recoveredBlock4Value33 recoveredBlock4Value34 recoveredBlock4Value35 recoveredBlock4Value36 recoveredBlock4Value37 recoveredBlock4Value38 recoveredBlock4Value39 recoveredBlock4Value40 recoveredBlock4Value41 recoveredBlock4Value42 recoveredBlock4Value43 recoveredBlock4Value44 recoveredBlock4Value45 recoveredBlock4Value46 recoveredBlock4Value47 recoveredBlock4Value48 recoveredBlock4Value49 recoveredBlock4Value50 recoveredBlock4Value51 recoveredBlock4Value52 recoveredBlock4Value53 recoveredBlock4Value54 recoveredBlock4Value55 recoveredBlock4Value56 recoveredBlock4Value57 recoveredBlock4Value58 recoveredBlock4Value59 recoveredBlock4Value60 recoveredBlock4Value61 recoveredBlock4Value62 recoveredBlock4Value63 recoveredBlock4Value64 recoveredBlock4Value65 recoveredBlock4Value66 recoveredBlock4Value67 recoveredBlock4Value68 recoveredBlock4Value69 recoveredBlock4Value70 recoveredBlock4Value71 recoveredBlock4Value72 recoveredBlock4Value73 recoveredBlock4Value74 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) renderContext.
    rc := recoveredBlock4Value1.
    recoveredBlock4Value2 := rc.
    recoveredBlock4Value3 := (recoveredBlock4Value2) x.
    recoveredBlock4Local4 := recoveredBlock4Value3.
    recoveredBlock4Value4 := rc.
    recoveredBlock4Value5 := (recoveredBlock4Value4) y.
    recoveredBlock4Local2 := recoveredBlock4Value5.
    recoveredBlock4Value6 := rc.
    recoveredBlock4Value7 := (recoveredBlock4Value6) right.
    recoveredBlock4Value8 := (recoveredBlock4Value7) + (-1).
    recoveredBlock4Local5 := recoveredBlock4Value8.
    recoveredBlock4Value9 := rc.
    recoveredBlock4Value10 := (recoveredBlock4Value9) bottom.
    recoveredBlock4Value11 := (recoveredBlock4Value10) + (-1).
    recoveredBlock4Local3 := recoveredBlock4Value11.
    recoveredBlock4Value12 := recoveredBlock4Arg1.
    recoveredBlock4Value13 := (recoveredBlock4Value12) shadingGC.
    recoveredBlock4Local1 := recoveredBlock4Value13.
    recoveredBlock4Value14 := rc.
    recoveredBlock4Value15 := (recoveredBlock4Value14) drawable.
    recoveredBlock4Value16 := recoveredBlock4Value15.
    recoveredBlock4Value17 := recoveredBlock4Local1.
    recoveredBlock4Value18 := recoveredBlock4Local4.
    recoveredBlock4Value19 := recoveredBlock4Local3.
    recoveredBlock4Value20 := recoveredBlock4Local5.
    recoveredBlock4Value21 := recoveredBlock4Local3.
    (recoveredBlock4Value16) drawLine: (recoveredBlock4Value17) x1: (recoveredBlock4Value18) y1: (recoveredBlock4Value19) x2: (recoveredBlock4Value20) y2: (recoveredBlock4Value21).
    recoveredBlock4Value22 := recoveredBlock4Value15.
    recoveredBlock4Value23 := recoveredBlock4Local1.
    recoveredBlock4Value24 := recoveredBlock4Local5.
    recoveredBlock4Value25 := recoveredBlock4Local3.
    recoveredBlock4Value26 := recoveredBlock4Local5.
    recoveredBlock4Value27 := recoveredBlock4Local2.
    (recoveredBlock4Value22) drawLine: (recoveredBlock4Value23) x1: (recoveredBlock4Value24) y1: (recoveredBlock4Value25) x2: (recoveredBlock4Value26) y2: (recoveredBlock4Value27).
    recoveredBlock4Value28 := recoveredBlock4Value15.
    recoveredBlock4Value29 := recoveredBlock4Local1.
    recoveredBlock4Value30 := recoveredBlock4Local5.
    recoveredBlock4Value31 := recoveredBlock4Local2.
    recoveredBlock4Value32 := recoveredBlock4Local5.
    recoveredBlock4Value33 := (recoveredBlock4Value32) + (-1).
    recoveredBlock4Value34 := recoveredBlock4Local2.
    recoveredBlock4Value35 := (recoveredBlock4Value34) + (1).
    (recoveredBlock4Value28) drawLine: (recoveredBlock4Value29) x1: (recoveredBlock4Value30) y1: (recoveredBlock4Value31) x2: (recoveredBlock4Value33) y2: (recoveredBlock4Value35).
    recoveredBlock4Value36 := recoveredBlock4Value15.
    recoveredBlock4Value37 := recoveredBlock4Local1.
    recoveredBlock4Value38 := recoveredBlock4Local5.
    recoveredBlock4Value39 := (recoveredBlock4Value38) + (-1).
    recoveredBlock4Value40 := recoveredBlock4Local2.
    recoveredBlock4Value41 := (recoveredBlock4Value40) + (1).
    recoveredBlock4Value42 := recoveredBlock4Local5.
    recoveredBlock4Value43 := (recoveredBlock4Value42) + (-1).
    recoveredBlock4Value44 := recoveredBlock4Local3.
    recoveredBlock4Value45 := (recoveredBlock4Value44) + (-1).
    (recoveredBlock4Value36) drawLine: (recoveredBlock4Value37) x1: (recoveredBlock4Value39) y1: (recoveredBlock4Value41) x2: (recoveredBlock4Value43) y2: (recoveredBlock4Value45).
    recoveredBlock4Value46 := recoveredBlock4Local1.
    recoveredBlock4Value47 := recoveredBlock4Local5.
    recoveredBlock4Value48 := (recoveredBlock4Value47) + (-1).
    recoveredBlock4Value49 := recoveredBlock4Local3.
    recoveredBlock4Value50 := (recoveredBlock4Value49) + (-1).
    recoveredBlock4Value51 := recoveredBlock4Local4.
    recoveredBlock4Value52 := (recoveredBlock4Value51) + (1).
    recoveredBlock4Value53 := recoveredBlock4Local3.
    recoveredBlock4Value54 := (recoveredBlock4Value53) + (-1).
    (recoveredBlock4Value15) drawLine: (recoveredBlock4Value46) x1: (recoveredBlock4Value48) y1: (recoveredBlock4Value50) x2: (recoveredBlock4Value52) y2: (recoveredBlock4Value54).
    recoveredBlock4Value55 := recoveredBlock4Arg1.
    recoveredBlock4Value56 := (recoveredBlock4Value55) highlightGC.
    recoveredBlock4Local1 := recoveredBlock4Value56.
    recoveredBlock4Value57 := rc.
    recoveredBlock4Value58 := (recoveredBlock4Value57) drawable.
    recoveredBlock4Value59 := recoveredBlock4Value58.
    recoveredBlock4Value60 := recoveredBlock4Local1.
    recoveredBlock4Value61 := recoveredBlock4Local5.
    recoveredBlock4Value62 := (recoveredBlock4Value61) + (-1).
    recoveredBlock4Value63 := recoveredBlock4Local2.
    recoveredBlock4Value64 := recoveredBlock4Local4.
    recoveredBlock4Value65 := recoveredBlock4Local2.
    (recoveredBlock4Value59) drawLine: (recoveredBlock4Value60) x1: (recoveredBlock4Value62) y1: (recoveredBlock4Value63) x2: (recoveredBlock4Value64) y2: (recoveredBlock4Value65).
    recoveredBlock4Value66 := recoveredBlock4Local1.
    recoveredBlock4Value67 := recoveredBlock4Local4.
    recoveredBlock4Value68 := recoveredBlock4Local2.
    recoveredBlock4Value69 := recoveredBlock4Local4.
    recoveredBlock4Value70 := recoveredBlock4Local3.
    recoveredBlock4Value71 := (recoveredBlock4Value70) + (-1).
    (recoveredBlock4Value58) drawLine: (recoveredBlock4Value66) x1: (recoveredBlock4Value67) y1: (recoveredBlock4Value68) x2: (recoveredBlock4Value69) y2: (recoveredBlock4Value71).
    recoveredBlock4Value72 := recoveredBlock4Arg1.
    recoveredBlock4Value73 := recoveredBlock4Arg2.
    recoveredBlock4Value74 := (self) drawImage: (recoveredBlock4Value72) data: (recoveredBlock4Value73).
    recoveredBlock4Value74
].
    ^recoveredValue0
! !

