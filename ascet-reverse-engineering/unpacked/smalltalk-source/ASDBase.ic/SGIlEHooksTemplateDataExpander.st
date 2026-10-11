"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2008cb5c; bytecode file offset 0x989498"
!SGIlEHooksTemplateDataExpander methodsFor: 'recovered'!
endEHooksConfiguration
    (self) endDataStructure: ('EHOOKS_Data').
    ^self
! !

"ASDBase.ic method 0x202b4920; bytecode file offset 0xbb1204"
!SGIlEHooksTemplateDataExpander methodsFor: 'recovered'!
beginEHooksConfiguration: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) templateConfigStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newlinePutAll: ('package ').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) nextPutAll: (';').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) newline.
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) newline.
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) paragraphBanner: ('ModelTool EHOOKS Configuration').
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) newlinePutAll: ('sub getData {').
    recoveredValue9 := recoveredValue0.
    (recoveredValue9) incIndent.
    (recoveredValue0) newlinePutAll: ('my $EHOOKS_Data = ').
    (self) beginStructure.
    ^self
! !

