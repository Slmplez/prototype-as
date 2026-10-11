"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x2000245c; bytecode file offset 0x7e620"
!EmSystemConfiguration methodsFor: 'recovered'!
resetBusyCursor
    CursorLevel := 0.
    ^self
! !

"winsys.ic method 0x2002ec70; bytecode file offset 0xaae5c"
!EmSystemConfiguration methodsFor: 'recovered'!
lockCursor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'CG'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) subsystemType: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 'MAC'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 16.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 8.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := #[124 0 146 0 17 1 17 1 113 1 1 1 1 1 130 56 124 68 0 68 0 254 0 130 0 146 0 146 0 130 0 254].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := #[124 0 254 0 255 1 255 1 255 1 255 1 255 1 254 56 124 68 0 68 0 254 0 254 0 254 0 254 0 254 0 254].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 32.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 15.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := #[0 0 0 0 0 31 0 0 192 127 0 0 224 228 0 0 176 164 1 0 24 4 3 0 56 132 3 0 12 4 6 0 12 4 6 0 28 62 7 0 12 4 6 0 12 0 6 0 56 128 3 0 24 0 3 0 176 160 241 1 224 228 248 3 192 127 28 7 0 31 12 6 0 0 12 6 0 0 255 31 0 0 255 31 0 0 3 24 0 0 3 24 0 0 227 24 0 0 227 24 0 0 67 24 0 0 195 24 0 0 3 24 0 0 255 31 0 0 255 31 0 0 0 0 0 0 0 0].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := #[0 0 0 0 0 31 0 0 192 127 0 0 224 255 0 0 240 255 1 0 248 255 3 0 248 255 3 0 252 255 7 0 252 255 7 0 252 255 7 0 252 255 7 0 252 255 7 0 248 255 3 0 248 255 3 0 240 255 241 1 224 255 248 3 192 127 28 7 0 31 12 6 0 0 12 6 0 0 255 31 0 0 255 31 0 0 255 31 0 0 255 31 0 0 255 31 0 0 255 31 0 0 255 31 0 0 255 31 0 0 255 31 0 0 255 31 0 0 255 31 0 0 0 0 0 0 0 0].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) createBitmapFromData: (recoveredStack2) width: (recoveredStack3) height: (recoveredStack4).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) createBitmapFromData: (recoveredStack2) width: (recoveredStack3) height: (recoveredStack4).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPixmapCursor: (recoveredStack2) x: (recoveredStack3) y: (recoveredStack4).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) freePixmap.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) freePixmap.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20030554; bytecode file offset 0xac750"
!EmSystemConfiguration methodsFor: 'recovered'!
showLockCursorWhile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwAppContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := CwWMShell.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) focusShell.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) lockCursor: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) defineCursor: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock56Stack0 recoveredBlock56Stack1 recoveredBlock56Stack2 recoveredBlock56Stack3 recoveredBlock56PC recoveredBlock56Step recoveredBlock56Done recoveredBlock56Result |
    recoveredBlock56Stack0 := self.
    recoveredBlock56PC := 62.
    recoveredBlock56Done := false.
    [recoveredBlock56Done not] whileTrue: [
        recoveredBlock56Step := recoveredBlock56PC.
        recoveredBlock56Step = 62 ifTrue: [
            recoveredBlock56Stack1 := recoveredLocal3.
            recoveredBlock56PC := 65.
        ].
        recoveredBlock56Step = 65 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) isDestroyed.
            recoveredBlock56PC := 67.
        ].
        recoveredBlock56Step = 67 ifTrue: [
            (recoveredBlock56Stack1) ifTrue: [recoveredBlock56PC := 105] ifFalse: [recoveredBlock56PC := 70].
        ].
        recoveredBlock56Step = 70 ifTrue: [
            recoveredBlock56Stack1 := CursorLevel.
            recoveredBlock56PC := 72.
        ].
        recoveredBlock56Step = 72 ifTrue: [
            (recoveredBlock56Stack1 == nil) ifTrue: [recoveredBlock56PC := 100] ifFalse: [recoveredBlock56PC := 76].
        ].
        recoveredBlock56Step = 76 ifTrue: [
            recoveredBlock56Stack1 := CursorLevel.
            recoveredBlock56PC := 78.
        ].
        recoveredBlock56Step = 78 ifTrue: [
            recoveredBlock56Stack2 := 0.
            recoveredBlock56PC := 80.
        ].
        recoveredBlock56Step = 80 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) > (recoveredBlock56Stack2).
            recoveredBlock56PC := 81.
        ].
        recoveredBlock56Step = 81 ifTrue: [
            (recoveredBlock56Stack1) ifTrue: [recoveredBlock56PC := 84] ifFalse: [recoveredBlock56PC := 100].
        ].
        recoveredBlock56Step = 84 ifTrue: [
            recoveredBlock56Stack1 := recoveredLocal2.
            recoveredBlock56PC := 87.
        ].
        recoveredBlock56Step = 87 ifTrue: [
            recoveredBlock56Stack2 := recoveredLocal3.
            recoveredBlock56PC := 90.
        ].
        recoveredBlock56Step = 90 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) display.
            recoveredBlock56PC := 92.
        ].
        recoveredBlock56Step = 92 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) busyCursor.
            recoveredBlock56PC := 94.
        ].
        recoveredBlock56Step = 94 ifTrue: [
            (recoveredBlock56Stack1) defineCursor: (recoveredBlock56Stack2).
            recoveredBlock56PC := 96.
        ].
        recoveredBlock56Step = 96 ifTrue: [
            recoveredBlock56PC := 105.
        ].
        recoveredBlock56Step = 100 ifTrue: [
            recoveredBlock56Stack1 := recoveredLocal2.
            recoveredBlock56PC := 103.
        ].
        recoveredBlock56Step = 103 ifTrue: [
            (recoveredBlock56Stack1) undefineCursor.
            recoveredBlock56PC := 105.
        ].
        recoveredBlock56Step = 105 ifTrue: [
            recoveredBlock56Stack1 := recoveredLocal1.
            recoveredBlock56PC := 108.
        ].
        recoveredBlock56Step = 108 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) freeCursor.
            recoveredBlock56PC := 110.
        ].
        recoveredBlock56Step = 110 ifTrue: [
            recoveredBlock56Result := recoveredBlock56Stack1.
            recoveredBlock56Done := true.
        ].
    ].
    recoveredBlock56Result
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueOnReturnDo: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20032e14; bytecode file offset 0xaf00c"
!EmSystemConfiguration methodsFor: 'recovered'!
showBusyCursorWhile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwAppContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := CwWMShell.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) focusShell.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := CursorLevel.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := CursorLevel.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            CursorLevel := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := CursorLevel.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            CursorLevel := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := CursorLevel.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) display.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) busyCursor.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) defineCursor: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock83Stack0 recoveredBlock83Stack1 recoveredBlock83Stack2 recoveredBlock83Stack3 recoveredBlock83PC recoveredBlock83Step recoveredBlock83Done recoveredBlock83Result |
    recoveredBlock83Stack0 := self.
    recoveredBlock83PC := 90.
    recoveredBlock83Done := false.
    [recoveredBlock83Done not] whileTrue: [
        recoveredBlock83Step := recoveredBlock83PC.
        recoveredBlock83Step = 90 ifTrue: [
            recoveredBlock83Stack1 := recoveredLocal2.
            recoveredBlock83PC := 93.
        ].
        recoveredBlock83Step = 93 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) isDestroyed.
            recoveredBlock83PC := 95.
        ].
        recoveredBlock83Step = 95 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 103] ifFalse: [recoveredBlock83PC := 98].
        ].
        recoveredBlock83Step = 98 ifTrue: [
            recoveredBlock83Stack1 := recoveredLocal1.
            recoveredBlock83PC := 101.
        ].
        recoveredBlock83Step = 101 ifTrue: [
            (recoveredBlock83Stack1) undefineCursor.
            recoveredBlock83PC := 103.
        ].
        recoveredBlock83Step = 103 ifTrue: [
            recoveredBlock83Stack1 := 0.
            recoveredBlock83PC := 105.
        ].
        recoveredBlock83Step = 105 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 106.
        ].
        recoveredBlock83Step = 106 ifTrue: [
            CursorLevel := recoveredBlock83Stack2.
            recoveredBlock83PC := 108.
        ].
        recoveredBlock83Step = 108 ifTrue: [
            recoveredBlock83Result := recoveredBlock83Stack1.
            recoveredBlock83Done := true.
        ].
    ].
    recoveredBlock83Result
].
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueOnReturnDo: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := [
    | block28009358Value0 block28009358Value1 block28009358Value2 |
    block28009358Value0 := CursorLevel.
    block28009358Value1 := (block28009358Value0) + (-1).
    block28009358Value2 := block28009358Value1.
    CursorLevel := block28009358Value2.
    block28009358Value1
].
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueOnReturnDo: (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

