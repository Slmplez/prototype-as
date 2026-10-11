"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200009d8; bytecode file offset 0x8ffcfc"
!SGMdModuleInterface methodsFor: 'recovered'!
semAnaDataset
    ^self
! !

"ASDBase.ic method 0x20055890; bytecode file offset 0x952a9c"
!SGMdModuleInterface methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlModuleInterface: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2007796c; bytecode file offset 0x9757c8"
!SGMdModuleInterface methodsFor: 'recovered'!
isMdlModule
    ^true
! !

"ASDBase.ic method 0x2013dc7c; bytecode file offset 0xa3a548"
!SGMdModuleInterface methodsFor: 'recovered'!
processDecls
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) symbols.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280cbc1cArg1 | 
    | block280cbc1cValue0 block280cbc1cValue1 |
    block280cbc1cValue0 := block280cbc1cArg1.
    block280cbc1cValue1 := (block280cbc1cValue0) isMdlProcessDecl.
    block280cbc1cValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

