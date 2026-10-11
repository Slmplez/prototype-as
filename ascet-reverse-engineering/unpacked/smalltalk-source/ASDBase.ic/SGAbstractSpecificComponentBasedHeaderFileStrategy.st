"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005e78; bytecode file offset 0x902744"
!SGAbstractSpecificComponentBasedHeaderFileStrategy methodsFor: 'recovered'!
necessaryInterpolHeaderForNode: recoveredArg1 cppCommands: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20039c44; bytecode file offset 0x938608"
!SGAbstractSpecificComponentBasedHeaderFileStrategy methodsFor: 'recovered'!
filterNodesForRequiredInitHeaders: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) filterNodesForRequiredModuleHeaders: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200530dc; bytecode file offset 0x9505d0"
!SGAbstractSpecificComponentBasedHeaderFileStrategy methodsFor: 'recovered'!
dependentSpecificNode: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005391c; bytecode file offset 0x9505d0"
!SGAbstractSpecificComponentBasedHeaderFileStrategy methodsFor: 'recovered'!
selectRequiredModuleCodeHeaders: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200872d0; bytecode file offset 0x983b88"
!SGAbstractSpecificComponentBasedHeaderFileStrategy methodsFor: 'recovered'!
necessaryProductionHeaderForNode: recoveredArg1 softRequired: recoveredArg2 cppCommands: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg2.
    (recoveredValue0) addAllCHeaders: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b973c; bytecode file offset 0x9b5ffc"
!SGAbstractSpecificComponentBasedHeaderFileStrategy methodsFor: 'recovered'!
filterNodesForRequiredModuleHeaders: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super filterNodesForRequiredModuleHeaders: (recoveredValue0).
    recoveredValue2 := (self) selectRequiredModuleCodeHeaders: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20100a20; bytecode file offset 0x9fd2e0"
!SGAbstractSpecificComponentBasedHeaderFileStrategy methodsFor: 'recovered'!
necessaryModuleHeaderForComponent: recoveredArg1 cppCommands: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) dependentSpecificNode: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) moduleHeaderFileName.
    (self) necessaryModuleHeaderForComponent: (recoveredValue0) cppCommands: (recoveredValue1) fileName: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20147944; bytecode file offset 0xa44204"
!SGAbstractSpecificComponentBasedHeaderFileStrategy methodsFor: 'recovered'!
necessaryInterpolHeaderInCombinedModuleInitCode: recoveredArg1 cppCommands: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isProjectNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) necessaryInterpolHeaderForNode: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) addAllHHeaders: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015a798; bytecode file offset 0xa57064"
!SGAbstractSpecificComponentBasedHeaderFileStrategy methodsFor: 'recovered'!
necessaryCppCommandsInSeparateInitCodeForComponent: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) preprocessorCommandsForComponent: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := Array.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) dependentSpecificNode: (recoveredValue4).
    recoveredValue6 := (recoveredValue5) initHeaderFileName.
    recoveredValue7 := (recoveredValue3) with: (recoveredValue6).
    (recoveredValue2) addAllCHeaders: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201cfa48; bytecode file offset 0xacc30c"
!SGAbstractSpecificComponentBasedHeaderFileStrategy methodsFor: 'recovered'!
necessarySoftRequiredForNode: recoveredArg1 softRequired: recoveredArg2 cppCommands: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) isClassNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) addAllCHeaders: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            super necessarySoftRequiredForNode: (recoveredStack2) softRequired: (recoveredStack3) cppCommands: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

