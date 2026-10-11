"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200014a8; bytecode file offset 0x8ffcfc"
!ASDFolderWatcherEntry methodsFor: 'recovered'!
intialize
    ^self
! !

"ASDBase.ic method 0x200664e4; bytecode file offset 0x963428"
!ASDFolderWatcherEntry methodsFor: 'recovered'!
osHandle
    | recoveredValue0 |
    recoveredValue0 := osHandle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200675d4; bytecode file offset 0x9646f8"
!ASDFolderWatcherEntry methodsFor: 'recovered'!
pathName
    | recoveredValue0 |
    recoveredValue0 := pathName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bdc1c; bytecode file offset 0x9bb178"
!ASDFolderWatcherEntry methodsFor: 'recovered'!
osHandle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    osHandle := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf468; bytecode file offset 0x9bc0b4"
!ASDFolderWatcherEntry methodsFor: 'recovered'!
pathName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    pathName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20119974; bytecode file offset 0xa16880"
!ASDFolderWatcherEntry methodsFor: 'recovered'!
doFindNextChangeNotification
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) osHandle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c7c20Arg1 | 
    | block280c7c20Value0 block280c7c20Value1 |
    block280c7c20Value0 := block280c7c20Arg1.
    block280c7c20Value1 := (block280c7c20Value0) findNextChangeNotification.
    block280c7c20Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20119be4; bytecode file offset 0xa16880"
!ASDFolderWatcherEntry methodsFor: 'recovered'!
closeHandle
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) osHandle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c7fc8Arg1 | 
    | block280c7fc8Value0 block280c7fc8Value1 |
    block280c7fc8Value0 := block280c7fc8Arg1.
    block280c7fc8Value1 := (block280c7fc8Value0) findCloseChangeNotification.
    block280c7fc8Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20173a1c; bytecode file offset 0xa702dc"
!ASDFolderWatcherEntry methodsFor: 'recovered'!
doWaitForSingleObject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) osHandle.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) waitForSingleObject: (0).
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^0
! !

