"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDDocumentor.ic method 0x2000384c; bytecode file offset 0x30498"
!SGDynDocuTeXInterfaceRT class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := ExError.
    recoveredValue1 := (recoveredValue0) newChild.
    ExSGTeXFatal := recoveredValue1.
    recoveredValue2 := ExSGTeXFatal.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) markReadOnly: (false).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) description: ('An internal error has occurred').
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := ExHalt.
    recoveredValue7 := (recoveredValue6) defaultHandler.
    (recoveredValue5) defaultHandler: (recoveredValue7).
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) resumable: (false).
    (recoveredValue2) markReadOnly: (true).
    ^self
! !

