"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200c78e0; bytecode file offset 0x9c4194"
!ASDXMLImportProtoProject methodsFor: 'recovered'!
osLogic: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    osLogic := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7914; bytecode file offset 0x9c41c8"
!ASDXMLImportProtoProject methodsFor: 'recovered'!
files: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    files := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201122fc; bytecode file offset 0xa0ebe8"
!ASDXMLImportProtoProject methodsFor: 'recovered'!
initOn: recoveredArg1 oid: recoveredArg2 namespace: recoveredArg3 baseName: recoveredArg4 importPath: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    super initOn: (recoveredValue0) oid: (recoveredValue1) namespace: (recoveredValue2) baseName: (recoveredValue3) importPath: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x204d67a8; bytecode file offset 0xdd30b0"
!ASDXMLImportProtoProject methodsFor: 'recovered'!
commit: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := baseName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := hasErrors.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := osLogic.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := osLogic.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := [:recoveredBlock34Arg1 :recoveredBlock34Arg2 | 
    | recoveredBlock34Local1 recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 recoveredBlock34Value3 recoveredBlock34Value4 recoveredBlock34Value5 recoveredBlock34Value6 recoveredBlock34Value7 recoveredBlock34Value8 |
    recoveredBlock34Value0 := recoveredArg1.
    recoveredBlock34Value1 := recoveredArg1.
    recoveredBlock34Value2 := (recoveredBlock34Value1) createOID: (nil).
    recoveredBlock34Value3 := recoveredBlock34Arg2.
    recoveredBlock34Value4 := (recoveredBlock34Value0) insertInDatabase: (recoveredBlock34Value2) object: (recoveredBlock34Value3) name: (nil).
    recoveredBlock34Local1 := recoveredBlock34Value4.
    recoveredBlock34Value5 := recoveredLocal1.
    recoveredBlock34Value6 := recoveredBlock34Arg1.
    recoveredBlock34Value7 := recoveredBlock34Local1.
    recoveredBlock34Value8 := (recoveredBlock34Value5) at: (recoveredBlock34Value6) put: (recoveredBlock34Value7).
    recoveredBlock34Value8
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := thing.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) specification.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) osLogic: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := files.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 149].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := files.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := [:block28107704Arg1 | 
    | block28107704Value0 block28107704Value1 block28107704Value2 |
    block28107704Value0 := block28107704Arg1.
    block28107704Value1 := [:block28107704Block7Arg1 :block28107704Block7Arg2 | 
    | block28107704Block7Local1 block28107704Block7Local2 block28107704Block7Value0 block28107704Block7Value1 block28107704Block7Value2 block28107704Block7Value3 block28107704Block7Value4 block28107704Block7Value5 block28107704Block7Value6 block28107704Block7Value7 block28107704Block7Value8 block28107704Block7Value9 block28107704Block7Value10 block28107704Block7Value11 |
    block28107704Block7Value0 := block28107704Block7Arg1.
    block28107704Block7Value1 := (block28107704Block7Value0) at: (1).
    block28107704Block7Local1 := block28107704Block7Value1.
    block28107704Block7Value2 := SGWrapperDB.
    block28107704Block7Value3 := block28107704Block7Arg1.
    block28107704Block7Value4 := (block28107704Block7Value3) at: (2).
    block28107704Block7Value5 := (block28107704Block7Value2) createFor: (block28107704Block7Value4).
    block28107704Block7Local2 := block28107704Block7Value5.
    block28107704Block7Value6 := block28107704Block7Local1.
    block28107704Block7Value7 := block28107704Block7Local2.
    (block28107704Block7Value6) fileContents: (block28107704Block7Value7).
    block28107704Block7Value8 := block28107704Arg1.
    block28107704Block7Value9 := block28107704Block7Arg2.
    block28107704Block7Value10 := block28107704Block7Local1.
    block28107704Block7Value11 := (block28107704Block7Value8) at: (block28107704Block7Value9) put: (block28107704Block7Value10).
    block28107704Block7Value11
].
    block28107704Value2 := (block28107704Value0) doWithIndex: (block28107704Value1).
    block28107704Value2
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := thing.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) specification.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := files.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1) xmlProjectFiles: (recoveredStack2).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            super commit: (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

