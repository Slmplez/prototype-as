"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000810; bytecode file offset 0x8ffcfc"
!OSMenuItem methodsFor: 'recovered'!
calculateInternalWidths
    ^self
! !

"ASDBase.ic method 0x20003b40; bytecode file offset 0x90206c"
!OSMenuItem methodsFor: 'recovered'!
accelWidth: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200041d0; bytecode file offset 0x90206c"
!OSMenuItem methodsFor: 'recovered'!
labelWidth: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20007a18; bytecode file offset 0x908be4"
!OSMenuItem methodsFor: 'recovered'!
labelWidth
    | recoveredValue0 |
    recoveredValue0 := (self) width.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006280c; bytecode file offset 0x95f8b0"
!OSMenuItem methodsFor: 'recovered'!
getMenuItemInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) parent.
    recoveredValue1 := (self) id.
    recoveredValue2 := (recoveredValue0) getMenuItemInfoForId: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20071cc4; bytecode file offset 0x96e578"
!OSMenuItem methodsFor: 'recovered'!
accelWidth
    ^0
! !

"ASDBase.ic method 0x200ab2ac; bytecode file offset 0x9a7bf8"
!OSMenuItem methodsFor: 'recovered'!
setMenuItemInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) parent.
    recoveredValue1 := (self) id.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) setMenuItemInfoForId: (recoveredValue1) itemInfo: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d6fac; bytecode file offset 0x9d386c"
!OSMenuItem methodsFor: 'recovered'!
setMenuBitmap: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSHbitmap.
    recoveredValue1 := (recoveredValue0) immediate: (0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) setMenuBitmapChecked: (recoveredValue1) unchecked: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20114c30; bytecode file offset 0xa114f0"
!OSMenuItem methodsFor: 'recovered'!
clearMenuBitmaps
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OSHbitmap.
    recoveredValue1 := (recoveredValue0) immediate: (0).
    recoveredValue2 := OSHbitmap.
    recoveredValue3 := (recoveredValue2) immediate: (0).
    recoveredValue4 := (self) setMenuBitmapChecked: (recoveredValue1) unchecked: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x203098c8; bytecode file offset 0xc061b8"
!OSMenuItem methodsFor: 'recovered'!
setMenuItemOwnerDrawn
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasUIMenuBitmapSupportRT.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) areOwnerDrawnMenusEnabled.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMenuItemInfo.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := OSMenuiteminfo.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := OSMenuiteminfo.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) fixedSize.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) cbSize: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := MiimType.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) fMask: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) fType.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := MftOwnerdraw.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) fType: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) setMenuItemInfo: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) free.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031a148; bytecode file offset 0xc16a1c"
!OSMenuItem methodsFor: 'recovered'!
setMenuBitmapChecked: recoveredArg1 unchecked: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) getMenuItemInfo.
    recoveredValue1 := recoveredValue0.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := [
    ^false
].
    (recoveredValue0) ifNil: (recoveredValue2).
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := MiimCheckmarks.
    (recoveredValue4) fMask: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) hbmpChecked: (recoveredValue7).
    recoveredValue8 := recoveredArg2.
    (recoveredValue3) hbmpUnchecked: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := (self) setMenuItemInfo: (recoveredValue9).
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := recoveredLocal2.
    (recoveredValue11) free.
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

