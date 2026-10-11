"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20078444; bytecode file offset 0x9757c8"
!ETASDynamicToolbarButton methodsFor: 'recovered'!
isDynamicToolbarButton
    ^true
! !

"ASDBase.ic method 0x2007f62c; bytecode file offset 0x97c330"
!ETASDynamicToolbarButton methodsFor: 'recovered'!
isToolbarButton
    ^false
! !

"ASDBase.ic method 0x200c337c; bytecode file offset 0x9bfde0"
!ETASDynamicToolbarButton methodsFor: 'recovered'!
icon: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    icon := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2017ed58; bytecode file offset 0xa7b614"
!ETASDynamicToolbarButton methodsFor: 'recovered'!
tooltip
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := tooltip.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock10Value0 |
    recoveredBlock10Value0 := (self) etasDevHalt.
    recoveredBlock10Value0
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := tooltip.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017f748; bytecode file offset 0xa7c004"
!ETASDynamicToolbarButton methodsFor: 'recovered'!
icon
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := icon.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock10Value0 |
    recoveredBlock10Value0 := (self) etasDevHalt.
    recoveredBlock10Value0
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := icon.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

