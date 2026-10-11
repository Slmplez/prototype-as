"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200148a4; bytecode file offset 0x912098"
!RBOSCompositeOwnDC class methodsFor: 'recovered'!
windowClass
    | recoveredValue0 |
    recoveredValue0 := CompositeClassOwnDC.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003c934; bytecode file offset 0x9391f8"
!RBOSCompositeOwnDC class methodsFor: 'recovered'!
windowProcIsInitialized
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CompositeClassOwnDC.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cb828; bytecode file offset 0x9c80ec"
!RBOSCompositeOwnDC class methodsFor: 'recovered'!
releaseWindowProc
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OS.
    recoveredValue1 := CompositeClassOwnDC.
    recoveredValue2 := HInstance.
    (recoveredValue0) unregisterClass: (recoveredValue1) hinst: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20393674; bytecode file offset 0xc8ff7c"
!RBOSCompositeOwnDC class methodsFor: 'recovered'!
initializeWindowProc
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := HInstance.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := WindowClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := OSWndclass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) getClassInfo: (recoveredStack2) lpwc: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := CompositeClassOwnDC.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := CompositeClassOwnDC.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInFixedSpace.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'COMPOSITEOWNDC'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPSZ.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeFixed.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            CompositeClassOwnDC := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := OSStringZ.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := CompositeClassOwnDC.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := CsDblclks.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := CsBytealignclient.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := CsOwndc.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := CsHredraw.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := CsVredraw.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack2) style: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack2) lpszClassName: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) registerClass.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c7d8c; bytecode file offset 0xcc466c"
!RBOSCompositeOwnDC class methodsFor: 'recovered'!
installOnlineDLLWinMessage
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1030.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := EventTable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 1040.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := EventTable.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := EventTable.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) with: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            EventTable := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := 'wmOnlineDLLXAxisPreShift:with:'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) eventTableAt: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := 'wmOnlineDLLXAxisShift:with:'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) eventTableAt: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := 'wmOnlineDLLTriggerStart:with:'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) eventTableAt: (recoveredStack2) put: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := 'wmOnlineDLLTriggerEnd:with:'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) eventTableAt: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := 'wmOnlineDLLRecScroll:with:'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) eventTableAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

