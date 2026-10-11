"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000118; bytecode file offset 0x7c350"
!CommonWidgets class methodsFor: 'recovered'!
_PRAGMA_CwConstants
    ^self
! !

"winsys.ic method 0x20001c4c; bytecode file offset 0x7de10"
!CommonWidgets class methodsFor: 'recovered'!
loaded
    (self) localize.
    ^self
! !

"winsys.ic method 0x20002124; bytecode file offset 0x7e36c"
!CommonWidgets class methodsFor: 'recovered'!
preStartUp
    | recoveredValue0 |
    recoveredValue0 := CwAppContext.
    (recoveredValue0) preStartUp.
    ^self
! !

"winsys.ic method 0x200021a4; bytecode file offset 0x7e36c"
!CommonWidgets class methodsFor: 'recovered'!
shutDown
    | recoveredValue0 |
    recoveredValue0 := CwAppContext.
    (recoveredValue0) shutDown.
    ^self
! !

"winsys.ic method 0x20004f60; bytecode file offset 0x8112c"
!CommonWidgets class methodsFor: 'recovered'!
rerunStartUpClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) startUpClass.
    (recoveredValue1) reinitialize.
    ^self
! !

"winsys.ic method 0x20005d10; bytecode file offset 0x81f28"
!CommonWidgets class methodsFor: 'recovered'!
reinitialize
    (self) blastWidgets.
    (self) rerunStartUpClass.
    ^self
! !

"winsys.ic method 0x20005ebc; bytecode file offset 0x820c4"
!CommonWidgets class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatCW.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x20006b28; bytecode file offset 0x82cf4"
!CommonWidgets class methodsFor: 'recovered'!
postExiting
    | recoveredValue0 |
    recoveredValue0 := CwAppContext.
    (recoveredValue0) postExiting.
    (self) blastWidgets.
    ^self
! !

"winsys.ic method 0x2000daf8; bytecode file offset 0x89cc8"
!CommonWidgets class methodsFor: 'recovered'!
cleanUpBeforeWalkback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwAppContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CwAppContext.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) cleanUpBeforeWalkback.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := CwBasicWidget.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) cleanUpBeforeWalkback.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20010004; bytecode file offset 0x8c1d8"
!CommonWidgets class methodsFor: 'recovered'!
blastWidgets
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | block28008b78Value0 block28008b78Value1 block28008b78Value2 |
    block28008b78Value0 := CwAppContext.
    (block28008b78Value0) reinitialize.
    block28008b78Value1 := OSWidget.
    block28008b78Value2 := (block28008b78Value1) reinitialize.
    block28008b78Value2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) critical.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2001883c; bytecode file offset 0x94a30"
!CommonWidgets class methodsFor: 'recovered'!
startRun
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := PlatformWidgets.
    recoveredValue1 := DirectedMessage.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := CgDisplay.
    recoveredValue5 := (recoveredValue4) default.
    (recoveredValue3) receiver: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) selector: ('clearGCCache').
    recoveredValue7 := (recoveredValue2) arguments: (#()).
    (recoveredValue0) clearCacheMessage: (recoveredValue7).
    recoveredValue8 := CwAppContext.
    (recoveredValue8) initialize.
    ^self
! !

