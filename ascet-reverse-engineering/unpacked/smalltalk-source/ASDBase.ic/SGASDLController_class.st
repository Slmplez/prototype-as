"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014460; bytecode file offset 0x912098"
!SGASDLController class methodsFor: 'recovered'!
parseDLLClass
    | recoveredValue0 |
    recoveredValue0 := SGASDLParseDLL.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a9b4; bytecode file offset 0x92209c"
!SGASDLController class methodsFor: 'recovered'!
stmntGoal
    ^'Stmnt'
! !

"ASDBase.ic method 0x2001f940; bytecode file offset 0x92209c"
!SGASDLController class methodsFor: 'recovered'!
exprGoal
    ^'Expr'
! !

"ASDBase.ic method 0x20042884; bytecode file offset 0x93f170"
!SGASDLController class methodsFor: 'recovered'!
intermediateResultFileName
    | recoveredValue0 |
    recoveredValue0 := ('%CGEN%\_ASD_esdl.tmp') asFilename.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20048e1c; bytecode file offset 0x945728"
!SGASDLController class methodsFor: 'recovered'!
resetGlobals
    Types := nil.
    ^self
! !

