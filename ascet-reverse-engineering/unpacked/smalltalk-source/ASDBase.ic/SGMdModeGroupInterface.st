"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200028c8; bytecode file offset 0x8ffcfc"
!SGMdModeGroupInterface methodsFor: 'recovered'!
semAnaDataset
    ^self
! !

"ASDBase.ic method 0x20054ed0; bytecode file offset 0x952a9c"
!SGMdModeGroupInterface methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlModeGroupInterface: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200637f4; bytecode file offset 0x961970"
!SGMdModeGroupInterface methodsFor: 'recovered'!
resetIleTypes
    | recoveredValue0 |
    recoveredValue0 := (self) mdlClassType.
    (recoveredValue0) resetIleNames.
    ^self
! !

"ASDBase.ic method 0x2007740c; bytecode file offset 0x9757c8"
!SGMdModeGroupInterface methodsFor: 'recovered'!
isMdlModeGroupType
    ^true
! !

"ASDBase.ic method 0x202c3d38; bytecode file offset 0xbc060c"
!SGMdModeGroupInterface methodsFor: 'recovered'!
enumLabels
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := enumLabels.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            enumLabels := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClassType.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) enumerationLabels.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 |
    recoveredBlock18Value0 := (self) symbols.
    recoveredBlock18Value1 := recoveredBlock18Arg1.
    recoveredBlock18Value2 := [:recoveredBlock18Block27Arg1 | 
    | recoveredBlock18Block27Value0 recoveredBlock18Block27Value1 recoveredBlock18Block27Value2 |
    recoveredBlock18Block27Value0 := enumLabels.
    recoveredBlock18Block27Value1 := recoveredBlock18Block27Arg1.
    recoveredBlock18Block27Value2 := (recoveredBlock18Block27Value0) add: (recoveredBlock18Block27Value1).
    recoveredBlock18Block27Value2
].
    recoveredBlock18Value3 := (recoveredBlock18Value0) at: (recoveredBlock18Value1) ifPresent: (recoveredBlock18Value2).
    recoveredBlock18Value3
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := enumLabels.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

