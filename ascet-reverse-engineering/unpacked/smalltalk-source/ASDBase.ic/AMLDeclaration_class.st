"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2009b950; bytecode file offset 0x998260"
!AMLDeclaration class methodsFor: 'recovered'!
test
    | recoveredValue0 |
    recoveredValue0 := AMLDeclaration.
    (recoveredValue0) createFrom: ('e:\amls.aml').
    ^self
! !

"ASDBase.ic method 0x2014bd88; bytecode file offset 0xa4864c"
!AMLDeclaration class methodsFor: 'recovered'!
createFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ETASOSHandle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) readFile: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFromString: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ad5b4; bytecode file offset 0xaa9e84"
!AMLDeclaration class methodsFor: 'recovered'!
createFromString: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := AMLBaseObject.
    (recoveredValue0) initializeClass.
    recoveredValue1 := RBBcrtl32DLL.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) removeCCommentFromReturnStream: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) create.
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) path: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue7) getFrom: (recoveredValue8).
    ^recoveredValue9
! !

