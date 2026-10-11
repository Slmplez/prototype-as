"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20008978; bytecode file offset 0x908be4"
!SGIlIdentifier methodsFor: 'recovered'!
ileMsgCopyKey
    | recoveredValue0 |
    recoveredValue0 := (self) ileElementKey.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002b614; bytecode file offset 0x934580"
!SGIlIdentifier methodsFor: 'recovered'!
accessMacroRefTemplateKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) elementDecl.
    recoveredValue1 := (recoveredValue0) accessMacroRefTemplateKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e354; bytecode file offset 0x934580"
!SGIlIdentifier methodsFor: 'recovered'!
accessMacroTemplateKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) elementDecl.
    recoveredValue1 := (recoveredValue0) accessMacroTemplateKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030de4; bytecode file offset 0x934580"
!SGIlIdentifier methodsFor: 'recovered'!
errLabelImplInfoComment
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) elementDecl.
    recoveredValue1 := (recoveredValue0) ileLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200331a4; bytecode file offset 0x934580"
!SGIlIdentifier methodsFor: 'recovered'!
ileScope
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) elementDecl.
    recoveredValue1 := (recoveredValue0) scope.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037b24; bytecode file offset 0x934580"
!SGIlIdentifier methodsFor: 'recovered'!
ileLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) elementDecl.
    recoveredValue1 := (recoveredValue0) ileLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200512a4; bytecode file offset 0x94f0e0"
!SGIlIdentifier methodsFor: 'recovered'!
isIlePointerType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) elementDecl.
    recoveredValue1 := (recoveredValue0) attributes.
    recoveredValue2 := (recoveredValue1) isCgAttrPointerType.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200549fc; bytecode file offset 0x952a9c"
!SGIlIdentifier methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) identifier: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006aecc; bytecode file offset 0x967a18"
!SGIlIdentifier methodsFor: 'recovered'!
elementDecl
    | recoveredValue0 |
    recoveredValue0 := elementDecl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b298; bytecode file offset 0x96873c"
!SGIlIdentifier methodsFor: 'recovered'!
ileElementKey
    | recoveredValue0 |
    recoveredValue0 := elementKey.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007691c; bytecode file offset 0x9757c8"
!SGIlIdentifier methodsFor: 'recovered'!
isIleIdentifier
    ^true
! !

"ASDBase.ic method 0x200d56c8; bytecode file offset 0x9d2050"
!SGIlIdentifier methodsFor: 'recovered'!
ileWrapperHash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super ileWrapperHash.
    recoveredValue1 := (self) elementDecl.
    recoveredValue2 := (recoveredValue1) ileWrapperHash.
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20111f2c; bytecode file offset 0xa0e858"
!SGIlIdentifier methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 goalInterval: recoveredArg3 elementDecl: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg4.
    elementDecl := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    super initializeSource: (recoveredValue1) type: (recoveredValue2) goalInterval: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20145bf0; bytecode file offset 0xa424d4"
!SGIlIdentifier methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    recoveredValue3 := (self) ileElementKey.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20158638; bytecode file offset 0xa54f34"
!SGIlIdentifier methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 goalInterval: recoveredArg3 elementDecl: recoveredArg4 elementKey: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg4.
    elementDecl := recoveredValue0.
    recoveredValue1 := recoveredArg5.
    elementKey := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    super initializeSource: (recoveredValue2) type: (recoveredValue3) goalInterval: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x202257d8; bytecode file offset 0xb220a8"
!SGIlIdentifier methodsFor: 'recovered'!
asIleReferencedExpr
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgReferenceType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgVariableArrayReferenceType.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCgVariableArrayReference.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleReferencedExprType: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementDecl.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileReferenceType.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIleReferencedExprType: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20234b30; bytecode file offset 0xb31424"
!SGIlIdentifier methodsFor: 'recovered'!
createOpType: recoveredArg1 goalInterval: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack4 := (recoveredStack4) elementDecl.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack5 := (recoveredStack5) ileElementKey.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) goalInterval: (recoveredStack3) elementDecl: (recoveredStack4) elementKey: (recoveredStack5).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

