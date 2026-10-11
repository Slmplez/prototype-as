"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200003a0; bytecode file offset 0x7c6d8"
!CwItem methodsFor: 'recovered'!
osWidgetClass
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"winsys.ic method 0x20000a70; bytecode file offset 0x7cc7c"
!CwItem methodsFor: 'recovered'!
osWidgetStyle
    | recoveredValue0 |
    recoveredValue0 := OSxNULL.
    ^recoveredValue0
! !

"winsys.ic method 0x2000154c; bytecode file offset 0x7d728"
!CwItem methodsFor: 'recovered'!
boundingBox
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := osWidget.
    recoveredValue1 := (recoveredValue0) itemRect.
    ^recoveredValue1
! !

"winsys.ic method 0x20003018; bytecode file offset 0x7f220"
!CwItem methodsFor: 'recovered'!
osWidget
    | recoveredValue0 |
    recoveredValue0 := osWidget.
    ^recoveredValue0
! !

"winsys.ic method 0x20003200; bytecode file offset 0x7f418"
!CwItem methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := xmNname.
    ^recoveredValue0
! !

"winsys.ic method 0x20003358; bytecode file offset 0x7f5b8"
!CwItem methodsFor: 'recovered'!
labelString
    | recoveredValue0 |
    recoveredValue0 := xmNlabelString.
    ^recoveredValue0
! !

"winsys.ic method 0x20003448; bytecode file offset 0x7f720"
!CwItem methodsFor: 'recovered'!
userData
    | recoveredValue0 |
    recoveredValue0 := xmNuserData.
    ^recoveredValue0
! !

"winsys.ic method 0x20005708; bytecode file offset 0x818f0"
!CwItem methodsFor: 'recovered'!
deferUpdate: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := cwDeferredSelectors.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x200060d4; bytecode file offset 0x82298"
!CwItem methodsFor: 'recovered'!
updateLabelString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := osWidget.
    recoveredValue1 := xmNlabelString.
    (recoveredValue0) label: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x20006140; bytecode file offset 0x82308"
!CwItem methodsFor: 'recovered'!
updateOSWidgetStyle
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := osWidget.
    recoveredValue1 := (self) osWidgetStyle.
    (recoveredValue0) setStyle: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x20006bec; bytecode file offset 0x82db0"
!CwItem methodsFor: 'recovered'!
initialize
    cwDeferResourceUpdate := false.
    xmNlabelString := ''.
    ^self
! !

"winsys.ic method 0x200075ec; bytecode file offset 0x838d4"
!CwItem methodsFor: 'recovered'!
osWidget: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    osWidget := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007a58; bytecode file offset 0x83ce8"
!CwItem methodsFor: 'recovered'!
userData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNuserData := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000ad08; bytecode file offset 0x86ecc"
!CwItem methodsFor: 'recovered'!
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
            recoveredStack2 := osWidget.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := osWidget.
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

"winsys.ic method 0x2000c3e4; bytecode file offset 0x885b4"
!CwItem methodsFor: 'recovered'!
osCreateWidget
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) osWidgetClass.
    recoveredValue1 := (self) osWidgetStyle.
    recoveredValue2 := (recoveredValue0) withStyle: (recoveredValue1).
    osWidget := recoveredValue2.
    recoveredValue3 := osWidget.
    (recoveredValue3) owner: (self).
    ^self
! !

"winsys.ic method 0x2000ec64; bytecode file offset 0x8ae38"
!CwItem methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    recoveredValue4 := xmNname.
    recoveredValue5 := ('(%1)') bindWith: (recoveredValue4).
    (recoveredValue0) nextPutAll: (recoveredValue5).
    ^self
! !

"winsys.ic method 0x20017364; bytecode file offset 0x93538"
!CwItem methodsFor: 'recovered'!
create: recoveredArg1 parent: recoveredArg2 argBlock: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    xmNlabelString := recoveredValue1.
    xmNname := recoveredValue0.
    (self) osCreateWidget.
    recoveredValue2 := osWidget.
    recoveredValue3 := xmNname.
    (recoveredValue2) label: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) osWidget.
    recoveredValue6 := osWidget.
    (recoveredValue5) add: (recoveredValue6).
    recoveredValue7 := recoveredArg3.
    (self) setValuesBlock: (recoveredValue7).
    ^self
! !

"winsys.ic method 0x20017cd8; bytecode file offset 0x93ea0"
!CwItem methodsFor: 'recovered'!
labelString: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNlabelString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            xmNlabelString := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := cwDeferResourceUpdate.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'updateLabelString'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) deferUpdate: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) updateLabelString.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20019084; bytecode file offset 0x95250"
!CwItem methodsFor: 'recovered'!
runDeferredSelectors
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := osWidget.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := cwDeferredSelectors.
    recoveredBlock6Value1 := [:recoveredBlock6Block14Arg1 | 
    | recoveredBlock6Block14Value0 recoveredBlock6Block14Value1 |
    recoveredBlock6Block14Value0 := recoveredBlock6Block14Arg1.
    recoveredBlock6Block14Value1 := (self) perform: (recoveredBlock6Block14Value0).
    recoveredBlock6Block14Value1
].
    (recoveredBlock6Value0) do: (recoveredBlock6Value1).
    cwDeferredSelectors := nil.
    nil
].
    (recoveredValue0) deferRedraw: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x2001c80c; bytecode file offset 0x989e0"
!CwItem methodsFor: 'recovered'!
setValuesBlock: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            cwDeferredSelectors := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            cwDeferResourceUpdate := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            cwDeferResourceUpdate := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := cwDeferredSelectors.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) runDeferredSelectors.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            cwDeferredSelectors := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

