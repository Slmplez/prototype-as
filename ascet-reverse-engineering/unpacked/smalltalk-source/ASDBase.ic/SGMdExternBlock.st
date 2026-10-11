"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001630; bytecode file offset 0x8ffcfc"
!SGMdExternBlock methodsFor: 'recovered'!
asMdlMethodBody
    ^self
! !

"ASDBase.ic method 0x2000d414; bytecode file offset 0x909e08"
!SGMdExternBlock methodsFor: 'recovered'!
hasReturnStmnt: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x2000dd40; bytecode file offset 0x90ab8c"
!SGMdExternBlock methodsFor: 'recovered'!
asMdlMethodBody: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) asMdlMethodBody.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003ccc8; bytecode file offset 0x93bf94"
!SGMdExternBlock methodsFor: 'recovered'!
children
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200549b4; bytecode file offset 0x952a9c"
!SGMdExternBlock methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) externBlock: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006c15c; bytecode file offset 0x9692b0"
!SGMdExternBlock methodsFor: 'recovered'!
localVars
    | recoveredValue0 |
    recoveredValue0 := locals.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cc68; bytecode file offset 0x969c04"
!SGMdExternBlock methodsFor: 'recovered'!
code
    | recoveredValue0 |
    recoveredValue0 := code.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200752e4; bytecode file offset 0x9757c8"
!SGMdExternBlock methodsFor: 'recovered'!
isMdlBlock
    ^true
! !

"ASDBase.ic method 0x200757c4; bytecode file offset 0x9757c8"
!SGMdExternBlock methodsFor: 'recovered'!
hasMdlUnconditionalReturn
    ^true
! !

"ASDBase.ic method 0x20076eb4; bytecode file offset 0x9757c8"
!SGMdExternBlock methodsFor: 'recovered'!
hasEndCaseStmnt
    ^true
! !

"ASDBase.ic method 0x20078224; bytecode file offset 0x9757c8"
!SGMdExternBlock methodsFor: 'recovered'!
isMdlExternBlock
    ^true
! !

"ASDBase.ic method 0x200788a4; bytecode file offset 0x9757c8"
!SGMdExternBlock methodsFor: 'recovered'!
hasReturnStmnt
    ^true
! !

"ASDBase.ic method 0x20078c4c; bytecode file offset 0x9757c8"
!SGMdExternBlock methodsFor: 'recovered'!
hasMdlUnconditionalReturnOrEndCase
    ^true
! !

"ASDBase.ic method 0x200965b8; bytecode file offset 0x992e94"
!SGMdExternBlock methodsFor: 'recovered'!
localVars: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) sorted: (recoveredValue0).
    locals := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200c3c98; bytecode file offset 0x9c058c"
!SGMdExternBlock methodsFor: 'recovered'!
code: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    code := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20177c78; bytecode file offset 0xa7490c"
!SGMdExternBlock methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) code.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) printOn: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

