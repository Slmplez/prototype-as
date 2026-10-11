"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20079dfc; bytecode file offset 0x97c330"
!ASDXMLImportProtoComplex methodsFor: 'recovered'!
isPrimitive
    ^false
! !

"ASDBase.ic method 0x2011232c; bytecode file offset 0xa0ebe8"
!ASDXMLImportProtoComplex methodsFor: 'recovered'!
initOn: recoveredArg1 oid: recoveredArg2 refPath: recoveredArg3 refOID: recoveredArg4 importPath: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    super initOn: (recoveredValue0) oid: (recoveredValue1) refPath: (recoveredValue2) refOID: (recoveredValue3) importPath: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x202740a4; bytecode file offset 0xb70970"
!ASDXMLImportProtoComplex methodsFor: 'recovered'!
addDefaultImpl: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := refItem.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := refItem.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlOID.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalByOID: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultImplementation.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlOID.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeMappedDBProxy: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) complexValues.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := oid.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036e088; bytecode file offset 0xc6a958"
!ASDXMLImportProtoComplex methodsFor: 'recovered'!
addDefaultData: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := refItem.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := refItem.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlOID.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalByOID: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) defaultData.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredLocal2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 31.
        ].
        recoveredBlock19Step = 31 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal2.
            recoveredBlock19PC := 34.
        ].
        recoveredBlock19Step = 34 ifTrue: [
            (recoveredBlock19Stack1 ~~ nil) ifTrue: [recoveredBlock19PC := 40] ifFalse: [recoveredBlock19PC := 38].
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            ^recoveredBlock19Stack1
        ].
        recoveredBlock19Step = 40 ifTrue: [
            recoveredBlock19Stack1 := recoveredArg1.
            recoveredBlock19PC := 43.
        ].
        recoveredBlock19Step = 43 ifTrue: [
            recoveredBlock19Stack2 := recoveredLocal2.
            recoveredBlock19PC := 46.
        ].
        recoveredBlock19Step = 46 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) xmlOID.
            recoveredBlock19PC := 47.
        ].
        recoveredBlock19Step = 47 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) makeMappedDBProxy: (recoveredBlock19Stack2).
            recoveredBlock19PC := 48.
        ].
        recoveredBlock19Step = 48 ifTrue: [
            recoveredLocal1 := recoveredBlock19Stack1.
            recoveredBlock19PC := 51.
        ].
        recoveredBlock19Step = 51 ifTrue: [
            recoveredBlock19Stack1 := recoveredArg2.
            recoveredBlock19PC := 54.
        ].
        recoveredBlock19Step = 54 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) complexValues.
            recoveredBlock19PC := 56.
        ].
        recoveredBlock19Step = 56 ifTrue: [
            recoveredBlock19Stack2 := oid.
            recoveredBlock19PC := 58.
        ].
        recoveredBlock19Step = 58 ifTrue: [
            recoveredBlock19Stack3 := recoveredLocal1.
            recoveredBlock19PC := 61.
        ].
        recoveredBlock19Step = 61 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) at: (recoveredBlock19Stack2) put: (recoveredBlock19Stack3).
            recoveredBlock19PC := 63.
        ].
        recoveredBlock19Step = 63 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

