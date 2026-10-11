"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20029394; bytecode file offset 0x934580"
!SGIlAccessMacro methodsFor: 'recovered'!
isIleReferencedAccessExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) macroDecl.
    recoveredValue1 := (recoveredValue0) isIleReferencedAccessExpr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002abf4; bytecode file offset 0x934580"
!SGIlAccessMacro methodsFor: 'recovered'!
elementDecl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) macroDecl.
    recoveredValue1 := (recoveredValue0) elementDecl.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200301d4; bytecode file offset 0x934580"
!SGIlAccessMacro methodsFor: 'recovered'!
ileElementKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) macroDecl.
    recoveredValue1 := (recoveredValue0) ileElementKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032c74; bytecode file offset 0x934580"
!SGIlAccessMacro methodsFor: 'recovered'!
errLabelImplInfoComment
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) macroDecl.
    recoveredValue1 := (recoveredValue0) ileLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20051498; bytecode file offset 0x94f0e0"
!SGIlAccessMacro methodsFor: 'recovered'!
isIleCompileTimeConstantExpr
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) macroDecl.
    recoveredValue1 := (recoveredValue0) originalExpr.
    recoveredValue2 := (recoveredValue1) isIleCompileTimeConstantExpr.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20052294; bytecode file offset 0x94f0e0"
!SGIlAccessMacro methodsFor: 'recovered'!
isIlePointerType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) elementDecl.
    recoveredValue1 := (recoveredValue0) attributes.
    recoveredValue2 := (recoveredValue1) isCgAttrPointerType.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20054dd4; bytecode file offset 0x952a9c"
!SGIlAccessMacro methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) macroAccess: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006a354; bytecode file offset 0x967a18"
!SGIlAccessMacro methodsFor: 'recovered'!
macroDecl
    | recoveredValue0 |
    recoveredValue0 := macroDecl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200762bc; bytecode file offset 0x9757c8"
!SGIlAccessMacro methodsFor: 'recovered'!
isIleAccessMacro
    ^true
! !

"ASDBase.ic method 0x200d5704; bytecode file offset 0x9d2050"
!SGIlAccessMacro methodsFor: 'recovered'!
ileWrapperHash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super ileWrapperHash.
    recoveredValue1 := (self) macroDecl.
    recoveredValue2 := (recoveredValue1) ileWrapperHash.
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20111f0c; bytecode file offset 0xa0e858"
!SGIlAccessMacro methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 goalInterval: recoveredArg3 macroDecl: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg4.
    macroDecl := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    super initializeSource: (recoveredValue1) type: (recoveredValue2) goalInterval: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2013404c; bytecode file offset 0xa30928"
!SGIlAccessMacro methodsFor: 'recovered'!
printIntervalOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) macroDecl.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleNoDecl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            super printIntervalOn: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202100b0; bytecode file offset 0xb0c97c"
!SGIlAccessMacro methodsFor: 'recovered'!
createOpType: recoveredArg1 goalInterval: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
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
            recoveredStack2 := (recoveredStack2) goalInterval.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := (recoveredStack4) macroDecl.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) goalInterval: (recoveredStack3) macroDecl: (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

