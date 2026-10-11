"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000ce8; bytecode file offset 0x8ffcfc"
!SGTemplatesRT class methodsFor: 'recovered'!
loaded
    ^self
! !

"ASDBase.ic method 0x20128960; bytecode file offset 0xa25378"
!SGTemplatesRT class methodsFor: 'recovered'!
packagerIncludeClassNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGLibrary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubclasses.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280c9234Arg1 | 
    | block280c9234Value0 block280c9234Value1 |
    block280c9234Value0 := block280c9234Arg1.
    block280c9234Value1 := (block280c9234Value0) symbol.
    block280c9234Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

