"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20067d94; bytecode file offset 0x9646f8"
!RBDataViewConfigurationObject methodsFor: 'recovered'!
singleWAxis
    | recoveredValue0 |
    recoveredValue0 := singleWAxis.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068204; bytecode file offset 0x965b90"
!RBDataViewConfigurationObject methodsFor: 'recovered'!
xMin
    | recoveredValue0 |
    recoveredValue0 := xMin.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a310; bytecode file offset 0x966bdc"
!RBDataViewConfigurationObject methodsFor: 'recovered'!
xMax
    | recoveredValue0 |
    recoveredValue0 := xMax.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b4c0; bytecode file offset 0x96873c"
!RBDataViewConfigurationObject methodsFor: 'recovered'!
title
    | recoveredValue0 |
    recoveredValue0 := title.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006beac; bytecode file offset 0x9692b0"
!RBDataViewConfigurationObject methodsFor: 'recovered'!
showGrid
    | recoveredValue0 |
    recoveredValue0 := showGrid.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ce60; bytecode file offset 0x969c04"
!RBDataViewConfigurationObject methodsFor: 'recovered'!
backgroundColor
    | recoveredValue0 |
    recoveredValue0 := backgroundColor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d3e4; bytecode file offset 0x96a390"
!RBDataViewConfigurationObject methodsFor: 'recovered'!
colorDict
    | recoveredValue0 |
    recoveredValue0 := colorDict.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bf0d0; bytecode file offset 0x9bc0b4"
!RBDataViewConfigurationObject methodsFor: 'recovered'!
singleWAxis: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    singleWAxis := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfddc; bytecode file offset 0x9bd228"
!RBDataViewConfigurationObject methodsFor: 'recovered'!
xMin: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xMin := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0b58; bytecode file offset 0x9bdf14"
!RBDataViewConfigurationObject methodsFor: 'recovered'!
xMax: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xMax := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c29f8; bytecode file offset 0x9bf474"
!RBDataViewConfigurationObject methodsFor: 'recovered'!
title: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    title := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c328c; bytecode file offset 0x9bfde0"
!RBDataViewConfigurationObject methodsFor: 'recovered'!
showGrid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    showGrid := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3b10; bytecode file offset 0x9c058c"
!RBDataViewConfigurationObject methodsFor: 'recovered'!
backgroundColor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    backgroundColor := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4294; bytecode file offset 0x9c0bf0"
!RBDataViewConfigurationObject methodsFor: 'recovered'!
colorDict: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    colorDict := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c43e8; bytecode file offset 0x9c11bc"
!RBDataViewConfigurationObject methodsFor: 'recovered'!
state: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    state := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2011640c; bytecode file offset 0xa12cc0"
!RBDataViewConfigurationObject methodsFor: 'recovered'!
state
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := state.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            state := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := state.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20449b98; bytecode file offset 0xd46480"
!RBDataViewConfigurationObject methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := frameRectangle.
    recoveredValue5 := (recoveredValue4) printString.
    recoveredValue6 := ('	frameRectangle:	') , (recoveredValue5).
    (recoveredValue3) nextPutAll: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) cr.
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := singleWAxis.
    recoveredValue10 := (recoveredValue9) printString.
    recoveredValue11 := ('	singleWAxis:		') , (recoveredValue10).
    (recoveredValue8) nextPutAll: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    (recoveredValue12) cr.
    recoveredValue13 := recoveredValue1.
    recoveredValue14 := xMin.
    recoveredValue15 := (recoveredValue14) printString.
    recoveredValue16 := ('	xMin:		            ') , (recoveredValue15).
    (recoveredValue13) nextPutAll: (recoveredValue16).
    recoveredValue17 := recoveredValue1.
    (recoveredValue17) cr.
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := xMax.
    recoveredValue20 := (recoveredValue19) printString.
    recoveredValue21 := ('	xMax:		            ') , (recoveredValue20).
    (recoveredValue18) nextPutAll: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    (recoveredValue22) cr.
    recoveredValue23 := recoveredValue1.
    recoveredValue24 := frameState.
    recoveredValue25 := (recoveredValue24) printString.
    recoveredValue26 := ('	frameState:			') , (recoveredValue25).
    (recoveredValue23) nextPutAll: (recoveredValue26).
    recoveredValue27 := recoveredValue1.
    (recoveredValue27) cr.
    recoveredValue28 := recoveredValue1.
    recoveredValue29 := showGrid.
    recoveredValue30 := (recoveredValue29) printString.
    recoveredValue31 := ('	showGrid:		    ') , (recoveredValue30).
    (recoveredValue28) nextPutAll: (recoveredValue31).
    recoveredValue32 := recoveredValue1.
    (recoveredValue32) cr.
    recoveredValue33 := recoveredValue1.
    recoveredValue34 := title.
    recoveredValue35 := (recoveredValue34) printString.
    recoveredValue36 := ('	title:				        ') , (recoveredValue35).
    (recoveredValue33) nextPutAll: (recoveredValue36).
    (recoveredValue1) cr.
    recoveredValue37 := recoveredArg1.
    ^recoveredValue37
! !

