"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d07c; bytecode file offset 0x909ab8"
!SGClassImplConfig methodsFor: 'recovered'!
copyConfigLabel: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2002447c; bytecode file offset 0x92209c"
!SGClassImplConfig methodsFor: 'recovered'!
labelForCompare
    ^'Global Implementation for: '
! !

"ASDBase.ic method 0x20074d8c; bytecode file offset 0x9757c8"
!SGClassImplConfig methodsFor: 'recovered'!
isClassConfig
    ^true
! !

"ASDBase.ic method 0x20095dfc; bytecode file offset 0x9926f8"
!SGClassImplConfig methodsFor: 'recovered'!
isValidForComponent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) classImplConfigKey.
    recoveredValue2 := (self) dbObject.
    recoveredValue3 := (recoveredValue1) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009d7b4; bytecode file offset 0x99a0d0"
!SGClassImplConfig methodsFor: 'recovered'!
ensureUniqueName
    | recoveredValue0 |
    recoveredValue0 := ('Kk') == ('Call_67277').
    ^self
! !

"ASDBase.ic method 0x200c7f70; bytecode file offset 0x9c482c"
!SGClassImplConfig methodsFor: 'recovered'!
copyRecursiveUsePrefix: recoveredArg1 handleWriteProtectedConfigs: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := ('Kk') == ('Call_67993').
    ^nil
! !

"ASDBase.ic method 0x2010c3b0; bytecode file offset 0xa08c70"
!SGClassImplConfig methodsFor: 'recovered'!
label
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    ^''
].
    recoveredValue1 := (self) sgClassIfUndefined: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) label.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20140008; bytecode file offset 0xa3c8cc"
!SGClassImplConfig methodsFor: 'recovered'!
checkIfToAddForSGClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) classImplConfigKey.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) classImplConfig: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022df10; bytecode file offset 0xb2a7e0"
!SGClassImplConfig methodsFor: 'recovered'!
allConfiguredElements
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allImplConfiguredElements.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dcd10Arg1 | 
    | block280dcd10Value0 block280dcd10Value1 |
    block280dcd10Value0 := block280dcd10Arg1.
    block280dcd10Value1 := (block280dcd10Value0) isUniqueImplConfigured.
    block280dcd10Value1
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
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) additionalExportedVariables.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

