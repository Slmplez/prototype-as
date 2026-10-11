"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200053f0; bytecode file offset 0x90206c"
!SGMdHeader methodsFor: 'recovered'!
position: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2001772c; bytecode file offset 0x92209c"
!SGMdHeader methodsFor: 'recovered'!
errLabel
    ^'c-code header'
! !

"ASDBase.ic method 0x20055a28; bytecode file offset 0x952a9c"
!SGMdHeader methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) header: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20069ee8; bytecode file offset 0x966bdc"
!SGMdHeader methodsFor: 'recovered'!
code
    | recoveredValue0 |
    recoveredValue0 := code.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076674; bytecode file offset 0x9757c8"
!SGMdHeader methodsFor: 'recovered'!
isMdlHeader
    ^true
! !

"ASDBase.ic method 0x2007f0bc; bytecode file offset 0x97c330"
!SGMdHeader methodsFor: 'recovered'!
isMdlPrivate
    ^false
! !

"ASDBase.ic method 0x2008ccac; bytecode file offset 0x989578"
!SGMdHeader methodsFor: 'recovered'!
mdlName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) errLabel.
    recoveredValue1 := (self) createNewNameKey: (nil) label: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c15c8; bytecode file offset 0x9bdf14"
!SGMdHeader methodsFor: 'recovered'!
code: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    code := recoveredValue0.
    ^self
! !

