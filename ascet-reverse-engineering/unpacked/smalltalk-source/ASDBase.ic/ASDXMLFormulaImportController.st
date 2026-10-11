"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x203e04c4; bytecode file offset 0xcdcdb8"
!ASDXMLFormulaImportController methodsFor: 'recovered'!
importFromFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Kk') == ('Call_83975').
    recoveredValue1 := [
    | recoveredBlock10Local1 recoveredBlock10Local2 recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := Util.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack2 := recoveredArg1.
            recoveredBlock10PC := 21.
        ].
        recoveredBlock10Step = 21 ifTrue: [
            recoveredBlock10Stack3 := nil.
            recoveredBlock10PC := 22.
        ].
        recoveredBlock10Step = 22 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) readDOMTree: (recoveredBlock10Stack2) schema: (recoveredBlock10Stack3).
            recoveredBlock10PC := 24.
        ].
        recoveredBlock10Step = 24 ifTrue: [
            recoveredBlock10Local2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 25.
        ].
        recoveredBlock10Step = 25 ifTrue: [
            recoveredBlock10Stack1 := RBFormulaId.
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Local2.
            recoveredBlock10PC := 28.
        ].
        recoveredBlock10Step = 28 ifTrue: [
            recoveredBlock10Stack3 := self.
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) xmlFormulas: (recoveredBlock10Stack2) env: (recoveredBlock10Stack3).
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) values.
            recoveredBlock10PC := 33.
        ].
        recoveredBlock10Step = 33 ifTrue: [
            recoveredBlock10Local1 := recoveredBlock10Stack1.
            recoveredBlock10PC := 34.
        ].
        recoveredBlock10Step = 34 ifTrue: [
            recoveredBlock10Stack1 := issues.
            recoveredBlock10PC := 36.
        ].
        recoveredBlock10Step = 36 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) size.
            recoveredBlock10PC := 38.
        ].
        recoveredBlock10Step = 38 ifTrue: [
            recoveredBlock10Stack2 := 0.
            recoveredBlock10PC := 40.
        ].
        recoveredBlock10Step = 40 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) > (recoveredBlock10Stack2).
            recoveredBlock10PC := 41.
        ].
        recoveredBlock10Step = 41 ifTrue: [
            (recoveredBlock10Stack1) ifTrue: [recoveredBlock10PC := 44] ifFalse: [recoveredBlock10PC := 46].
        ].
        recoveredBlock10Step = 44 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 45.
        ].
        recoveredBlock10Step = 45 ifTrue: [
            recoveredBlock10Local1 := recoveredBlock10Stack1.
            recoveredBlock10PC := 46.
        ].
        recoveredBlock10Step = 46 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Local1.
            recoveredBlock10PC := 47.
        ].
        recoveredBlock10Step = 47 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    recoveredValue2 := ExError.
    recoveredValue3 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Local1 recoveredBlock50Value0 recoveredBlock50Value1 recoveredBlock50Value2 recoveredBlock50Value3 recoveredBlock50Value4 recoveredBlock50Value5 recoveredBlock50Value6 recoveredBlock50Value7 recoveredBlock50Value8 recoveredBlock50Value9 |
    recoveredBlock50Value0 := Util.
    recoveredBlock50Value1 := recoveredBlock50Arg1.
    (recoveredBlock50Value0) writeStackTrace: (recoveredBlock50Value1).
    recoveredBlock50Value2 := ('Kk') == ('Call_88692').
    recoveredBlock50Value3 := recoveredArg1.
    recoveredBlock50Value4 := Util.
    recoveredBlock50Value5 := recoveredBlock50Arg1.
    recoveredBlock50Value6 := (recoveredBlock50Value4) exceptionString: (recoveredBlock50Value5).
    recoveredBlock50Value7 := ('While importing the file %1 an internal error occured.
This problem typically happens if the file is no formula export file.

Internal error: %2') bindWith: (recoveredBlock50Value3) with: (recoveredBlock50Value6).
    recoveredBlock50Local1 := recoveredBlock50Value7.
    recoveredBlock50Value8 := recoveredBlock50Arg1.
    recoveredBlock50Value9 := (recoveredBlock50Value8) exitWith: (nil).
    recoveredBlock50Value9
].
    recoveredValue4 := (recoveredValue1) when: (recoveredValue2) do: (recoveredValue3).
    ^recoveredValue4
! !

