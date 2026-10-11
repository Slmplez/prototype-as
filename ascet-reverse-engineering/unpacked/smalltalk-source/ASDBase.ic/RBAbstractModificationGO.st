"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20069ca0; bytecode file offset 0x966bdc"
!RBAbstractModificationGO methodsFor: 'recovered'!
wrapperLineStyle
    | recoveredValue0 |
    recoveredValue0 := wrapperLineStyle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a38c; bytecode file offset 0x967a18"
!RBAbstractModificationGO methodsFor: 'recovered'!
lastGraphObject
    | recoveredValue0 |
    recoveredValue0 := lastGraphObject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c0b50; bytecode file offset 0x9bdf14"
!RBAbstractModificationGO methodsFor: 'recovered'!
wrapperLineStyle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    wrapperLineStyle := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1684; bytecode file offset 0x9beac8"
!RBAbstractModificationGO methodsFor: 'recovered'!
lastGraphObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lastGraphObject := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20109dc4; bytecode file offset 0xa06698"
!RBAbstractModificationGO methodsFor: 'recovered'!
drawLastObjectAgainForScrolling
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) lastGraphObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) lastGraphObject.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) displayOn: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020c2c0; bytecode file offset 0xb08ba0"
!RBAbstractModificationGO methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initialize.
    recoveredValue0 := RBLineStyle.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := CgRGBColor.
    recoveredValue4 := (recoveredValue3) black.
    (recoveredValue2) color: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := LineSolid.
    (recoveredValue5) type: (recoveredValue6).
    recoveredValue7 := (recoveredValue1) width: (2).
    (self) wrapperLineStyle: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x2028bb20; bytecode file offset 0xb88404"
!RBAbstractModificationGO methodsFor: 'recovered'!
updateLastGraphObject
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyForChangeDisplay.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) lastGraphObject: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) useWrapperLineStyle.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) lastGraphObject.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) wrapperLineStyle.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) lineStyle: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) lastGraphObject.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := GXhighlight.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) mixingRule: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) widget.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) displayOn: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

