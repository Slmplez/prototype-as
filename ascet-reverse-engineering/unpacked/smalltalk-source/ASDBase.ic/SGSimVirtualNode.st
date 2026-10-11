"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200282a4; bytecode file offset 0x934580"
!SGSimVirtualNode methodsFor: 'recovered'!
getPseudoAddress
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) realNode.
    recoveredValue1 := (recoveredValue0) getPseudoAddress.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20065628; bytecode file offset 0x962104"
!SGSimVirtualNode methodsFor: 'recovered'!
getVirtualPseudoAddress
    | recoveredValue0 |
    recoveredValue0 := super getPseudoAddress.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077a8c; bytecode file offset 0x9757c8"
!SGSimVirtualNode methodsFor: 'recovered'!
isVirtualNode
    ^true
! !

"ASDBase.ic method 0x200c6150; bytecode file offset 0x9c2bec"
!SGSimVirtualNode methodsFor: 'recovered'!
realNode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    realNode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f10f4; bytecode file offset 0x9ed9a8"
!SGSimVirtualNode methodsFor: 'recovered'!
realNode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := realNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := realNode.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

