"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200c790c; bytecode file offset 0x9c41c8"
!ASDXMLImportProtoGenericComponent methodsFor: 'recovered'!
fileList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fileList := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e78ac; bytecode file offset 0x9e4168"
!ASDXMLImportProtoGenericComponent methodsFor: 'recovered'!
addComponent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := components.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) parent: (self).
    ^self
! !

"ASDBase.ic method 0x2016a394; bytecode file offset 0xa66c58"
!ASDXMLImportProtoGenericComponent methodsFor: 'recovered'!
initOn: recoveredArg1 oid: recoveredArg2 namespace: recoveredArg3 baseName: recoveredArg4 importPath: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    super initOn: (recoveredValue0) oid: (recoveredValue1) namespace: (recoveredValue2) baseName: (recoveredValue3) importPath: (recoveredValue4).
    recoveredValue5 := OrderedCollection.
    recoveredValue6 := (recoveredValue5) new.
    components := recoveredValue6.
    ^self
! !

"ASDBase.ic method 0x201a8b34; bytecode file offset 0xaa53f0"
!ASDXMLImportProtoGenericComponent methodsFor: 'recovered'!
resolveReferences: recoveredArg1 missing: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := components.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := recoveredArg2.
    recoveredBlock6Value3 := (recoveredBlock6Value0) resolveReferences: (recoveredBlock6Value1) missing: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20200e3c; bytecode file offset 0xafd70c"
!ASDXMLImportProtoGenericComponent methodsFor: 'recovered'!
commit: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := fileList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := thing.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := SGWrapperDB.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := fileList.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) createFor: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) asRBDBReference.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) xmlFileList: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            super commit: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

