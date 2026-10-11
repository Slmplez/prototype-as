"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20010410; bytecode file offset 0x8c5ec"
!CwMessagePrompter class methodsFor: 'recovered'!
message: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := CwWMShell.
    recoveredValue1 := (recoveredValue0) focusShell.
    recoveredValue2 := (self) for: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) messageString: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := XmOK.
    (recoveredValue5) buttonType: (recoveredValue6).
    (recoveredValue2) prompt.
    ^nil
! !

"winsys.ic method 0x20013958; bytecode file offset 0x8fb68"
!CwMessagePrompter class methodsFor: 'recovered'!
confirmYesNoCancel: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := CwWMShell.
    recoveredValue1 := (recoveredValue0) focusShell.
    recoveredValue2 := (self) for: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) messageString: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := XmICONQUESTION.
    (recoveredValue5) iconType: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := XmYESNOCANCEL.
    (recoveredValue7) buttonType: (recoveredValue8).
    recoveredValue9 := (recoveredValue2) prompt.
    ^recoveredValue9
! !

"winsys.ic method 0x20013984; bytecode file offset 0x8fb68"
!CwMessagePrompter class methodsFor: 'recovered'!
warn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := CwWMShell.
    recoveredValue1 := (recoveredValue0) focusShell.
    recoveredValue2 := (self) for: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) messageString: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := XmICONWARNING.
    (recoveredValue5) iconType: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := XmOKCANCEL.
    (recoveredValue7) buttonType: (recoveredValue8).
    recoveredValue9 := (recoveredValue2) prompt.
    ^recoveredValue9
! !

"winsys.ic method 0x200145f4; bytecode file offset 0x907d8"
!CwMessagePrompter class methodsFor: 'recovered'!
errorMessage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := CwWMShell.
    recoveredValue1 := (recoveredValue0) focusShell.
    recoveredValue2 := (self) for: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) messageString: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := XmICONERROR.
    (recoveredValue5) iconType: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := XmOK.
    (recoveredValue7) buttonType: (recoveredValue8).
    (recoveredValue2) prompt.
    ^nil
! !

"winsys.ic method 0x20015010; bytecode file offset 0x911f4"
!CwMessagePrompter class methodsFor: 'recovered'!
confirm: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := CwWMShell.
    recoveredValue1 := (recoveredValue0) focusShell.
    recoveredValue2 := (self) for: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) messageString: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := XmICONQUESTION.
    (recoveredValue5) iconType: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := XmYESNO.
    (recoveredValue7) buttonType: (recoveredValue8).
    recoveredValue9 := (recoveredValue2) prompt.
    recoveredValue10 := (recoveredValue9) = (true).
    ^recoveredValue10
! !

"winsys.ic method 0x2001a9e8; bytecode file offset 0x96bdc"
!CwMessagePrompter class methodsFor: 'recovered'!
proceed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := CwWMShell.
    recoveredValue1 := (recoveredValue0) focusShell.
    recoveredValue2 := (self) for: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := NlsCatESd.
    recoveredValue5 := (recoveredValue4) residentMsg: ('MxESd1').
    (recoveredValue3) title: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) messageString: (recoveredValue7).
    recoveredValue8 := recoveredValue2.
    recoveredValue9 := XmICONQUESTION.
    (recoveredValue8) iconType: (recoveredValue9).
    recoveredValue10 := recoveredValue2.
    recoveredValue11 := XmOKCANCEL.
    (recoveredValue10) buttonType: (recoveredValue11).
    recoveredValue12 := (recoveredValue2) prompt.
    recoveredValue13 := (recoveredValue12) = (true).
    ^recoveredValue13
! !

"winsys.ic method 0x200205e0; bytecode file offset 0x9c7d8"
!CwMessagePrompter class methodsFor: 'recovered'!
initializeTitleTable
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (5).
    TitleTable := recoveredValue1.
    recoveredValue2 := TitleTable.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := XmICONERROR.
    recoveredValue5 := MxCW15.
    (recoveredValue3) at: (recoveredValue4) put: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := XmICONINFO.
    recoveredValue8 := MxCW16.
    (recoveredValue6) at: (recoveredValue7) put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := XmNOICON.
    recoveredValue11 := MxCW14.
    (recoveredValue9) at: (recoveredValue10) put: (recoveredValue11).
    recoveredValue12 := recoveredValue2.
    recoveredValue13 := XmICONQUESTION.
    recoveredValue14 := MxCW17.
    (recoveredValue12) at: (recoveredValue13) put: (recoveredValue14).
    recoveredValue15 := XmICONWARNING.
    recoveredValue16 := MxCW18.
    (recoveredValue2) at: (recoveredValue15) put: (recoveredValue16).
    ^self
! !

"winsys.ic method 0x2003635c; bytecode file offset 0xb25c0"
!CwMessagePrompter class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (3).
    DefaultButtonType := recoveredValue1.
    recoveredValue2 := DefaultButtonType.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := XmDEFAULTBUTTON1.
    recoveredValue5 := OSxDEFAULTBUTTON1.
    (recoveredValue3) at: (recoveredValue4) put: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := XmDEFAULTBUTTON2.
    recoveredValue8 := OSxDEFAULTBUTTON2.
    (recoveredValue6) at: (recoveredValue7) put: (recoveredValue8).
    recoveredValue9 := XmDEFAULTBUTTON3.
    recoveredValue10 := OSxDEFAULTBUTTON3.
    (recoveredValue2) at: (recoveredValue9) put: (recoveredValue10).
    recoveredValue11 := Array.
    recoveredValue12 := (recoveredValue11) new: (5).
    IconType := recoveredValue12.
    recoveredValue13 := IconType.
    recoveredValue14 := recoveredValue13.
    recoveredValue15 := XmICONERROR.
    recoveredValue16 := OSxICONERROR.
    (recoveredValue14) at: (recoveredValue15) put: (recoveredValue16).
    recoveredValue17 := recoveredValue13.
    recoveredValue18 := XmICONINFO.
    recoveredValue19 := OSxICONINFO.
    (recoveredValue17) at: (recoveredValue18) put: (recoveredValue19).
    recoveredValue20 := recoveredValue13.
    recoveredValue21 := XmNOICON.
    recoveredValue22 := OSxNULL.
    (recoveredValue20) at: (recoveredValue21) put: (recoveredValue22).
    recoveredValue23 := recoveredValue13.
    recoveredValue24 := XmICONQUESTION.
    recoveredValue25 := OSxICONQUESTION.
    (recoveredValue23) at: (recoveredValue24) put: (recoveredValue25).
    recoveredValue26 := XmICONWARNING.
    recoveredValue27 := OSxICONWARNING.
    (recoveredValue13) at: (recoveredValue26) put: (recoveredValue27).
    recoveredValue28 := Array.
    recoveredValue29 := (recoveredValue28) new: (6).
    ButtonType := recoveredValue29.
    recoveredValue30 := ButtonType.
    recoveredValue31 := recoveredValue30.
    recoveredValue32 := XmOK.
    recoveredValue33 := OSxOK.
    (recoveredValue31) at: (recoveredValue32) put: (recoveredValue33).
    recoveredValue34 := recoveredValue30.
    recoveredValue35 := XmOKCANCEL.
    recoveredValue36 := OSxOKCANCEL.
    (recoveredValue34) at: (recoveredValue35) put: (recoveredValue36).
    recoveredValue37 := recoveredValue30.
    recoveredValue38 := XmRETRYCANCEL.
    recoveredValue39 := OSxRETRYCANCEL.
    (recoveredValue37) at: (recoveredValue38) put: (recoveredValue39).
    recoveredValue40 := recoveredValue30.
    recoveredValue41 := XmABORTRETRYIGNORE.
    recoveredValue42 := OSxABORTRETRYIGNORE.
    (recoveredValue40) at: (recoveredValue41) put: (recoveredValue42).
    recoveredValue43 := recoveredValue30.
    recoveredValue44 := XmYESNO.
    recoveredValue45 := OSxYESNO.
    (recoveredValue43) at: (recoveredValue44) put: (recoveredValue45).
    recoveredValue46 := XmYESNOCANCEL.
    recoveredValue47 := OSxYESNOCANCEL.
    (recoveredValue30) at: (recoveredValue46) put: (recoveredValue47).
    recoveredValue48 := Array.
    recoveredValue49 := (recoveredValue48) new: (3).
    PrompterStyle := recoveredValue49.
    recoveredValue50 := PrompterStyle.
    recoveredValue51 := recoveredValue50.
    recoveredValue52 := XmPRIMARYAPPLICATIONMODAL.
    recoveredValue53 := OSxPRIMARYAPPLICATIONMODAL.
    (recoveredValue51) at: (recoveredValue52) put: (recoveredValue53).
    recoveredValue54 := recoveredValue50.
    recoveredValue55 := XmFULLAPPLICATIONMODAL.
    recoveredValue56 := OSxFULLAPPLICATIONMODAL.
    (recoveredValue54) at: (recoveredValue55) put: (recoveredValue56).
    recoveredValue57 := XmSYSTEMMODAL.
    recoveredValue58 := OSxSYSTEMMODAL.
    (recoveredValue50) at: (recoveredValue57) put: (recoveredValue58).
    ^self
! !

