"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200716cc; bytecode file offset 0x96df80"
!EtasTabStrip methodsFor: 'recovered'!
multiline
    | recoveredValue0 |
    recoveredValue0 := multiline.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200716e8; bytecode file offset 0x96df9c"
!EtasTabStrip methodsFor: 'recovered'!
onBottom
    | recoveredValue0 |
    recoveredValue0 := onBottom.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200716fc; bytecode file offset 0x96dfc0"
!EtasTabStrip methodsFor: 'recovered'!
vertical
    | recoveredValue0 |
    recoveredValue0 := vertical.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c7abc; bytecode file offset 0x9c4370"
!EtasTabStrip methodsFor: 'recovered'!
multiline: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    multiline := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7ad0; bytecode file offset 0x9c4384"
!EtasTabStrip methodsFor: 'recovered'!
onBottom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    onBottom := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7ae4; bytecode file offset 0x9c4398"
!EtasTabStrip methodsFor: 'recovered'!
vertical: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    vertical := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d0060; bytecode file offset 0x9cc948"
!EtasTabStrip methodsFor: 'recovered'!
osWidgetClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Rnz') == ('TabStripIcons').
    recoveredValue1 := EtasOSTabFolder.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20173044; bytecode file offset 0xa6f928"
!EtasTabStrip methodsFor: 'recovered'!
initializeResources
    super initializeResources.
    (self) multiline: (false).
    (self) onBottom: (false).
    (self) vertical: (false).
    ^self
! !

"ASDBase.ic method 0x201855a8; bytecode file offset 0xa81e78"
!EtasTabStrip methodsFor: 'recovered'!
resizeTab: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) userData.
    recoveredValue2 := (self) clientLeft.
    recoveredValue3 := (self) clientTop.
    recoveredValue4 := (self) clientWidth.
    recoveredValue5 := (self) clientHeight.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) userData.
    recoveredValue8 := (recoveredValue7) borderWidth.
    (recoveredValue1) configureWidget: (recoveredValue2) y: (recoveredValue3) width: (recoveredValue4) height: (recoveredValue5) borderWidth: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x2019db3c; bytecode file offset 0xa9a404"
!EtasTabStrip methodsFor: 'recovered'!
createTabWithForm: recoveredArg1 argBlock: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createTab: (recoveredValue0) argBlock: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := ('tabForm') , (recoveredValue3).
    recoveredValue5 := (self) createForm: (recoveredValue4) argBlock: (nil).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) userData: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    ^recoveredValue8
! !

"ASDBase.ic method 0x202acd8c; bytecode file offset 0xba9664"
!EtasTabStrip methodsFor: 'recovered'!
osWidgetStyle
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super osWidgetStyle.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) onBottom.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := TcsBottom.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitOr: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) multiline.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := TcsMultiline.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitOr: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) vertical.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := TcsVertical.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitOr: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030be08; bytecode file offset 0xc086e8"
!EtasTabStrip methodsFor: 'recovered'!
osCreateWidget
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super osCreateWidget.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) vertical.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 |
    recoveredBlock21Value0 := OSCall.
    recoveredBlock21Value1 := (recoveredBlock21Value0) new.
    recoveredBlock21Value2 := (self) osWidget.
    recoveredBlock21Value3 := (recoveredBlock21Value2) handle.
    recoveredBlock21Value4 := (recoveredBlock21Value1) setWindowTheme: (recoveredBlock21Value3).
    recoveredBlock21Value4
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock40Value0 |
    recoveredBlock40Value0 := (self) runtimeAssert: (false) additionalInfo: ('missing dll UxTheme.dll').
    recoveredBlock40Value0
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) handleExceptionsIn: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

