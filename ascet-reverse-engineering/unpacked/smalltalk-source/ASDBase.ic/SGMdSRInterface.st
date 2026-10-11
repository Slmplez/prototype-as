"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003d0e8; bytecode file offset 0x93bf94"
!SGMdSRInterface methodsFor: 'recovered'!
arBaseCategory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgAutosarSettings.
    recoveredValue1 := (recoveredValue0) categorySRInterface.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20054df8; bytecode file offset 0x952a9c"
!SGMdSRInterface methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlSRInterface: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20075624; bytecode file offset 0x9757c8"
!SGMdSRInterface methodsFor: 'recovered'!
isMdlSRInterface
    ^true
! !

"ASDBase.ic method 0x200af490; bytecode file offset 0x9abd78"
!SGMdSRInterface methodsFor: 'recovered'!
deepLookup: recoveredArg1 expr: recoveredArg2 imports: recoveredArg3 ifFail: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg4.
    recoveredValue3 := (self) deepLookup: (recoveredValue0) expr: (recoveredValue1) ifFail: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201464c4; bytecode file offset 0xa42f4c"
!SGMdSRInterface methodsFor: 'recovered'!
selectedDataSet: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) instVarInitValues.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280cc4d4Value0 block280cc4d4Value1 |
    block280cc4d4Value0 := LookupTable.
    block280cc4d4Value1 := (block280cc4d4Value0) new.
    block280cc4d4Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d7904; bytecode file offset 0xad41d0"
!SGMdSRInterface methodsFor: 'recovered'!
isMdlARModeSwitchInterface
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) instanceVars.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) instanceVars.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:block280d5a50Arg1 | 
    | block280d5a50Value0 block280d5a50Value1 block280d5a50Value2 |
    block280d5a50Value0 := block280d5a50Arg1.
    block280d5a50Value1 := (block280d5a50Value0) mdlClass.
    block280d5a50Value2 := (block280d5a50Value1) isMdlModeGroupType.
    block280d5a50Value2
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSatisfy: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

