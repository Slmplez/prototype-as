"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20054c9c; bytecode file offset 0x952a9c"
!SGMdNoImplVarDecl methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) noImplVarDecl: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006e718; bytecode file offset 0x96b41c"
!SGMdNoImplVarDecl methodsFor: 'recovered'!
idNodes
    | recoveredValue0 |
    recoveredValue0 := idNodes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200749a4; bytecode file offset 0x9757c8"
!SGMdNoImplVarDecl methodsFor: 'recovered'!
isMdlNoImplVarDecl
    ^true
! !

"ASDBase.ic method 0x2007db6c; bytecode file offset 0x97c330"
!SGMdNoImplVarDecl methodsFor: 'recovered'!
isMdlRteStatusVariable
    ^false
! !

"ASDBase.ic method 0x2008ef30; bytecode file offset 0x98b80c"
!SGMdNoImplVarDecl methodsFor: 'recovered'!
genIleLazy
    | recoveredValue0 |
    recoveredValue0 := (self) generator.
    (recoveredValue0) blockVarDecl: (self).
    ^self
! !

"ASDBase.ic method 0x20097594; bytecode file offset 0x995850"
!SGMdNoImplVarDecl methodsFor: 'recovered'!
addNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) idNodes.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200fa35c; bytecode file offset 0x9f6c38"
!SGMdNoImplVarDecl methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    idNodes := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x201871d8; bytecode file offset 0xa83a9c"
!SGMdNoImplVarDecl methodsFor: 'recovered'!
updateOptData: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) idNodes.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value1) copy.
    recoveredBlock5Value3 := (recoveredBlock5Value0) optData: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201f4e8c; bytecode file offset 0xaf1754"
!SGMdNoImplVarDecl methodsFor: 'recovered'!
createIleType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlBaseClassType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleComplexBaseType.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) asBaseClassType.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := super createIleType: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := super createIleType: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

