"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001d720; bytecode file offset 0x92209c"
!SGFindResultHeaderCode methodsFor: 'recovered'!
printTypeInfoCellValue
    ^'header'
! !

"ASDBase.ic method 0x201acd6c; bytecode file offset 0xaa9630"
!SGFindResultHeaderCode methodsFor: 'recovered'!
replaceString: recoveredArg1 with: recoveredArg2 caseSensitive: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := (recoveredStack3) codeContainer.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) localHSource.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) replaceString: (recoveredStack1) with: (recoveredStack2) inCode: (recoveredStack3) caseSensitive: (recoveredStack4).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeContainer.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) localHSource: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20337bd4; bytecode file offset 0xc344d0"
!SGFindResultHeaderCode methodsFor: 'recovered'!
openEditorForFindResult
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := SGCProcedureSource.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) ignore: (false).
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := SGContext.
    recoveredValue5 := (recoveredValue4) create.
    (recoveredValue3) context: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) component.
    recoveredValue8 := (recoveredValue7) defaultData.
    (recoveredValue6) valueConfig: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := (self) component.
    recoveredValue11 := (recoveredValue10) defaultImplementation.
    (recoveredValue9) implConfig: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) codeContainer.
    (recoveredValue12) codeContainer: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredLocal1 := recoveredValue14.
    recoveredValue15 := recoveredValue1.
    recoveredValue16 := recoveredLocal2.
    (recoveredValue15) specification: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    (recoveredValue17) methodName: ('header').
    recoveredValue18 := recoveredLocal1.
    recoveredValue19 := (self) selectionBegin.
    (recoveredValue18) lineNumber: (recoveredValue19).
    recoveredValue20 := recoveredLocal1.
    (recoveredValue20) display.
    ^self
! !

