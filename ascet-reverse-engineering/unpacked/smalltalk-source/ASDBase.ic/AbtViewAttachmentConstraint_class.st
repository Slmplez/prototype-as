"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2023b070; bytecode file offset 0xb37944"
!AbtViewAttachmentConstraint class methodsFor: 'recovered'!
attachAllSidesToForm
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := AbtViewAttachmentConstraint.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := AbtEdgeAttachmentConstraint.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := (recoveredValue4) attachForm.
    (recoveredValue2) leftEdge: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := AbtEdgeAttachmentConstraint.
    recoveredValue8 := (recoveredValue7) new.
    recoveredValue9 := (recoveredValue8) attachForm.
    (recoveredValue6) rightEdge: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := AbtEdgeAttachmentConstraint.
    recoveredValue12 := (recoveredValue11) new.
    recoveredValue13 := (recoveredValue12) attachForm.
    (recoveredValue10) topEdge: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := AbtEdgeAttachmentConstraint.
    recoveredValue16 := (recoveredValue15) new.
    recoveredValue17 := (recoveredValue16) attachForm.
    (recoveredValue14) bottomEdge: (recoveredValue17).
    ^recoveredValue1
! !

