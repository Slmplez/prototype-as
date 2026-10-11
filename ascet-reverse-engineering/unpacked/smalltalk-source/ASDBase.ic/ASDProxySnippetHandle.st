"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005178; bytecode file offset 0x90206c"
!ASDProxySnippetHandle methodsFor: 'recovered'!
store: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2003f308; bytecode file offset 0x93bf94"
!ASDProxySnippetHandle methodsFor: 'recovered'!
codeStorageManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ASDAbstractCodeContainerHandle.
    recoveredValue1 := (recoveredValue0) storageManager.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20060b60; bytecode file offset 0x95d41c"
!ASDProxySnippetHandle methodsFor: 'recovered'!
openFileHandle
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := key.
    recoveredValue2 := (recoveredValue0) openFileHandle: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006892c; bytecode file offset 0x965b90"
!ASDProxySnippetHandle methodsFor: 'recovered'!
key
    | recoveredValue0 |
    recoveredValue0 := key.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007ac7c; bytecode file offset 0x97c330"
!ASDProxySnippetHandle methodsFor: 'recovered'!
canStore
    ^false
! !

"ASDBase.ic method 0x200bb57c; bytecode file offset 0x9b7e34"
!ASDProxySnippetHandle methodsFor: 'recovered'!
updateMemorySize: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := bytes.
    (recoveredValue0) value: (0) value: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200be804; bytecode file offset 0x9bb178"
!ASDProxySnippetHandle methodsFor: 'recovered'!
bytes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    bytes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20148a50; bytecode file offset 0xa4530c"
!ASDProxySnippetHandle methodsFor: 'recovered'!
initialize: recoveredArg1 bytes: recoveredArg2 key: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    super initialize.
    recoveredValue0 := recoveredArg2.
    bytes := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    offset := recoveredValue1.
    recoveredValue2 := recoveredArg3.
    key := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x2042bda0; bytecode file offset 0xd2868c"
!ASDProxySnippetHandle methodsFor: 'recovered'!
doesNotUnderstand: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDAbstractCodeContainerHandle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := key.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) codeStorageAt: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) selector.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) arguments.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) perform: (recoveredStack2) withArguments: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) openFileHandle.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) etasDevHalt.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := offset.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := offset.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) seekTo: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := ASDSnippetHandle.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := offset.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := bytes.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := key.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) load: (recoveredStack1) offset: (recoveredStack2) bytes: (recoveredStack3) key: (recoveredStack4).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) closeFile.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 95] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 95] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := ASDAbstractCodeContainerHandle.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := key.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) codeStorageAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := (recoveredStack2) arguments.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) perform: (recoveredStack1) withArguments: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

