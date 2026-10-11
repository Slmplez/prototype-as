"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000788c; bytecode file offset 0x908be4"
!SGMdRecordFieldsMapping methodsFor: 'recovered'!
mdlName
    | recoveredValue0 |
    recoveredValue0 := (self) label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20029324; bytecode file offset 0x934580"
!SGMdRecordFieldsMapping methodsFor: 'recovered'!
mdlMessageKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fromVarDeclReceiver.
    recoveredValue1 := (recoveredValue0) mdlMessageKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200356e4; bytecode file offset 0x934580"
!SGMdRecordFieldsMapping methodsFor: 'recovered'!
isMdlTargetMissing
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fieldMapping.
    recoveredValue1 := (recoveredValue0) isEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200557d0; bytecode file offset 0x952a9c"
!SGMdRecordFieldsMapping methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlRecordFieldsMapping: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006e4f4; bytecode file offset 0x96af48"
!SGMdRecordFieldsMapping methodsFor: 'recovered'!
mdlInterface
    | recoveredValue0 |
    recoveredValue0 := mdlInterface.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007ab44; bytecode file offset 0x97c330"
!SGMdRecordFieldsMapping methodsFor: 'recovered'!
isMdlRecordMapping
    ^false
! !

"ASDBase.ic method 0x200bd434; bytecode file offset 0x9b9d70"
!SGMdRecordFieldsMapping methodsFor: 'recovered'!
fieldMapping: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) fieldMapping.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) errLabel.
    recoveredValue3 := [].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c4c7c; bytecode file offset 0x9c16b0"
!SGMdRecordFieldsMapping methodsFor: 'recovered'!
mdlInterface: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mdlInterface := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f7a04; bytecode file offset 0x9f4e38"
!SGMdRecordFieldsMapping methodsFor: 'recovered'!
isMdlRecordAutosarFieldsMapping
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) fieldMapping.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4d04Arg1 | 
    | block280c4d04Value0 block280c4d04Value1 |
    block280c4d04Value0 := block280c4d04Arg1.
    block280c4d04Value1 := (block280c4d04Value0) isMdlAutosarMapping.
    block280c4d04Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012a3b4; bytecode file offset 0xa26ca0"
!SGMdRecordFieldsMapping methodsFor: 'recovered'!
fieldMapping
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := fieldMapping.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            fieldMapping := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := fieldMapping.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20151500; bytecode file offset 0xa4ddcc"
!SGMdRecordFieldsMapping methodsFor: 'recovered'!
updateMdlClassSource
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) fromVarDecl.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlRecordType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) fromVarDecl.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlInterface.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClassType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) mdlClass: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201db1a8; bytecode file offset 0xad7a70"
!SGMdRecordFieldsMapping methodsFor: 'recovered'!
printTargetOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) cr.
    recoveredValue1 := (self) fieldMapping.
    recoveredValue2 := (recoveredValue1) values.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) printOn: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x202dc3d4; bytecode file offset 0xbd8ca8"
!SGMdRecordFieldsMapping methodsFor: 'recovered'!
asCollection
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) secondaryMapping.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) secondaryMapping.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) asCollection.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) fieldMapping.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 |
    recoveredBlock29Value0 := recoveredLocal1.
    recoveredBlock29Value1 := recoveredBlock29Arg1.
    recoveredBlock29Value2 := (recoveredBlock29Value1) asCollection.
    recoveredBlock29Value3 := (recoveredBlock29Value0) addAll: (recoveredBlock29Value2).
    recoveredBlock29Value3
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

