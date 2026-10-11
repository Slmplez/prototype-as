"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x204e015c; bytecode file offset 0xddca68"
!SGDamosTBExtRT class methodsFor: 'recovered'!
TEST: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 recoveredBlock4Value9 recoveredBlock4Value10 recoveredBlock4Value11 recoveredBlock4Value12 recoveredBlock4Value13 recoveredBlock4Value14 recoveredBlock4Value15 recoveredBlock4Value16 recoveredBlock4Value17 recoveredBlock4Value18 recoveredBlock4Value19 recoveredBlock4Value20 recoveredBlock4Value21 recoveredBlock4Value22 recoveredBlock4Value23 recoveredBlock4Value24 recoveredBlock4Value25 |
    recoveredBlock4Value0 := Smalltalk.
    recoveredBlock4Value1 := (recoveredBlock4Value0) at: ('ASCETSD').
    recoveredBlock4Value2 := (recoveredBlock4Value1) create.
    recoveredLocal5 := recoveredBlock4Value2.
    recoveredBlock4Value3 := recoveredLocal5.
    recoveredBlock4Value4 := recoveredArg1.
    recoveredBlock4Value5 := (recoveredBlock4Value4) defaultData.
    recoveredBlock4Value6 := (recoveredBlock4Value3) dmGetParametersForData: (recoveredBlock4Value5) caseSensitive: (false) recursive: (true).
    recoveredLocal6 := recoveredBlock4Value6.
    recoveredBlock4Value7 := Transcript.
    recoveredBlock4Value8 := recoveredBlock4Value7.
    (recoveredBlock4Value8) cr.
    recoveredBlock4Value9 := recoveredLocal6.
    recoveredBlock4Value10 := (recoveredBlock4Value9) dataElements.
    recoveredBlock4Value11 := (recoveredBlock4Value10) size.
    recoveredBlock4Value12 := (recoveredBlock4Value11) printString.
    (recoveredBlock4Value7) show: (recoveredBlock4Value12).
    recoveredBlock4Value13 := recoveredLocal6.
    recoveredBlock4Value14 := (recoveredBlock4Value13) dataElements.
    recoveredBlock4Value15 := [:recoveredBlock4Block56Arg1 | 
    | recoveredBlock4Block56Value0 recoveredBlock4Block56Value1 recoveredBlock4Block56Value2 |
    recoveredBlock4Block56Value0 := recoveredLocal5.
    recoveredBlock4Block56Value1 := recoveredBlock4Block56Arg1.
    recoveredBlock4Block56Value2 := (recoveredBlock4Block56Value0) labelForDataElement: (recoveredBlock4Block56Value1).
    recoveredBlock4Block56Value2
].
    recoveredBlock4Value16 := (recoveredBlock4Value14) collect: (recoveredBlock4Value15).
    recoveredLocal1 := recoveredBlock4Value16.
    recoveredBlock4Value17 := recoveredLocal5.
    recoveredBlock4Value18 := recoveredLocal1.
    recoveredBlock4Value19 := recoveredArg1.
    recoveredBlock4Value20 := (recoveredBlock4Value19) defaultData.
    recoveredBlock4Value21 := (recoveredBlock4Value17) dmGetDataForParameters: (recoveredBlock4Value18) forData: (recoveredBlock4Value20) caseSensitive: (false) recursive: (true).
    recoveredLocal4 := recoveredBlock4Value21.
    recoveredBlock4Value22 := recoveredLocal6.
    recoveredBlock4Value23 := (recoveredBlock4Value22) dataElements.
    recoveredBlock4Value24 := [:recoveredBlock4Block98Arg1 :recoveredBlock4Block98Arg2 | 
    | recoveredBlock4Block98Stack0 recoveredBlock4Block98Stack1 recoveredBlock4Block98Stack2 recoveredBlock4Block98Stack3 recoveredBlock4Block98Stack4 recoveredBlock4Block98Stack5 recoveredBlock4Block98PC recoveredBlock4Block98Step recoveredBlock4Block98Done recoveredBlock4Block98Result |
    recoveredBlock4Block98Stack0 := nil.
    recoveredBlock4Block98PC := 104.
    recoveredBlock4Block98Done := false.
    [recoveredBlock4Block98Done not] whileTrue: [
        recoveredBlock4Block98Step := recoveredBlock4Block98PC.
        recoveredBlock4Block98Step = 104 ifTrue: [
            recoveredBlock4Block98Stack1 := Transcript.
            recoveredBlock4Block98PC := 106.
        ].
        recoveredBlock4Block98Step = 106 ifTrue: [
            recoveredBlock4Block98Stack2 := recoveredBlock4Block98Stack1.
            recoveredBlock4Block98PC := 107.
        ].
        recoveredBlock4Block98Step = 107 ifTrue: [
            (recoveredBlock4Block98Stack2) cr.
            recoveredBlock4Block98PC := 109.
        ].
        recoveredBlock4Block98Step = 109 ifTrue: [
            recoveredBlock4Block98Stack2 := recoveredBlock4Block98Arg2.
            recoveredBlock4Block98PC := 110.
        ].
        recoveredBlock4Block98Step = 110 ifTrue: [
            recoveredBlock4Block98Stack2 := (recoveredBlock4Block98Stack2) printString.
            recoveredBlock4Block98PC := 112.
        ].
        recoveredBlock4Block98Step = 112 ifTrue: [
            (recoveredBlock4Block98Stack1) show: (recoveredBlock4Block98Stack2).
            recoveredBlock4Block98PC := 114.
        ].
        recoveredBlock4Block98Step = 114 ifTrue: [
            recoveredBlock4Block98Stack1 := recoveredLocal4.
            recoveredBlock4Block98PC := 117.
        ].
        recoveredBlock4Block98Step = 117 ifTrue: [
            recoveredBlock4Block98Stack2 := recoveredLocal5.
            recoveredBlock4Block98PC := 120.
        ].
        recoveredBlock4Block98Step = 120 ifTrue: [
            recoveredBlock4Block98Stack3 := recoveredBlock4Block98Arg1.
            recoveredBlock4Block98PC := 121.
        ].
        recoveredBlock4Block98Step = 121 ifTrue: [
            recoveredBlock4Block98Stack2 := (recoveredBlock4Block98Stack2) labelForDataElement: (recoveredBlock4Block98Stack3).
            recoveredBlock4Block98PC := 123.
        ].
        recoveredBlock4Block98Step = 123 ifTrue: [
            recoveredBlock4Block98Stack1 := (recoveredBlock4Block98Stack1) at: (recoveredBlock4Block98Stack2).
            recoveredBlock4Block98PC := 124.
        ].
        recoveredBlock4Block98Step = 124 ifTrue: [
            recoveredBlock4Block98Stack2 := recoveredBlock4Block98Stack1.
            recoveredBlock4Block98PC := 125.
        ].
        recoveredBlock4Block98Step = 125 ifTrue: [
            recoveredLocal3 := recoveredBlock4Block98Stack2.
            recoveredBlock4Block98PC := 128.
        ].
        recoveredBlock4Block98Step = 128 ifTrue: [
            recoveredBlock4Block98Stack1 := (recoveredBlock4Block98Stack1) isEmpty.
            recoveredBlock4Block98PC := 130.
        ].
        recoveredBlock4Block98Step = 130 ifTrue: [
            (recoveredBlock4Block98Stack1) ifTrue: [recoveredBlock4Block98PC := 134] ifFalse: [recoveredBlock4Block98PC := 139].
        ].
        recoveredBlock4Block98Step = 134 ifTrue: [
            recoveredBlock4Block98Stack1 := recoveredArg1.
            recoveredBlock4Block98PC := 137.
        ].
        recoveredBlock4Block98Step = 137 ifTrue: [
            (recoveredBlock4Block98Stack1) halt.
            recoveredBlock4Block98PC := 139.
        ].
        recoveredBlock4Block98Step = 139 ifTrue: [
            recoveredBlock4Block98Stack1 := recoveredLocal5.
            recoveredBlock4Block98PC := 142.
        ].
        recoveredBlock4Block98Step = 142 ifTrue: [
            recoveredBlock4Block98Stack2 := recoveredBlock4Block98Arg1.
            recoveredBlock4Block98PC := 143.
        ].
        recoveredBlock4Block98Step = 143 ifTrue: [
            recoveredBlock4Block98Stack3 := recoveredLocal3.
            recoveredBlock4Block98PC := 146.
        ].
        recoveredBlock4Block98Step = 146 ifTrue: [
            recoveredBlock4Block98Stack3 := (recoveredBlock4Block98Stack3) first.
            recoveredBlock4Block98PC := 148.
        ].
        recoveredBlock4Block98Step = 148 ifTrue: [
            recoveredBlock4Block98Stack4 := true.
            recoveredBlock4Block98PC := 149.
        ].
        recoveredBlock4Block98Step = 149 ifTrue: [
            recoveredBlock4Block98Stack1 := (recoveredBlock4Block98Stack1) dmSetParameter: (recoveredBlock4Block98Stack2) forData: (recoveredBlock4Block98Stack3) caseSensitive: (recoveredBlock4Block98Stack4).
            recoveredBlock4Block98PC := 152.
        ].
        recoveredBlock4Block98Step = 152 ifTrue: [
            recoveredBlock4Block98Result := recoveredBlock4Block98Stack1.
            recoveredBlock4Block98Done := true.
        ].
    ].
    recoveredBlock4Block98Result
].
    recoveredBlock4Value25 := (recoveredBlock4Value23) doWithIndex: (recoveredBlock4Value24).
    recoveredBlock4Value25
].
    (recoveredValue0) bench: ('Time: ').
    ^self
! !

