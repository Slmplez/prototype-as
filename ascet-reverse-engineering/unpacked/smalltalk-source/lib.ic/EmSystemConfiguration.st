"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20019acc; bytecode file offset 0x55b30"
!EmSystemConfiguration methodsFor: 'recovered'!
testMethodCaching
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) globalNamespace.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'Object'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) classAt: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 recoveredBlock18Value6 recoveredBlock18Value7 recoveredBlock18Value8 recoveredBlock18Value9 recoveredBlock18Value10 recoveredBlock18Value11 recoveredBlock18Value12 recoveredBlock18Value13 recoveredBlock18Value14 recoveredBlock18Value15 |
    recoveredBlock18Value0 := recoveredLocal1.
    recoveredBlock18Value1 := (self) globalNamespace.
    recoveredBlock18Value2 := (recoveredBlock18Value1) classAt: ('Core').
    recoveredBlock18Value3 := (recoveredBlock18Value0) editionEntryIn: (recoveredBlock18Value2).
    recoveredBlock18Value4 := (recoveredBlock18Value3) currentMethods.
    recoveredBlock18Value5 := (recoveredBlock18Value4) at: ('error:').
    recoveredBlock18Value6 := EmLibrary.
    recoveredBlock18Value7 := (recoveredBlock18Value6) default.
    recoveredBlock18Value8 := (recoveredBlock18Value5) asFilePositionIn: (recoveredBlock18Value7).
    recoveredBlock18Value9 := recoveredLocal1.
    recoveredBlock18Value10 := (recoveredBlock18Value9) >> ('error:').
    recoveredBlock18Value11 := (recoveredBlock18Value10) filePointer.
    recoveredBlock18Value12 := EmLibrary.
    recoveredBlock18Value13 := (recoveredBlock18Value12) default.
    recoveredBlock18Value14 := (recoveredBlock18Value11) asFilePositionIn: (recoveredBlock18Value13).
    recoveredBlock18Value15 := (recoveredBlock18Value8) = (recoveredBlock18Value14).
    recoveredBlock18Value15
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := [:block28004c6cArg1 | 
    | block28004c6cValue0 block28004c6cValue1 |
    block28004c6cValue0 := block28004c6cArg1.
    block28004c6cValue1 := (block28004c6cValue0) exitWith: (false).
    block28004c6cValue1
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001d5b4; bytecode file offset 0x5961c"
!EmSystemConfiguration methodsFor: 'recovered'!
connectImageToDefaultLibraryReportProgressTo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := Transcript.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) cr.
    recoveredValue3 := NlsCatEMc.
    recoveredValue4 := (recoveredValue3) residentMsg: ('MxEMc146').
    recoveredValue5 := (self) name.
    recoveredValue6 := EmLibrary.
    recoveredValue7 := (recoveredValue6) default.
    recoveredValue8 := (recoveredValue7) fullName.
    recoveredValue9 := (recoveredValue4) bindWith: (recoveredValue5) with: (recoveredValue8).
    (recoveredValue0) show: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    (recoveredValue10) fractionComplete: (0).
    recoveredValue11 := (self) loadedSubApplications.
    recoveredValue12 := (recoveredValue11) size.
    recoveredLocal2 := recoveredValue12.
    recoveredLocal1 := 0.
    recoveredValue13 := (self) loadedSubApplications.
    recoveredValue14 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 recoveredBlock53Value4 recoveredBlock53Value5 recoveredBlock53Value6 recoveredBlock53Value7 |
    recoveredBlock53Value0 := recoveredLocal1.
    recoveredBlock53Value1 := (recoveredBlock53Value0) + (1).
    recoveredLocal1 := recoveredBlock53Value1.
    recoveredBlock53Value2 := recoveredBlock53Arg1.
    (recoveredBlock53Value2) recacheMethodPointers.
    recoveredBlock53Value3 := recoveredArg1.
    recoveredBlock53Value4 := recoveredLocal1.
    recoveredBlock53Value5 := recoveredLocal2.
    recoveredBlock53Value6 := (recoveredBlock53Value4) / (recoveredBlock53Value5).
    recoveredBlock53Value7 := (recoveredBlock53Value3) fractionComplete: (recoveredBlock53Value6).
    recoveredBlock53Value7
].
    (recoveredValue13) do: (recoveredValue14).
    recoveredValue15 := Transcript.
    recoveredValue16 := recoveredValue15.
    (recoveredValue16) cr.
    recoveredValue17 := NlsCatEMc.
    recoveredValue18 := (recoveredValue17) residentMsg: ('MxEMc35').
    (recoveredValue15) show: (recoveredValue18).
    ^self
! !

