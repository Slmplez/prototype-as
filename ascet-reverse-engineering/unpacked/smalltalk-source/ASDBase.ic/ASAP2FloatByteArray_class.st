"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20056124; bytecode file offset 0x952a9c"
!ASAP2FloatByteArray class methodsFor: 'recovered'!
emCreate: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) readByteArray: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006f590; bytecode file offset 0x96bf7c"
!ASAP2FloatByteArray class methodsFor: 'recovered'!
Accessor
    | recoveredValue0 |
    recoveredValue0 := accessor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20095714; bytecode file offset 0x991fe0"
!ASAP2FloatByteArray class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) fixedSize.
    recoveredValue2 := (recoveredValue0) * (recoveredValue1).
    recoveredValue3 := (self) new: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c5aa8; bytecode file offset 0x9c25bc"
!ASAP2FloatByteArray class methodsFor: 'recovered'!
Accessor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    accessor := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2012cab8; bytecode file offset 0xa2937c"
!ASAP2FloatByteArray class methodsFor: 'recovered'!
cleanupInstances
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubclasses.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c9d74Arg1 | 
    | block280c9d74Value0 block280c9d74Value1 |
    block280c9d74Value0 := block280c9d74Arg1.
    block280c9d74Value1 := (block280c9d74Value0) Accessor: (nil).
    block280c9d74Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20181334; bytecode file offset 0xa7dc00"
!ASAP2FloatByteArray class methodsFor: 'recovered'!
initializeClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubclasses.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d01dcArg1 | 
    | block280d01dcValue0 block280d01dcValue1 block280d01dcValue2 block280d01dcValue3 block280d01dcValue4 |
    block280d01dcValue0 := block280d01dcArg1.
    block280d01dcValue1 := block280d01dcArg1.
    block280d01dcValue2 := (block280d01dcValue1) AccessorClass.
    block280d01dcValue3 := (block280d01dcValue2) create: (0).
    block280d01dcValue4 := (block280d01dcValue0) Accessor: (block280d01dcValue3).
    block280d01dcValue4
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a5824; bytecode file offset 0xaa20e4"
!ASAP2FloatByteArray class methodsFor: 'recovered'!
createWithInvalidFlags: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) fixedSize.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) odd.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

