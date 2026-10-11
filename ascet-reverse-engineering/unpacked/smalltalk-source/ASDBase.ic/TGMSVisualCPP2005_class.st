"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200174e0; bytecode file offset 0x92209c"
!TGMSVisualCPP2005 class methodsFor: 'recovered'!
compilerToolType
    ^'MS_Visual_CPP_2005'
! !

"ASDBase.ic method 0x2001f6ac; bytecode file offset 0x92209c"
!TGMSVisualCPP2005 class methodsFor: 'recovered'!
compilerToolLabel
    ^'Microsoft Visual C++ 2005'
! !

"ASDBase.ic method 0x2018d564; bytecode file offset 0xa89e38"
!TGMSVisualCPP2005 class methodsFor: 'recovered'!
defaultCompilerToolPath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) winProgramFilesPath.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    'C:\Program Files'
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'Microsoft Visual Studio 8\VC\'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

