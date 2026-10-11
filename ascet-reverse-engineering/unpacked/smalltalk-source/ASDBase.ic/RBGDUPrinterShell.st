"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003c18; bytecode file offset 0x90206c"
!RBGDUPrinterShell methodsFor: 'recovered'!
selectColors: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000bedc; bytecode file offset 0x908be4"
!RBGDUPrinterShell methodsFor: 'recovered'!
getDC
    | recoveredValue0 |
    recoveredValue0 := (self) osGC.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20035934; bytecode file offset 0x934580"
!RBGDUPrinterShell methodsFor: 'recovered'!
palette
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) window.
    recoveredValue1 := (recoveredValue0) getPalette.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20070fa8; bytecode file offset 0x96d87c"
!RBGDUPrinterShell methodsFor: 'recovered'!
gc
    | recoveredValue0 |
    recoveredValue0 := gc.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200756a4; bytecode file offset 0x9757c8"
!RBGDUPrinterShell methodsFor: 'recovered'!
isPrinterShell
    ^true
! !

"ASDBase.ic method 0x2007757c; bytecode file offset 0x9757c8"
!RBGDUPrinterShell methodsFor: 'recovered'!
isValidDrawable
    ^true
! !

"ASDBase.ic method 0x200c7630; bytecode file offset 0x9c3efc"
!RBGDUPrinterShell methodsFor: 'recovered'!
gc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    gc := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d2990; bytecode file offset 0x9cf254"
!RBGDUPrinterShell methodsFor: 'recovered'!
createGC
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) window.
    recoveredValue1 := None.
    recoveredValue2 := (recoveredValue0) createGC: (recoveredValue1) values: (nil).
    recoveredValue3 := (self) gc: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d39bc; bytecode file offset 0x9d0380"
!RBGDUPrinterShell methodsFor: 'recovered'!
callMapCallback
    (self) createGC.
    super callMapCallback.
    ^self
! !

"ASDBase.ic method 0x2011a458; bytecode file offset 0xa16d18"
!RBGDUPrinterShell methodsFor: 'recovered'!
destroyWidget
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
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
            super destroyWidget.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20171c30; bytecode file offset 0xa6e4f4"
!RBGDUPrinterShell methodsFor: 'recovered'!
callDestroyCallback
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) freeGC.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            gc := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            super callDestroyCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ac478; bytecode file offset 0xaa8d40"
!RBGDUPrinterShell methodsFor: 'recovered'!
pixelNearestToColor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPalette.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) nearestPixelValue: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) whitePixel.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) blackPixel.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20237e44; bytecode file offset 0xb34748"
!RBGDUPrinterShell methodsFor: 'recovered'!
lPToDp: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := OSPoint.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) x.
    (recoveredValue2) x: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) y.
    recoveredValue7 := (recoveredValue1) y: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := gc.
    recoveredValue9 := (recoveredValue8) winHdc.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue9) lPtoDP: (recoveredValue10) cPoints: (1).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue11) x.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue13) y.
    recoveredValue15 := (recoveredValue12) @ (recoveredValue14).
    ^recoveredValue15
! !

"ASDBase.ic method 0x20237e70; bytecode file offset 0xb34748"
!RBGDUPrinterShell methodsFor: 'recovered'!
dPToLp: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := OSPoint.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) x.
    (recoveredValue2) x: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) y.
    recoveredValue7 := (recoveredValue1) y: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := gc.
    recoveredValue9 := (recoveredValue8) winHdc.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue9) dPtoLP: (recoveredValue10) cPoints: (1).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue11) x.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue13) y.
    recoveredValue15 := (recoveredValue12) @ (recoveredValue14).
    ^recoveredValue15
! !

