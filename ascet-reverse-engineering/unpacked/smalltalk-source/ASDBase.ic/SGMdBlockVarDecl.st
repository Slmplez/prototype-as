"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000c0bc; bytecode file offset 0x908be4"
!SGMdBlockVarDecl methodsFor: 'recovered'!
genIleStandardType
    | recoveredValue0 |
    recoveredValue0 := (self) mdlClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200549e4; bytecode file offset 0x952a9c"
!SGMdBlockVarDecl methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) blockVarDecl: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200625c8; bytecode file offset 0x95f8b0"
!SGMdBlockVarDecl methodsFor: 'recovered'!
isMdlRteStatusVariable
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) errLabel.
    recoveredValue1 := (self) rteStatusVariableLabel.
    recoveredValue2 := (recoveredValue0) equals: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006de48; bytecode file offset 0x96a9dc"
!SGMdBlockVarDecl methodsFor: 'recovered'!
initValue
    | recoveredValue0 |
    recoveredValue0 := initValue.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e2a4; bytecode file offset 0x96af48"
!SGMdBlockVarDecl methodsFor: 'recovered'!
initStmnt
    | recoveredValue0 |
    recoveredValue0 := initStmnt.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20078164; bytecode file offset 0x9757c8"
!SGMdBlockVarDecl methodsFor: 'recovered'!
isMdlBlockVarDecl
    ^true
! !

"ASDBase.ic method 0x2007e444; bytecode file offset 0x97c330"
!SGMdBlockVarDecl methodsFor: 'recovered'!
isMdlLoggable
    ^false
! !

"ASDBase.ic method 0x200868fc; bytecode file offset 0x983274"
!SGMdBlockVarDecl methodsFor: 'recovered'!
initValue: recoveredArg1 mdlClassInterface: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) initValue: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200c46e0; bytecode file offset 0x9c11bc"
!SGMdBlockVarDecl methodsFor: 'recovered'!
initValue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    initValue := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4c74; bytecode file offset 0x9c16b0"
!SGMdBlockVarDecl methodsFor: 'recovered'!
initStmnt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    initStmnt := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f72fc; bytecode file offset 0x9f3bc0"
!SGMdBlockVarDecl methodsFor: 'recovered'!
mdlMemoryClassReadCosts
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [
    'STACK'
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) memClassReadCostsFor: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20119458; bytecode file offset 0xa15d24"
!SGMdBlockVarDecl methodsFor: 'recovered'!
copyWithOptimizations
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) copy.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) attributes.
    (recoveredValue1) attributes: (recoveredValue2).
    recoveredValue3 := (self) optimizations.
    recoveredValue4 := (recoveredValue3) deepCopy.
    recoveredValue5 := (recoveredValue0) optimizations: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x203167f8; bytecode file offset 0xc130f4"
!SGMdBlockVarDecl methodsFor: 'recovered'!
asTempVarDecl
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := SGMdTempVarDecl.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) source.
    (recoveredValue2) source: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) comment.
    (recoveredValue4) comments: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) userData.
    (recoveredValue6) userData: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (self) mdlName.
    (recoveredValue8) mdlName: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (self) mdlClass.
    (recoveredValue10) mdlClass: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (self) attributes.
    (recoveredValue12) attributes: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (self) initValue.
    (recoveredValue14) initValue: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := (self) initStmnt.
    (recoveredValue16) initStmnt: (recoveredValue17).
    recoveredValue18 := recoveredLocal1.
    ^recoveredValue18
! !

