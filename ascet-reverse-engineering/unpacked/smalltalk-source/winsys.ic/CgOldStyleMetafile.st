"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200000f8; bytecode file offset 0x7c350"
!CgOldStyleMetafile methodsFor: 'recovered'!
asStandardMetafile
    ^self
! !

"winsys.ic method 0x20002814; bytecode file offset 0x7ea1c"
!CgOldStyleMetafile methodsFor: 'recovered'!
osDeleteMetafile
    | recoveredValue0 |
    recoveredValue0 := (self) osHmf.
    (recoveredValue0) deleteMetaFile.
    ^self
! !

"winsys.ic method 0x20005860; bytecode file offset 0x81a28"
!CgOldStyleMetafile methodsFor: 'recovered'!
osPlayOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) osHmf.
    (recoveredValue0) playMetaFile: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x20006238; bytecode file offset 0x82418"
!CgOldStyleMetafile methodsFor: 'recovered'!
osCloseMetafile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) handle.
    recoveredValue1 := (recoveredValue0) closeMetaFile.
    (self) osHmf: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x2000e44c; bytecode file offset 0x8a634"
!CgOldStyleMetafile methodsFor: 'recovered'!
osWriteMetafile: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) osHmf.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyMetaFile: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNull.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) deleteMetaFile.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

