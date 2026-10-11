"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20000534; bytecode file offset 0x5132c"
!EwButtonDrawTwoStatePolicy methodsFor: 'recovered'!
deepPressedState
    | recoveredValue0 |
    recoveredValue0 := (self) pressedState.
    ^recoveredValue0
! !

"extwid.ic method 0x20025820; bytecode file offset 0x7660c"
!EwButtonDrawTwoStatePolicy methodsFor: 'recovered'!
pressedStateDrawBlock
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

