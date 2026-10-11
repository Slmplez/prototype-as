"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ole.ic method 0x20000028; bytecode file offset 0xa964"
!OSTracker class methodsFor: 'recovered'!
releaseCursors
    ^self
! !

"ole.ic method 0x200005b8; bytecode file offset 0xaf0c"
!OSTracker class methodsFor: 'recovered'!
releaseWindowProc
    (self) releaseStipples.
    (self) releaseCursors.
    ^self
! !

"ole.ic method 0x200005c8; bytecode file offset 0xaf0c"
!OSTracker class methodsFor: 'recovered'!
initializeWindowProc
    (self) initializeStipples.
    (self) initializeCursors.
    ^self
! !

"ole.ic method 0x200015d4; bytecode file offset 0xbf28"
!OSTracker class methodsFor: 'recovered'!
initializeStipples
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSHbitmap.
    recoveredValue1 := (recoveredValue0) createBitmap: (8) nHeight: (8) cbPlanes: (1) cbBits: (1) lpvBits: (#[170 0 85 0 170 0 85 0 170 0 85 0 170 0 85 0]).
    StippleBitmap := recoveredValue1.
    recoveredValue2 := StippleBitmap.
    recoveredValue3 := (recoveredValue2) createPatternBrush.
    StippleBrush := recoveredValue3.
    ^self
! !

"ole.ic method 0x2000180c; bytecode file offset 0xc154"
!OSTracker class methodsFor: 'recovered'!
releaseStipples
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := StippleBrush.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := StippleBrush.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) deleteObject.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := StippleBitmap.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := StippleBitmap.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) deleteObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            StippleBrush := recoveredStack2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            StippleBitmap := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ole.ic method 0x20001c08; bytecode file offset 0xc564"
!OSTracker class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1E9LMIP'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) imageStarted.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := StippleBitmap.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) initializeStipples.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := Cursors.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) initializeCursors.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ole.ic method 0x20003820; bytecode file offset 0xe184"
!OSTracker class methodsFor: 'recovered'!
initializeCursors
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (8).
    Cursors := recoveredValue1.
    recoveredValue2 := Cursors.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := HInstanceNull.
    recoveredValue5 := IdcSizenwse.
    recoveredValue6 := (recoveredValue4) loadCursor: (recoveredValue5).
    (recoveredValue3) at: (1) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := HInstanceNull.
    recoveredValue9 := IdcSizewe.
    recoveredValue10 := (recoveredValue8) loadCursor: (recoveredValue9).
    (recoveredValue7) at: (2) put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := HInstanceNull.
    recoveredValue13 := IdcSizenesw.
    recoveredValue14 := (recoveredValue12) loadCursor: (recoveredValue13).
    (recoveredValue11) at: (3) put: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := HInstanceNull.
    recoveredValue17 := IdcSizens.
    recoveredValue18 := (recoveredValue16) loadCursor: (recoveredValue17).
    (recoveredValue15) at: (4) put: (recoveredValue18).
    recoveredValue19 := recoveredValue2.
    recoveredValue20 := HInstanceNull.
    recoveredValue21 := IdcSizens.
    recoveredValue22 := (recoveredValue20) loadCursor: (recoveredValue21).
    (recoveredValue19) at: (5) put: (recoveredValue22).
    recoveredValue23 := recoveredValue2.
    recoveredValue24 := HInstanceNull.
    recoveredValue25 := IdcSizenesw.
    recoveredValue26 := (recoveredValue24) loadCursor: (recoveredValue25).
    (recoveredValue23) at: (6) put: (recoveredValue26).
    recoveredValue27 := recoveredValue2.
    recoveredValue28 := HInstanceNull.
    recoveredValue29 := IdcSizewe.
    recoveredValue30 := (recoveredValue28) loadCursor: (recoveredValue29).
    (recoveredValue27) at: (7) put: (recoveredValue30).
    recoveredValue31 := HInstanceNull.
    recoveredValue32 := IdcSizenwse.
    recoveredValue33 := (recoveredValue31) loadCursor: (recoveredValue32).
    (recoveredValue2) at: (8) put: (recoveredValue33).
    ^self
! !

