"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014370; bytecode file offset 0x912098"
!EtasDatamodelError class methodsFor: 'recovered'!
CodeErrorTable
    | recoveredValue0 |
    recoveredValue0 := CodeErrorTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005438c; bytecode file offset 0x951190"
!EtasDatamodelError class methodsFor: 'recovered'!
CodeErrorTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    CodeErrorTable := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ae3e8; bytecode file offset 0x9ab034"
!EtasDatamodelError class methodsFor: 'recovered'!
defineErrorNo: recoveredArg1 message: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) CodeErrorTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200d9f6c; bytecode file offset 0x9d6868"
!EtasDatamodelError class methodsFor: 'recovered'!
createWithErrorCode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) errorCode: (recoveredValue3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20139748; bytecode file offset 0xa36008"
!EtasDatamodelError class methodsFor: 'recovered'!
defineDefaultErrors
    (self) defineErrorNo: (10) message: ('undefined db object').
    (self) defineErrorNo: (20) message: ('no access to source').
    ^self
! !

"ASDBase.ic method 0x2015b07c; bytecode file offset 0xa57938"
!EtasDatamodelError class methodsFor: 'recovered'!
createWithErrorCode: recoveredArg1 errorObject: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithErrorCode: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) errorObject: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20172bbc; bytecode file offset 0xa6f484"
!EtasDatamodelError class methodsFor: 'recovered'!
initializeClass
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initializeClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := CodeErrorTable.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            CodeErrorTable := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b2b8c; bytecode file offset 0xbaf468"
!EtasDatamodelError class methodsFor: 'recovered'!
initializeExceptions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := ExError.
    recoveredValue1 := (recoveredValue0) newChild.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) description: ('General datamodel error').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) resumable: (true).
    ExDatamodel := recoveredValue1.
    recoveredValue4 := ExDatamodel.
    recoveredValue5 := (recoveredValue4) newChild.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) description: ('No access to source object').
    recoveredValue7 := recoveredValue5.
    (recoveredValue7) resumable: (true).
    ExNoAccessToSource := recoveredValue5.
    recoveredValue8 := ExDatamodel.
    recoveredValue9 := (recoveredValue8) newChild.
    recoveredValue10 := recoveredValue9.
    (recoveredValue10) description: ('Undefined database object').
    recoveredValue11 := recoveredValue9.
    (recoveredValue11) resumable: (true).
    ExUndefinedDBObject := recoveredValue9.
    ^self
! !

