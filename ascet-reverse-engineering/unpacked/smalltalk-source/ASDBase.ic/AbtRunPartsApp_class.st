"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200020a0; bytecode file offset 0x8ffcfc"
!AbtRunPartsApp class methodsFor: 'recovered'!
_PRAGMA_AbtRunPartsStrings
    ^self
! !

"ASDBase.ic method 0x20017240; bytecode file offset 0x92209c"
!AbtRunPartsApp class methodsFor: 'recovered'!
packagerIgnoreReferencesInSelectors
    ^#('abtBuildInternals')
! !

"ASDBase.ic method 0x200172d0; bytecode file offset 0x92209c"
!AbtRunPartsApp class methodsFor: 'recovered'!
leadingActions
    ^'SystemExceptions at: ''AbtExConnection'' 
		ifAbsentPut: [ExAll newChild
			description: ''Connection execution'';
			resumable: true;
			defaultHandler: [:sig | sig resumeWith: #resume with: nil]].
	'
! !

"ASDBase.ic method 0x2004f5a8; bytecode file offset 0x94d048"
!AbtRunPartsApp class methodsFor: 'recovered'!
removing
    (self) abtUnregisterExternalStrings.
    ^self
! !

"ASDBase.ic method 0x2004f668; bytecode file offset 0x94d048"
!AbtRunPartsApp class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"ASDBase.ic method 0x2009c364; bytecode file offset 0x998d48"
!AbtRunPartsApp class methodsFor: 'recovered'!
packagerKnownSymbols
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtEventToCodeHookConnection.
    recoveredValue1 := (recoveredValue0) parameterNames.
    recoveredValue2 := (recoveredValue1) , (#('valueChanged' 'iterate')).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a0980; bytecode file offset 0x99d3ac"
!AbtRunPartsApp class methodsFor: 'recovered'!
loaded
    (self) abtRegisterExternalStrings.
    (self) relocalize.
    ^self
! !

"ASDBase.ic method 0x200e0300; bytecode file offset 0x9dcbc0"
!AbtRunPartsApp class methodsFor: 'recovered'!
abtExternalizedStringBuildingInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('abtrp?40') with: (false) with: (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20128398; bytecode file offset 0xa24eb0"
!AbtRunPartsApp class methodsFor: 'recovered'!
collectionDeferredUpdateOperationClasses
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CollectionDeferredUpdateOperationClasses.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            CollectionDeferredUpdateOperationClasses := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := CollectionDeferredUpdateOperationClasses.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20152cec; bytecode file offset 0xa4f5ac"
!AbtRunPartsApp class methodsFor: 'recovered'!
collectionDeferredUpdateOperationClassFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CollectionDeferredUpdateOperationClasses.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := CollectionDeferredUpdateOperationClasses.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

