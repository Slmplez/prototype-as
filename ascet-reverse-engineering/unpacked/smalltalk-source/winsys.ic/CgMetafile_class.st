"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x2002f16c; bytecode file offset 0xab398"
!CgMetafile class methodsFor: 'recovered'!
screen: recoveredArg1 fileName: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) widthMM.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) heightMM.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) / (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := OSHenhmetafile.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) getEnhMetaFile: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNull.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := BadName.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := OSEnhmetaheader.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := OSEnhmetaheader.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) fixedSize.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) getEnhMetaFileHeader: (recoveredStack2) lpemh: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) rclFrame.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) screen: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack2) osHmf: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := (recoveredStack3) right.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack4 := (recoveredStack4) left.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := (recoveredStack4) x.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := (recoveredStack3) rounded.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack2) width: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := (recoveredStack3) bottom.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := (recoveredStack4) top.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := (recoveredStack3) rounded.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack2) height: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) shouldNotBeFreed.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"winsys.ic method 0x20033144; bytecode file offset 0xaf370"
!CgMetafile class methodsFor: 'recovered'!
compatibleWith: recoveredArg1 x: recoveredArg2 y: recoveredArg3 width: recoveredArg4 height: recoveredArg5 description: recoveredArg6
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) screen.
    recoveredValue2 := (recoveredValue1) widthMM.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) screen.
    recoveredValue5 := (recoveredValue4) width.
    recoveredValue6 := (recoveredValue2) / (recoveredValue5).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) screen.
    recoveredValue9 := (recoveredValue8) heightMM.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) screen.
    recoveredValue12 := (recoveredValue11) height.
    recoveredValue13 := (recoveredValue9) / (recoveredValue12).
    recoveredValue14 := (recoveredValue6) @ (recoveredValue13).
    recoveredValue15 := (recoveredValue14) * (100).
    recoveredLocal2 := recoveredValue15.
    recoveredValue16 := OSRect.
    recoveredValue17 := (recoveredValue16) new.
    recoveredValue18 := recoveredValue17.
    recoveredValue19 := recoveredArg2.
    recoveredValue20 := recoveredLocal2.
    recoveredValue21 := (recoveredValue20) x.
    recoveredValue22 := (recoveredValue19) * (recoveredValue21).
    recoveredValue23 := (recoveredValue22) rounded.
    (recoveredValue18) left: (recoveredValue23).
    recoveredValue24 := recoveredValue17.
    recoveredValue25 := recoveredArg3.
    recoveredValue26 := recoveredLocal2.
    recoveredValue27 := (recoveredValue26) y.
    recoveredValue28 := (recoveredValue25) * (recoveredValue27).
    recoveredValue29 := (recoveredValue28) rounded.
    (recoveredValue24) top: (recoveredValue29).
    recoveredValue30 := recoveredValue17.
    recoveredValue31 := recoveredArg2.
    recoveredValue32 := recoveredArg4.
    recoveredValue33 := (recoveredValue31) + (recoveredValue32).
    recoveredValue34 := recoveredLocal2.
    recoveredValue35 := (recoveredValue34) x.
    recoveredValue36 := (recoveredValue33) * (recoveredValue35).
    recoveredValue37 := (recoveredValue36) rounded.
    (recoveredValue30) right: (recoveredValue37).
    recoveredValue38 := recoveredValue17.
    recoveredValue39 := recoveredArg3.
    recoveredValue40 := recoveredArg5.
    recoveredValue41 := (recoveredValue39) + (recoveredValue40).
    recoveredValue42 := recoveredLocal2.
    recoveredValue43 := (recoveredValue42) y.
    recoveredValue44 := (recoveredValue41) * (recoveredValue43).
    recoveredValue45 := (recoveredValue44) rounded.
    (recoveredValue38) bottom: (recoveredValue45).
    recoveredLocal3 := recoveredValue17.
    recoveredValue46 := recoveredArg1.
    recoveredValue47 := (recoveredValue46) server.
    recoveredValue48 := (recoveredValue47) deviceContext.
    recoveredValue49 := recoveredLocal3.
    recoveredValue50 := recoveredArg6.
    recoveredValue51 := (recoveredValue48) createEnhMetaFile: (nil) lpRect: (recoveredValue49) lpDescription: (recoveredValue50).
    recoveredLocal1 := recoveredValue51.
    recoveredValue52 := recoveredArg1.
    recoveredValue53 := (recoveredValue52) screen.
    recoveredValue54 := (self) screen: (recoveredValue53).
    recoveredValue55 := recoveredValue54.
    recoveredValue56 := recoveredLocal1.
    (recoveredValue55) handle: (recoveredValue56).
    recoveredValue57 := recoveredValue54.
    (recoveredValue57) shouldNotBeFreed.
    recoveredValue58 := recoveredValue54.
    recoveredValue59 := recoveredArg4.
    (recoveredValue58) width: (recoveredValue59).
    recoveredValue60 := recoveredValue54.
    recoveredValue61 := recoveredArg5.
    (recoveredValue60) height: (recoveredValue61).
    recoveredValue62 := recoveredValue54.
    recoveredValue63 := recoveredArg1.
    recoveredValue64 := (recoveredValue63) depth.
    (recoveredValue62) depth: (recoveredValue64).
    recoveredValue65 := (recoveredValue54) privateSetDefaultPalette.
    ^recoveredValue65
! !

