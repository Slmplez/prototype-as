"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20030664; bytecode file offset 0x934580"
!SGIlModelFunctionDecl methodsFor: 'recovered'!
attributes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlFunctionDecl.
    recoveredValue1 := (recoveredValue0) attributes.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005568c; bytecode file offset 0x952a9c"
!SGIlModelFunctionDecl methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) functionDecl: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006ba20; bytecode file offset 0x96873c"
!SGIlModelFunctionDecl methodsFor: 'recovered'!
mdlFunctionDecl
    | recoveredValue0 |
    recoveredValue0 := mdlFunctionDecl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c22c0; bytecode file offset 0x9bf474"
!SGIlModelFunctionDecl methodsFor: 'recovered'!
mdlFunctionDecl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mdlFunctionDecl := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201368c0; bytecode file offset 0xa331bc"
!SGIlModelFunctionDecl methodsFor: 'recovered'!
initializeSource: recoveredArg1 genName: recoveredArg2 label: recoveredArg3 type: recoveredArg4 mdlFuncDecl: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg5.
    mdlFunctionDecl := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    super initializeSource: (recoveredValue1) genName: (recoveredValue2) label: (recoveredValue3) type: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201739b0; bytecode file offset 0xa702b0"
!SGIlModelFunctionDecl methodsFor: 'recovered'!
isIleProcessDecl
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) mdlFunctionDecl.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) isMdlProcessDecl.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := (self) attributes.
    recoveredValue3 := (recoveredValue2) isCgAttrProcess.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201739cc; bytecode file offset 0xa702b0"
!SGIlModelFunctionDecl methodsFor: 'recovered'!
isIleRunnableDecl
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) mdlFunctionDecl.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) isMdlRunnableDecl.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := (self) attributes.
    recoveredValue3 := (recoveredValue2) isCgAttrRunnable.
    ^recoveredValue3
! !

