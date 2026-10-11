"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDDocumentor.ic method 0x20000270; bytecode file offset 0x2cf3c"
!SGDocuManagerCtrlTB methodsFor: 'recovered'!
viewNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) interface.
    recoveredValue1 := (recoveredValue0) viewNames.
    ^recoveredValue1
! !

"ASDDocumentor.ic method 0x200002b0; bytecode file offset 0x2cf3c"
!SGDocuManagerCtrlTB methodsFor: 'recovered'!
categories
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) interface.
    recoveredValue1 := (recoveredValue0) categories.
    ^recoveredValue1
! !

"ASDDocumentor.ic method 0x2000051c; bytecode file offset 0x2d2d8"
!SGDocuManagerCtrlTB methodsFor: 'recovered'!
createLibItemListWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) interface.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createLibItemListWith: (recoveredValue1).
    ^recoveredValue2
! !

"ASDDocumentor.ic method 0x2000074c; bytecode file offset 0x2d438"
!SGDocuManagerCtrlTB methodsFor: 'recovered'!
print
    | recoveredValue0 |
    recoveredValue0 := (self) interface.
    (recoveredValue0) print.
    ^self
! !

"ASDDocumentor.ic method 0x200007bc; bytecode file offset 0x2d438"
!SGDocuManagerCtrlTB methodsFor: 'recovered'!
preview
    | recoveredValue0 |
    recoveredValue0 := (self) interface.
    (recoveredValue0) preview.
    ^self
! !

"ASDDocumentor.ic method 0x2000080c; bytecode file offset 0x2d438"
!SGDocuManagerCtrlTB methodsFor: 'recovered'!
reinitExpander
    | recoveredValue0 |
    recoveredValue0 := (self) interface.
    (recoveredValue0) reinitExpander.
    ^self
! !

"ASDDocumentor.ic method 0x2000087c; bytecode file offset 0x2d4a8"
!SGDocuManagerCtrlTB methodsFor: 'recovered'!
interface
    | recoveredValue0 |
    recoveredValue0 := interface.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x20001638; bytecode file offset 0x2e264"
!SGDocuManagerCtrlTB methodsFor: 'recovered'!
itemIsRead: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) interface.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) itemIsRead: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDDocumentor.ic method 0x20001894; bytecode file offset 0x2e4e0"
!SGDocuManagerCtrlTB methodsFor: 'recovered'!
interface: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    interface := recoveredValue0.
    ^self
! !

"ASDDocumentor.ic method 0x20001d7c; bytecode file offset 0x2e9a8"
!SGDocuManagerCtrlTB methodsFor: 'recovered'!
checkIfExpanderCreated
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) interface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkIfExpanderCreated.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20002360; bytecode file offset 0x2ef90"
!SGDocuManagerCtrlTB methodsFor: 'recovered'!
initOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    userInterface := recoveredValue0.
    recoveredValue1 := SGDocumentationGeneratorTB.
    recoveredValue2 := (recoveredValue1) createFor: (self) with: ('ASCII').
    interface := recoveredValue2.
    ^self
! !

"ASDDocumentor.ic method 0x200026e4; bytecode file offset 0x2f31c"
!SGDocuManagerCtrlTB methodsFor: 'recovered'!
languages
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) add: ('English').
    (recoveredValue2) add: ('German').
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDDocumentor.ic method 0x20003478; bytecode file offset 0x300b8"
!SGDocuManagerCtrlTB methodsFor: 'recovered'!
outputFormats
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) add: ('ASCII').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) add: ('HTML').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) add: ('PostScript').
    (recoveredValue2) add: ('RTF').
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDDocumentor.ic method 0x200038a0; bytecode file offset 0x304dc"
!SGDocuManagerCtrlTB methodsFor: 'recovered'!
generateDocumentation: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) interface.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            (recoveredBlock6Stack0) reinitExpander.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) interface.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) expander.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            (recoveredBlock6Stack0 ~~ nil) ifTrue: [recoveredBlock6PC := 24] ifFalse: [recoveredBlock6PC := 22].
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack0 := nil.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            ^recoveredBlock6Stack0
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) interface.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            recoveredBlock6Stack1 := recoveredArg1.
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) documentationScript: (recoveredBlock6Stack1).
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    ^self
! !

"ASDDocumentor.ic method 0x20003f8c; bytecode file offset 0x30bcc"
!SGDocuManagerCtrlTB methodsFor: 'recovered'!
values
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) add: ('').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) add: ('').
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (self) viewNames.
    (recoveredValue5) add: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := (self) languages.
    (recoveredValue7) add: (recoveredValue8).
    recoveredValue9 := (self) outputFormats.
    (recoveredValue2) add: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

