"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001c31c; bytecode file offset 0x92209c"
!ARBdSpecification methodsFor: 'recovered'!
xmlSpecificationTypeString
    ^'AtomicSoftwareComponentSpecification'
! !

"ASDBase.ic method 0x2001edf4; bytecode file offset 0x92209c"
!ARBdSpecification methodsFor: 'recovered'!
getComponentType
    ^'ASCET_AtomicSoftwareComponent'
! !

"ASDBase.ic method 0x2002234c; bytecode file offset 0x92209c"
!ARBdSpecification methodsFor: 'recovered'!
dbXmlType
    ^'atomicSoftwareComponent'
! !

"ASDBase.ic method 0x20038280; bytecode file offset 0x934b68"
!ARBdSpecification methodsFor: 'recovered'!
xmlGetType: recoveredArg1
    ^'AtomicSoftwareComponent'
! !

"ASDBase.ic method 0x2003cca8; bytecode file offset 0x93bf94"
!ARBdSpecification methodsFor: 'recovered'!
xmlMakeInitialLogicModel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGTopCodeBlock.
    recoveredValue1 := (recoveredValue0) create.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200766fc; bytecode file offset 0x9757c8"
!ARBdSpecification methodsFor: 'recovered'!
isARBdSpecification
    ^true
! !

"ASDBase.ic method 0x2009c868; bytecode file offset 0x999628"
!ARBdSpecification methodsFor: 'recovered'!
initLogicModel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGTopCodeBlock.
    recoveredValue1 := (recoveredValue0) create.
    (self) logicModel: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200e41a0; bytecode file offset 0x9e0a60"
!ARBdSpecification methodsFor: 'recovered'!
editorClassForEdition
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isARBdSpecification.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ARAtomicSoftwareComponentSpecificationView.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := SGBlockDiagramEditorView.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

