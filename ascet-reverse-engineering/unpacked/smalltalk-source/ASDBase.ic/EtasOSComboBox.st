"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20070334; bytecode file offset 0x96ce40"
!EtasOSComboBox methodsFor: 'recovered'!
ownerDrawn
    | recoveredValue0 |
    recoveredValue0 := ownerDrawn.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c69fc; bytecode file offset 0x9c3470"
!EtasOSComboBox methodsFor: 'recovered'!
ownerDrawn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ownerDrawn := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20116bd0; bytecode file offset 0xa13490"
!EtasOSComboBox methodsFor: 'recovered'!
contents
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := drawItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c7074Arg1 | 
    | block280c7074Value0 block280c7074Value1 |
    block280c7074Value0 := block280c7074Arg1.
    block280c7074Value1 := (block280c7074Value0) asString.
    block280c7074Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012fdf4; bytecode file offset 0xa2c6b8"
!EtasOSComboBox methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    ownerDrawn := true.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    drawItems := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2016b880; bytecode file offset 0xa68144"
!EtasOSComboBox methodsFor: 'recovered'!
basicStyle
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super basicStyle.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := ownerDrawn.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := CbsOwnerdrawfixed.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitOr: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20228d04; bytecode file offset 0xb255d0"
!EtasOSComboBox methodsFor: 'recovered'!
wmDrawChild: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := drawItems.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) itemID.
    recoveredValue3 := [].
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := (self) owner.
    recoveredBlock12Value3 := (recoveredBlock12Value2) fontList.
    recoveredBlock12Value4 := (recoveredBlock12Value0) drawChildOn: (self) with: (recoveredBlock12Value1) font: (recoveredBlock12Value3).
    recoveredBlock12Value4
].
    (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3) ifPresent: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2028b678; bytecode file offset 0xb87f4c"
!EtasOSComboBox methodsFor: 'recovered'!
text
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ownerDrawn.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := drawItems.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectedIndex.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [
    ''
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := [:block280e1f30Arg1 | 
    | block280e1f30Value0 block280e1f30Value1 |
    block280e1f30Value0 := block280e1f30Arg1.
    block280e1f30Value1 := (block280e1f30Value0) asString.
    block280e1f30Value1
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := super text.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204430b0; bytecode file offset 0xd3f9a4"
!EtasOSComboBox methodsFor: 'recovered'!
contents: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ownerDrawn.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            drawItems := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 |
    (self) removeAll.
    recoveredBlock15Value0 := recoveredArg1.
    recoveredBlock15Value1 := [:recoveredBlock15Block27Arg1 | 
    | recoveredBlock15Block27Stack0 recoveredBlock15Block27Stack1 recoveredBlock15Block27Stack2 recoveredBlock15Block27Stack3 recoveredBlock15Block27Stack4 recoveredBlock15Block27Stack5 recoveredBlock15Block27PC recoveredBlock15Block27Step recoveredBlock15Block27Done recoveredBlock15Block27Result |
    recoveredBlock15Block27Stack0 := self.
    recoveredBlock15Block27PC := 34.
    recoveredBlock15Block27Done := false.
    [recoveredBlock15Block27Done not] whileTrue: [
        recoveredBlock15Block27Step := recoveredBlock15Block27PC.
        recoveredBlock15Block27Step = 34 ifTrue: [
            recoveredBlock15Block27Stack1 := recoveredBlock15Block27Arg1.
            recoveredBlock15Block27PC := 35.
        ].
        recoveredBlock15Block27Step = 35 ifTrue: [
            recoveredBlock15Block27Stack1 := (recoveredBlock15Block27Stack1) isInteger.
            recoveredBlock15Block27PC := 36.
        ].
        recoveredBlock15Block27Step = 36 ifTrue: [
            (recoveredBlock15Block27Stack1) ifTrue: [recoveredBlock15Block27PC := 40] ifFalse: [recoveredBlock15Block27PC := 44].
        ].
        recoveredBlock15Block27Step = 40 ifTrue: [
            recoveredBlock15Block27Stack1 := self.
            recoveredBlock15Block27PC := 41.
        ].
        recoveredBlock15Block27Step = 41 ifTrue: [
            recoveredBlock15Block27Stack1 := (recoveredBlock15Block27Stack1) errorItemIsInvalid.
            recoveredBlock15Block27PC := 43.
        ].
        recoveredBlock15Block27Step = 43 ifTrue: [
            ^recoveredBlock15Block27Stack1
        ].
        recoveredBlock15Block27Step = 44 ifTrue: [
            recoveredBlock15Block27Stack1 := handle.
            recoveredBlock15Block27PC := 46.
        ].
        recoveredBlock15Block27Step = 46 ifTrue: [
            recoveredBlock15Block27Stack2 := CbAddstring.
            recoveredBlock15Block27PC := 48.
        ].
        recoveredBlock15Block27Step = 48 ifTrue: [
            recoveredBlock15Block27Stack3 := 0.
            recoveredBlock15Block27PC := 50.
        ].
        recoveredBlock15Block27Step = 50 ifTrue: [
            recoveredBlock15Block27Stack4 := recoveredBlock15Block27Arg1.
            recoveredBlock15Block27PC := 51.
        ].
        recoveredBlock15Block27Step = 51 ifTrue: [
            recoveredBlock15Block27Stack4 := (recoveredBlock15Block27Stack4) asString.
            recoveredBlock15Block27PC := 53.
        ].
        recoveredBlock15Block27Step = 53 ifTrue: [
            recoveredBlock15Block27Stack1 := (recoveredBlock15Block27Stack1) sendMessage: (recoveredBlock15Block27Stack2) wParam: (recoveredBlock15Block27Stack3) lParam: (recoveredBlock15Block27Stack4).
            recoveredBlock15Block27PC := 56.
        ].
        recoveredBlock15Block27Step = 56 ifTrue: [
            recoveredLocal1 := recoveredBlock15Block27Stack1.
            recoveredBlock15Block27PC := 59.
        ].
        recoveredBlock15Block27Step = 59 ifTrue: [
            recoveredBlock15Block27Stack1 := recoveredLocal1.
            recoveredBlock15Block27PC := 62.
        ].
        recoveredBlock15Block27Step = 62 ifTrue: [
            recoveredBlock15Block27Stack2 := CbErrspace.
            recoveredBlock15Block27PC := 64.
        ].
        recoveredBlock15Block27Step = 64 ifTrue: [
            (recoveredBlock15Block27Stack1 ~~ recoveredBlock15Block27Stack2) ifTrue: [recoveredBlock15Block27PC := 72] ifFalse: [recoveredBlock15Block27PC := 68].
        ].
        recoveredBlock15Block27Step = 68 ifTrue: [
            recoveredBlock15Block27Stack1 := self.
            recoveredBlock15Block27PC := 69.
        ].
        recoveredBlock15Block27Step = 69 ifTrue: [
            recoveredBlock15Block27Stack1 := (recoveredBlock15Block27Stack1) errorOutOfSpace.
            recoveredBlock15Block27PC := 71.
        ].
        recoveredBlock15Block27Step = 71 ifTrue: [
            ^recoveredBlock15Block27Stack1
        ].
        recoveredBlock15Block27Step = 72 ifTrue: [
            recoveredBlock15Block27Stack1 := nil.
            recoveredBlock15Block27PC := 73.
        ].
        recoveredBlock15Block27Step = 73 ifTrue: [
            recoveredBlock15Block27Stack2 := recoveredLocal1.
            recoveredBlock15Block27PC := 76.
        ].
        recoveredBlock15Block27Step = 76 ifTrue: [
            recoveredBlock15Block27Stack3 := CbErr.
            recoveredBlock15Block27PC := 78.
        ].
        recoveredBlock15Block27Step = 78 ifTrue: [
            (recoveredBlock15Block27Stack2 ~~ recoveredBlock15Block27Stack3) ifTrue: [recoveredBlock15Block27PC := 86] ifFalse: [recoveredBlock15Block27PC := 82].
        ].
        recoveredBlock15Block27Step = 82 ifTrue: [
            recoveredBlock15Block27PC := 83.
        ].
        recoveredBlock15Block27Step = 83 ifTrue: [
            recoveredBlock15Block27Stack1 := self.
            recoveredBlock15Block27PC := 84.
        ].
        recoveredBlock15Block27Step = 84 ifTrue: [
            recoveredBlock15Block27Stack1 := (recoveredBlock15Block27Stack1) errorItemNotAdded.
            recoveredBlock15Block27PC := 86.
        ].
        recoveredBlock15Block27Step = 86 ifTrue: [
            recoveredBlock15Block27Result := recoveredBlock15Block27Stack1.
            recoveredBlock15Block27Done := true.
        ].
    ].
    recoveredBlock15Block27Result
].
    recoveredBlock15Value2 := (recoveredBlock15Value0) do: (recoveredBlock15Value1).
    recoveredBlock15Value2
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) deferRedraw: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            super contents: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

