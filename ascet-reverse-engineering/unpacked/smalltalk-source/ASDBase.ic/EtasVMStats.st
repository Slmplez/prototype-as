"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200034c8; bytecode file offset 0x90206c"
!EtasVMStats methodsFor: 'recovered'!
meanScavengeTime: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005568; bytecode file offset 0x90206c"
!EtasVMStats methodsFor: 'recovered'!
meanGlobalGCTime: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2004abf8; bytecode file offset 0x947768"
!EtasVMStats methodsFor: 'recovered'!
cacheHits
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b8ec; bytecode file offset 0x948384"
!EtasVMStats methodsFor: 'recovered'!
cacheMisses
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c5fc; bytecode file offset 0x949118"
!EtasVMStats methodsFor: 'recovered'!
numberOfScavenges
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004cef8; bytecode file offset 0x949804"
!EtasVMStats methodsFor: 'recovered'!
numberOfGlobalGCs
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d308; bytecode file offset 0x949bf0"
!EtasVMStats methodsFor: 'recovered'!
millisecondScavengeTime
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d574; bytecode file offset 0x949ec8"
!EtasVMStats methodsFor: 'recovered'!
millisecondGlobalGCTime
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d774; bytecode file offset 0x94a0c8"
!EtasVMStats methodsFor: 'recovered'!
timeForLastScavenge
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004d95c; bytecode file offset 0x94a238"
!EtasVMStats methodsFor: 'recovered'!
timeForLastGGC
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004da3c; bytecode file offset 0x94a30c"
!EtasVMStats methodsFor: 'recovered'!
bytesFlipped
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (32).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004daf0; bytecode file offset 0x94a3b4"
!EtasVMStats methodsFor: 'recovered'!
bytesTenured
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (36).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004db7c; bytecode file offset 0x94a440"
!EtasVMStats methodsFor: 'recovered'!
gcTenureAge
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (40).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005bd94; bytecode file offset 0x958ab0"
!EtasVMStats methodsFor: 'recovered'!
globalGarbageCollect
    | recoveredValue0 |
    recoveredValue0 := System.
    (recoveredValue0) globalGarbageCollect.
    ^self
! !

"ASDBase.ic method 0x2005c004; bytecode file offset 0x958ab0"
!EtasVMStats methodsFor: 'recovered'!
scavenge
    | recoveredValue0 |
    recoveredValue0 := System.
    (recoveredValue0) scavenge.
    ^self
! !

"ASDBase.ic method 0x200a5c44; bytecode file offset 0x9a25bc"
!EtasVMStats methodsFor: 'recovered'!
cacheHits: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a647c; bytecode file offset 0x9a2f38"
!EtasVMStats methodsFor: 'recovered'!
cacheMisses: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a7208; bytecode file offset 0x9a3b44"
!EtasVMStats methodsFor: 'recovered'!
numberOfScavenges: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a77e4; bytecode file offset 0x9a4138"
!EtasVMStats methodsFor: 'recovered'!
numberOfGlobalGCs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a7b5c; bytecode file offset 0x9a44a4"
!EtasVMStats methodsFor: 'recovered'!
millisecondScavengeTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a7e08; bytecode file offset 0x9a4720"
!EtasVMStats methodsFor: 'recovered'!
millisecondGlobalGCTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a800c; bytecode file offset 0x9a48d0"
!EtasVMStats methodsFor: 'recovered'!
timeForLastScavenge: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a8138; bytecode file offset 0x9a4a2c"
!EtasVMStats methodsFor: 'recovered'!
timeForLastGGC: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a8360; bytecode file offset 0x9a4c18"
!EtasVMStats methodsFor: 'recovered'!
gcTenureAge: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (40) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200ba55c; bytecode file offset 0x9b6e18"
!EtasVMStats methodsFor: 'recovered'!
bytesFlipped: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abs.
    (self) uint32At: (32) put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ba578; bytecode file offset 0x9b6e34"
!EtasVMStats methodsFor: 'recovered'!
bytesTenured: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abs.
    (self) uint32At: (36) put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200e49f0; bytecode file offset 0x9e12d4"
!EtasVMStats methodsFor: 'recovered'!
meanScavengeTime
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) millisecondScavengeTime.
    recoveredValue1 := (self) numberOfScavenges.
    recoveredValue2 := (recoveredValue1) max: (1).
    recoveredValue3 := (recoveredValue0) / (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asInteger.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e4a0c; bytecode file offset 0x9e12d4"
!EtasVMStats methodsFor: 'recovered'!
meanGlobalGCTime
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) millisecondGlobalGCTime.
    recoveredValue1 := (self) numberOfGlobalGCs.
    recoveredValue2 := (recoveredValue1) max: (1).
    recoveredValue3 := (recoveredValue0) / (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asInteger.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20277538; bytecode file offset 0xb73e94"
!EtasVMStats methodsFor: 'recovered'!
addInspectorMenuEntriesIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super addInspectorMenuEntriesIn: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'globalGarbageCollect'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'globalGarbageCollect'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 'scavenge'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'scavenge'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := [
    true
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) label: (recoveredStack2) enable: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

