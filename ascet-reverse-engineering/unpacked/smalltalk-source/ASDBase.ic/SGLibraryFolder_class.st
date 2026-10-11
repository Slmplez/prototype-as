"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20023978; bytecode file offset 0x92209c"
!SGLibraryFolder class methodsFor: 'recovered'!
label
    ^'Folder'
! !

"ASDBase.ic method 0x2007462c; bytecode file offset 0x970f98"
!SGLibraryFolder class methodsFor: 'recovered'!
sortIndex
    ^10
! !

"ASDBase.ic method 0x200cb728; bytecode file offset 0x9c80c4"
!SGLibraryFolder class methodsFor: 'recovered'!
itemTypes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := RBFolder.
    recoveredValue2 := SGLibrary.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200f7c8c; bytecode file offset 0x9f4e38"
!SGLibraryFolder class methodsFor: 'recovered'!
itemTypeLabels
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemTypes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c50d0Arg1 | 
    | block280c50d0Value0 block280c50d0Value1 |
    block280c50d0Value0 := block280c50d0Arg1.
    block280c50d0Value1 := (block280c50d0Value0) printString.
    block280c50d0Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

