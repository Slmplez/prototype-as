"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"drgdrp.ic method 0x20000100; bytecode file offset 0x5564"
!CwDropSite methodsFor: 'recovered'!
osDestroyWidget
    (self) destroy.
    ^self
! !

"drgdrp.ic method 0x200001c8; bytecode file offset 0x5634"
!CwDropSite methodsFor: 'recovered'!
osCreateWidget
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) osWidget.
    recoveredValue1 := (recoveredValue0) dropSiteRegister.
    recoveredValue2 := (self) dropTarget: (recoveredValue1).
    ^recoveredValue2
! !

"drgdrp.ic method 0x200002e8; bytecode file offset 0x5748"
!CwDropSite methodsFor: 'recovered'!
dragProc
    | recoveredValue0 |
    recoveredValue0 := xmNdragProc.
    ^recoveredValue0
! !

"drgdrp.ic method 0x20000328; bytecode file offset 0x57a8"
!CwDropSite methodsFor: 'recovered'!
dropSiteOperations
    | recoveredValue0 |
    recoveredValue0 := cwDropSiteOperations.
    ^recoveredValue0
! !

"drgdrp.ic method 0x2000035c; bytecode file offset 0x57e4"
!CwDropSite methodsFor: 'recovered'!
importTargets
    | recoveredValue0 |
    recoveredValue0 := cwImportTargets.
    ^recoveredValue0
! !

"drgdrp.ic method 0x200003a8; bytecode file offset 0x5808"
!CwDropSite methodsFor: 'recovered'!
dropTarget
    | recoveredValue0 |
    recoveredValue0 := dropTarget.
    ^recoveredValue0
! !

"drgdrp.ic method 0x200004c4; bytecode file offset 0x595c"
!CwDropSite methodsFor: 'recovered'!
currentPlatformObject: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) currentPlatformObject: (recoveredValue1).
    ^self
! !

"drgdrp.ic method 0x200004d4; bytecode file offset 0x595c"
!CwDropSite methodsFor: 'recovered'!
currentWidget: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) currentWidget: (recoveredValue1).
    ^self
! !

"drgdrp.ic method 0x20000588; bytecode file offset 0x59ec"
!CwDropSite methodsFor: 'recovered'!
dragProc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNdragProc := recoveredValue0.
    (self) updateDragProc.
    ^self
! !

"drgdrp.ic method 0x200006c8; bytecode file offset 0x5b30"
!CwDropSite methodsFor: 'recovered'!
dropSiteOperations: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cwDropSiteOperations := recoveredValue0.
    ^self
! !

"drgdrp.ic method 0x200006e4; bytecode file offset 0x5b6c"
!CwDropSite methodsFor: 'recovered'!
importTargets: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cwImportTargets := recoveredValue0.
    ^self
! !

"drgdrp.ic method 0x20000728; bytecode file offset 0x5b88"
!CwDropSite methodsFor: 'recovered'!
dropTarget: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dropTarget := recoveredValue0.
    ^self
! !

"drgdrp.ic method 0x2000084c; bytecode file offset 0x5d04"
!CwDropSite methodsFor: 'recovered'!
updateDropProc
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := cwWidget.
    recoveredValue1 := (recoveredValue0) osWidget.
    recoveredValue2 := OSxDropProc.
    (recoveredValue1) replace: (recoveredValue2) with: ('callDropProc:').
    ^self
! !

"drgdrp.ic method 0x20000864; bytecode file offset 0x5d04"
!CwDropSite methodsFor: 'recovered'!
updateDragProc
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := cwWidget.
    recoveredValue1 := (recoveredValue0) osWidget.
    recoveredValue2 := OSxDragProc.
    (recoveredValue1) replace: (recoveredValue2) with: ('callDragProc:').
    ^self
! !

"drgdrp.ic method 0x200008dc; bytecode file offset 0x5d44"
!CwDropSite methodsFor: 'recovered'!
dropProc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNdropProc := recoveredValue0.
    (self) updateDragProc.
    (self) updateDropProc.
    ^self
! !

"drgdrp.ic method 0x20000920; bytecode file offset 0x5d90"
!CwDropSite methodsFor: 'recovered'!
destroy
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := (recoveredValue0) osWidget.
    recoveredValue2 := dropTarget.
    (recoveredValue1) dropSiteUnregister: (recoveredValue2).
    (self) dropTarget: (nil).
    ^self
! !

"drgdrp.ic method 0x20000964; bytecode file offset 0x5dcc"
!CwDropSite methodsFor: 'recovered'!
callProc: recoveredArg1 callData: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) widget.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) callWith: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"drgdrp.ic method 0x20000ad8; bytecode file offset 0x5f44"
!CwDropSite methodsFor: 'recovered'!
dropProc
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNdropProc.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) dropProc: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := xmNdropProc.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"drgdrp.ic method 0x20000be4; bytecode file offset 0x6060"
!CwDropSite methodsFor: 'recovered'!
initializeResources
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    super initializeResources.
    recoveredValue0 := XmDROPMOVE.
    recoveredValue1 := XmDROPCOPY.
    recoveredValue2 := (recoveredValue0) bitOr: (recoveredValue1).
    cwDropSiteOperations := recoveredValue2.
    recoveredValue3 := Array.
    recoveredValue4 := (recoveredValue3) new.
    cwImportTargets := recoveredValue4.
    ^self
! !

"drgdrp.ic method 0x20000e50; bytecode file offset 0x62cc"
!CwDropSite methodsFor: 'recovered'!
callDropLeave
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := DropData.
    recoveredLocal1 := recoveredValue0.
    DropData := nil.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := XmCRDROPSITELEAVEMESSAGE.
    (recoveredValue2) reason: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := XmDROPNOOP.
    (recoveredValue4) operation: (recoveredValue5).
    recoveredValue6 := XmDROPNOOP.
    (recoveredValue1) operations: (recoveredValue6).
    recoveredValue7 := xmNdragProc.
    recoveredValue8 := recoveredLocal1.
    (self) callProc: (recoveredValue7) callData: (recoveredValue8).
    ^self
! !

"drgdrp.ic method 0x2000108c; bytecode file offset 0x6508"
!CwDropSite methodsFor: 'recovered'!
eventOpFrom: recoveredArg1
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
            recoveredStack2 := XmDROPMOVE.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := OSxMOVE.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := XmDROPCOPY.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := OSxCOPY.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := XmDROPLINK.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := OSxLINK.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := OSxNOOP.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"drgdrp.ic method 0x20001234; bytecode file offset 0x66b4"
!CwDropSite methodsFor: 'recovered'!
operationFrom: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) operation.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := OSxMOVE.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := XmDROPMOVE.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) operation.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := OSxCOPY.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := XmDROPCOPY.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) operation.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := OSxLINK.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := XmDROPLINK.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := XmDROPNOOP.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"drgdrp.ic method 0x20001288; bytecode file offset 0x671c"
!CwDropSite methodsFor: 'recovered'!
dropSiteUnregister
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    (self) dropProc: (nil).
    (self) dragProc: (nil).
    recoveredValue0 := (self) widget.
    recoveredValue1 := (recoveredValue0) osWidget.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := OSxDragProc.
    (recoveredValue2) unhook: (recoveredValue3) with: ('callDragProc:').
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := OSxDropProc.
    (recoveredValue4) unhook: (recoveredValue5) with: ('callDropProc:').
    recoveredValue6 := (self) dropTarget.
    (recoveredValue1) dropSiteUnregister: (recoveredValue6).
    (self) dropTarget: (nil).
    (self) widget: (nil).
    ^self
! !

"drgdrp.ic method 0x2000149c; bytecode file offset 0x6914"
!CwDropSite methodsFor: 'recovered'!
firstIntersection: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) dropSiteOperations.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := XmDROPMOVE.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := XmDROPMOVE.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := XmDROPCOPY.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := XmDROPCOPY.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := XmDROPLINK.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := XmDROPLINK.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := XmDROPNOOP.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"drgdrp.ic method 0x20001620; bytecode file offset 0x6aa8"
!CwDropSite methodsFor: 'recovered'!
eventOpsFrom: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := XmDROPMOVE.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := OSxMOVE.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := XmDROPCOPY.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := OSxCOPY.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := XmDROPLINK.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := OSxLINK.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := XmDROPNOOP.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := OSxNOOP.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"drgdrp.ic method 0x20001720; bytecode file offset 0x6bac"
!CwDropSite methodsFor: 'recovered'!
operationsFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) operations.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := OSxMOVE.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := XmDROPMOVE.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := OSxCOPY.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := XmDROPCOPY.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := OSxLINK.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := XmDROPLINK.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := OSxNOOP.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := XmDROPNOOP.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"drgdrp.ic method 0x20002358; bytecode file offset 0x7898"
!CwDropSite methodsFor: 'recovered'!
callDropProc: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            LastOperation := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) currentWidget: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) callDropLeave.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) platformObject.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) currentPlatformObject: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsFrom: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationFrom: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := XmDROPNOOP.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) firstIntersection: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := CwTargetTypeManager.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) exportTargets.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) platformObject.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportTargetsFrom: (recoveredStack1) platformSpecificObject: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := CwDragContext.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := CwDragContext.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) dragOperations: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := CwDragContext.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) current: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) exportTargets: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) toWidget: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := XmDROPNOOP.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := XmDROPSITEINVALID.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredPC := 138.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := XmDROPSITEVALID.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) exportTargets.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := [:recoveredBlock145Arg1 | 
    | recoveredBlock145Value0 recoveredBlock145Value1 recoveredBlock145Value2 |
    recoveredBlock145Value0 := (self) importTargets.
    recoveredBlock145Value1 := recoveredBlock145Arg1.
    recoveredBlock145Value2 := (recoveredBlock145Value0) includes: (recoveredBlock145Value1).
    recoveredBlock145Value2
].
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack0) exportTargets: (recoveredStack1).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportTargets.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 175].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := XmDROPSITEINVALID.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := CwDropProcCallbackData.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := XmCRDROPMESSAGE.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) reason: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack1) dragContext: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack1) operation: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack1) operations: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack1) dropSiteStatus: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack1) x: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack1) y: (recoveredStack2).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := XmDROP.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredPC := 242.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := XmDROPHELP.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack0) dropAction: (recoveredStack1).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := xmNdropProc.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack0) callProc: (recoveredStack1) callData: (recoveredStack2).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) dropSiteStatus.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := XmDROPSITEVALID.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack0) dropSiteStatus: (recoveredStack1).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := (recoveredStack2) operations.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := (recoveredStack1) eventOpsFrom: (recoveredStack2).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack0) operations: (recoveredStack1).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack2 := (recoveredStack2) operation.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := (recoveredStack1) eventOpFrom: (recoveredStack2).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            (recoveredStack0) operation: (recoveredStack1).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := XmDROPMOVE.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 312] ifFalse: [recoveredPC := 294].
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := CwDropTransfer.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 312] ifFalse: [recoveredPC := 302].
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := CwDropTransfer.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := (recoveredStack1) delete.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack0) data: (recoveredStack1).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack0 := CwDropTransfer.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            (recoveredStack0) cleanUp.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"drgdrp.ic method 0x20002748; bytecode file offset 0x7c84"
!CwDropSite methodsFor: 'recovered'!
callDragProc: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) currentWidget: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsFrom: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationFrom: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := XmDROPNOOP.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) firstIntersection: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := CwDragContext.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := CwDragContext.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) dragOperations: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := CwDragContext.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) current: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := CwTargetTypeManager.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) exportTargets.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := (recoveredStack3) platformObject.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) exportTargetsFrom: (recoveredStack2) platformSpecificObject: (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) exportTargets: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := LastOperation.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            LastOperation := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := LastOperation.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := XmCROPERATIONCHANGEDMESSAGE.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) operation.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            LastOperation := recoveredStack0.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) data.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := OSxDropSiteEnter.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := OSxDropSiteEnter.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := XmCRDROPSITEENTERMESSAGE.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredPC := 188.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := OSxDropSiteLeave.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := OSxDropSiteLeave.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := XmCRDROPSITELEAVEMESSAGE.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredPC := 188.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := OSxOperationChanged.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := OSxOperationChanged.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := XmCROPERATIONCHANGEDMESSAGE.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredPC := 188.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := XmCRDRAGMOTIONMESSAGE.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := XmDROPNOOP.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := XmDROPSITEINVALID.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredPC := 204.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := XmDROPSITEVALID.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) exportTargets.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := [:recoveredBlock211Arg1 | 
    | recoveredBlock211Value0 recoveredBlock211Value1 recoveredBlock211Value2 |
    recoveredBlock211Value0 := (self) importTargets.
    recoveredBlock211Value1 := recoveredBlock211Arg1.
    recoveredBlock211Value2 := (recoveredBlock211Value0) includes: (recoveredBlock211Value1).
    recoveredBlock211Value2
].
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack0) exportTargets: (recoveredStack1).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportTargets.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 241].
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := XmDROPSITEINVALID.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := (recoveredStack0) toWidget: (recoveredStack1).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack0 := CwDragProcCallbackData.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            (recoveredStack1) reason: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            (recoveredStack1) dragContext: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack1) operation: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            (recoveredStack1) operations: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            (recoveredStack1) dropSiteStatus: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            (recoveredStack1) x: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack1) y: (recoveredStack2).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            (recoveredStack0) animate: (recoveredStack1).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack1 := XmCRDROPSITELEAVEMESSAGE.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 320] ifFalse: [recoveredPC := 328].
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            DropData := recoveredStack0.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredPC := 331.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            DropData := recoveredStack0.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack0 := (recoveredStack0) dragProc.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 345] ifFalse: [recoveredPC := 338].
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := xmNdragProc.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            (recoveredStack0) callProc: (recoveredStack1) callData: (recoveredStack2).
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := (recoveredStack1) dropSiteStatus.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack2 := XmDROPSITEVALID.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            (recoveredStack0) dropSiteStatus: (recoveredStack1).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack2 := (recoveredStack2) operations.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack1 := (recoveredStack1) eventOpsFrom: (recoveredStack2).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            (recoveredStack0) operations: (recoveredStack1).
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack2 := (recoveredStack2) operation.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := (recoveredStack1) eventOpFrom: (recoveredStack2).
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            (recoveredStack0) operation: (recoveredStack1).
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

