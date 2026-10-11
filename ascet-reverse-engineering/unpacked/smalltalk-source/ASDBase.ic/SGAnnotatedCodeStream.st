"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006a168; bytecode file offset 0x966bdc"
!SGAnnotatedCodeStream methodsFor: 'recovered'!
expander
    | recoveredValue0 |
    recoveredValue0 := expander.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200852f0; bytecode file offset 0x981ca4"
!SGAnnotatedCodeStream methodsFor: 'recovered'!
asAnnotatedCodeStream: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) expander: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200c14d8; bytecode file offset 0x9bdf14"
!SGAnnotatedCodeStream methodsFor: 'recovered'!
expander: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    expander := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e5d08; bytecode file offset 0x9e25cc"
!SGAnnotatedCodeStream methodsFor: 'recovered'!
createNewInstance
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super createNewInstance.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) expander.
    (recoveredValue1) expander: (recoveredValue2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20192a3c; bytecode file offset 0xa8f308"
!SGAnnotatedCodeStream methodsFor: 'recovered'!
newlineForStream: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) cr.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) expander.
    recoveredValue2 := (recoveredValue1) lineMarker.
    (recoveredValue0) nextPutAllLineMarker: (recoveredValue2).
    (self) nextPut: ($ ).
    (self) nextPutAllLineIndent.
    ^self
! !

