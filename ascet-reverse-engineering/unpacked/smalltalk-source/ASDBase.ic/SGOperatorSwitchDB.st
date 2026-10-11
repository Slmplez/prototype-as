"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004990; bytecode file offset 0x90206c"
!SGOperatorSwitchDB methodsFor: 'recovered'!
writeXMLOldFashion: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000adfc; bytecode file offset 0x908be4"
!SGOperatorSwitchDB methodsFor: 'recovered'!
getChildGraphicOIDs
    | recoveredValue0 |
    recoveredValue0 := (self) connectors.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001abac; bytecode file offset 0x92209c"
!SGOperatorSwitchDB methodsFor: 'recovered'!
xmlOperatorElementName
    ^'Operator'
! !

"ASDBase.ic method 0x2004ebb8; bytecode file offset 0x94d048"
!SGOperatorSwitchDB methodsFor: 'recovered'!
tempVar
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004f4a0; bytecode file offset 0x94d048"
!SGOperatorSwitchDB methodsFor: 'recovered'!
xmlType
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20052d58; bytecode file offset 0x9505d0"
!SGOperatorSwitchDB methodsFor: 'recovered'!
writeXMLSelectorPorts: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053c1c; bytecode file offset 0x9505d0"
!SGOperatorSwitchDB methodsFor: 'recovered'!
internalWriteXMLPorts: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2006ad3c; bytecode file offset 0x967a18"
!SGOperatorSwitchDB methodsFor: 'recovered'!
opAliasName
    | recoveredValue0 |
    recoveredValue0 := opAliasName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008293c; bytecode file offset 0x97f218"
!SGOperatorSwitchDB methodsFor: 'recovered'!
prepareForPaste: recoveredArg1
    (self) opAliasName: (nil).
    ^self
! !

"ASDBase.ic method 0x200c1f3c; bytecode file offset 0x9beac8"
!SGOperatorSwitchDB methodsFor: 'recovered'!
opAliasName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    opAliasName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e1c00; bytecode file offset 0x9de4fc"
!SGOperatorSwitchDB methodsFor: 'recovered'!
connectors
    | recoveredValue0 |
    recoveredValue0 := ('Die') == ('TFS_325209').
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2012144c; bytecode file offset 0xa1dd08"
!SGOperatorSwitchDB methodsFor: 'recovered'!
addReferencedOpAliasNamesToSet: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) opAliasName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) opAliasName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20229bb8; bytecode file offset 0xb26494"
!SGOperatorSwitchDB methodsFor: 'recovered'!
internalWriteXMLReturnPort: recoveredArg1 connector: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) openComplex: ('ReturnPort').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue1) attr: ('graphicOID') graphicOID: (recoveredValue2).
    recoveredValue3 := ('todoReiko') notNil.
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) attr: ('location') enum: ('right').
    recoveredValue5 := recoveredArg1.
    (self) writeXMLSelectorPorts: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (recoveredValue6) closeComplex.
    ^self
! !

"ASDBase.ic method 0x2026e330; bytecode file offset 0xb6ac18"
!SGOperatorSwitchDB methodsFor: 'recovered'!
writeXMLOperatorAttributes: recoveredArg1 class: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) iD.
    (recoveredValue0) attr: ('graphicOID') graphicOID: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) xmlType.
    (recoveredValue2) attr: ('type') string: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) tempVar.
    (recoveredValue4) attr: ('tempVar') boolean: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (self) drawingOrder.
    (recoveredValue6) attr: ('drawingOrder') nnInt: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    (self) writeXMLOldFashion: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x202f6724; bytecode file offset 0xbf300c"
!SGOperatorSwitchDB methodsFor: 'recovered'!
internalWriteXMLSelectorPort: recoveredArg1 connector: recoveredArg2 index: recoveredArg3 name: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 'InputPort'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'SelectorPort'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 'graphicOID'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) graphicOID: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'index'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) nnInt: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 'name'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 'location'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := 'left'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) enum: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203fd6d8; bytecode file offset 0xcf9fd0"
!SGOperatorSwitchDB methodsFor: 'recovered'!
writeXML: recoveredArg1 class: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) xmlOperatorElementName.
    (recoveredValue0) openComplex: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    (self) writeXMLOperatorAttributes: (recoveredValue2) class: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) internalWriteXMLView: (recoveredValue4).
    recoveredValue5 := own.
    recoveredValue6 := (recoveredValue5) at: (3).
    recoveredValue7 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 |
    recoveredBlock31Value0 := recoveredBlock31Arg1.
    recoveredBlock31Value1 := recoveredArg1.
    recoveredBlock31Value2 := (recoveredBlock31Value0) writeXML: (recoveredBlock31Value1) tag: ('LineStyle').
    recoveredBlock31Value2
].
    (recoveredValue6) ifNotNil: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (self) xmlFillColor.
    (recoveredValue8) complex: ('FillColor') color: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (self) position.
    (recoveredValue10) complex: ('Position') point: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    (recoveredValue12) openComplex: ('Interfaces').
    recoveredValue13 := recoveredArg1.
    (self) internalWriteXMLPorts: (recoveredValue13).
    recoveredValue14 := recoveredArg1.
    (recoveredValue14) closeComplex.
    recoveredValue15 := recoveredArg1.
    (recoveredValue15) closeComplex.
    ^self
! !

