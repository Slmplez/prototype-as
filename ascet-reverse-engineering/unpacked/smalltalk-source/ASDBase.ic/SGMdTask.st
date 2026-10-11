"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20022e68; bytecode file offset 0x92209c"
!SGMdTask methodsFor: 'recovered'!
numCoopLevelKey
    ^'numCoopLev'
! !

"ASDBase.ic method 0x20029a94; bytecode file offset 0x934580"
!SGMdTask methodsFor: 'recovered'!
prio
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) priority.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200558a8; bytecode file offset 0x952a9c"
!SGMdTask methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) task: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061fb8; bytecode file offset 0x95e8c4"
!SGMdTask methodsFor: 'recovered'!
ilePrio
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) prio.
    recoveredValue1 := (self) systemInfoNumCoopLevels.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006ccb0; bytecode file offset 0x969c04"
!SGMdTask methodsFor: 'recovered'!
id
    | recoveredValue0 |
    recoveredValue0 := id.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d42c; bytecode file offset 0x96a390"
!SGMdTask methodsFor: 'recovered'!
opModes
    | recoveredValue0 |
    recoveredValue0 := opModes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e2bc; bytecode file offset 0x96af48"
!SGMdTask methodsFor: 'recovered'!
attributes
    | recoveredValue0 |
    recoveredValue0 := attributes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007653c; bytecode file offset 0x9757c8"
!SGMdTask methodsFor: 'recovered'!
isMdlTask
    ^true
! !

"ASDBase.ic method 0x20079664; bytecode file offset 0x97c330"
!SGMdTask methodsFor: 'recovered'!
isMdlInitTask
    ^false
! !

"ASDBase.ic method 0x2007d14c; bytecode file offset 0x97c330"
!SGMdTask methodsFor: 'recovered'!
isMdlEventTask
    ^false
! !

"ASDBase.ic method 0x2007eecc; bytecode file offset 0x97c330"
!SGMdTask methodsFor: 'recovered'!
isMdlSoftwareTask
    ^false
! !

"ASDBase.ic method 0x2007f43c; bytecode file offset 0x97c330"
!SGMdTask methodsFor: 'recovered'!
isMdlTimerTask
    ^false
! !

"ASDBase.ic method 0x200bca68; bytecode file offset 0x9b94b8"
!SGMdTask methodsFor: 'recovered'!
systemInfoNumCoopLevels: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) systemInfo.
    recoveredValue1 := (self) numCoopLevelKey.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c3a20; bytecode file offset 0x9c058c"
!SGMdTask methodsFor: 'recovered'!
id: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    id := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3e1c; bytecode file offset 0x9c0bf0"
!SGMdTask methodsFor: 'recovered'!
opModes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    opModes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4b14; bytecode file offset 0x9c16b0"
!SGMdTask methodsFor: 'recovered'!
attributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    attributes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fa2e4; bytecode file offset 0x9f6ba8"
!SGMdTask methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    opModes := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2012a384; bytecode file offset 0xa26ca0"
!SGMdTask methodsFor: 'recovered'!
systemInfo
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := systemInfo.
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
            systemInfo := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := systemInfo.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012d894; bytecode file offset 0xa2a1b8"
!SGMdTask methodsFor: 'recovered'!
systemInfoNumCoopLevels
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) systemInfo.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) numCoopLevelKey.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    0
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20190724; bytecode file offset 0xa8d010"
!SGMdTask methodsFor: 'recovered'!
ileProcessSeq
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) processSeq.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 |
    recoveredBlock5Value0 := (self) expander.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value1) ileName.
    recoveredBlock5Value3 := recoveredBlock5Arg1.
    recoveredBlock5Value4 := (recoveredBlock5Value3) ileModuleName.
    recoveredBlock5Value5 := (recoveredBlock5Value0) processRef: (recoveredBlock5Value2) in: (recoveredBlock5Value4).
    recoveredBlock5Value5
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2021866c; bytecode file offset 0xb14f44"
!SGMdTask methodsFor: 'recovered'!
genSixProcessSeq
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) processSeq.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280dae8cArg1 | 
    | block280dae8cStack0 block280dae8cStack1 block280dae8cStack2 block280dae8cStack3 block280dae8cStack4 block280dae8cPC block280dae8cStep block280dae8cDone block280dae8cResult |
    block280dae8cStack0 := self.
    block280dae8cPC := 4.
    block280dae8cDone := false.
    [block280dae8cDone not] whileTrue: [
        block280dae8cStep := block280dae8cPC.
        block280dae8cStep = 4 ifTrue: [
            block280dae8cStack1 := false.
            block280dae8cPC := 5.
        ].
        block280dae8cStep = 5 ifTrue: [
            block280dae8cStack2 := block280dae8cArg1.
            block280dae8cPC := 6.
        ].
        block280dae8cStep = 6 ifTrue: [
            block280dae8cStack2 := (block280dae8cStack2) scope.
            block280dae8cPC := 7.
        ].
        block280dae8cStep = 7 ifTrue: [
            block280dae8cStack2 := (block280dae8cStack2) className.
            block280dae8cPC := 8.
        ].
        block280dae8cStep = 8 ifTrue: [
            block280dae8cStack3 := 'HWC'.
            block280dae8cPC := 10.
        ].
        block280dae8cStep = 10 ifTrue: [
            block280dae8cStack2 := (block280dae8cStack2) equals: (block280dae8cStack3).
            block280dae8cPC := 12.
        ].
        block280dae8cStep = 12 ifTrue: [
            (block280dae8cStack2) ifTrue: [block280dae8cPC := 16] ifFalse: [block280dae8cPC := 23].
        ].
        block280dae8cStep = 16 ifTrue: [
            block280dae8cPC := 17.
        ].
        block280dae8cStep = 17 ifTrue: [
            block280dae8cStack1 := block280dae8cArg1.
            block280dae8cPC := 18.
        ].
        block280dae8cStep = 18 ifTrue: [
            block280dae8cStack1 := (block280dae8cStack1) scope.
            block280dae8cPC := 19.
        ].
        block280dae8cStep = 19 ifTrue: [
            block280dae8cStack1 := (block280dae8cStack1) optimizations.
            block280dae8cPC := 21.
        ].
        block280dae8cStep = 21 ifTrue: [
            block280dae8cStack1 := (block280dae8cStack1) isCgCCodeBlock.
            block280dae8cPC := 23.
        ].
        block280dae8cStep = 23 ifTrue: [
            block280dae8cResult := block280dae8cStack1.
            block280dae8cDone := true.
        ].
    ].
    block280dae8cResult
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

