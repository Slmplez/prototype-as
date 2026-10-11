"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003c00; bytecode file offset 0x90206c"
!DBXmlImportDesc methodsFor: 'recovered'!
collectOIDs: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004018; bytecode file offset 0x90206c"
!DBXmlImportDesc methodsFor: 'recovered'!
xmlLoaded: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000d694; bytecode file offset 0x90a4b8"
!DBXmlImportDesc methodsFor: 'recovered'!
xmlCollectDependent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004ddd4; bytecode file offset 0x94a698"
!DBXmlImportDesc methodsFor: 'recovered'!
hasFileList
    (self) etasDevHalt.
    ^false
! !

"ASDBase.ic method 0x2004fb00; bytecode file offset 0x94d048"
!DBXmlImportDesc methodsFor: 'recovered'!
dbXmlAmdType
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004fcd4; bytecode file offset 0x94d048"
!DBXmlImportDesc methodsFor: 'recovered'!
database
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005007c; bytecode file offset 0x94d048"
!DBXmlImportDesc methodsFor: 'recovered'!
getDescription
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20052bcc; bytecode file offset 0x9505d0"
!DBXmlImportDesc methodsFor: 'recovered'!
execute: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2008eec0; bytecode file offset 0x98b80c"
!DBXmlImportDesc methodsFor: 'recovered'!
loadFailed
    | recoveredValue0 |
    recoveredValue0 := (self) database.
    (recoveredValue0) loadFailed: (self).
    ^self
! !

"ASDBase.ic method 0x201175c4; bytecode file offset 0xa13eb8"
!DBXmlImportDesc methodsFor: 'recovered'!
root
    | recoveredValue0 |
    recoveredValue0 := ('Die') == ('TFS_325209').
    (self) runtimeAssert: (false) additionalInfo: ('Should not be called').
    ^self
! !

"ASDBase.ic method 0x201175dc; bytecode file offset 0xa13eb8"
!DBXmlImportDesc methodsFor: 'recovered'!
asXML
    | recoveredValue0 |
    recoveredValue0 := ('Die') == ('TFS_325209').
    (self) runtimeAssert: (false) additionalInfo: ('Should not be called').
    ^self
! !

"ASDBase.ic method 0x201175f4; bytecode file offset 0xa13eb8"
!DBXmlImportDesc methodsFor: 'recovered'!
stepClass
    | recoveredValue0 |
    recoveredValue0 := ('Die') == ('TFS_325209').
    (self) runtimeAssert: (false) additionalInfo: ('Should not be called').
    ^self
! !

"ASDBase.ic method 0x201a5c18; bytecode file offset 0xaa24e4"
!DBXmlImportDesc methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPut: ($@).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) name.
    recoveredValue6 := (recoveredValue5) size.
    recoveredValue7 := (recoveredValue3) copyFrom: (16) to: (recoveredValue6).
    (recoveredValue1) nextPutAll: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201dbe1c; bytecode file offset 0xad86e0"
!DBXmlImportDesc methodsFor: 'recovered'!
printParent: recoveredArg1 on: recoveredArg2
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := ' [=> '.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) printOn: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := $].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

