"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005268; bytecode file offset 0x90206c"
!DBXmlExportController methodsFor: 'recovered'!
messagePrompt: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005cc8; bytecode file offset 0x902744"
!DBXmlExportController methodsFor: 'recovered'!
outdatedLocalID: recoveredArg1 in: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20006234; bytecode file offset 0x902de8"
!DBXmlExportController methodsFor: 'recovered'!
detectedIncompatibility: recoveredArg1 for: recoveredArg2 in: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2000d89c; bytecode file offset 0x90a4b8"
!DBXmlExportController methodsFor: 'recovered'!
showIssues: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005ccd0; bytecode file offset 0x959680"
!DBXmlExportController methodsFor: 'recovered'!
destVersion
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDXMLExportOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) defaultXMLFormatVersion.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200adc84; bytecode file offset 0x9aa550"
!DBXmlExportController methodsFor: 'recovered'!
initOn: recoveredArg1 options: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super initOn: (recoveredValue0) options: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e8fd8; bytecode file offset 0x9e58a0"
!DBXmlExportController methodsFor: 'recovered'!
initOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ASDXMLExportParameters.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue2) initForDBXml.
    recoveredValue4 := super initOn: (recoveredValue0) options: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200fd0ec; bytecode file offset 0x9f9a10"
!DBXmlExportController methodsFor: 'recovered'!
selectAutofixIssues: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280c5fdcArg1 | 
    | block280c5fdcValue0 block280c5fdcValue1 |
    block280c5fdcValue0 := block280c5fdcArg1.
    block280c5fdcValue1 := (block280c5fdcValue0) isAutofixable.
    block280c5fdcValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

