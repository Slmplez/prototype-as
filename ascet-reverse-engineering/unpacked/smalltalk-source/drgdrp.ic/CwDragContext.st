"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"drgdrp.ic method 0x200002d0; bytecode file offset 0x5748"
!CwDragContext methodsFor: 'recovered'!
convertProc
    | recoveredValue0 |
    recoveredValue0 := xmNconvertProc.
    ^recoveredValue0
! !

"drgdrp.ic method 0x200002fc; bytecode file offset 0x576c"
!CwDragContext methodsFor: 'recovered'!
sourceCursorIcon
    | recoveredValue0 |
    recoveredValue0 := cwSourceCursorIcon.
    ^recoveredValue0
! !

"drgdrp.ic method 0x20000340; bytecode file offset 0x57a8"
!CwDragContext methodsFor: 'recovered'!
dragOperations
    | recoveredValue0 |
    recoveredValue0 := cwDragOperations.
    ^recoveredValue0
! !

"drgdrp.ic method 0x2000037c; bytecode file offset 0x57e4"
!CwDragContext methodsFor: 'recovered'!
exportTargets
    | recoveredValue0 |
    recoveredValue0 := cwExportTargets.
    ^recoveredValue0
! !

"drgdrp.ic method 0x2000057c; bytecode file offset 0x59ec"
!CwDragContext methodsFor: 'recovered'!
convertProc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNconvertProc := recoveredValue0.
    (self) updateConvertProc.
    ^self
! !

"drgdrp.ic method 0x20000694; bytecode file offset 0x5af4"
!CwDragContext methodsFor: 'recovered'!
sourceCursorIcon: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cwSourceCursorIcon := recoveredValue0.
    ^self
! !

"drgdrp.ic method 0x200006a8; bytecode file offset 0x5b30"
!CwDragContext methodsFor: 'recovered'!
dragOperations: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cwDragOperations := recoveredValue0.
    ^self
! !

"drgdrp.ic method 0x20000704; bytecode file offset 0x5b6c"
!CwDragContext methodsFor: 'recovered'!
exportTargets: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cwExportTargets := recoveredValue0.
    ^self
! !

"drgdrp.ic method 0x20000894; bytecode file offset 0x5d04"
!CwDragContext methodsFor: 'recovered'!
updateConvertProc
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := cwWidget.
    recoveredValue1 := (recoveredValue0) osWidget.
    recoveredValue2 := OSxConvertProc.
    (recoveredValue1) replace: (recoveredValue2) with: ('callConvertProc:').
    ^self
! !

"drgdrp.ic method 0x200009e0; bytecode file offset 0x5e54"
!CwDragContext methodsFor: 'recovered'!
dropTransferStart: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := CwDropTransfer.
    recoveredValue1 := CwDropSite.
    recoveredValue2 := (recoveredValue1) currentWidget.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) for: (recoveredValue2) argBlock: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := CwDropSite.
    (recoveredValue5) cleanUp.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"drgdrp.ic method 0x20000bc0; bytecode file offset 0x6060"
!CwDragContext methodsFor: 'recovered'!
initializeResources
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    super initializeResources.
    recoveredValue0 := XmDROPMOVE.
    recoveredValue1 := XmDROPCOPY.
    recoveredValue2 := (recoveredValue0) bitOr: (recoveredValue1).
    cwDragOperations := recoveredValue2.
    recoveredValue3 := Array.
    recoveredValue4 := (recoveredValue3) new.
    cwExportTargets := recoveredValue4.
    ^self
! !

"drgdrp.ic method 0x20000fa4; bytecode file offset 0x6430"
!CwDragContext methodsFor: 'recovered'!
callDeleteConvertProc
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := CwConvertProcCallbackData.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := XmCRCONVERTMESSAGE.
    (recoveredValue1) reason: (recoveredValue3).
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) with: ('DELETE').
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) first.
    (recoveredValue6) target: (recoveredValue8).
    recoveredValue9 := (self) convertProc.
    recoveredValue10 := recoveredLocal2.
    (self) callProc: (recoveredValue9) callData: (recoveredValue10).
    ^self
! !

"drgdrp.ic method 0x200011dc; bytecode file offset 0x6660"
!CwDragContext methodsFor: 'recovered'!
osCreateWidget
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwTargetTypeManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) exportTargets.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialPlatformObjectForTypes: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) osWidgetEffects.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) sourceCursorIcon.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) dragStart: (recoveredStack1) platformObject: (recoveredStack2) sourceIcon: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) callDeleteConvertProc.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := CwTargetTypeManager.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) cleanUp.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"drgdrp.ic method 0x200017a0; bytecode file offset 0x6c2c"
!CwDragContext methodsFor: 'recovered'!
osWidgetEffects
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) dragOperations.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := XmDROPMOVE.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := OSxMOVE.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitOr: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) dragOperations.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := XmDROPCOPY.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := OSxCOPY.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitOr: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) dragOperations.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := XmDROPLINK.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := OSxLINK.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitOr: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) dragOperations.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := XmDROPNOOP.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := OSxNOOP.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitOr: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"drgdrp.ic method 0x20001f90; bytecode file offset 0x7448"
!CwDragContext methodsFor: 'recovered'!
callConvertProc: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwConvertProcCallbackData.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := XmCRCONVERTMESSAGE.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) reason: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) exportTargets.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := CwTargetTypeManager.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) targetTypeForID: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := CwTargetTypeManager.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) platformObject.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) exportTargetsFrom: (recoveredStack2) platformRenderObject: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := [:recoveredBlock101Arg1 | 
    | recoveredBlock101Stack0 recoveredBlock101Stack1 recoveredBlock101Stack2 recoveredBlock101Stack3 recoveredBlock101Stack4 recoveredBlock101PC recoveredBlock101Step recoveredBlock101Done recoveredBlock101Result |
    recoveredBlock101Stack0 := self.
    recoveredBlock101PC := 108.
    recoveredBlock101Done := false.
    [recoveredBlock101Done not] whileTrue: [
        recoveredBlock101Step := recoveredBlock101PC.
        recoveredBlock101Step = 108 ifTrue: [
            recoveredBlock101Stack1 := recoveredLocal4.
            recoveredBlock101PC := 111.
        ].
        recoveredBlock101Step = 111 ifTrue: [
            recoveredBlock101Stack2 := recoveredBlock101Arg1.
            recoveredBlock101PC := 112.
        ].
        recoveredBlock101Step = 112 ifTrue: [
            (recoveredBlock101Stack1) target: (recoveredBlock101Stack2).
            recoveredBlock101PC := 114.
        ].
        recoveredBlock101Step = 114 ifTrue: [
            recoveredBlock101Stack1 := self.
            recoveredBlock101PC := 115.
        ].
        recoveredBlock101Step = 115 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) convertProc.
            recoveredBlock101PC := 117.
        ].
        recoveredBlock101Step = 117 ifTrue: [
            recoveredBlock101Stack2 := recoveredLocal4.
            recoveredBlock101PC := 120.
        ].
        recoveredBlock101Step = 120 ifTrue: [
            (recoveredBlock101Stack0) callProc: (recoveredBlock101Stack1) callData: (recoveredBlock101Stack2).
            recoveredBlock101PC := 122.
        ].
        recoveredBlock101Step = 122 ifTrue: [
            recoveredBlock101Stack0 := nil.
            recoveredBlock101PC := 123.
        ].
        recoveredBlock101Step = 123 ifTrue: [
            recoveredBlock101Stack1 := recoveredLocal4.
            recoveredBlock101PC := 126.
        ].
        recoveredBlock101Step = 126 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) value.
            recoveredBlock101PC := 128.
        ].
        recoveredBlock101Step = 128 ifTrue: [
            (recoveredBlock101Stack1 == nil) ifTrue: [recoveredBlock101PC := 153] ifFalse: [recoveredBlock101PC := 132].
        ].
        recoveredBlock101Step = 132 ifTrue: [
            recoveredBlock101PC := 133.
        ].
        recoveredBlock101Step = 133 ifTrue: [
            recoveredBlock101Stack0 := CwTargetTypeManager.
            recoveredBlock101PC := 135.
        ].
        recoveredBlock101Step = 135 ifTrue: [
            recoveredBlock101Stack1 := recoveredBlock101Arg1.
            recoveredBlock101PC := 136.
        ].
        recoveredBlock101Step = 136 ifTrue: [
            recoveredBlock101Stack2 := recoveredLocal4.
            recoveredBlock101PC := 139.
        ].
        recoveredBlock101Step = 139 ifTrue: [
            recoveredBlock101Stack2 := (recoveredBlock101Stack2) value.
            recoveredBlock101PC := 141.
        ].
        recoveredBlock101Step = 141 ifTrue: [
            recoveredBlock101Stack3 := recoveredArg1.
            recoveredBlock101PC := 144.
        ].
        recoveredBlock101Step = 144 ifTrue: [
            recoveredBlock101Stack3 := (recoveredBlock101Stack3) platformObject.
            recoveredBlock101PC := 146.
        ].
        recoveredBlock101Step = 146 ifTrue: [
            recoveredBlock101Stack0 := (recoveredBlock101Stack0) convert: (recoveredBlock101Stack1) value: (recoveredBlock101Stack2) platformSpecificObject: (recoveredBlock101Stack3).
            recoveredBlock101PC := 149.
        ].
        recoveredBlock101Step = 149 ifTrue: [
            recoveredBlock101Stack1 := recoveredBlock101Stack0.
            recoveredBlock101PC := 150.
        ].
        recoveredBlock101Step = 150 ifTrue: [
            recoveredLocal5 := recoveredBlock101Stack1.
            recoveredBlock101PC := 153.
        ].
        recoveredBlock101Step = 153 ifTrue: [
            recoveredBlock101Result := recoveredBlock101Stack0.
            recoveredBlock101Done := true.
        ].
    ].
    recoveredBlock101Result
].
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack1) platformObject: (recoveredStack2).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := CwTransferMechanism.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1) reset.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

