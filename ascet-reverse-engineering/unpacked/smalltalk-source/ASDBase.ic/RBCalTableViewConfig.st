"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200b8580; bytecode file offset 0x9b4fec"
!RBCalTableViewConfig methodsFor: 'recovered'!
columnWidths: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := contents.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('columnWidths') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2017ecb0; bytecode file offset 0xa7b578"
!RBCalTableViewConfig methodsFor: 'recovered'!
columnWidths
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := contents.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'columnWidths'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    | block280cf5e8Value0 block280cf5e8Value1 |
    block280cf5e8Value0 := Array.
    block280cf5e8Value1 := (block280cf5e8Value0) new: (0).
    block280cf5e8Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201da574; bytecode file offset 0xad6e40"
!RBCalTableViewConfig methodsFor: 'recovered'!
internalWriteXML: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super internalWriteXML: (recoveredValue0).
    recoveredValue1 := (self) columnWidths.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 |
    recoveredBlock11Value0 := (self) runtimeAssert: (false) additionalInfo: ('Unsupported display config value').
    recoveredBlock11Value0
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^self
! !

