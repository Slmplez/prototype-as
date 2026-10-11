"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005c014; bytecode file offset 0x958ab0"
!ASDProxySnippetHandle class methodsFor: 'recovered'!
resetCodeStorage
    | recoveredValue0 |
    recoveredValue0 := ASDSnippetHandle.
    (recoveredValue0) resetCodeStorage.
    ^self
! !

"ASDBase.ic method 0x20071f6c; bytecode file offset 0x96e820"
!ASDProxySnippetHandle class methodsFor: 'recovered'!
bytesNoProxy
    ^10240
! !

"ASDBase.ic method 0x200e6bdc; bytecode file offset 0x9e34a4"
!ASDProxySnippetHandle class methodsFor: 'recovered'!
openFileHandle: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ETASOSHandle.
    recoveredValue1 := ASDAbstractCodeContainerHandle.
    recoveredValue2 := (recoveredValue1) storageManager.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) completeFilePath: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) openFile: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201121b0; bytecode file offset 0xa0ea7c"
!ASDProxySnippetHandle class methodsFor: 'recovered'!
lookupPrimaryKey: recoveredArg1 secondaryKey: recoveredArg2 projectKey: recoveredArg3 targetKey: recoveredArg4 codeGenPath: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ASDSnippetHandle.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := (recoveredValue0) lookupPrimaryKey: (recoveredValue1) secondaryKey: (recoveredValue2) projectKey: (recoveredValue3) targetKey: (recoveredValue4) codeGenPath: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2019cf0c; bytecode file offset 0xa997d4"
!ASDProxySnippetHandle class methodsFor: 'recovered'!
createForPrimaryKey: recoveredArg1 secondaryKey: recoveredArg2 projectKey: recoveredArg3 targetKey: recoveredArg4 codeGenPath: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := ASDSnippetHandle.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := recoveredArg5.
    recoveredValue6 := (recoveredValue0) createForPrimaryKey: (recoveredValue1) secondaryKey: (recoveredValue2) projectKey: (recoveredValue3) targetKey: (recoveredValue4) codeGenPath: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := ASDAbstractCodeContainerHandle.
    recoveredValue8 := (recoveredValue7) storageManager.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue8) replaceHandle: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x202e98c0; bytecode file offset 0xbe6190"
!ASDProxySnippetHandle class methodsFor: 'recovered'!
load: recoveredArg1 offset: recoveredArg2 bytes: recoveredArg3 key: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) bytesNoProxy.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) openFileHandle: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := ASDSnippetHandle.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) load: (recoveredStack2) offset: (recoveredStack3) bytes: (recoveredStack4) key: (recoveredStack5).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) initialize: (recoveredStack1) bytes: (recoveredStack2) key: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

