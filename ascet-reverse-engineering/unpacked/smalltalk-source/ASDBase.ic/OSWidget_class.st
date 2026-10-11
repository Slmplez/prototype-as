"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2008659c; bytecode file offset 0x982e5c"
!OSWidget class methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
interrupts: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Processor.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) enableAsyncMessages: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200afde0; bytecode file offset 0x9ac6a4"
!OSWidget class methodsFor: 'recovered'!
registerAscetWindowMessage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OS.
    recoveredValue1 := (recoveredValue0) registerWindowMessage: ('STARTASCET').
    AscetWindowMessage := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2016d6ec; bytecode file offset 0xa69fb0"
!OSWidget class methodsFor: 'recovered'!
readAndIgnore
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OSObject.
    recoveredValue1 := (recoveredValue0) interrupts: (false).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OSEventManager.
    recoveredValue3 := (recoveredValue2) nextEvent: (false).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := OSObject.
    recoveredValue5 := recoveredLocal2.
    (recoveredValue4) interrupts: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x201a9cdc; bytecode file offset 0xaa65b0"
!OSWidget class methodsFor: 'recovered'!
defaultFontExtent
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := OSLogfont.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := DefaultFont.
    recoveredValue3 := OSLogfont.
    recoveredValue4 := (recoveredValue3) fixedSize.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue2) getObject: (recoveredValue4) lpvObject: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) lfWidth.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) lfHeight.
    recoveredValue10 := (recoveredValue7) @ (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x204484c8; bytecode file offset 0xd44dcc"
!OSWidget class methodsFor: 'recovered'!
installCommWinMessage
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := PlatformConstants.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'WmCommnotify'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    68
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := EventTable.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 70.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := EventTable.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := EventTable.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) with: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            EventTable := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) eventTableAt: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := 'wmCommNotify:with:'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) eventTableAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 'wmCommNotify:with:'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := 'wrongMessage: '.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (String new: 51) at: 1 put: (Character value: 87); at: 2 put: (Character value: 105); at: 3 put: (Character value: 110); at: 4 put: (Character value: 100); at: 5 put: (Character value: 111); at: 6 put: (Character value: 119); at: 7 put: (Character value: 115); at: 8 put: (Character value: 45); at: 9 put: (Character value: 77); at: 10 put: (Character value: 101); at: 11 put: (Character value: 115); at: 12 put: (Character value: 115); at: 13 put: (Character value: 97); at: 14 put: (Character value: 103); at: 15 put: (Character value: 101); at: 16 put: (Character value: 32); at: 17 put: (Character value: 102); at: 18 put: (Character value: 252); at: 19 put: (Character value: 114); at: 20 put: (Character value: 32); at: 21 put: (Character value: 67); at: 22 put: (Character value: 111); at: 23 put: (Character value: 109); at: 24 put: (Character value: 109); at: 25 put: (Character value: 80); at: 26 put: (Character value: 111); at: 27 put: (Character value: 114); at: 28 put: (Character value: 116); at: 29 put: (Character value: 32); at: 30 put: (Character value: 119); at: 31 put: (Character value: 117); at: 32 put: (Character value: 114); at: 33 put: (Character value: 100); at: 34 put: (Character value: 101); at: 35 put: (Character value: 32); at: 36 put: (Character value: 101); at: 37 put: (Character value: 105); at: 38 put: (Character value: 110); at: 39 put: (Character value: 103); at: 40 put: (Character value: 101); at: 41 put: (Character value: 116); at: 42 put: (Character value: 114); at: 43 put: (Character value: 97); at: 44 put: (Character value: 103); at: 45 put: (Character value: 101); at: 46 put: (Character value: 110); at: 47 put: (Character value: 32); at: 48 put: (Character value: 97); at: 49 put: (Character value: 116); at: 50 put: (Character value: 58); at: 51 put: (Character value: 32); yourself.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

