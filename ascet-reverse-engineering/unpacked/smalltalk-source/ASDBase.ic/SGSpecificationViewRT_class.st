"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001878; bytecode file offset 0x8ffcfc"
!SGSpecificationViewRT class methodsFor: 'recovered'!
_PRAGMA_SGSpecificationViewRTNlsPool
    ^self
! !

"ASDBase.ic method 0x20003200; bytecode file offset 0x8ffcfc"
!SGSpecificationViewRT class methodsFor: 'recovered'!
_PRAGMA_EtasColorSelectionConstantsPool
    ^self
! !

"ASDBase.ic method 0x200201ec; bytecode file offset 0x92209c"
!SGSpecificationViewRT class methodsFor: 'recovered'!
packagerIncludeSelectors
    ^#('etasColorSelectionCallback')
! !

"ASDBase.ic method 0x2013a558; bytecode file offset 0xa36e58"
!SGSpecificationViewRT class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGSpecificationView.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubclasses.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280cb418Arg1 | 
    | block280cb418Value0 block280cb418Value1 |
    block280cb418Value0 := block280cb418Arg1.
    block280cb418Value1 := (block280cb418Value0) menuIDs: (nil).
    block280cb418Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

