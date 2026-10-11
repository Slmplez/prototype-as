"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002768; bytecode file offset 0x8ffcfc"
!ASDAbstractCodeContainerHandle class methodsFor: 'recovered'!
printSize
    ^self
! !

"ASDBase.ic method 0x20012c60; bytecode file offset 0x912098"
!ASDAbstractCodeContainerHandle class methodsFor: 'recovered'!
storageManager
    | recoveredValue0 |
    recoveredValue0 := StorageManager.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200241e8; bytecode file offset 0x92209c"
!ASDAbstractCodeContainerHandle class methodsFor: 'recovered'!
encryptionKey
    ^4272688507
! !

"ASDBase.ic method 0x20054698; bytecode file offset 0x951190"
!ASDAbstractCodeContainerHandle class methodsFor: 'recovered'!
storageManager: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    StorageManager := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20057f28; bytecode file offset 0x956284"
!ASDAbstractCodeContainerHandle class methodsFor: 'recovered'!
codeStorageExists: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) codeStorage.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includesKey: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005b43c; bytecode file offset 0x957d54"
!ASDAbstractCodeContainerHandle class methodsFor: 'recovered'!
createForPrimaryKey: recoveredArg1 secondaryKey: recoveredArg2 projectKey: recoveredArg3 targetKey: recoveredArg4 codeGenPath: recoveredArg5
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005b454; bytecode file offset 0x957d54"
!ASDAbstractCodeContainerHandle class methodsFor: 'recovered'!
lookupPrimaryKey: recoveredArg1 secondaryKey: recoveredArg2 projectKey: recoveredArg3 targetKey: recoveredArg4 codeGenPath: recoveredArg5
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2007657c; bytecode file offset 0x9757c8"
!ASDAbstractCodeContainerHandle class methodsFor: 'recovered'!
isAbstract
    ^true
! !

"ASDBase.ic method 0x2009a598; bytecode file offset 0x997194"
!ASDAbstractCodeContainerHandle class methodsFor: 'recovered'!
codeStorageAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) codeStorage.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ab4a4; bytecode file offset 0x9a8250"
!ASDAbstractCodeContainerHandle class methodsFor: 'recovered'!
codeStorageRemove: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) codeStorage.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20114e14; bytecode file offset 0xa116d4"
!ASDAbstractCodeContainerHandle class methodsFor: 'recovered'!
allHandles
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CodeStorage.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := CodeStorage.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2014c648; bytecode file offset 0xa48f0c"
!ASDAbstractCodeContainerHandle class methodsFor: 'recovered'!
codeStorage
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CodeStorage.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            CodeStorage := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) printSize.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := CodeStorage.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016ec64; bytecode file offset 0xa6b52c"
!ASDAbstractCodeContainerHandle class methodsFor: 'recovered'!
resetCodeStorage
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            CodeStorage := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := StorageManager.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := StorageManager.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) resetCodeStorage.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            StorageManager := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20178fec; bytecode file offset 0xa758ac"
!ASDAbstractCodeContainerHandle class methodsFor: 'recovered'!
codeStorageAt: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) codeStorage.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredArg2.
    recoveredBlock8Value1 := (recoveredBlock8Value0) value.
    ^recoveredBlock8Value1
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2033dd98; bytecode file offset 0xc3a66c"
!ASDAbstractCodeContainerHandle class methodsFor: 'recovered'!
codeStorageTouch: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) codeStorage.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11Stack5 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack3 := recoveredArg1.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack4 := 1.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) indexOfSubCollection: (recoveredBlock11Stack3) startingAt: (recoveredBlock11Stack4).
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack3 := 1.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) = (recoveredBlock11Stack3).
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 34] ifFalse: [recoveredBlock11PC := 41].
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 38.
        ].
        recoveredBlock11Step = 38 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 41.
        ].
        recoveredBlock11Step = 41 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) keysDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Value0 recoveredBlock47Value1 |
    recoveredBlock47Value0 := recoveredBlock47Arg1.
    recoveredBlock47Value1 := (self) codeStorageRemove: (recoveredBlock47Value0).
    recoveredBlock47Value1
].
    (recoveredValue4) do: (recoveredValue5).
    ^self
! !

