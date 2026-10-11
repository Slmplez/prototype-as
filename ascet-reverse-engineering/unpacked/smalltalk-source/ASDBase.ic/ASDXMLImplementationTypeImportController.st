"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x204a42f4; bytecode file offset 0xda0c04"
!ASDXMLImplementationTypeImportController methodsFor: 'recovered'!
importFromFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := LookupTable.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) new.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack1 := Util.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack3 := nil.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) readDOMTree: (recoveredBlock4Stack2) schema: (recoveredBlock4Stack3).
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack2 := 'ImplementationType'.
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack3 := [:recoveredBlock4Block32Arg1 | 
    | recoveredBlock4Block32Value0 recoveredBlock4Block32Value1 recoveredBlock4Block32Value2 recoveredBlock4Block32Value3 recoveredBlock4Block32Value4 recoveredBlock4Block32Value5 recoveredBlock4Block32Value6 |
    recoveredBlock4Block32Value0 := ASDImplType.
    recoveredBlock4Block32Value1 := (recoveredBlock4Block32Value0) new.
    recoveredBlock4Block32Value2 := recoveredBlock4Block32Arg1.
    recoveredBlock4Block32Value3 := handler.
    recoveredBlock4Block32Value4 := (recoveredBlock4Block32Value1) readImplementationType: (recoveredBlock4Block32Value2) handler: (recoveredBlock4Block32Value3).
    recoveredBlock4Block32Value5 := [:recoveredBlock4Block32Block46Arg1 | 
    | recoveredBlock4Block32Block46Value0 recoveredBlock4Block32Block46Value1 recoveredBlock4Block32Block46Value2 recoveredBlock4Block32Block46Value3 recoveredBlock4Block32Block46Value4 |
    recoveredBlock4Block32Block46Value0 := recoveredBlock4Local1.
    recoveredBlock4Block32Block46Value1 := recoveredBlock4Block32Block46Arg1.
    recoveredBlock4Block32Block46Value2 := (recoveredBlock4Block32Block46Value1) implTypeName.
    recoveredBlock4Block32Block46Value3 := recoveredBlock4Block32Block46Arg1.
    recoveredBlock4Block32Block46Value4 := (recoveredBlock4Block32Block46Value0) at: (recoveredBlock4Block32Block46Value2) put: (recoveredBlock4Block32Block46Value3).
    recoveredBlock4Block32Block46Value4
].
    recoveredBlock4Block32Value6 := (recoveredBlock4Block32Value4) ifNotNil: (recoveredBlock4Block32Value5).
    recoveredBlock4Block32Value6
].
            recoveredBlock4PC := 65.
        ].
        recoveredBlock4Step = 65 ifTrue: [
            (recoveredBlock4Stack1) multiple: (recoveredBlock4Stack2) do: (recoveredBlock4Stack3).
            recoveredBlock4PC := 67.
        ].
        recoveredBlock4Step = 67 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 70.
        ].
        recoveredBlock4Step = 70 ifTrue: [
            recoveredBlock4Stack2 := 'Signature'.
            recoveredBlock4PC := 72.
        ].
        recoveredBlock4Step = 72 ifTrue: [
            recoveredBlock4Stack3 := [:block28104998Arg1 | 
    nil
].
            recoveredBlock4PC := 74.
        ].
        recoveredBlock4Step = 74 ifTrue: [
            recoveredBlock4PC := 80.
        ].
        recoveredBlock4Step = 80 ifTrue: [
            (recoveredBlock4Stack1) optional: (recoveredBlock4Stack2) do: (recoveredBlock4Stack3).
            recoveredBlock4PC := 82.
        ].
        recoveredBlock4Step = 82 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 85.
        ].
        recoveredBlock4Step = 85 ifTrue: [
            recoveredBlock4Stack2 := handler.
            recoveredBlock4PC := 87.
        ].
        recoveredBlock4Step = 87 ifTrue: [
            (recoveredBlock4Stack1) doneIfNot: (recoveredBlock4Stack2).
            recoveredBlock4PC := 89.
        ].
        recoveredBlock4Step = 89 ifTrue: [
            recoveredBlock4Stack1 := issues.
            recoveredBlock4PC := 91.
        ].
        recoveredBlock4Step = 91 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) size.
            recoveredBlock4PC := 93.
        ].
        recoveredBlock4Step = 93 ifTrue: [
            recoveredBlock4Stack2 := 0.
            recoveredBlock4PC := 95.
        ].
        recoveredBlock4Step = 95 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) > (recoveredBlock4Stack2).
            recoveredBlock4PC := 96.
        ].
        recoveredBlock4Step = 96 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 100] ifFalse: [recoveredBlock4PC := 104].
        ].
        recoveredBlock4Step = 100 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 101.
        ].
        recoveredBlock4Step = 101 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 104.
        ].
        recoveredBlock4Step = 104 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local1.
            recoveredBlock4PC := 107.
        ].
        recoveredBlock4Step = 107 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredValue1 := ExError.
    recoveredValue2 := [:recoveredBlock110Arg1 | 
    | recoveredBlock110Local1 recoveredBlock110Value0 recoveredBlock110Value1 recoveredBlock110Value2 recoveredBlock110Value3 recoveredBlock110Value4 recoveredBlock110Value5 recoveredBlock110Value6 recoveredBlock110Value7 |
    recoveredBlock110Value0 := ('While importing the file %1 an internal error occured.\nThis problem typically happens if the file is no implementation type export file.\nInternal error: %2') withCrs.
    recoveredBlock110Value1 := recoveredArg1.
    recoveredBlock110Value2 := Util.
    recoveredBlock110Value3 := recoveredBlock110Arg1.
    recoveredBlock110Value4 := (recoveredBlock110Value2) exceptionString: (recoveredBlock110Value3).
    recoveredBlock110Value5 := (recoveredBlock110Value0) bindWith: (recoveredBlock110Value1) with: (recoveredBlock110Value4).
    recoveredBlock110Local1 := recoveredBlock110Value5.
    recoveredBlock110Value6 := recoveredBlock110Arg1.
    recoveredBlock110Value7 := (recoveredBlock110Value6) exitWith: (nil).
    recoveredBlock110Value7
].
    recoveredValue3 := (recoveredValue0) when: (recoveredValue1) do: (recoveredValue2).
    ^recoveredValue3
! !

