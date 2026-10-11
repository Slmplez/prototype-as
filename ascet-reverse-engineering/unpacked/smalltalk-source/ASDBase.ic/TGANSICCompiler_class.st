"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002d80; bytecode file offset 0x8ffcfc"
!TGANSICCompiler class methodsFor: 'recovered'!
removeInstances
    ^self
! !

"ASDBase.ic method 0x200059e8; bytecode file offset 0x902744"
!TGANSICCompiler class methodsFor: 'recovered'!
createWithOptions: recoveredArg1 updateOptions: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20008390; bytecode file offset 0x908be4"
!TGANSICCompiler class methodsFor: 'recovered'!
oldCompilerToolLabel
    | recoveredValue0 |
    recoveredValue0 := (self) compilerToolLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009a28; bytecode file offset 0x908be4"
!TGANSICCompiler class methodsFor: 'recovered'!
identifier
    | recoveredValue0 |
    recoveredValue0 := (self) compilerToolType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20050550; bytecode file offset 0x94d048"
!TGANSICCompiler class methodsFor: 'recovered'!
compilerToolLabel
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2007ab64; bytecode file offset 0x97c330"
!TGANSICCompiler class methodsFor: 'recovered'!
isMissingTool
    ^false
! !

"ASDBase.ic method 0x200b1e0c; bytecode file offset 0x9ae708"
!TGANSICCompiler class methodsFor: 'recovered'!
compilerToolType
    | recoveredValue0 |
    recoveredValue0 := ('Kli') == ('WHAT9370').
    ^nil
! !

"ASDBase.ic method 0x2010f794; bytecode file offset 0xa0c054"
!TGANSICCompiler class methodsFor: 'recovered'!
collectAvailableCompilerTools: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAbstract.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) compilerToolType.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

