"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200b887c; bytecode file offset 0x9b5138"
!ASDXMLUuidLookupBinaryDB methodsFor: 'recovered'!
itemByUUID: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := table.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20407fe8; bytecode file offset 0xd048d8"
!ASDXMLUuidLookupBinaryDB methodsFor: 'recovered'!
init
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := AbtHighCapacityLookupTable.
    recoveredValue1 := (recoveredValue0) new.
    table := recoveredValue1.
    recoveredValue2 := SGDatabaseAccess.
    recoveredValue3 := (recoveredValue2) create.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := SGComponent.
    recoveredValue5 := (recoveredValue4) allSubclasses.
    recoveredValue6 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 |
    recoveredBlock19Value0 := recoveredLocal1.
    recoveredBlock19Value1 := recoveredBlock19Arg1.
    recoveredBlock19Value2 := (recoveredBlock19Value0) readExactClassKeys: (recoveredBlock19Value1).
    recoveredBlock19Value3 := [:recoveredBlock19Block32Arg1 | 
    | recoveredBlock19Block32Local1 recoveredBlock19Block32Local2 recoveredBlock19Block32Stack0 recoveredBlock19Block32Stack1 recoveredBlock19Block32Stack2 recoveredBlock19Block32Stack3 recoveredBlock19Block32Stack4 recoveredBlock19Block32PC recoveredBlock19Block32Step recoveredBlock19Block32Done recoveredBlock19Block32Result |
    recoveredBlock19Block32Stack0 := self.
    recoveredBlock19Block32PC := 38.
    recoveredBlock19Block32Done := false.
    [recoveredBlock19Block32Done not] whileTrue: [
        recoveredBlock19Block32Step := recoveredBlock19Block32PC.
        recoveredBlock19Block32Step = 38 ifTrue: [
            recoveredBlock19Block32Stack1 := recoveredBlock19Block32Arg1.
            recoveredBlock19Block32PC := 39.
        ].
        recoveredBlock19Block32Step = 39 ifTrue: [
            recoveredBlock19Block32Stack2 := [:block280fa8ccArg1 | 
    nil
].
            recoveredBlock19Block32PC := 41.
        ].
        recoveredBlock19Block32Step = 41 ifTrue: [
            recoveredBlock19Block32PC := 46.
        ].
        recoveredBlock19Block32Step = 46 ifTrue: [
            recoveredBlock19Block32Stack1 := (recoveredBlock19Block32Stack1) getObjectIfUndefined: (recoveredBlock19Block32Stack2).
            recoveredBlock19Block32PC := 48.
        ].
        recoveredBlock19Block32Step = 48 ifTrue: [
            recoveredBlock19Block32Local2 := recoveredBlock19Block32Stack1.
            recoveredBlock19Block32PC := 49.
        ].
        recoveredBlock19Block32Step = 49 ifTrue: [
            recoveredBlock19Block32Stack1 := nil.
            recoveredBlock19Block32PC := 50.
        ].
        recoveredBlock19Block32Step = 50 ifTrue: [
            recoveredBlock19Block32Stack2 := recoveredBlock19Block32Local2.
            recoveredBlock19Block32PC := 51.
        ].
        recoveredBlock19Block32Step = 51 ifTrue: [
            (recoveredBlock19Block32Stack2 == nil) ifTrue: [recoveredBlock19Block32PC := 89] ifFalse: [recoveredBlock19Block32PC := 54].
        ].
        recoveredBlock19Block32Step = 54 ifTrue: [
            recoveredBlock19Block32PC := 55.
        ].
        recoveredBlock19Block32Step = 55 ifTrue: [
            recoveredBlock19Block32Stack1 := recoveredBlock19Block32Local2.
            recoveredBlock19Block32PC := 56.
        ].
        recoveredBlock19Block32Step = 56 ifTrue: [
            recoveredBlock19Block32Stack1 := (recoveredBlock19Block32Stack1) uuid.
            recoveredBlock19Block32PC := 58.
        ].
        recoveredBlock19Block32Step = 58 ifTrue: [
            recoveredBlock19Block32Local1 := recoveredBlock19Block32Stack1.
            recoveredBlock19Block32PC := 59.
        ].
        recoveredBlock19Block32Step = 59 ifTrue: [
            recoveredBlock19Block32Stack1 := nil.
            recoveredBlock19Block32PC := 60.
        ].
        recoveredBlock19Block32Step = 60 ifTrue: [
            recoveredBlock19Block32Stack2 := recoveredBlock19Block32Local1.
            recoveredBlock19Block32PC := 61.
        ].
        recoveredBlock19Block32Step = 61 ifTrue: [
            (recoveredBlock19Block32Stack2 == nil) ifTrue: [recoveredBlock19Block32PC := 87] ifFalse: [recoveredBlock19Block32PC := 64].
        ].
        recoveredBlock19Block32Step = 64 ifTrue: [
            recoveredBlock19Block32PC := 65.
        ].
        recoveredBlock19Block32Step = 65 ifTrue: [
            recoveredBlock19Block32Stack1 := table.
            recoveredBlock19Block32PC := 67.
        ].
        recoveredBlock19Block32Step = 67 ifTrue: [
            recoveredBlock19Block32Stack2 := recoveredBlock19Block32Local1.
            recoveredBlock19Block32PC := 68.
        ].
        recoveredBlock19Block32Step = 68 ifTrue: [
            recoveredBlock19Block32Stack1 := (recoveredBlock19Block32Stack1) includesKey: (recoveredBlock19Block32Stack2).
            recoveredBlock19Block32PC := 70.
        ].
        recoveredBlock19Block32Step = 70 ifTrue: [
            (recoveredBlock19Block32Stack1) ifTrue: [recoveredBlock19Block32PC := 74] ifFalse: [recoveredBlock19Block32PC := 81].
        ].
        recoveredBlock19Block32Step = 74 ifTrue: [
            recoveredBlock19Block32Stack1 := 'todo'.
            recoveredBlock19Block32PC := 76.
        ].
        recoveredBlock19Block32Step = 76 ifTrue: [
            recoveredBlock19Block32Stack1 := (recoveredBlock19Block32Stack1) notNil.
            recoveredBlock19Block32PC := 77.
        ].
        recoveredBlock19Block32Step = 77 ifTrue: [
            recoveredBlock19Block32PC := 78.
        ].
        recoveredBlock19Block32Step = 78 ifTrue: [
            recoveredBlock19Block32Stack1 := self.
            recoveredBlock19Block32PC := 79.
        ].
        recoveredBlock19Block32Step = 79 ifTrue: [
            (recoveredBlock19Block32Stack1) etasDevHalt.
            recoveredBlock19Block32PC := 81.
        ].
        recoveredBlock19Block32Step = 81 ifTrue: [
            recoveredBlock19Block32Stack1 := table.
            recoveredBlock19Block32PC := 83.
        ].
        recoveredBlock19Block32Step = 83 ifTrue: [
            recoveredBlock19Block32Stack2 := recoveredBlock19Block32Local1.
            recoveredBlock19Block32PC := 84.
        ].
        recoveredBlock19Block32Step = 84 ifTrue: [
            recoveredBlock19Block32Stack3 := recoveredBlock19Block32Local2.
            recoveredBlock19Block32PC := 85.
        ].
        recoveredBlock19Block32Step = 85 ifTrue: [
            recoveredBlock19Block32Stack1 := (recoveredBlock19Block32Stack1) at: (recoveredBlock19Block32Stack2) put: (recoveredBlock19Block32Stack3).
            recoveredBlock19Block32PC := 87.
        ].
        recoveredBlock19Block32Step = 87 ifTrue: [
            recoveredBlock19Block32Stack2 := nil.
            recoveredBlock19Block32PC := 88.
        ].
        recoveredBlock19Block32Step = 88 ifTrue: [
            recoveredBlock19Block32Local1 := recoveredBlock19Block32Stack2.
            recoveredBlock19Block32PC := 89.
        ].
        recoveredBlock19Block32Step = 89 ifTrue: [
            recoveredBlock19Block32Result := recoveredBlock19Block32Stack1.
            recoveredBlock19Block32Done := true.
        ].
    ].
    recoveredBlock19Block32Result
].
    recoveredBlock19Value4 := (recoveredBlock19Value2) do: (recoveredBlock19Value3).
    recoveredBlock19Value4
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

