"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20023a50; bytecode file offset 0x92209c"
!SGMdMethodDecl methodsFor: 'recovered'!
errLabelKind
    ^'method'
! !

"ASDBase.ic method 0x2002e024; bytecode file offset 0x934580"
!SGMdMethodDecl methodsFor: 'recovered'!
numOfParms
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) usedParmChildren.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20054c84; bytecode file offset 0x952a9c"
!SGMdMethodDecl methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) methodDecl: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006f2d8; bytecode file offset 0x96bc1c"
!SGMdMethodDecl methodsFor: 'recovered'!
parmChildren
    | recoveredValue0 |
    recoveredValue0 := parmChildren.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f600; bytecode file offset 0x96bf7c"
!SGMdMethodDecl methodsFor: 'recovered'!
parmReceiver
    | recoveredValue0 |
    recoveredValue0 := parmReceiver.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f7d0; bytecode file offset 0x96c1f4"
!SGMdMethodDecl methodsFor: 'recovered'!
directAccessOrigin
    | recoveredValue0 |
    recoveredValue0 := directAccessOrigin.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075c0c; bytecode file offset 0x9757c8"
!SGMdMethodDecl methodsFor: 'recovered'!
isMdlMethodDecl
    ^true
! !

"ASDBase.ic method 0x200852c0; bytecode file offset 0x981ca4"
!SGMdMethodDecl methodsFor: 'recovered'!
return: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) mdlClass: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a1630; bytecode file offset 0x99dfb8"
!SGMdMethodDecl methodsFor: 'recovered'!
ileComment
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := (self) comment.
    (recoveredValue0) bodyComments: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c57dc; bytecode file offset 0x9c22c8"
!SGMdMethodDecl methodsFor: 'recovered'!
parmChildren: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parmChildren := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5c30; bytecode file offset 0x9c25bc"
!SGMdMethodDecl methodsFor: 'recovered'!
parmReceiver: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parmReceiver := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5e20; bytecode file offset 0x9c2804"
!SGMdMethodDecl methodsFor: 'recovered'!
directAccessOrigin: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    directAccessOrigin := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2010bb4c; bytecode file offset 0xa085f0"
!SGMdMethodDecl methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) parmChildren: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2013fc00; bytecode file offset 0xa3c4d0"
!SGMdMethodDecl methodsFor: 'recovered'!
errLabelWithScope
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) scope.
    recoveredValue1 := (recoveredValue0) errLabel.
    recoveredValue2 := (recoveredValue1) , ('::').
    recoveredValue3 := super errLabelWithScope.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    recoveredValue5 := (recoveredValue4) , ('/return').
    ^recoveredValue5
! !

"ASDBase.ic method 0x20186018; bytecode file offset 0xa828dc"
!SGMdMethodDecl methodsFor: 'recovered'!
semAnaRescalable: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlMethodDecl.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) directAccessOrigin.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := super semAnaRescalable: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201c94e8; bytecode file offset 0xac5db4"
!SGMdMethodDecl methodsFor: 'recovered'!
usedParmChildren
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlGeneratedArgList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) parmChildren.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280d4e14Arg1 | 
    | block280d4e14Value0 block280d4e14Value1 block280d4e14Value2 |
    block280d4e14Value0 := block280d4e14Arg1.
    block280d4e14Value1 := (block280d4e14Value0) optimizations.
    block280d4e14Value2 := (block280d4e14Value1) isCgOptUsed.
    block280d4e14Value2
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) parmChildren.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d1184; bytecode file offset 0xacda70"
!SGMdMethodDecl methodsFor: 'recovered'!
allUsedParmChildren
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parmReceiver.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) usedParmChildren.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) usedParmChildren.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) parmReceiver.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) addFirst: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d11a4; bytecode file offset 0xacda70"
!SGMdMethodDecl methodsFor: 'recovered'!
allParmChildren
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parmReceiver.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) parmChildren.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) parmChildren.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) parmReceiver.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) addFirst: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c4f94; bytecode file offset 0xbc1864"
!SGMdMethodDecl methodsFor: 'recovered'!
resetIleType
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super resetIleType.
    recoveredValue0 := (self) parmReceiver.
    recoveredValue1 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 |
    recoveredBlock10Value0 := (self) parmReceiver.
    recoveredBlock10Value1 := (recoveredBlock10Value0) resetIleType.
    recoveredBlock10Value1
].
    (recoveredValue0) notNil: (recoveredValue1).
    recoveredValue2 := (self) parmChildren.
    recoveredValue3 := [
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) parmChildren.
            recoveredBlock24PC := 32.
        ].
        recoveredBlock24Step = 32 ifTrue: [
            recoveredBlock24Stack1 := [:block280e547cArg1 | 
    | block280e547cValue0 block280e547cValue1 |
    block280e547cValue0 := block280e547cArg1.
    block280e547cValue1 := (block280e547cValue0) resetIleType.
    block280e547cValue1
].
            recoveredBlock24PC := 34.
        ].
        recoveredBlock24Step = 34 ifTrue: [
            recoveredBlock24PC := 41.
        ].
        recoveredBlock24Step = 41 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) do: (recoveredBlock24Stack1).
            recoveredBlock24PC := 43.
        ].
        recoveredBlock24Step = 43 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack0.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
    (recoveredValue2) notNil: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x203060f4; bytecode file offset 0xc029cc"
!SGMdMethodDecl methodsFor: 'recovered'!
setOptimizations: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            super setOptimizations: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlComplexClassNoEnumType.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) setOptimizations: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) optimizations.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) componentAttributes: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) parmChildren.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 recoveredBlock37Value3 |
    recoveredBlock37Value0 := recoveredBlock37Arg1.
    recoveredBlock37Value1 := (recoveredBlock37Value0) mdlClass.
    recoveredBlock37Value2 := recoveredArg1.
    recoveredBlock37Value3 := (recoveredBlock37Value1) setOptimizations: (recoveredBlock37Value2).
    recoveredBlock37Value3
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d0b7c; bytecode file offset 0xdcd480"
!SGMdMethodDecl methodsFor: 'recovered'!
analyseMsgAccessIn: recoveredArg1 settings: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMessageCopyNonOptCopy.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) usedSndMsgs.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 |
    recoveredBlock20Value0 := recoveredLocal4.
    recoveredBlock20Value1 := recoveredBlock20Arg1.
    recoveredBlock20Value2 := (recoveredBlock20Value1) errLabel.
    recoveredBlock20Value3 := recoveredBlock20Arg1.
    recoveredBlock20Value4 := (recoveredBlock20Value0) at: (recoveredBlock20Value2) put: (recoveredBlock20Value3).
    recoveredBlock20Value4
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) usedRcvMsgs.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 recoveredBlock41Value4 |
    recoveredBlock41Value0 := recoveredLocal4.
    recoveredBlock41Value1 := recoveredBlock41Arg1.
    recoveredBlock41Value2 := (recoveredBlock41Value1) errLabel.
    recoveredBlock41Value3 := recoveredBlock41Arg1.
    recoveredBlock41Value4 := (recoveredBlock41Value0) at: (recoveredBlock41Value2) put: (recoveredBlock41Value3).
    recoveredBlock41Value4
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMessageCopyNonOptCopy.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := 355.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack4 := TGTarget.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := (recoveredStack4) messageCopyNonOptCopyKey.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack5 := (recoveredStack5) source.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack6 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack7 := [:block281073ecArg1 | 
    | block281073ecValue0 block281073ecValue1 |
    block281073ecValue0 := block281073ecArg1.
    block281073ecValue1 := (block281073ecValue0) source.
    block281073ecValue1
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack6 := (recoveredStack6) collect: (recoveredStack7).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack7 := recoveredLocal3.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack8 := [:block28107410Arg1 | 
    | block28107410Value0 block28107410Value1 |
    block28107410Value0 := block28107410Arg1.
    block28107410Value1 := (block28107410Value0) errLabel.
    block28107410Value1
].
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack7 := (recoveredStack7) collect: (recoveredStack8).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack5 := (recoveredStack5) createMultiSource: (recoveredStack6) labels: (recoveredStack7).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) source: (recoveredStack5).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredPC := 154.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := super analyseMsgAccessIn: (recoveredStack2) settings: (recoveredStack3).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 154 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2056f374; bytecode file offset 0xe6bca4"
!SGMdMethodDecl methodsFor: 'recovered'!
analyseMsgAccessNonOptCopyFunctionCallChain: recoveredArg1 sndMsgTable: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) usedRcvMsgs.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 |
    recoveredBlock15Value0 := recoveredArg2.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) errLabel.
    recoveredBlock15Value3 := [].
    recoveredBlock15Value4 := (recoveredBlock15Value0) at: (recoveredBlock15Value2) ifAbsent: (recoveredBlock15Value3).
    recoveredBlock15Value5 := [:recoveredBlock15Block33Arg1 | 
    | recoveredBlock15Block33Local1 recoveredBlock15Block33Local2 recoveredBlock15Block33Local3 recoveredBlock15Block33Local4 recoveredBlock15Block33Local5 recoveredBlock15Block33Stack0 recoveredBlock15Block33Stack1 recoveredBlock15Block33Stack2 recoveredBlock15Block33Stack3 recoveredBlock15Block33Stack4 recoveredBlock15Block33Stack5 recoveredBlock15Block33Stack6 recoveredBlock15Block33Stack7 recoveredBlock15Block33Stack8 recoveredBlock15Block33Stack9 recoveredBlock15Block33Stack10 recoveredBlock15Block33PC recoveredBlock15Block33Step recoveredBlock15Block33Done recoveredBlock15Block33Result |
    recoveredBlock15Block33Stack0 := self.
    recoveredBlock15Block33PC := 40.
    recoveredBlock15Block33Done := false.
    [recoveredBlock15Block33Done not] whileTrue: [
        recoveredBlock15Block33Step := recoveredBlock15Block33PC.
        recoveredBlock15Block33Step = 40 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredArg1.
            recoveredBlock15Block33PC := 43.
        ].
        recoveredBlock15Block33Step = 43 ifTrue: [
            recoveredBlock15Block33Stack1 := (recoveredBlock15Block33Stack1) first.
            recoveredBlock15Block33PC := 45.
        ].
        recoveredBlock15Block33Step = 45 ifTrue: [
            recoveredBlock15Block33Local5 := recoveredBlock15Block33Stack1.
            recoveredBlock15Block33PC := 48.
        ].
        recoveredBlock15Block33Step = 48 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredBlock15Block33Local5.
            recoveredBlock15Block33PC := 51.
        ].
        recoveredBlock15Block33Step = 51 ifTrue: [
            recoveredBlock15Block33Stack1 := (recoveredBlock15Block33Stack1) isMdlProcessDecl.
            recoveredBlock15Block33PC := 53.
        ].
        recoveredBlock15Block33Step = 53 ifTrue: [
            (recoveredBlock15Block33Stack1) ifTrue: [recoveredBlock15Block33PC := 56] ifFalse: [recoveredBlock15Block33PC := 62].
        ].
        recoveredBlock15Block33Step = 56 ifTrue: [
            recoveredBlock15Block33Stack1 := 'process'.
            recoveredBlock15Block33PC := 58.
        ].
        recoveredBlock15Block33Step = 58 ifTrue: [
            recoveredBlock15Block33PC := 64.
        ].
        recoveredBlock15Block33Step = 62 ifTrue: [
            recoveredBlock15Block33Stack1 := 'method'.
            recoveredBlock15Block33PC := 64.
        ].
        recoveredBlock15Block33Step = 64 ifTrue: [
            recoveredBlock15Block33Local4 := recoveredBlock15Block33Stack1.
            recoveredBlock15Block33PC := 67.
        ].
        recoveredBlock15Block33Step = 67 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredArg1.
            recoveredBlock15Block33PC := 70.
        ].
        recoveredBlock15Block33Step = 70 ifTrue: [
            recoveredBlock15Block33Stack2 := [:block28111a6cArg1 | 
    | block28111a6cValue0 block28111a6cValue1 |
    block28111a6cValue0 := block28111a6cArg1.
    block28111a6cValue1 := (block28111a6cValue0) source.
    block28111a6cValue1
].
            recoveredBlock15Block33PC := 72.
        ].
        recoveredBlock15Block33Step = 72 ifTrue: [
            recoveredBlock15Block33PC := 80.
        ].
        recoveredBlock15Block33Step = 80 ifTrue: [
            recoveredBlock15Block33Stack1 := (recoveredBlock15Block33Stack1) collect: (recoveredBlock15Block33Stack2).
            recoveredBlock15Block33PC := 82.
        ].
        recoveredBlock15Block33Step = 82 ifTrue: [
            recoveredBlock15Block33Local3 := recoveredBlock15Block33Stack1.
            recoveredBlock15Block33PC := 85.
        ].
        recoveredBlock15Block33Step = 85 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredBlock15Block33Local3.
            recoveredBlock15Block33PC := 88.
        ].
        recoveredBlock15Block33Step = 88 ifTrue: [
            recoveredBlock15Block33Stack2 := self.
            recoveredBlock15Block33PC := 89.
        ].
        recoveredBlock15Block33Step = 89 ifTrue: [
            recoveredBlock15Block33Stack2 := (recoveredBlock15Block33Stack2) source.
            recoveredBlock15Block33PC := 91.
        ].
        recoveredBlock15Block33Step = 91 ifTrue: [
            (recoveredBlock15Block33Stack1) add: (recoveredBlock15Block33Stack2).
            recoveredBlock15Block33PC := 93.
        ].
        recoveredBlock15Block33Step = 93 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredArg1.
            recoveredBlock15Block33PC := 96.
        ].
        recoveredBlock15Block33Step = 96 ifTrue: [
            recoveredBlock15Block33Stack2 := [:recoveredBlock15Block33Block96Arg1 | 
    | recoveredBlock15Block33Block96Stack0 recoveredBlock15Block33Block96Stack1 recoveredBlock15Block33Block96Stack2 recoveredBlock15Block33Block96Stack3 recoveredBlock15Block33Block96PC recoveredBlock15Block33Block96Step recoveredBlock15Block33Block96Done recoveredBlock15Block33Block96Result |
    recoveredBlock15Block33Block96Stack0 := nil.
    recoveredBlock15Block33Block96PC := 102.
    recoveredBlock15Block33Block96Done := false.
    [recoveredBlock15Block33Block96Done not] whileTrue: [
        recoveredBlock15Block33Block96Step := recoveredBlock15Block33Block96PC.
        recoveredBlock15Block33Block96Step = 102 ifTrue: [
            recoveredBlock15Block33Block96Stack1 := recoveredBlock15Block33Arg1.
            recoveredBlock15Block33Block96PC := 105.
        ].
        recoveredBlock15Block33Block96Step = 105 ifTrue: [
            recoveredBlock15Block33Block96Stack2 := recoveredBlock15Block33Block96Arg1.
            recoveredBlock15Block33Block96PC := 106.
        ].
        recoveredBlock15Block33Block96Step = 106 ifTrue: [
            recoveredBlock15Block33Block96Stack1 := (recoveredBlock15Block33Block96Stack1) includes: (recoveredBlock15Block33Block96Stack2).
            recoveredBlock15Block33Block96PC := 107.
        ].
        recoveredBlock15Block33Block96Step = 107 ifTrue: [
            (recoveredBlock15Block33Block96Stack1) ifTrue: [recoveredBlock15Block33Block96PC := 110] ifFalse: [recoveredBlock15Block33Block96PC := 122].
        ].
        recoveredBlock15Block33Block96Step = 110 ifTrue: [
            recoveredBlock15Block33Block96Stack1 := recoveredBlock15Block33Block96Arg1.
            recoveredBlock15Block33Block96PC := 111.
        ].
        recoveredBlock15Block33Block96Step = 111 ifTrue: [
            recoveredBlock15Block33Block96Stack1 := (recoveredBlock15Block33Block96Stack1) errLabel.
            recoveredBlock15Block33Block96PC := 112.
        ].
        recoveredBlock15Block33Block96Step = 112 ifTrue: [
            recoveredBlock15Block33Block96Stack1 := (recoveredBlock15Block33Block96Stack1) asQuotedInfoString.
            recoveredBlock15Block33Block96PC := 114.
        ].
        recoveredBlock15Block33Block96Step = 114 ifTrue: [
            recoveredBlock15Block33Block96Stack2 := ' with WRITE access'.
            recoveredBlock15Block33Block96PC := 116.
        ].
        recoveredBlock15Block33Block96Step = 116 ifTrue: [
            recoveredBlock15Block33Block96Stack1 := (recoveredBlock15Block33Block96Stack1) , (recoveredBlock15Block33Block96Stack2).
            recoveredBlock15Block33Block96PC := 118.
        ].
        recoveredBlock15Block33Block96Step = 118 ifTrue: [
            recoveredBlock15Block33Block96PC := 126.
        ].
        recoveredBlock15Block33Block96Step = 122 ifTrue: [
            recoveredBlock15Block33Block96Stack1 := recoveredBlock15Block33Block96Arg1.
            recoveredBlock15Block33Block96PC := 123.
        ].
        recoveredBlock15Block33Block96Step = 123 ifTrue: [
            recoveredBlock15Block33Block96Stack1 := (recoveredBlock15Block33Block96Stack1) errLabel.
            recoveredBlock15Block33Block96PC := 124.
        ].
        recoveredBlock15Block33Block96Step = 124 ifTrue: [
            recoveredBlock15Block33Block96Stack1 := (recoveredBlock15Block33Block96Stack1) asQuotedInfoString.
            recoveredBlock15Block33Block96PC := 126.
        ].
        recoveredBlock15Block33Block96Step = 126 ifTrue: [
            recoveredBlock15Block33Block96Result := recoveredBlock15Block33Block96Stack1.
            recoveredBlock15Block33Block96Done := true.
        ].
    ].
    recoveredBlock15Block33Block96Result
].
            recoveredBlock15Block33PC := 127.
        ].
        recoveredBlock15Block33Step = 127 ifTrue: [
            recoveredBlock15Block33Stack1 := (recoveredBlock15Block33Stack1) collect: (recoveredBlock15Block33Stack2).
            recoveredBlock15Block33PC := 129.
        ].
        recoveredBlock15Block33Step = 129 ifTrue: [
            recoveredBlock15Block33Local2 := recoveredBlock15Block33Stack1.
            recoveredBlock15Block33PC := 132.
        ].
        recoveredBlock15Block33Step = 132 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredBlock15Block33Local2.
            recoveredBlock15Block33PC := 135.
        ].
        recoveredBlock15Block33Step = 135 ifTrue: [
            recoveredBlock15Block33Stack2 := self.
            recoveredBlock15Block33PC := 136.
        ].
        recoveredBlock15Block33Step = 136 ifTrue: [
            recoveredBlock15Block33Stack2 := (recoveredBlock15Block33Stack2) errLabel.
            recoveredBlock15Block33PC := 137.
        ].
        recoveredBlock15Block33Step = 137 ifTrue: [
            recoveredBlock15Block33Stack2 := (recoveredBlock15Block33Stack2) asQuotedInfoString.
            recoveredBlock15Block33PC := 139.
        ].
        recoveredBlock15Block33Step = 139 ifTrue: [
            recoveredBlock15Block33Stack3 := ' with READ access'.
            recoveredBlock15Block33PC := 141.
        ].
        recoveredBlock15Block33Step = 141 ifTrue: [
            recoveredBlock15Block33Stack2 := (recoveredBlock15Block33Stack2) , (recoveredBlock15Block33Stack3).
            recoveredBlock15Block33PC := 143.
        ].
        recoveredBlock15Block33Step = 143 ifTrue: [
            (recoveredBlock15Block33Stack1) add: (recoveredBlock15Block33Stack2).
            recoveredBlock15Block33PC := 145.
        ].
        recoveredBlock15Block33Step = 145 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredBlock15Block33Local2.
            recoveredBlock15Block33PC := 148.
        ].
        recoveredBlock15Block33Step = 148 ifTrue: [
            recoveredBlock15Block33Stack1 := (recoveredBlock15Block33Stack1) removeFirst.
            recoveredBlock15Block33PC := 150.
        ].
        recoveredBlock15Block33Step = 150 ifTrue: [
            recoveredBlock15Block33Local1 := recoveredBlock15Block33Stack1.
            recoveredBlock15Block33PC := 153.
        ].
        recoveredBlock15Block33Step = 153 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredBlock15Block33Local2.
            recoveredBlock15Block33PC := 156.
        ].
        recoveredBlock15Block33Step = 156 ifTrue: [
            recoveredBlock15Block33Stack2 := [:block28111a90Arg1 | 
    | block28111a90Value0 block28111a90Value1 |
    block28111a90Value0 := block28111a90Arg1.
    block28111a90Value1 := ('calls method ') , (block28111a90Value0).
    block28111a90Value1
].
            recoveredBlock15Block33PC := 158.
        ].
        recoveredBlock15Block33Step = 158 ifTrue: [
            recoveredBlock15Block33PC := 168.
        ].
        recoveredBlock15Block33Step = 168 ifTrue: [
            recoveredBlock15Block33Stack1 := (recoveredBlock15Block33Stack1) collect: (recoveredBlock15Block33Stack2).
            recoveredBlock15Block33PC := 170.
        ].
        recoveredBlock15Block33Step = 170 ifTrue: [
            recoveredBlock15Block33Local2 := recoveredBlock15Block33Stack1.
            recoveredBlock15Block33PC := 173.
        ].
        recoveredBlock15Block33Step = 173 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredBlock15Block33Local2.
            recoveredBlock15Block33PC := 176.
        ].
        recoveredBlock15Block33Step = 176 ifTrue: [
            recoveredBlock15Block33Stack2 := recoveredBlock15Block33Local4.
            recoveredBlock15Block33PC := 179.
        ].
        recoveredBlock15Block33Step = 179 ifTrue: [
            recoveredBlock15Block33Stack3 := ' '.
            recoveredBlock15Block33PC := 181.
        ].
        recoveredBlock15Block33Step = 181 ifTrue: [
            recoveredBlock15Block33Stack2 := (recoveredBlock15Block33Stack2) , (recoveredBlock15Block33Stack3).
            recoveredBlock15Block33PC := 183.
        ].
        recoveredBlock15Block33Step = 183 ifTrue: [
            recoveredBlock15Block33Stack3 := recoveredBlock15Block33Local1.
            recoveredBlock15Block33PC := 186.
        ].
        recoveredBlock15Block33Step = 186 ifTrue: [
            recoveredBlock15Block33Stack2 := (recoveredBlock15Block33Stack2) , (recoveredBlock15Block33Stack3).
            recoveredBlock15Block33PC := 188.
        ].
        recoveredBlock15Block33Step = 188 ifTrue: [
            (recoveredBlock15Block33Stack1) addFirst: (recoveredBlock15Block33Stack2).
            recoveredBlock15Block33PC := 190.
        ].
        recoveredBlock15Block33Step = 190 ifTrue: [
            recoveredBlock15Block33Stack1 := 312.
            recoveredBlock15Block33PC := 194.
        ].
        recoveredBlock15Block33Step = 194 ifTrue: [
            recoveredBlock15Block33Stack2 := recoveredBlock15Arg1.
            recoveredBlock15Block33PC := 197.
        ].
        recoveredBlock15Block33Step = 197 ifTrue: [
            recoveredBlock15Block33Stack2 := (recoveredBlock15Block33Stack2) errLabel.
            recoveredBlock15Block33PC := 198.
        ].
        recoveredBlock15Block33Step = 198 ifTrue: [
            recoveredBlock15Block33Stack3 := self.
            recoveredBlock15Block33PC := 199.
        ].
        recoveredBlock15Block33Step = 199 ifTrue: [
            recoveredBlock15Block33Stack3 := (recoveredBlock15Block33Stack3) errLabel.
            recoveredBlock15Block33PC := 200.
        ].
        recoveredBlock15Block33Step = 200 ifTrue: [
            recoveredBlock15Block33Stack4 := recoveredBlock15Block33Local4.
            recoveredBlock15Block33PC := 203.
        ].
        recoveredBlock15Block33Step = 203 ifTrue: [
            recoveredBlock15Block33Stack5 := recoveredBlock15Block33Local5.
            recoveredBlock15Block33PC := 206.
        ].
        recoveredBlock15Block33Step = 206 ifTrue: [
            recoveredBlock15Block33Stack5 := (recoveredBlock15Block33Stack5) errLabel.
            recoveredBlock15Block33PC := 207.
        ].
        recoveredBlock15Block33Step = 207 ifTrue: [
            recoveredBlock15Block33Stack6 := TGTarget.
            recoveredBlock15Block33PC := 209.
        ].
        recoveredBlock15Block33Step = 209 ifTrue: [
            recoveredBlock15Block33Stack6 := (recoveredBlock15Block33Stack6) messageCopyNonOptCopyFunctionKey.
            recoveredBlock15Block33PC := 211.
        ].
        recoveredBlock15Block33Step = 211 ifTrue: [
            recoveredBlock15Block33Stack7 := self.
            recoveredBlock15Block33PC := 212.
        ].
        recoveredBlock15Block33Step = 212 ifTrue: [
            recoveredBlock15Block33Stack7 := (recoveredBlock15Block33Stack7) source.
            recoveredBlock15Block33PC := 214.
        ].
        recoveredBlock15Block33Step = 214 ifTrue: [
            recoveredBlock15Block33Stack8 := recoveredBlock15Block33Local3.
            recoveredBlock15Block33PC := 217.
        ].
        recoveredBlock15Block33Step = 217 ifTrue: [
            recoveredBlock15Block33Stack9 := recoveredBlock15Block33Local2.
            recoveredBlock15Block33PC := 220.
        ].
        recoveredBlock15Block33Step = 220 ifTrue: [
            recoveredBlock15Block33Stack7 := (recoveredBlock15Block33Stack7) createMultiSource: (recoveredBlock15Block33Stack8) labels: (recoveredBlock15Block33Stack9).
            recoveredBlock15Block33PC := 222.
        ].
        recoveredBlock15Block33Step = 222 ifTrue: [
            recoveredBlock15Block33Stack0 := (recoveredBlock15Block33Stack0) mdlWarningNo: (recoveredBlock15Block33Stack1) with: (recoveredBlock15Block33Stack2) with: (recoveredBlock15Block33Stack3) with: (recoveredBlock15Block33Stack4) with: (recoveredBlock15Block33Stack5) with: (recoveredBlock15Block33Stack6) source: (recoveredBlock15Block33Stack7).
            recoveredBlock15Block33PC := 225.
        ].
        recoveredBlock15Block33Step = 225 ifTrue: [
            recoveredBlock15Block33Result := recoveredBlock15Block33Stack0.
            recoveredBlock15Block33Done := true.
        ].
    ].
    recoveredBlock15Block33Result
].
    recoveredBlock15Value6 := (recoveredBlock15Value4) ifNotNil: (recoveredBlock15Value5).
    recoveredBlock15Value6
].
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := (recoveredStack2) copy.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            super analyseMsgAccessNonOptCopyFunctionCallChain: (recoveredStack1) sndMsgTable: (recoveredStack2).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2056f4f0; bytecode file offset 0xe6be20"
!SGMdMethodDecl methodsFor: 'recovered'!
analyseMsgAccessNonOptCopyFunctionCallChain: recoveredArg1 rcvMsgTable: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) usedSndMsgs.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 |
    recoveredBlock15Value0 := recoveredArg2.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) errLabel.
    recoveredBlock15Value3 := [].
    recoveredBlock15Value4 := (recoveredBlock15Value0) at: (recoveredBlock15Value2) ifAbsent: (recoveredBlock15Value3).
    recoveredBlock15Value5 := [:recoveredBlock15Block33Arg1 | 
    | recoveredBlock15Block33Local1 recoveredBlock15Block33Local2 recoveredBlock15Block33Local3 recoveredBlock15Block33Local4 recoveredBlock15Block33Local5 recoveredBlock15Block33Stack0 recoveredBlock15Block33Stack1 recoveredBlock15Block33Stack2 recoveredBlock15Block33Stack3 recoveredBlock15Block33Stack4 recoveredBlock15Block33Stack5 recoveredBlock15Block33Stack6 recoveredBlock15Block33Stack7 recoveredBlock15Block33Stack8 recoveredBlock15Block33Stack9 recoveredBlock15Block33Stack10 recoveredBlock15Block33PC recoveredBlock15Block33Step recoveredBlock15Block33Done recoveredBlock15Block33Result |
    recoveredBlock15Block33Stack0 := self.
    recoveredBlock15Block33PC := 40.
    recoveredBlock15Block33Done := false.
    [recoveredBlock15Block33Done not] whileTrue: [
        recoveredBlock15Block33Step := recoveredBlock15Block33PC.
        recoveredBlock15Block33Step = 40 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredArg1.
            recoveredBlock15Block33PC := 43.
        ].
        recoveredBlock15Block33Step = 43 ifTrue: [
            recoveredBlock15Block33Stack1 := (recoveredBlock15Block33Stack1) first.
            recoveredBlock15Block33PC := 45.
        ].
        recoveredBlock15Block33Step = 45 ifTrue: [
            recoveredBlock15Block33Local5 := recoveredBlock15Block33Stack1.
            recoveredBlock15Block33PC := 48.
        ].
        recoveredBlock15Block33Step = 48 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredBlock15Block33Local5.
            recoveredBlock15Block33PC := 51.
        ].
        recoveredBlock15Block33Step = 51 ifTrue: [
            recoveredBlock15Block33Stack1 := (recoveredBlock15Block33Stack1) isMdlProcessDecl.
            recoveredBlock15Block33PC := 53.
        ].
        recoveredBlock15Block33Step = 53 ifTrue: [
            (recoveredBlock15Block33Stack1) ifTrue: [recoveredBlock15Block33PC := 56] ifFalse: [recoveredBlock15Block33PC := 62].
        ].
        recoveredBlock15Block33Step = 56 ifTrue: [
            recoveredBlock15Block33Stack1 := 'process'.
            recoveredBlock15Block33PC := 58.
        ].
        recoveredBlock15Block33Step = 58 ifTrue: [
            recoveredBlock15Block33PC := 64.
        ].
        recoveredBlock15Block33Step = 62 ifTrue: [
            recoveredBlock15Block33Stack1 := 'method'.
            recoveredBlock15Block33PC := 64.
        ].
        recoveredBlock15Block33Step = 64 ifTrue: [
            recoveredBlock15Block33Local4 := recoveredBlock15Block33Stack1.
            recoveredBlock15Block33PC := 67.
        ].
        recoveredBlock15Block33Step = 67 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredArg1.
            recoveredBlock15Block33PC := 70.
        ].
        recoveredBlock15Block33Step = 70 ifTrue: [
            recoveredBlock15Block33Stack2 := [:block28111ab4Arg1 | 
    | block28111ab4Value0 block28111ab4Value1 |
    block28111ab4Value0 := block28111ab4Arg1.
    block28111ab4Value1 := (block28111ab4Value0) source.
    block28111ab4Value1
].
            recoveredBlock15Block33PC := 72.
        ].
        recoveredBlock15Block33Step = 72 ifTrue: [
            recoveredBlock15Block33PC := 80.
        ].
        recoveredBlock15Block33Step = 80 ifTrue: [
            recoveredBlock15Block33Stack1 := (recoveredBlock15Block33Stack1) collect: (recoveredBlock15Block33Stack2).
            recoveredBlock15Block33PC := 82.
        ].
        recoveredBlock15Block33Step = 82 ifTrue: [
            recoveredBlock15Block33Local3 := recoveredBlock15Block33Stack1.
            recoveredBlock15Block33PC := 85.
        ].
        recoveredBlock15Block33Step = 85 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredBlock15Block33Local3.
            recoveredBlock15Block33PC := 88.
        ].
        recoveredBlock15Block33Step = 88 ifTrue: [
            recoveredBlock15Block33Stack2 := self.
            recoveredBlock15Block33PC := 89.
        ].
        recoveredBlock15Block33Step = 89 ifTrue: [
            recoveredBlock15Block33Stack2 := (recoveredBlock15Block33Stack2) source.
            recoveredBlock15Block33PC := 91.
        ].
        recoveredBlock15Block33Step = 91 ifTrue: [
            (recoveredBlock15Block33Stack1) add: (recoveredBlock15Block33Stack2).
            recoveredBlock15Block33PC := 93.
        ].
        recoveredBlock15Block33Step = 93 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredArg1.
            recoveredBlock15Block33PC := 96.
        ].
        recoveredBlock15Block33Step = 96 ifTrue: [
            recoveredBlock15Block33Stack2 := [:recoveredBlock15Block33Block96Arg1 | 
    | recoveredBlock15Block33Block96Stack0 recoveredBlock15Block33Block96Stack1 recoveredBlock15Block33Block96Stack2 recoveredBlock15Block33Block96Stack3 recoveredBlock15Block33Block96PC recoveredBlock15Block33Block96Step recoveredBlock15Block33Block96Done recoveredBlock15Block33Block96Result |
    recoveredBlock15Block33Block96Stack0 := nil.
    recoveredBlock15Block33Block96PC := 102.
    recoveredBlock15Block33Block96Done := false.
    [recoveredBlock15Block33Block96Done not] whileTrue: [
        recoveredBlock15Block33Block96Step := recoveredBlock15Block33Block96PC.
        recoveredBlock15Block33Block96Step = 102 ifTrue: [
            recoveredBlock15Block33Block96Stack1 := recoveredBlock15Block33Arg1.
            recoveredBlock15Block33Block96PC := 105.
        ].
        recoveredBlock15Block33Block96Step = 105 ifTrue: [
            recoveredBlock15Block33Block96Stack2 := recoveredBlock15Block33Block96Arg1.
            recoveredBlock15Block33Block96PC := 106.
        ].
        recoveredBlock15Block33Block96Step = 106 ifTrue: [
            recoveredBlock15Block33Block96Stack1 := (recoveredBlock15Block33Block96Stack1) includes: (recoveredBlock15Block33Block96Stack2).
            recoveredBlock15Block33Block96PC := 107.
        ].
        recoveredBlock15Block33Block96Step = 107 ifTrue: [
            (recoveredBlock15Block33Block96Stack1) ifTrue: [recoveredBlock15Block33Block96PC := 110] ifFalse: [recoveredBlock15Block33Block96PC := 122].
        ].
        recoveredBlock15Block33Block96Step = 110 ifTrue: [
            recoveredBlock15Block33Block96Stack1 := recoveredBlock15Block33Block96Arg1.
            recoveredBlock15Block33Block96PC := 111.
        ].
        recoveredBlock15Block33Block96Step = 111 ifTrue: [
            recoveredBlock15Block33Block96Stack1 := (recoveredBlock15Block33Block96Stack1) errLabel.
            recoveredBlock15Block33Block96PC := 112.
        ].
        recoveredBlock15Block33Block96Step = 112 ifTrue: [
            recoveredBlock15Block33Block96Stack1 := (recoveredBlock15Block33Block96Stack1) asQuotedInfoString.
            recoveredBlock15Block33Block96PC := 114.
        ].
        recoveredBlock15Block33Block96Step = 114 ifTrue: [
            recoveredBlock15Block33Block96Stack2 := ' with READ access'.
            recoveredBlock15Block33Block96PC := 116.
        ].
        recoveredBlock15Block33Block96Step = 116 ifTrue: [
            recoveredBlock15Block33Block96Stack1 := (recoveredBlock15Block33Block96Stack1) , (recoveredBlock15Block33Block96Stack2).
            recoveredBlock15Block33Block96PC := 118.
        ].
        recoveredBlock15Block33Block96Step = 118 ifTrue: [
            recoveredBlock15Block33Block96PC := 126.
        ].
        recoveredBlock15Block33Block96Step = 122 ifTrue: [
            recoveredBlock15Block33Block96Stack1 := recoveredBlock15Block33Block96Arg1.
            recoveredBlock15Block33Block96PC := 123.
        ].
        recoveredBlock15Block33Block96Step = 123 ifTrue: [
            recoveredBlock15Block33Block96Stack1 := (recoveredBlock15Block33Block96Stack1) errLabel.
            recoveredBlock15Block33Block96PC := 124.
        ].
        recoveredBlock15Block33Block96Step = 124 ifTrue: [
            recoveredBlock15Block33Block96Stack1 := (recoveredBlock15Block33Block96Stack1) asQuotedInfoString.
            recoveredBlock15Block33Block96PC := 126.
        ].
        recoveredBlock15Block33Block96Step = 126 ifTrue: [
            recoveredBlock15Block33Block96Result := recoveredBlock15Block33Block96Stack1.
            recoveredBlock15Block33Block96Done := true.
        ].
    ].
    recoveredBlock15Block33Block96Result
].
            recoveredBlock15Block33PC := 127.
        ].
        recoveredBlock15Block33Step = 127 ifTrue: [
            recoveredBlock15Block33Stack1 := (recoveredBlock15Block33Stack1) collect: (recoveredBlock15Block33Stack2).
            recoveredBlock15Block33PC := 129.
        ].
        recoveredBlock15Block33Step = 129 ifTrue: [
            recoveredBlock15Block33Local2 := recoveredBlock15Block33Stack1.
            recoveredBlock15Block33PC := 132.
        ].
        recoveredBlock15Block33Step = 132 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredBlock15Block33Local2.
            recoveredBlock15Block33PC := 135.
        ].
        recoveredBlock15Block33Step = 135 ifTrue: [
            recoveredBlock15Block33Stack2 := self.
            recoveredBlock15Block33PC := 136.
        ].
        recoveredBlock15Block33Step = 136 ifTrue: [
            recoveredBlock15Block33Stack2 := (recoveredBlock15Block33Stack2) errLabel.
            recoveredBlock15Block33PC := 137.
        ].
        recoveredBlock15Block33Step = 137 ifTrue: [
            recoveredBlock15Block33Stack2 := (recoveredBlock15Block33Stack2) asQuotedInfoString.
            recoveredBlock15Block33PC := 139.
        ].
        recoveredBlock15Block33Step = 139 ifTrue: [
            recoveredBlock15Block33Stack3 := ' with WRITE access'.
            recoveredBlock15Block33PC := 141.
        ].
        recoveredBlock15Block33Step = 141 ifTrue: [
            recoveredBlock15Block33Stack2 := (recoveredBlock15Block33Stack2) , (recoveredBlock15Block33Stack3).
            recoveredBlock15Block33PC := 143.
        ].
        recoveredBlock15Block33Step = 143 ifTrue: [
            (recoveredBlock15Block33Stack1) add: (recoveredBlock15Block33Stack2).
            recoveredBlock15Block33PC := 145.
        ].
        recoveredBlock15Block33Step = 145 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredBlock15Block33Local2.
            recoveredBlock15Block33PC := 148.
        ].
        recoveredBlock15Block33Step = 148 ifTrue: [
            recoveredBlock15Block33Stack1 := (recoveredBlock15Block33Stack1) removeFirst.
            recoveredBlock15Block33PC := 150.
        ].
        recoveredBlock15Block33Step = 150 ifTrue: [
            recoveredBlock15Block33Local1 := recoveredBlock15Block33Stack1.
            recoveredBlock15Block33PC := 153.
        ].
        recoveredBlock15Block33Step = 153 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredBlock15Block33Local2.
            recoveredBlock15Block33PC := 156.
        ].
        recoveredBlock15Block33Step = 156 ifTrue: [
            recoveredBlock15Block33Stack2 := [:block28111ad8Arg1 | 
    | block28111ad8Value0 block28111ad8Value1 |
    block28111ad8Value0 := block28111ad8Arg1.
    block28111ad8Value1 := ('calls method ') , (block28111ad8Value0).
    block28111ad8Value1
].
            recoveredBlock15Block33PC := 158.
        ].
        recoveredBlock15Block33Step = 158 ifTrue: [
            recoveredBlock15Block33PC := 168.
        ].
        recoveredBlock15Block33Step = 168 ifTrue: [
            recoveredBlock15Block33Stack1 := (recoveredBlock15Block33Stack1) collect: (recoveredBlock15Block33Stack2).
            recoveredBlock15Block33PC := 170.
        ].
        recoveredBlock15Block33Step = 170 ifTrue: [
            recoveredBlock15Block33Local2 := recoveredBlock15Block33Stack1.
            recoveredBlock15Block33PC := 173.
        ].
        recoveredBlock15Block33Step = 173 ifTrue: [
            recoveredBlock15Block33Stack1 := recoveredBlock15Block33Local2.
            recoveredBlock15Block33PC := 176.
        ].
        recoveredBlock15Block33Step = 176 ifTrue: [
            recoveredBlock15Block33Stack2 := recoveredBlock15Block33Local4.
            recoveredBlock15Block33PC := 179.
        ].
        recoveredBlock15Block33Step = 179 ifTrue: [
            recoveredBlock15Block33Stack3 := ' '.
            recoveredBlock15Block33PC := 181.
        ].
        recoveredBlock15Block33Step = 181 ifTrue: [
            recoveredBlock15Block33Stack2 := (recoveredBlock15Block33Stack2) , (recoveredBlock15Block33Stack3).
            recoveredBlock15Block33PC := 183.
        ].
        recoveredBlock15Block33Step = 183 ifTrue: [
            recoveredBlock15Block33Stack3 := recoveredBlock15Block33Local1.
            recoveredBlock15Block33PC := 186.
        ].
        recoveredBlock15Block33Step = 186 ifTrue: [
            recoveredBlock15Block33Stack2 := (recoveredBlock15Block33Stack2) , (recoveredBlock15Block33Stack3).
            recoveredBlock15Block33PC := 188.
        ].
        recoveredBlock15Block33Step = 188 ifTrue: [
            (recoveredBlock15Block33Stack1) addFirst: (recoveredBlock15Block33Stack2).
            recoveredBlock15Block33PC := 190.
        ].
        recoveredBlock15Block33Step = 190 ifTrue: [
            recoveredBlock15Block33Stack1 := 313.
            recoveredBlock15Block33PC := 194.
        ].
        recoveredBlock15Block33Step = 194 ifTrue: [
            recoveredBlock15Block33Stack2 := recoveredBlock15Arg1.
            recoveredBlock15Block33PC := 197.
        ].
        recoveredBlock15Block33Step = 197 ifTrue: [
            recoveredBlock15Block33Stack2 := (recoveredBlock15Block33Stack2) errLabel.
            recoveredBlock15Block33PC := 198.
        ].
        recoveredBlock15Block33Step = 198 ifTrue: [
            recoveredBlock15Block33Stack3 := self.
            recoveredBlock15Block33PC := 199.
        ].
        recoveredBlock15Block33Step = 199 ifTrue: [
            recoveredBlock15Block33Stack3 := (recoveredBlock15Block33Stack3) errLabel.
            recoveredBlock15Block33PC := 200.
        ].
        recoveredBlock15Block33Step = 200 ifTrue: [
            recoveredBlock15Block33Stack4 := recoveredBlock15Block33Local4.
            recoveredBlock15Block33PC := 203.
        ].
        recoveredBlock15Block33Step = 203 ifTrue: [
            recoveredBlock15Block33Stack5 := recoveredBlock15Block33Local5.
            recoveredBlock15Block33PC := 206.
        ].
        recoveredBlock15Block33Step = 206 ifTrue: [
            recoveredBlock15Block33Stack5 := (recoveredBlock15Block33Stack5) errLabel.
            recoveredBlock15Block33PC := 207.
        ].
        recoveredBlock15Block33Step = 207 ifTrue: [
            recoveredBlock15Block33Stack6 := TGTarget.
            recoveredBlock15Block33PC := 209.
        ].
        recoveredBlock15Block33Step = 209 ifTrue: [
            recoveredBlock15Block33Stack6 := (recoveredBlock15Block33Stack6) messageCopyNonOptCopyFunctionKey.
            recoveredBlock15Block33PC := 211.
        ].
        recoveredBlock15Block33Step = 211 ifTrue: [
            recoveredBlock15Block33Stack7 := self.
            recoveredBlock15Block33PC := 212.
        ].
        recoveredBlock15Block33Step = 212 ifTrue: [
            recoveredBlock15Block33Stack7 := (recoveredBlock15Block33Stack7) source.
            recoveredBlock15Block33PC := 214.
        ].
        recoveredBlock15Block33Step = 214 ifTrue: [
            recoveredBlock15Block33Stack8 := recoveredBlock15Block33Local3.
            recoveredBlock15Block33PC := 217.
        ].
        recoveredBlock15Block33Step = 217 ifTrue: [
            recoveredBlock15Block33Stack9 := recoveredBlock15Block33Local2.
            recoveredBlock15Block33PC := 220.
        ].
        recoveredBlock15Block33Step = 220 ifTrue: [
            recoveredBlock15Block33Stack7 := (recoveredBlock15Block33Stack7) createMultiSource: (recoveredBlock15Block33Stack8) labels: (recoveredBlock15Block33Stack9).
            recoveredBlock15Block33PC := 222.
        ].
        recoveredBlock15Block33Step = 222 ifTrue: [
            recoveredBlock15Block33Stack0 := (recoveredBlock15Block33Stack0) mdlWarningNo: (recoveredBlock15Block33Stack1) with: (recoveredBlock15Block33Stack2) with: (recoveredBlock15Block33Stack3) with: (recoveredBlock15Block33Stack4) with: (recoveredBlock15Block33Stack5) with: (recoveredBlock15Block33Stack6) source: (recoveredBlock15Block33Stack7).
            recoveredBlock15Block33PC := 225.
        ].
        recoveredBlock15Block33Step = 225 ifTrue: [
            recoveredBlock15Block33Result := recoveredBlock15Block33Stack0.
            recoveredBlock15Block33Done := true.
        ].
    ].
    recoveredBlock15Block33Result
].
    recoveredBlock15Value6 := (recoveredBlock15Value4) ifNotNil: (recoveredBlock15Value5).
    recoveredBlock15Value6
].
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := (recoveredStack2) copy.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            super analyseMsgAccessNonOptCopyFunctionCallChain: (recoveredStack1) rcvMsgTable: (recoveredStack2).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

