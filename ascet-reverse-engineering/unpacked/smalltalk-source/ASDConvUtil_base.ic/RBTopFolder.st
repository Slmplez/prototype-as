"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDConvUtil_base.ic method 0x20000020; bytecode file offset 0x9ab4"
!RBTopFolder methodsFor: 'recovered'!
checkOperatorImplMonitor: recoveredArg1
    ^self
! !

"ASDConvUtil_base.ic method 0x20000028; bytecode file offset 0x9ab4"
!RBTopFolder methodsFor: 'recovered'!
convertToRedundant: recoveredArg1
    ^self
! !

"ASDConvUtil_base.ic method 0x20000030; bytecode file offset 0x9ab4"
!RBTopFolder methodsFor: 'recovered'!
convertOperatorImplToImplCastMonitor: recoveredArg1
    ^self
! !

"ASDConvUtil_base.ic method 0x20000038; bytecode file offset 0x9ab4"
!RBTopFolder methodsFor: 'recovered'!
convertToVolatile: recoveredArg1
    ^self
! !

"ASDConvUtil_base.ic method 0x20000040; bytecode file offset 0x9ab4"
!RBTopFolder methodsFor: 'recovered'!
convertToNonVolatile: recoveredArg1
    ^self
! !

"ASDConvUtil_base.ic method 0x20000048; bytecode file offset 0x9ab4"
!RBTopFolder methodsFor: 'recovered'!
convertDtToReadCalibration: recoveredArg1
    ^self
! !

"ASDConvUtil_base.ic method 0x20000050; bytecode file offset 0x9ab4"
!RBTopFolder methodsFor: 'recovered'!
resetOperatorImplementationRecursive: recoveredArg1
    ^self
! !

"ASDConvUtil_base.ic method 0x20000058; bytecode file offset 0x9ab4"
!RBTopFolder methodsFor: 'recovered'!
resetOperatorImplementationFlat: recoveredArg1
    ^self
! !

"ASDConvUtil_base.ic method 0x20000060; bytecode file offset 0x9ab4"
!RBTopFolder methodsFor: 'recovered'!
convertFromSystemConstantToConstant: recoveredArg1
    ^self
! !

"ASDConvUtil_base.ic method 0x20000068; bytecode file offset 0x9ab4"
!RBTopFolder methodsFor: 'recovered'!
convertMatrixReferencesToVariableReferences: recoveredArg1
    ^self
! !

"ASDConvUtil_base.ic method 0x20000070; bytecode file offset 0x9ab4"
!RBTopFolder methodsFor: 'recovered'!
convertArrayReferencesToVariableReferences: recoveredArg1
    ^self
! !

"ASDConvUtil_base.ic method 0x20000078; bytecode file offset 0x9ab4"
!RBTopFolder methodsFor: 'recovered'!
convertToDefaultMemoryLocation: recoveredArg1
    ^self
! !

"ASDConvUtil_base.ic method 0x20000ebc; bytecode file offset 0xa924"
!RBTopFolder methodsFor: 'recovered'!
convertToAnsiCReplaceString: recoveredArg1 monitor: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidANSICIdentifier.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getValidANSICIdentifierReplace: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := ' - '.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) itemType.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := ': '.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := ' -> '.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) addImportantInfoText: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) label: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

