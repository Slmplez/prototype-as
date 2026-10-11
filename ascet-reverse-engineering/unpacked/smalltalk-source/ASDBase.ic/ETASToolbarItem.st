"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200276c0; bytecode file offset 0x924260"
!ETASToolbarItem methodsFor: 'recovered'!
hasDescriptionForConfigDialog
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) descriptionForConfigDialog.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200277bc; bytecode file offset 0x924260"
!ETASToolbarItem methodsFor: 'recovered'!
hasIconForConfigDialog
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) iconForConfigDialog.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20067394; bytecode file offset 0x9646f8"
!ETASToolbarItem methodsFor: 'recovered'!
type
    | recoveredValue0 |
    recoveredValue0 := type.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200697d0; bytecode file offset 0x966bdc"
!ETASToolbarItem methodsFor: 'recovered'!
iconForConfigDialog
    | recoveredValue0 |
    recoveredValue0 := iconForConfigDialog.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a654; bytecode file offset 0x967a18"
!ETASToolbarItem methodsFor: 'recovered'!
descriptionForConfigDialog
    | recoveredValue0 |
    recoveredValue0 := descriptionForConfigDialog.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20079cfc; bytecode file offset 0x97c330"
!ETASToolbarItem methodsFor: 'recovered'!
isToolbarDropdownList
    ^false
! !

"ASDBase.ic method 0x2007b9fc; bytecode file offset 0x97c330"
!ETASToolbarItem methodsFor: 'recovered'!
isDynamicToolbarPulldownButton
    ^false
! !

"ASDBase.ic method 0x2007d3b4; bytecode file offset 0x97c330"
!ETASToolbarItem methodsFor: 'recovered'!
isToolbarPulldownButton
    ^false
! !

"ASDBase.ic method 0x2007dacc; bytecode file offset 0x97c330"
!ETASToolbarItem methodsFor: 'recovered'!
isToolbarToggleButton
    ^false
! !

"ASDBase.ic method 0x2007ec34; bytecode file offset 0x97c330"
!ETASToolbarItem methodsFor: 'recovered'!
isToolbarSeparator
    ^false
! !

"ASDBase.ic method 0x2007ec5c; bytecode file offset 0x97c330"
!ETASToolbarItem methodsFor: 'recovered'!
isDynamicToolbarButton
    ^false
! !

"ASDBase.ic method 0x2007f634; bytecode file offset 0x97c330"
!ETASToolbarItem methodsFor: 'recovered'!
isToolbarButton
    ^false
! !

"ASDBase.ic method 0x200be144; bytecode file offset 0x9bb178"
!ETASToolbarItem methodsFor: 'recovered'!
tooltip: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tooltip := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bef20; bytecode file offset 0x9bc0b4"
!ETASToolbarItem methodsFor: 'recovered'!
type: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    type := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0eb8; bytecode file offset 0x9bdf14"
!ETASToolbarItem methodsFor: 'recovered'!
iconForConfigDialog: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    iconForConfigDialog := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1dfc; bytecode file offset 0x9beac8"
!ETASToolbarItem methodsFor: 'recovered'!
descriptionForConfigDialog: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    descriptionForConfigDialog := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2013a9a4; bytecode file offset 0xa37260"
!ETASToolbarItem methodsFor: 'recovered'!
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'Da hat der Entwickler den Tooltip vergessen!!'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := tooltip.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

