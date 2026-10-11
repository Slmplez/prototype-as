"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x200003cc; bytecode file offset 0x5132c"
!EwButtonDrawThreeStatePolicy methodsFor: 'recovered'!
pressedStateDrawBlock
    | recoveredValue0 |
    recoveredValue0 := (self) checkedStateDrawBlock.
    ^recoveredValue0
! !

"extwid.ic method 0x20008c4c; bytecode file offset 0x59a18"
!EwButtonDrawThreeStatePolicy methodsFor: 'recovered'!
defineBevelThickness
    (self) bevelWidth: (3).
    (self) bevelHeight: (3).
    ^self
! !

"extwid.ic method 0x200199e0; bytecode file offset 0x6a7d0"
!EwButtonDrawThreeStatePolicy methodsFor: 'recovered'!
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

"extwid.ic method 0x20019aa0; bytecode file offset 0x6a890"
!EwButtonDrawThreeStatePolicy methodsFor: 'recovered'!
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
    recoveredValue7 := (1) @ (1).
    (recoveredValue6) imageOffset: (recoveredValue7).
    recoveredValue8 := (self) checkedStateDrawBlock.
    recoveredValue9 := (recoveredValue1) drawBlock: (recoveredValue8).
    ^recoveredValue9
! !

"extwid.ic method 0x20019b34; bytecode file offset 0x6a924"
!EwButtonDrawThreeStatePolicy methodsFor: 'recovered'!
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

"extwid.ic method 0x20019b94; bytecode file offset 0x6a984"
!EwButtonDrawThreeStatePolicy methodsFor: 'recovered'!
deepPressedState
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EwButtonDrawStateData.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) state: ('deepPressed').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) originThickness: (2).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) cornerThickness: (0).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) stippledFace: (false).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (2) @ (2).
    (recoveredValue6) imageOffset: (recoveredValue7).
    recoveredValue8 := (self) deepPressedStateDrawBlock.
    recoveredValue9 := (recoveredValue1) drawBlock: (recoveredValue8).
    ^recoveredValue9
! !

"extwid.ic method 0x200257f0; bytecode file offset 0x7660c"
!EwButtonDrawThreeStatePolicy methodsFor: 'recovered'!
checkedStateDrawBlock
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 :recoveredBlock4Arg2 | 
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Local3 recoveredBlock4Local4 recoveredBlock4Local5 recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 recoveredBlock4Value9 recoveredBlock4Value10 recoveredBlock4Value11 recoveredBlock4Value12 recoveredBlock4Value13 recoveredBlock4Value14 recoveredBlock4Value15 recoveredBlock4Value16 recoveredBlock4Value17 recoveredBlock4Value18 recoveredBlock4Value19 recoveredBlock4Value20 recoveredBlock4Value21 recoveredBlock4Value22 recoveredBlock4Value23 recoveredBlock4Value24 recoveredBlock4Value25 recoveredBlock4Value26 recoveredBlock4Value27 recoveredBlock4Value28 recoveredBlock4Value29 recoveredBlock4Value30 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    (self) drawOutline: (recoveredBlock4Value0).
    recoveredBlock4Value1 := recoveredBlock4Arg1.
    recoveredBlock4Value2 := (recoveredBlock4Value1) renderContext.
    rc := recoveredBlock4Value2.
    recoveredBlock4Value3 := rc.
    recoveredBlock4Value4 := (recoveredBlock4Value3) x.
    recoveredBlock4Local4 := recoveredBlock4Value4.
    recoveredBlock4Value5 := rc.
    recoveredBlock4Value6 := (recoveredBlock4Value5) y.
    recoveredBlock4Local2 := recoveredBlock4Value6.
    recoveredBlock4Value7 := rc.
    recoveredBlock4Value8 := (recoveredBlock4Value7) right.
    recoveredBlock4Value9 := (recoveredBlock4Value8) + (-1).
    recoveredBlock4Local5 := recoveredBlock4Value9.
    recoveredBlock4Value10 := rc.
    recoveredBlock4Value11 := (recoveredBlock4Value10) bottom.
    recoveredBlock4Value12 := (recoveredBlock4Value11) + (-1).
    recoveredBlock4Local3 := recoveredBlock4Value12.
    recoveredBlock4Value13 := recoveredBlock4Arg1.
    recoveredBlock4Value14 := (recoveredBlock4Value13) shadingGC.
    recoveredBlock4Local1 := recoveredBlock4Value14.
    recoveredBlock4Value15 := rc.
    recoveredBlock4Value16 := (recoveredBlock4Value15) drawable.
    recoveredBlock4Value17 := recoveredBlock4Value16.
    recoveredBlock4Value18 := recoveredBlock4Local1.
    recoveredBlock4Value19 := recoveredBlock4Local5.
    recoveredBlock4Value20 := recoveredBlock4Local2.
    recoveredBlock4Value21 := recoveredBlock4Local4.
    recoveredBlock4Value22 := recoveredBlock4Local2.
    (recoveredBlock4Value17) drawLine: (recoveredBlock4Value18) x1: (recoveredBlock4Value19) y1: (recoveredBlock4Value20) x2: (recoveredBlock4Value21) y2: (recoveredBlock4Value22).
    recoveredBlock4Value23 := recoveredBlock4Local1.
    recoveredBlock4Value24 := recoveredBlock4Local4.
    recoveredBlock4Value25 := recoveredBlock4Local2.
    recoveredBlock4Value26 := recoveredBlock4Local4.
    recoveredBlock4Value27 := recoveredBlock4Local3.
    (recoveredBlock4Value16) drawLine: (recoveredBlock4Value23) x1: (recoveredBlock4Value24) y1: (recoveredBlock4Value25) x2: (recoveredBlock4Value26) y2: (recoveredBlock4Value27).
    recoveredBlock4Value28 := recoveredBlock4Arg1.
    recoveredBlock4Value29 := recoveredBlock4Arg2.
    recoveredBlock4Value30 := (self) drawImage: (recoveredBlock4Value28) data: (recoveredBlock4Value29).
    recoveredBlock4Value30
].
    ^recoveredValue0
! !

"extwid.ic method 0x2002c8b8; bytecode file offset 0x7d6a4"
!EwButtonDrawThreeStatePolicy methodsFor: 'recovered'!
deepPressedStateDrawBlock
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 :recoveredBlock4Arg2 | 
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Local3 recoveredBlock4Local4 recoveredBlock4Local5 recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 recoveredBlock4Value9 recoveredBlock4Value10 recoveredBlock4Value11 recoveredBlock4Value12 recoveredBlock4Value13 recoveredBlock4Value14 recoveredBlock4Value15 recoveredBlock4Value16 recoveredBlock4Value17 recoveredBlock4Value18 recoveredBlock4Value19 recoveredBlock4Value20 recoveredBlock4Value21 recoveredBlock4Value22 recoveredBlock4Value23 recoveredBlock4Value24 recoveredBlock4Value25 recoveredBlock4Value26 recoveredBlock4Value27 recoveredBlock4Value28 recoveredBlock4Value29 recoveredBlock4Value30 recoveredBlock4Value31 recoveredBlock4Value32 recoveredBlock4Value33 recoveredBlock4Value34 recoveredBlock4Value35 recoveredBlock4Value36 recoveredBlock4Value37 recoveredBlock4Value38 recoveredBlock4Value39 recoveredBlock4Value40 recoveredBlock4Value41 recoveredBlock4Value42 recoveredBlock4Value43 recoveredBlock4Value44 recoveredBlock4Value45 recoveredBlock4Value46 recoveredBlock4Value47 recoveredBlock4Value48 recoveredBlock4Value49 recoveredBlock4Value50 recoveredBlock4Value51 recoveredBlock4Value52 recoveredBlock4Value53 recoveredBlock4Value54 recoveredBlock4Value55 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    (self) drawOutline: (recoveredBlock4Value0).
    recoveredBlock4Value1 := recoveredBlock4Arg1.
    recoveredBlock4Value2 := (recoveredBlock4Value1) renderContext.
    rc := recoveredBlock4Value2.
    recoveredBlock4Value3 := rc.
    recoveredBlock4Value4 := (recoveredBlock4Value3) x.
    recoveredBlock4Local4 := recoveredBlock4Value4.
    recoveredBlock4Value5 := rc.
    recoveredBlock4Value6 := (recoveredBlock4Value5) y.
    recoveredBlock4Local2 := recoveredBlock4Value6.
    recoveredBlock4Value7 := rc.
    recoveredBlock4Value8 := (recoveredBlock4Value7) right.
    recoveredBlock4Value9 := (recoveredBlock4Value8) + (-1).
    recoveredBlock4Local5 := recoveredBlock4Value9.
    recoveredBlock4Value10 := rc.
    recoveredBlock4Value11 := (recoveredBlock4Value10) bottom.
    recoveredBlock4Value12 := (recoveredBlock4Value11) + (-1).
    recoveredBlock4Local3 := recoveredBlock4Value12.
    recoveredBlock4Value13 := recoveredBlock4Arg1.
    recoveredBlock4Value14 := (recoveredBlock4Value13) shadingGC.
    recoveredBlock4Local1 := recoveredBlock4Value14.
    recoveredBlock4Value15 := rc.
    recoveredBlock4Value16 := (recoveredBlock4Value15) drawable.
    recoveredBlock4Value17 := recoveredBlock4Value16.
    recoveredBlock4Value18 := recoveredBlock4Local1.
    recoveredBlock4Value19 := recoveredBlock4Local5.
    recoveredBlock4Value20 := recoveredBlock4Local2.
    recoveredBlock4Value21 := recoveredBlock4Local4.
    recoveredBlock4Value22 := recoveredBlock4Local2.
    (recoveredBlock4Value17) drawLine: (recoveredBlock4Value18) x1: (recoveredBlock4Value19) y1: (recoveredBlock4Value20) x2: (recoveredBlock4Value21) y2: (recoveredBlock4Value22).
    recoveredBlock4Value23 := recoveredBlock4Value16.
    recoveredBlock4Value24 := recoveredBlock4Local1.
    recoveredBlock4Value25 := recoveredBlock4Local4.
    recoveredBlock4Value26 := recoveredBlock4Local2.
    recoveredBlock4Value27 := recoveredBlock4Local4.
    recoveredBlock4Value28 := recoveredBlock4Local3.
    (recoveredBlock4Value23) drawLine: (recoveredBlock4Value24) x1: (recoveredBlock4Value25) y1: (recoveredBlock4Value26) x2: (recoveredBlock4Value27) y2: (recoveredBlock4Value28).
    recoveredBlock4Value29 := recoveredBlock4Value16.
    recoveredBlock4Value30 := recoveredBlock4Local1.
    recoveredBlock4Value31 := recoveredBlock4Local4.
    recoveredBlock4Value32 := recoveredBlock4Local3.
    recoveredBlock4Value33 := recoveredBlock4Local4.
    recoveredBlock4Value34 := (recoveredBlock4Value33) + (1).
    recoveredBlock4Value35 := recoveredBlock4Local3.
    (recoveredBlock4Value29) drawLine: (recoveredBlock4Value30) x1: (recoveredBlock4Value31) y1: (recoveredBlock4Value32) x2: (recoveredBlock4Value34) y2: (recoveredBlock4Value35).
    recoveredBlock4Value36 := recoveredBlock4Value16.
    recoveredBlock4Value37 := recoveredBlock4Local1.
    recoveredBlock4Value38 := recoveredBlock4Local4.
    recoveredBlock4Value39 := (recoveredBlock4Value38) + (1).
    recoveredBlock4Value40 := recoveredBlock4Local3.
    recoveredBlock4Value41 := recoveredBlock4Local4.
    recoveredBlock4Value42 := (recoveredBlock4Value41) + (1).
    recoveredBlock4Value43 := recoveredBlock4Local2.
    recoveredBlock4Value44 := (recoveredBlock4Value43) + (1).
    (recoveredBlock4Value36) drawLine: (recoveredBlock4Value37) x1: (recoveredBlock4Value39) y1: (recoveredBlock4Value40) x2: (recoveredBlock4Value42) y2: (recoveredBlock4Value44).
    recoveredBlock4Value45 := recoveredBlock4Local1.
    recoveredBlock4Value46 := recoveredBlock4Local4.
    recoveredBlock4Value47 := (recoveredBlock4Value46) + (1).
    recoveredBlock4Value48 := recoveredBlock4Local2.
    recoveredBlock4Value49 := (recoveredBlock4Value48) + (1).
    recoveredBlock4Value50 := recoveredBlock4Local5.
    recoveredBlock4Value51 := recoveredBlock4Local2.
    recoveredBlock4Value52 := (recoveredBlock4Value51) + (1).
    (recoveredBlock4Value16) drawLine: (recoveredBlock4Value45) x1: (recoveredBlock4Value47) y1: (recoveredBlock4Value49) x2: (recoveredBlock4Value50) y2: (recoveredBlock4Value52).
    recoveredBlock4Value53 := recoveredBlock4Arg1.
    recoveredBlock4Value54 := recoveredBlock4Arg2.
    recoveredBlock4Value55 := (self) drawImage: (recoveredBlock4Value53) data: (recoveredBlock4Value54).
    recoveredBlock4Value55
].
    ^recoveredValue0
! !

"extwid.ic method 0x20031424; bytecode file offset 0x82214"
!EwButtonDrawThreeStatePolicy methodsFor: 'recovered'!
upStateDrawBlock
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 :recoveredBlock4Arg2 | 
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Local3 recoveredBlock4Local4 recoveredBlock4Local5 recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 recoveredBlock4Value9 recoveredBlock4Value10 recoveredBlock4Value11 recoveredBlock4Value12 recoveredBlock4Value13 recoveredBlock4Value14 recoveredBlock4Value15 recoveredBlock4Value16 recoveredBlock4Value17 recoveredBlock4Value18 recoveredBlock4Value19 recoveredBlock4Value20 recoveredBlock4Value21 recoveredBlock4Value22 recoveredBlock4Value23 recoveredBlock4Value24 recoveredBlock4Value25 recoveredBlock4Value26 recoveredBlock4Value27 recoveredBlock4Value28 recoveredBlock4Value29 recoveredBlock4Value30 recoveredBlock4Value31 recoveredBlock4Value32 recoveredBlock4Value33 recoveredBlock4Value34 recoveredBlock4Value35 recoveredBlock4Value36 recoveredBlock4Value37 recoveredBlock4Value38 recoveredBlock4Value39 recoveredBlock4Value40 recoveredBlock4Value41 recoveredBlock4Value42 recoveredBlock4Value43 recoveredBlock4Value44 recoveredBlock4Value45 recoveredBlock4Value46 recoveredBlock4Value47 recoveredBlock4Value48 recoveredBlock4Value49 recoveredBlock4Value50 recoveredBlock4Value51 recoveredBlock4Value52 recoveredBlock4Value53 recoveredBlock4Value54 recoveredBlock4Value55 recoveredBlock4Value56 recoveredBlock4Value57 recoveredBlock4Value58 recoveredBlock4Value59 recoveredBlock4Value60 recoveredBlock4Value61 recoveredBlock4Value62 recoveredBlock4Value63 recoveredBlock4Value64 recoveredBlock4Value65 recoveredBlock4Value66 recoveredBlock4Value67 recoveredBlock4Value68 recoveredBlock4Value69 recoveredBlock4Value70 recoveredBlock4Value71 recoveredBlock4Value72 recoveredBlock4Value73 recoveredBlock4Value74 recoveredBlock4Value75 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    (self) drawOutline: (recoveredBlock4Value0).
    recoveredBlock4Value1 := recoveredBlock4Arg1.
    recoveredBlock4Value2 := (recoveredBlock4Value1) renderContext.
    rc := recoveredBlock4Value2.
    recoveredBlock4Value3 := rc.
    recoveredBlock4Value4 := (recoveredBlock4Value3) x.
    recoveredBlock4Local4 := recoveredBlock4Value4.
    recoveredBlock4Value5 := rc.
    recoveredBlock4Value6 := (recoveredBlock4Value5) y.
    recoveredBlock4Local2 := recoveredBlock4Value6.
    recoveredBlock4Value7 := rc.
    recoveredBlock4Value8 := (recoveredBlock4Value7) right.
    recoveredBlock4Value9 := (recoveredBlock4Value8) + (-1).
    recoveredBlock4Local5 := recoveredBlock4Value9.
    recoveredBlock4Value10 := rc.
    recoveredBlock4Value11 := (recoveredBlock4Value10) bottom.
    recoveredBlock4Value12 := (recoveredBlock4Value11) + (-1).
    recoveredBlock4Local3 := recoveredBlock4Value12.
    recoveredBlock4Value13 := recoveredBlock4Arg1.
    recoveredBlock4Value14 := (recoveredBlock4Value13) shadingGC.
    recoveredBlock4Local1 := recoveredBlock4Value14.
    recoveredBlock4Value15 := rc.
    recoveredBlock4Value16 := (recoveredBlock4Value15) drawable.
    recoveredBlock4Value17 := recoveredBlock4Value16.
    recoveredBlock4Value18 := recoveredBlock4Local1.
    recoveredBlock4Value19 := recoveredBlock4Local4.
    recoveredBlock4Value20 := recoveredBlock4Local3.
    recoveredBlock4Value21 := recoveredBlock4Local5.
    recoveredBlock4Value22 := recoveredBlock4Local3.
    (recoveredBlock4Value17) drawLine: (recoveredBlock4Value18) x1: (recoveredBlock4Value19) y1: (recoveredBlock4Value20) x2: (recoveredBlock4Value21) y2: (recoveredBlock4Value22).
    recoveredBlock4Value23 := recoveredBlock4Value16.
    recoveredBlock4Value24 := recoveredBlock4Local1.
    recoveredBlock4Value25 := recoveredBlock4Local5.
    recoveredBlock4Value26 := recoveredBlock4Local3.
    recoveredBlock4Value27 := recoveredBlock4Local5.
    recoveredBlock4Value28 := recoveredBlock4Local2.
    (recoveredBlock4Value23) drawLine: (recoveredBlock4Value24) x1: (recoveredBlock4Value25) y1: (recoveredBlock4Value26) x2: (recoveredBlock4Value27) y2: (recoveredBlock4Value28).
    recoveredBlock4Value29 := recoveredBlock4Value16.
    recoveredBlock4Value30 := recoveredBlock4Local1.
    recoveredBlock4Value31 := recoveredBlock4Local5.
    recoveredBlock4Value32 := recoveredBlock4Local2.
    recoveredBlock4Value33 := recoveredBlock4Local5.
    recoveredBlock4Value34 := (recoveredBlock4Value33) + (-1).
    recoveredBlock4Value35 := recoveredBlock4Local2.
    recoveredBlock4Value36 := (recoveredBlock4Value35) + (1).
    (recoveredBlock4Value29) drawLine: (recoveredBlock4Value30) x1: (recoveredBlock4Value31) y1: (recoveredBlock4Value32) x2: (recoveredBlock4Value34) y2: (recoveredBlock4Value36).
    recoveredBlock4Value37 := recoveredBlock4Value16.
    recoveredBlock4Value38 := recoveredBlock4Local1.
    recoveredBlock4Value39 := recoveredBlock4Local5.
    recoveredBlock4Value40 := (recoveredBlock4Value39) + (-1).
    recoveredBlock4Value41 := recoveredBlock4Local2.
    recoveredBlock4Value42 := (recoveredBlock4Value41) + (1).
    recoveredBlock4Value43 := recoveredBlock4Local5.
    recoveredBlock4Value44 := (recoveredBlock4Value43) + (-1).
    recoveredBlock4Value45 := recoveredBlock4Local3.
    recoveredBlock4Value46 := (recoveredBlock4Value45) + (-1).
    (recoveredBlock4Value37) drawLine: (recoveredBlock4Value38) x1: (recoveredBlock4Value40) y1: (recoveredBlock4Value42) x2: (recoveredBlock4Value44) y2: (recoveredBlock4Value46).
    recoveredBlock4Value47 := recoveredBlock4Local1.
    recoveredBlock4Value48 := recoveredBlock4Local5.
    recoveredBlock4Value49 := (recoveredBlock4Value48) + (-1).
    recoveredBlock4Value50 := recoveredBlock4Local3.
    recoveredBlock4Value51 := (recoveredBlock4Value50) + (-1).
    recoveredBlock4Value52 := recoveredBlock4Local4.
    recoveredBlock4Value53 := (recoveredBlock4Value52) + (1).
    recoveredBlock4Value54 := recoveredBlock4Local3.
    recoveredBlock4Value55 := (recoveredBlock4Value54) + (-1).
    (recoveredBlock4Value16) drawLine: (recoveredBlock4Value47) x1: (recoveredBlock4Value49) y1: (recoveredBlock4Value51) x2: (recoveredBlock4Value53) y2: (recoveredBlock4Value55).
    recoveredBlock4Value56 := recoveredBlock4Arg1.
    recoveredBlock4Value57 := (recoveredBlock4Value56) highlightGC.
    recoveredBlock4Local1 := recoveredBlock4Value57.
    recoveredBlock4Value58 := rc.
    recoveredBlock4Value59 := (recoveredBlock4Value58) drawable.
    recoveredBlock4Value60 := recoveredBlock4Value59.
    recoveredBlock4Value61 := recoveredBlock4Local1.
    recoveredBlock4Value62 := recoveredBlock4Local5.
    recoveredBlock4Value63 := (recoveredBlock4Value62) + (-1).
    recoveredBlock4Value64 := recoveredBlock4Local2.
    recoveredBlock4Value65 := recoveredBlock4Local4.
    recoveredBlock4Value66 := recoveredBlock4Local2.
    (recoveredBlock4Value60) drawLine: (recoveredBlock4Value61) x1: (recoveredBlock4Value63) y1: (recoveredBlock4Value64) x2: (recoveredBlock4Value65) y2: (recoveredBlock4Value66).
    recoveredBlock4Value67 := recoveredBlock4Local1.
    recoveredBlock4Value68 := recoveredBlock4Local4.
    recoveredBlock4Value69 := recoveredBlock4Local2.
    recoveredBlock4Value70 := recoveredBlock4Local4.
    recoveredBlock4Value71 := recoveredBlock4Local3.
    recoveredBlock4Value72 := (recoveredBlock4Value71) + (-1).
    (recoveredBlock4Value59) drawLine: (recoveredBlock4Value67) x1: (recoveredBlock4Value68) y1: (recoveredBlock4Value69) x2: (recoveredBlock4Value70) y2: (recoveredBlock4Value72).
    recoveredBlock4Value73 := recoveredBlock4Arg1.
    recoveredBlock4Value74 := recoveredBlock4Arg2.
    recoveredBlock4Value75 := (self) drawImage: (recoveredBlock4Value73) data: (recoveredBlock4Value74).
    recoveredBlock4Value75
].
    ^recoveredValue0
! !

