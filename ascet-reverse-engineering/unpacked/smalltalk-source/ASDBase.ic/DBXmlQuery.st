"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004af0; bytecode file offset 0x90206c"
!DBXmlQuery methodsFor: 'recovered'!
showPerformance: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20007fb8; bytecode file offset 0x908be4"
!DBXmlQuery methodsFor: 'recovered'!
searchDatabase
    | recoveredValue0 |
    recoveredValue0 := (self) search.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000de24; bytecode file offset 0x90ab8c"
!DBXmlQuery methodsFor: 'recovered'!
search: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) search.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000e07c; bytecode file offset 0x90ab8c"
!DBXmlQuery methodsFor: 'recovered'!
searchDropOlderVersions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) search.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004f8cc; bytecode file offset 0x94d048"
!DBXmlQuery methodsFor: 'recovered'!
search
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200bdecc; bytecode file offset 0x9bb178"
!DBXmlQuery methodsFor: 'recovered'!
initOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    db := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf748; bytecode file offset 0x9bc0b4"
!DBXmlQuery methodsFor: 'recovered'!
setSearchMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20125004; bytecode file offset 0xa218c4"
!DBXmlQuery methodsFor: 'recovered'!
searchFirst
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) search.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) someElement.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

