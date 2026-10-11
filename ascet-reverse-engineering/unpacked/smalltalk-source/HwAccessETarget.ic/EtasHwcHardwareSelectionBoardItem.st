"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"HwAccessETarget.ic method 0x20000348; bytecode file offset 0xcd44"
!EtasHwcHardwareSelectionBoardItem methodsFor: 'recovered'!
hwAccess
    | recoveredValue0 |
    recoveredValue0 := hwAccess.
    ^recoveredValue0
! !

"HwAccessETarget.ic method 0x200008a0; bytecode file offset 0xd294"
!EtasHwcHardwareSelectionBoardItem methodsFor: 'recovered'!
hwAccess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hwAccess := recoveredValue0.
    ^self
! !

"HwAccessETarget.ic method 0x20000c38; bytecode file offset 0xd624"
!EtasHwcHardwareSelectionBoardItem methodsFor: 'recovered'!
instance
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hwAccess.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) hwAccess.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"HwAccessETarget.ic method 0x20000c58; bytecode file offset 0xd648"
!EtasHwcHardwareSelectionBoardItem methodsFor: 'recovered'!
initWithHwcItem: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) hwcItem: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) listName.
    (self) name: (recoveredValue2).
    ^self
! !

"HwAccessETarget.ic method 0x20000d50; bytecode file offset 0xd740"
!EtasHwcHardwareSelectionBoardItem methodsFor: 'recovered'!
iconName
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hwcItem.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'HWC_DEVICE'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) hwcItem.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) iconName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"HwAccessETarget.ic method 0x20001264; bytecode file offset 0xdc5c"
!EtasHwcHardwareSelectionBoardItem methodsFor: 'recovered'!
instanceColumnAndValueString
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) instanceValueString.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) hwcItem.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) instanceColumnName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ': '.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"HwAccessETarget.ic method 0x200031fc; bytecode file offset 0xfc10"
!EtasHwcHardwareSelectionBoardItem methodsFor: 'recovered'!
initEs1135Led
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'ES1135LED'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) hwInterfaceManager.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'ES1135-LED'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) name: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) hwInterfaceManager.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemManager.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 |
    recoveredBlock27Value0 := recoveredBlock27Arg1.
    recoveredBlock27Value1 := (recoveredBlock27Value0) refName.
    recoveredBlock27Value2 := (recoveredBlock27Value1) asUppercase.
    recoveredBlock27Value3 := recoveredLocal2.
    recoveredBlock27Value4 := (recoveredBlock27Value2) = (recoveredBlock27Value3).
    recoveredBlock27Value4
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) hwcItem: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) initWithHwcItem: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"HwAccessETarget.ic method 0x200032f0; bytecode file offset 0xfd0c"
!EtasHwcHardwareSelectionBoardItem methodsFor: 'recovered'!
hasChildren
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hwcItem.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) hwInterfaceManager.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemManager.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) hwcItem.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getChildItemsFor: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Stack0 recoveredBlock29Stack1 recoveredBlock29Stack2 recoveredBlock29Stack3 recoveredBlock29Stack4 recoveredBlock29Stack5 recoveredBlock29PC recoveredBlock29Step recoveredBlock29Done recoveredBlock29Result |
    recoveredBlock29Stack0 := self.
    recoveredBlock29PC := 36.
    recoveredBlock29Done := false.
    [recoveredBlock29Done not] whileTrue: [
        recoveredBlock29Step := recoveredBlock29PC.
        recoveredBlock29Step = 36 ifTrue: [
            recoveredBlock29Stack1 := nil.
            recoveredBlock29PC := 37.
        ].
        recoveredBlock29Step = 37 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Arg1.
            recoveredBlock29PC := 38.
        ].
        recoveredBlock29Step = 38 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) object.
            recoveredBlock29PC := 40.
        ].
        recoveredBlock29Step = 40 ifTrue: [
            (recoveredBlock29Stack2 == nil) ifTrue: [recoveredBlock29PC := 64] ifFalse: [recoveredBlock29PC := 44].
        ].
        recoveredBlock29Step = 44 ifTrue: [
            recoveredBlock29PC := 45.
        ].
        recoveredBlock29Step = 45 ifTrue: [
            recoveredBlock29Stack1 := recoveredLocal1.
            recoveredBlock29PC := 48.
        ].
        recoveredBlock29Step = 48 ifTrue: [
            recoveredBlock29Stack2 := Array.
            recoveredBlock29PC := 50.
        ].
        recoveredBlock29Step = 50 ifTrue: [
            recoveredBlock29Stack3 := recoveredBlock29Arg1.
            recoveredBlock29PC := 51.
        ].
        recoveredBlock29Step = 51 ifTrue: [
            recoveredBlock29Stack3 := (recoveredBlock29Stack3) object.
            recoveredBlock29PC := 53.
        ].
        recoveredBlock29Step = 53 ifTrue: [
            recoveredBlock29Stack3 := (recoveredBlock29Stack3) listName.
            recoveredBlock29PC := 55.
        ].
        recoveredBlock29Step = 55 ifTrue: [
            recoveredBlock29Stack4 := recoveredBlock29Arg1.
            recoveredBlock29PC := 56.
        ].
        recoveredBlock29Step = 56 ifTrue: [
            recoveredBlock29Stack4 := (recoveredBlock29Stack4) object.
            recoveredBlock29PC := 58.
        ].
        recoveredBlock29Step = 58 ifTrue: [
            recoveredBlock29Stack4 := (recoveredBlock29Stack4) refName.
            recoveredBlock29PC := 60.
        ].
        recoveredBlock29Step = 60 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) with: (recoveredBlock29Stack3) with: (recoveredBlock29Stack4).
            recoveredBlock29PC := 62.
        ].
        recoveredBlock29Step = 62 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) add: (recoveredBlock29Stack2).
            recoveredBlock29PC := 64.
        ].
        recoveredBlock29Step = 64 ifTrue: [
            recoveredBlock29Result := recoveredBlock29Stack1.
            recoveredBlock29Done := true.
        ].
    ].
    recoveredBlock29Result
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"HwAccessETarget.ic method 0x200033f0; bytecode file offset 0xfdf4"
!EtasHwcHardwareSelectionBoardItem methodsFor: 'recovered'!
instanceValueString
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) hwcItem.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) hwcItem.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) instanceValueStrings.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) hwcItem.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) instanceValues.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"HwAccessETarget.ic method 0x20004298; bytecode file offset 0x10ccc"
!EtasHwcHardwareSelectionBoardItem methodsFor: 'recovered'!
initWithHwAccess: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) hwAccess: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) asEsxxxxString.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) name: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) hwInterfaceManager.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := ASDHwAccessETarget.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) hwAccess.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) boardId.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) nameForBoardId: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUppercase.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) hwInterfaceManager.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemManager.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 recoveredBlock44Value4 |
    recoveredBlock44Value0 := recoveredBlock44Arg1.
    recoveredBlock44Value1 := (recoveredBlock44Value0) refName.
    recoveredBlock44Value2 := (recoveredBlock44Value1) asUppercase.
    recoveredBlock44Value3 := recoveredLocal2.
    recoveredBlock44Value4 := (recoveredBlock44Value2) = (recoveredBlock44Value3).
    recoveredBlock44Value4
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) hwcItem: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 113] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) initWithHwcItem: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 113].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := (recoveredStack2) instance.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) name: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"HwAccessETarget.ic method 0x20004cdc; bytecode file offset 0x11700"
!EtasHwcHardwareSelectionBoardItem methodsFor: 'recovered'!
createChildren
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) hwcItem.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) hwInterfaceManager.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemManager.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) hwcItem.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) getChildItemsFor: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Local1 recoveredBlock32Local2 recoveredBlock32Local3 recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32Stack4 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 39.
        ].
        recoveredBlock32Step = 39 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 42.
        ].
        recoveredBlock32Step = 42 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) object.
            recoveredBlock32PC := 44.
        ].
        recoveredBlock32Step = 44 ifTrue: [
            (recoveredBlock32Stack2 == nil) ifTrue: [recoveredBlock32PC := 160] ifFalse: [recoveredBlock32PC := 48].
        ].
        recoveredBlock32Step = 48 ifTrue: [
            recoveredBlock32PC := 49.
        ].
        recoveredBlock32Step = 49 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 52.
        ].
        recoveredBlock32Step = 52 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) object.
            recoveredBlock32PC := 54.
        ].
        recoveredBlock32Step = 54 ifTrue: [
            recoveredBlock32Local3 := recoveredBlock32Stack1.
            recoveredBlock32PC := 57.
        ].
        recoveredBlock32Step = 57 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Local3.
            recoveredBlock32PC := 60.
        ].
        recoveredBlock32Step = 60 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) instanceValues.
            recoveredBlock32PC := 62.
        ].
        recoveredBlock32Step = 62 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Stack1.
            recoveredBlock32PC := 63.
        ].
        recoveredBlock32Step = 63 ifTrue: [
            recoveredBlock32Local2 := recoveredBlock32Stack2.
            recoveredBlock32PC := 66.
        ].
        recoveredBlock32Step = 66 ifTrue: [
            (recoveredBlock32Stack1 == nil) ifTrue: [recoveredBlock32PC := 124] ifFalse: [recoveredBlock32PC := 70].
        ].
        recoveredBlock32Step = 70 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Local2.
            recoveredBlock32PC := 73.
        ].
        recoveredBlock32Step = 73 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) notEmpty.
            recoveredBlock32PC := 75.
        ].
        recoveredBlock32Step = 75 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 78] ifFalse: [recoveredBlock32PC := 124].
        ].
        recoveredBlock32Step = 78 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Local2.
            recoveredBlock32PC := 81.
        ].
        recoveredBlock32Step = 81 ifTrue: [
            recoveredBlock32Stack2 := [:recoveredBlock32Block81Arg1 :recoveredBlock32Block81Arg2 | 
    | recoveredBlock32Block81Local1 recoveredBlock32Block81Value0 recoveredBlock32Block81Value1 recoveredBlock32Block81Value2 recoveredBlock32Block81Value3 recoveredBlock32Block81Value4 recoveredBlock32Block81Value5 recoveredBlock32Block81Value6 recoveredBlock32Block81Value7 recoveredBlock32Block81Value8 recoveredBlock32Block81Value9 recoveredBlock32Block81Value10 |
    recoveredBlock32Block81Value0 := EtasHwcHardwareSelectionSubsystemItem.
    recoveredBlock32Block81Value1 := (recoveredBlock32Block81Value0) new.
    recoveredBlock32Block81Value2 := recoveredBlock32Block81Value1.
    recoveredBlock32Local1 := recoveredBlock32Block81Value2.
    recoveredBlock32Block81Value3 := recoveredBlock32Block81Value1.
    (recoveredBlock32Block81Value3) parent: (self).
    recoveredBlock32Block81Value4 := recoveredBlock32Block81Value1.
    recoveredBlock32Block81Value5 := recoveredBlock32Block81Arg2.
    recoveredBlock32Block81Value6 := (recoveredBlock32Block81Value5) + (-1).
    (recoveredBlock32Block81Value4) instance: (recoveredBlock32Block81Value6).
    recoveredBlock32Block81Value7 := recoveredBlock32Local3.
    (recoveredBlock32Block81Value1) initWithHwcItem: (recoveredBlock32Block81Value7).
    recoveredBlock32Block81Value8 := recoveredLocal2.
    recoveredBlock32Block81Value9 := recoveredBlock32Local1.
    recoveredBlock32Block81Value10 := (recoveredBlock32Block81Value8) add: (recoveredBlock32Block81Value9).
    recoveredBlock32Block81Value10
].
            recoveredBlock32PC := 118.
        ].
        recoveredBlock32Step = 118 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) doWithIndex: (recoveredBlock32Stack2).
            recoveredBlock32PC := 120.
        ].
        recoveredBlock32Step = 120 ifTrue: [
            recoveredBlock32PC := 148.
        ].
        recoveredBlock32Step = 124 ifTrue: [
            recoveredBlock32Stack1 := EtasHwcHardwareSelectionSubsystemItem.
            recoveredBlock32PC := 126.
        ].
        recoveredBlock32Step = 126 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) new.
            recoveredBlock32PC := 127.
        ].
        recoveredBlock32Step = 127 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Stack1.
            recoveredBlock32PC := 128.
        ].
        recoveredBlock32Step = 128 ifTrue: [
            recoveredBlock32Local1 := recoveredBlock32Stack2.
            recoveredBlock32PC := 131.
        ].
        recoveredBlock32Step = 131 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Stack1.
            recoveredBlock32PC := 132.
        ].
        recoveredBlock32Step = 132 ifTrue: [
            recoveredBlock32Stack3 := self.
            recoveredBlock32PC := 133.
        ].
        recoveredBlock32Step = 133 ifTrue: [
            (recoveredBlock32Stack2) parent: (recoveredBlock32Stack3).
            recoveredBlock32PC := 135.
        ].
        recoveredBlock32Step = 135 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Local3.
            recoveredBlock32PC := 138.
        ].
        recoveredBlock32Step = 138 ifTrue: [
            (recoveredBlock32Stack1) initWithHwcItem: (recoveredBlock32Stack2).
            recoveredBlock32PC := 140.
        ].
        recoveredBlock32Step = 140 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal2.
            recoveredBlock32PC := 143.
        ].
        recoveredBlock32Step = 143 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Local1.
            recoveredBlock32PC := 146.
        ].
        recoveredBlock32Step = 146 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) add: (recoveredBlock32Stack2).
            recoveredBlock32PC := 148.
        ].
        recoveredBlock32Step = 148 ifTrue: [
            recoveredBlock32Stack2 := nil.
            recoveredBlock32PC := 149.
        ].
        recoveredBlock32Step = 149 ifTrue: [
            recoveredBlock32Stack3 := recoveredBlock32Stack2.
            recoveredBlock32PC := 150.
        ].
        recoveredBlock32Step = 150 ifTrue: [
            recoveredBlock32Local3 := recoveredBlock32Stack3.
            recoveredBlock32PC := 153.
        ].
        recoveredBlock32Step = 153 ifTrue: [
            recoveredBlock32Stack3 := recoveredBlock32Stack2.
            recoveredBlock32PC := 154.
        ].
        recoveredBlock32Step = 154 ifTrue: [
            recoveredBlock32Local2 := recoveredBlock32Stack3.
            recoveredBlock32PC := 157.
        ].
        recoveredBlock32Step = 157 ifTrue: [
            recoveredBlock32Local1 := recoveredBlock32Stack2.
            recoveredBlock32PC := 160.
        ].
        recoveredBlock32Step = 160 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

