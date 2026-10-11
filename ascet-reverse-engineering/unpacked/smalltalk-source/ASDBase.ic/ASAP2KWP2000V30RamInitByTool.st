"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004b148; bytecode file offset 0x947a60"
!ASAP2KWP2000V30RamInitByTool methodsFor: 'recovered'!
diagnosticRamToFlashMode
    | recoveredValue0 |
    recoveredValue0 := (self) at: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b318; bytecode file offset 0x947d20"
!ASAP2KWP2000V30RamInitByTool methodsFor: 'recovered'!
copyParameter
    | recoveredValue0 |
    recoveredValue0 := (self) at: (2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20084270; bytecode file offset 0x981ca4"
!ASAP2KWP2000V30RamInitByTool methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) putDiagnosticRamToFlashModeIn: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a5078; bytecode file offset 0x9a1ad4"
!ASAP2KWP2000V30RamInitByTool methodsFor: 'recovered'!
getDiagnosticRamToFlashMode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getInteger: (recoveredValue0).
    (self) diagnosticRamToFlashMode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a5138; bytecode file offset 0x9a1ad4"
!ASAP2KWP2000V30RamInitByTool methodsFor: 'recovered'!
getCopyParameter: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getIntegerList: (recoveredValue0).
    (self) copyParameter: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a5e48; bytecode file offset 0x9a27f0"
!ASAP2KWP2000V30RamInitByTool methodsFor: 'recovered'!
diagnosticRamToFlashMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (1) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a5fa8; bytecode file offset 0x9a2a28"
!ASAP2KWP2000V30RamInitByTool methodsFor: 'recovered'!
copyParameter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (2) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200d6d24; bytecode file offset 0x9d3600"
!ASAP2KWP2000V30RamInitByTool methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) getDiagnosticRamToFlashMode: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) parse: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200fda58; bytecode file offset 0x9fa3f4"
!ASAP2KWP2000V30RamInitByTool methodsFor: 'recovered'!
putDiagnosticRamToFlashModeIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) diagnosticRamToFlashMode.
    (self) putIn: (recoveredValue1) hex: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201e9ec0; bytecode file offset 0xae6830"
!ASAP2KWP2000V30RamInitByTool methodsFor: 'recovered'!
putIn: recoveredArg1 copyParameter: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyParameter.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) string: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) putSeparatorIn: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyParameter.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) integerList: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

