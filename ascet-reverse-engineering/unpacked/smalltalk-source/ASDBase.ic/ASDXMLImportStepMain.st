"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200854a0; bytecode file offset 0x981d5c"
!ASDXMLImportStepMain methodsFor: 'recovered'!
internFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) class.
    recoveredValue3 := (recoveredValue0) createInternalFile: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20092fbc; bytecode file offset 0x98f8a4"
!ASDXMLImportStepMain methodsFor: 'recovered'!
registerNewItem: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := protoClass.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) thing: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200e1694; bytecode file offset 0x9ddf58"
!ASDXMLImportStepMain methodsFor: 'recovered'!
readMainDom
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := extension.
    recoveredValue1 := ('.main.') , (recoveredValue0).
    recoveredValue2 := (self) readDOMTree: (recoveredValue1) schema: ('component_main.xsd').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200eee24; bytecode file offset 0x9eb6e0"
!ASDXMLImportStepMain methodsFor: 'recovered'!
handleNotes: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) readNotes: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := protoClass.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue2) notes: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2016a988; bytecode file offset 0xa67244"
!ASDXMLImportStepMain methodsFor: 'recovered'!
handleDefaultProject
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultProjectStep.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) performStep: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

