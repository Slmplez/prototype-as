"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20027558; bytecode file offset 0x924260"
!CwExtendedWidget methodsFor: 'recovered'!
wbHasOSWidget
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) osWidget.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20028624; bytecode file offset 0x934580"
!CwExtendedWidget methodsFor: 'recovered'!
tabList
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := (recoveredValue0) tabList.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f204; bytecode file offset 0x934580"
!CwExtendedWidget methodsFor: 'recovered'!
isToggleButton
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := (recoveredValue0) isToggleButton.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030334; bytecode file offset 0x934580"
!CwExtendedWidget methodsFor: 'recovered'!
resizePolicy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) basicWidget.
    recoveredValue1 := (recoveredValue0) resizePolicy.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200356f4; bytecode file offset 0x934580"
!CwExtendedWidget methodsFor: 'recovered'!
isText
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := (recoveredValue0) isText.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036cb4; bytecode file offset 0x934580"
!CwExtendedWidget methodsFor: 'recovered'!
isScrolledWindow
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := (recoveredValue0) isScrolledWindow.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200764cc; bytecode file offset 0x9757c8"
!CwExtendedWidget methodsFor: 'recovered'!
reactToHelpCallback
    ^true
! !

"ASDBase.ic method 0x20097544; bytecode file offset 0x995850"
!CwExtendedWidget methodsFor: 'recovered'!
resizePolicy: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) basicWidget.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) resizePolicy: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20099598; bytecode file offset 0x995e68"
!CwExtendedWidget methodsFor: 'recovered'!
menu: recoveredArg1 owner: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (recoveredValue0) wbRegisterPopupFor: (self) owner: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200e6284; bytecode file offset 0x9e2bf8"
!CwExtendedWidget methodsFor: 'recovered'!
destroyWidget
    super destroyWidget.
    (self) properties: (nil).
    ^self
! !

"ASDBase.ic method 0x200f2f2c; bytecode file offset 0x9ef808"
!CwExtendedWidget methodsFor: 'recovered'!
isDestroyed
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) primaryWidget.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) primaryWidget.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011d810; bytecode file offset 0xa1a0dc"
!CwExtendedWidget methodsFor: 'recovered'!
userData: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) wbPropertyAt: ('XmNuserData') put: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) wbPropertyAt: (1) put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2012f3f4; bytecode file offset 0xa2bcb4"
!CwExtendedWidget methodsFor: 'recovered'!
scrolledWidget
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isTightlyCoupled.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 17.
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

"ASDBase.ic method 0x2015cb7c; bytecode file offset 0xa59444"
!CwExtendedWidget methodsFor: 'recovered'!
userData
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNuserData.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) wbIsDictionary.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := super userData.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'XmNuserData'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) wbPropertyAt: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

