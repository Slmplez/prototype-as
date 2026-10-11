"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002ea8; bytecode file offset 0x8ffcfc"
!SGIlReferencedExpr methodsFor: 'recovered'!
asIleRoundedExpr
    ^self
! !

"ASDBase.ic method 0x20002f28; bytecode file offset 0x8ffcfc"
!SGIlReferencedExpr methodsFor: 'recovered'!
asIleReferencedExpr
    ^self
! !

"ASDBase.ic method 0x2000695c; bytecode file offset 0x908be4"
!SGIlReferencedExpr methodsFor: 'recovered'!
asIleDereferencedExpr
    | recoveredValue0 |
    recoveredValue0 := (self) expr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000857c; bytecode file offset 0x908be4"
!SGIlReferencedExpr methodsFor: 'recovered'!
ileCosts
    | recoveredValue0 |
    recoveredValue0 := (self) ileRuntimeCostsOfConstant.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200095cc; bytecode file offset 0x908be4"
!SGIlReferencedExpr methodsFor: 'recovered'!
precedenceLevel
    | recoveredValue0 |
    recoveredValue0 := (self) precedenceLevelOfUnary.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b39c; bytecode file offset 0x908be4"
!SGIlReferencedExpr methodsFor: 'recovered'!
ileRuntimeCosts
    | recoveredValue0 |
    recoveredValue0 := (self) ileRuntimeCostsOfConstant.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027f34; bytecode file offset 0x934580"
!SGIlReferencedExpr methodsFor: 'recovered'!
ileBasicType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) ileBasicType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20028574; bytecode file offset 0x934580"
!SGIlReferencedExpr methodsFor: 'recovered'!
mdlVarDecl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) mdlVarDecl.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200297d4; bytecode file offset 0x934580"
!SGIlReferencedExpr methodsFor: 'recovered'!
fixedCharTableInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) fixedCharTableInfo.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002ae14; bytecode file offset 0x934580"
!SGIlReferencedExpr methodsFor: 'recovered'!
errLabelImplInfoComment
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) errLabelImplInfoComment.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e3c4; bytecode file offset 0x934580"
!SGIlReferencedExpr methodsFor: 'recovered'!
ileElementKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) ileElementKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f164; bytecode file offset 0x934580"
!SGIlReferencedExpr methodsFor: 'recovered'!
ileExtendedInputValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) ileExtendedInputValue.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f9a4; bytecode file offset 0x934580"
!SGIlReferencedExpr methodsFor: 'recovered'!
ileHasMdlIdentifier
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) ileHasMdlIdentifier.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030af4; bytecode file offset 0x934580"
!SGIlReferencedExpr methodsFor: 'recovered'!
elementDecl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) elementDecl.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200353e4; bytecode file offset 0x934580"
!SGIlReferencedExpr methodsFor: 'recovered'!
ileHasMdlMethodCall
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) ileHasMdlMethodCall.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035794; bytecode file offset 0x934580"
!SGIlReferencedExpr methodsFor: 'recovered'!
interpolation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) interpolation.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037bc4; bytecode file offset 0x934580"
!SGIlReferencedExpr methodsFor: 'recovered'!
mdlNode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) mdlNode.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055044; bytecode file offset 0x952a9c"
!SGIlReferencedExpr methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) referencedExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20057fd8; bytecode file offset 0x956284"
!SGIlReferencedExpr methodsFor: 'recovered'!
hasSameScope: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) hasSameScope: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20064f54; bytecode file offset 0x961970"
!SGIlReferencedExpr methodsFor: 'recovered'!
setCgAttrNeedsVariableArrayMatrixStruct
    | recoveredValue0 |
    recoveredValue0 := (self) expr.
    (recoveredValue0) setCgAttrNeedsVariableArrayMatrixStruct.
    ^self
! !

"ASDBase.ic method 0x200766c4; bytecode file offset 0x9757c8"
!SGIlReferencedExpr methodsFor: 'recovered'!
isIleReferencedExpr
    ^true
! !

"ASDBase.ic method 0x2007804c; bytecode file offset 0x9757c8"
!SGIlReferencedExpr methodsFor: 'recovered'!
isIleReferenceInitValue
    ^true
! !

"ASDBase.ic method 0x2007c46c; bytecode file offset 0x97c330"
!SGIlReferencedExpr methodsFor: 'recovered'!
isIleArithmeticExpr
    ^false
! !

"ASDBase.ic method 0x200b9b44; bytecode file offset 0x9b6440"
!SGIlReferencedExpr methodsFor: 'recovered'!
createOpRecursiveType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createOpRecursiveType: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) createOpExpr: (recoveredValue2) type: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201cea34; bytecode file offset 0xacb334"
!SGIlReferencedExpr methodsFor: 'recovered'!
createOpExpr: recoveredArg1 type: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) expr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) expr: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

