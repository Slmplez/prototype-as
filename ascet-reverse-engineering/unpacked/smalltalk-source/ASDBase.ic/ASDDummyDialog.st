"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004fb30; bytecode file offset 0x94d048"
!ASDDummyDialog methodsFor: 'recovered'!
initializeAfterCreate
    (self) hide.
    ^self
! !

"ASDBase.ic method 0x2050eee4; bytecode file offset 0xe0b838"
!ASDDummyDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            widgetDictionary := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 recoveredBlock14Value7 recoveredBlock14Value8 recoveredBlock14Value9 recoveredBlock14Value10 recoveredBlock14Value11 recoveredBlock14Value12 recoveredBlock14Value13 recoveredBlock14Value14 recoveredBlock14Value15 recoveredBlock14Value16 recoveredBlock14Value17 recoveredBlock14Value18 recoveredBlock14Value19 recoveredBlock14Value20 recoveredBlock14Value21 recoveredBlock14Value22 recoveredBlock14Value23 recoveredBlock14Value24 recoveredBlock14Value25 recoveredBlock14Value26 recoveredBlock14Value27 recoveredBlock14Value28 recoveredBlock14Value29 recoveredBlock14Value30 recoveredBlock14Value31 recoveredBlock14Value32 recoveredBlock14Value33 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := recoveredBlock14Value0.
    recoveredBlock14Value2 := MWMINPUTFULLAPPLICATIONMODAL.
    (recoveredBlock14Value1) mwmInputMode: (recoveredBlock14Value2).
    recoveredBlock14Value3 := recoveredBlock14Value0.
    (recoveredBlock14Value3) title: ('ASCET').
    recoveredBlock14Value4 := recoveredBlock14Value0.
    recoveredBlock14Value5 := MWMDECORALL.
    recoveredBlock14Value6 := MWMDECORMINIMIZE.
    recoveredBlock14Value7 := (recoveredBlock14Value5) | (recoveredBlock14Value6).
    recoveredBlock14Value8 := MWMDECORMAXIMIZE.
    recoveredBlock14Value9 := (recoveredBlock14Value7) | (recoveredBlock14Value8).
    (recoveredBlock14Value4) mwmDecorations: (recoveredBlock14Value9).
    recoveredBlock14Value10 := recoveredBlock14Value0.
    recoveredBlock14Value11 := recoveredArg1.
    recoveredBlock14Value12 := (recoveredBlock14Value11) width.
    recoveredBlock14Value13 := recoveredArg1.
    recoveredBlock14Value14 := (recoveredBlock14Value13) x.
    recoveredBlock14Value15 := (recoveredBlock14Value12) - (recoveredBlock14Value14).
    recoveredBlock14Value16 := (recoveredBlock14Value15) / (2).
    recoveredBlock14Value17 := (recoveredBlock14Value16) asInteger.
    (recoveredBlock14Value10) x: (recoveredBlock14Value17).
    recoveredBlock14Value18 := recoveredBlock14Value0.
    recoveredBlock14Value19 := recoveredArg1.
    recoveredBlock14Value20 := (recoveredBlock14Value19) height.
    recoveredBlock14Value21 := recoveredArg1.
    recoveredBlock14Value22 := (recoveredBlock14Value21) y.
    recoveredBlock14Value23 := (recoveredBlock14Value20) - (recoveredBlock14Value22).
    recoveredBlock14Value24 := (recoveredBlock14Value23) / (2).
    recoveredBlock14Value25 := (recoveredBlock14Value24) asInteger.
    (recoveredBlock14Value18) y: (recoveredBlock14Value25).
    recoveredBlock14Value26 := recoveredBlock14Value0.
    recoveredBlock14Value27 := (self) class.
    recoveredBlock14Value28 := (recoveredBlock14Value27) minSize.
    recoveredBlock14Value29 := (recoveredBlock14Value28) x.
    (recoveredBlock14Value26) width: (recoveredBlock14Value29).
    recoveredBlock14Value30 := (self) class.
    recoveredBlock14Value31 := (recoveredBlock14Value30) minSize.
    recoveredBlock14Value32 := (recoveredBlock14Value31) y.
    recoveredBlock14Value33 := (recoveredBlock14Value0) height: (recoveredBlock14Value32).
    recoveredBlock14Value33
].
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasOleMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := 'aForm'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := [:block2810b1f0Arg1 | 
    | block2810b1f0Value0 block2810b1f0Value1 block2810b1f0Value2 block2810b1f0Value3 |
    block2810b1f0Value0 := block2810b1f0Arg1.
    block2810b1f0Value1 := CgRGBColor.
    block2810b1f0Value2 := (block2810b1f0Value1) white.
    block2810b1f0Value3 := (block2810b1f0Value0) backgroundColor: (block2810b1f0Value2).
    block2810b1f0Value3
].
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := 'aForm'.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := widgetDictionary.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

