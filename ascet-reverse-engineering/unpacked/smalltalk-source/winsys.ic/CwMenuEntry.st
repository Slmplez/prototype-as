"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000088; bytecode file offset 0x7c350"
!CwMenuEntry methodsFor: 'recovered'!
clearWidgetsTotally
    ^self
! !

"winsys.ic method 0x20000188; bytecode file offset 0x7c350"
!CwMenuEntry methodsFor: 'recovered'!
initialize
    ^self
! !

"winsys.ic method 0x200001f0; bytecode file offset 0x7c440"
!CwMenuEntry methodsFor: 'recovered'!
sensitize: recoveredArg1
    ^self
! !

"winsys.ic method 0x20000268; bytecode file offset 0x7c440"
!CwMenuEntry methodsFor: 'recovered'!
widget: recoveredArg1
    ^self
! !

"winsys.ic method 0x20000454; bytecode file offset 0x7c6d8"
!CwMenuEntry methodsFor: 'recovered'!
widgetName
    | recoveredValue0 |
    recoveredValue0 := (self) label.
    ^recoveredValue0
! !

"winsys.ic method 0x200029a0; bytecode file offset 0x7ed00"
!CwMenuEntry methodsFor: 'recovered'!
manage
    | recoveredValue0 |
    recoveredValue0 := manage.
    ^recoveredValue0
! !

"winsys.ic method 0x20002ca0; bytecode file offset 0x7efc0"
!CwMenuEntry methodsFor: 'recovered'!
popupWidget
    | recoveredValue0 |
    recoveredValue0 := popupWidget.
    ^recoveredValue0
! !

"winsys.ic method 0x20002ed8; bytecode file offset 0x7f220"
!CwMenuEntry methodsFor: 'recovered'!
menuBarWidget
    | recoveredValue0 |
    recoveredValue0 := menuBarWidget.
    ^recoveredValue0
! !

"winsys.ic method 0x20004778; bytecode file offset 0x80960"
!CwMenuEntry methodsFor: 'recovered'!
help
    ^nil
! !

"winsys.ic method 0x20004780; bytecode file offset 0x80960"
!CwMenuEntry methodsFor: 'recovered'!
selector
    ^nil
! !

"winsys.ic method 0x2000491c; bytecode file offset 0x80b84"
!CwMenuEntry methodsFor: 'recovered'!
isCascadeButton
    ^false
! !

"winsys.ic method 0x2000494c; bytecode file offset 0x80b84"
!CwMenuEntry methodsFor: 'recovered'!
isButton
    ^false
! !

"winsys.ic method 0x20004964; bytecode file offset 0x80b84"
!CwMenuEntry methodsFor: 'recovered'!
isSeparator
    ^false
! !

"winsys.ic method 0x200049ec; bytecode file offset 0x80bac"
!CwMenuEntry methodsFor: 'recovered'!
mnemonic
    ^$$
! !

"winsys.ic method 0x20006208; bytecode file offset 0x823c8"
!CwMenuEntry methodsFor: 'recovered'!
clearWidgets
    menuBarWidget := nil.
    popupWidget := nil.
    ^self
! !

"winsys.ic method 0x2000d6a4; bytecode file offset 0x89864"
!CwMenuEntry methodsFor: 'recovered'!
setWidget: recoveredArg1 isPopup: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            popupWidget := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            menuBarWidget := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x200126b8; bytecode file offset 0x8e888"
!CwMenuEntry methodsFor: 'recovered'!
initializeAt: recoveredArg1 names: recoveredArg2 types: recoveredArg3 mnemonics: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) widgetName.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) buttonType.
    (recoveredValue3) at: (recoveredValue4) put: (recoveredValue5).
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (self) mnemonic.
    (recoveredValue6) at: (recoveredValue7) put: (recoveredValue8).
    ^self
! !

"winsys.ic method 0x200154ec; bytecode file offset 0x916b0"
!CwMenuEntry methodsFor: 'recovered'!
configureEntry: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := popupWidget.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := menuBarWidget.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) updateManage: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20015cf4; bytecode file offset 0x91eb8"
!CwMenuEntry methodsFor: 'recovered'!
manage: recoveredArg1
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
            manage := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := popupWidget.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := popupWidget.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) updateManage: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := menuBarWidget.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := menuBarWidget.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) updateManage: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20023a20; bytecode file offset 0x9fbf0"
!CwMenuEntry methodsFor: 'recovered'!
updateManage: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := manage.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := manage.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := manage.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := manage.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) unmanageChild.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

