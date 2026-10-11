"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015a40; bytecode file offset 0x92209c"
!ASDXMLImportIssueSolverTreeDialog methodsFor: 'recovered'!
dialogTitle
    ^'Import Problems'
! !

"ASDBase.ic method 0x20085368; bytecode file offset 0x981ca4"
!ASDXMLImportIssueSolverTreeDialog methodsFor: 'recovered'!
importIssues: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) issuesTree: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x201476f8; bytecode file offset 0xa43fd4"
!ASDXMLImportIssueSolverTreeDialog methodsFor: 'recovered'!
initOn: recoveredArg1 issues: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    controller := recoveredValue0.
    recoveredValue1 := controller.
    recoveredValue2 := (recoveredValue1) mainController.
    recoveredValue3 := (recoveredValue2) userInterface.
    (self) parentWindow: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    (self) importIssues: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201dcd0c; bytecode file offset 0xad95dc"
!ASDXMLImportIssueSolverTreeDialog methodsFor: 'recovered'!
filterChanged: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super updateIssueList.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAutofixCheckBox.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetWarningCheckBox.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) set.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetInformationCheckBox.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034f688; bytecode file offset 0xc4bf6c"
!ASDXMLImportIssueSolverTreeDialog methodsFor: 'recovered'!
adjustToMinSize
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) minSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetColumnFileName.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetColumnAutofix.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) width.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20512660; bytecode file offset 0xe0ef74"
!ASDXMLImportIssueSolverTreeDialog methodsFor: 'recovered'!
initializeFilterButtons
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) issues.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block2810b508Arg1 | 
    | block2810b508Value0 block2810b508Value1 |
    block2810b508Value0 := block2810b508Arg1.
    block2810b508Value1 := (block2810b508Value0) isError.
    block2810b508Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) issues.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:block2810b52cArg1 | 
    | block2810b52cValue0 block2810b52cValue1 |
    block2810b52cValue0 := block2810b52cArg1.
    block2810b52cValue1 := (block2810b52cValue0) isWarning.
    block2810b52cValue1
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) issues.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := [:block2810b550Arg1 | 
    | block2810b550Value0 block2810b550Value1 |
    block2810b550Value0 := block2810b550Arg1.
    block2810b550Value1 := (block2810b550Value0) isInformation.
    block2810b550Value1
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) issues.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := [:block2810b574Arg1 | 
    | block2810b574Value0 block2810b574Value1 |
    block2810b574Value0 := block2810b574Arg1.
    block2810b574Value1 := (block2810b574Value0) isAutofixable.
    block2810b574Value1
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetErrorCheckBox.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := 'Errors (%1)'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetWarningCheckBox.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := 'Warnings (%1)'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetInformationCheckBox.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := 'Information (%1)'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAutofixCheckBox.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := 'Autofixes (%1)'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetErrorCheckBox.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetWarningCheckBox.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetInformationCheckBox.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 174] ifFalse: [recoveredPC := 184].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAutofixCheckBox.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack1) sensitive: (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205498d0; bytecode file offset 0xe461ec"
!ASDXMLImportIssueSolverTreeDialog methodsFor: 'recovered'!
buttonPress: recoveredArg1 clientData: recoveredArg2 event: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) columns.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block2810edfcArg1 | 
    | block2810edfcValue0 block2810edfcValue1 block2810edfcValue2 |
    block2810edfcValue0 := block2810edfcArg1.
    block2810edfcValue1 := (block2810edfcValue0) heading.
    block2810edfcValue2 := (block2810edfcValue1) = ('Autofix').
    block2810edfcValue2
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) visibleItemNodes.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 recoveredBlock38Value4 recoveredBlock38Value5 recoveredBlock38Value6 recoveredBlock38Value7 recoveredBlock38Value8 recoveredBlock38Value9 |
    recoveredBlock38Value0 := recoveredArg3.
    recoveredBlock38Value1 := (recoveredBlock38Value0) y.
    recoveredBlock38Value2 := recoveredBlock38Arg1.
    recoveredBlock38Value3 := (recoveredBlock38Value2) top.
    recoveredBlock38Value4 := recoveredBlock38Arg1.
    recoveredBlock38Value5 := (recoveredBlock38Value4) top.
    recoveredBlock38Value6 := recoveredBlock38Arg1.
    recoveredBlock38Value7 := (recoveredBlock38Value6) height.
    recoveredBlock38Value8 := (recoveredBlock38Value5) + (recoveredBlock38Value7).
    recoveredBlock38Value9 := (recoveredBlock38Value1) between: (recoveredBlock38Value3) and: (recoveredBlock38Value8).
    recoveredBlock38Value9
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := 20.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 212].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBoolean.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 212].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := (recoveredStack3) not.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOfItem: (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := (recoveredStack2) columns.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack1) refreshCell: (recoveredStack2).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetColumnAutofix.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1) updateWidget.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 190] ifFalse: [recoveredPC := 208].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetAutofixCheckBox.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := (recoveredStack1) set.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetIssueList.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetIssueList.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack1) deselectAllCells.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2058a9cc; bytecode file offset 0xe872f0"
!ASDXMLImportIssueSolverTreeDialog methodsFor: 'recovered'!
issuesTree: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := issuesTree.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            issuesTree := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Local1 recoveredBlock24Local2 recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24Stack5 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := ASDXMLImportIssuesOptions.
            recoveredBlock24PC := 32.
        ].
        recoveredBlock24Step = 32 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) instance.
            recoveredBlock24PC := 33.
        ].
        recoveredBlock24Step = 33 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 36.
        ].
        recoveredBlock24Step = 36 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) optionXMLImportIssuesAlwaysFix: (recoveredBlock24Stack2).
            recoveredBlock24PC := 38.
        ].
        recoveredBlock24Step = 38 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 42] ifFalse: [recoveredBlock24PC := 56].
        ].
        recoveredBlock24Step = 42 ifTrue: [
            recoveredBlock24Stack1 := Array.
            recoveredBlock24PC := 44.
        ].
        recoveredBlock24Step = 44 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 47.
        ].
        recoveredBlock24Step = 47 ifTrue: [
            recoveredBlock24Stack3 := true.
            recoveredBlock24PC := 48.
        ].
        recoveredBlock24Step = 48 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) with: (recoveredBlock24Stack2) with: (recoveredBlock24Stack3).
            recoveredBlock24PC := 50.
        ].
        recoveredBlock24Step = 50 ifTrue: [
            recoveredBlock24Local1 := recoveredBlock24Stack1.
            recoveredBlock24PC := 53.
        ].
        recoveredBlock24Step = 53 ifTrue: [
            recoveredBlock24PC := 88.
        ].
        recoveredBlock24Step = 56 ifTrue: [
            recoveredBlock24Stack1 := Array.
            recoveredBlock24PC := 58.
        ].
        recoveredBlock24Step = 58 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 61.
        ].
        recoveredBlock24Step = 61 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Arg1.
            recoveredBlock24PC := 64.
        ].
        recoveredBlock24Step = 64 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) verificationState.
            recoveredBlock24PC := 66.
        ].
        recoveredBlock24Step = 66 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) with: (recoveredBlock24Stack2) with: (recoveredBlock24Stack3).
            recoveredBlock24PC := 68.
        ].
        recoveredBlock24Step = 68 ifTrue: [
            recoveredBlock24Local1 := recoveredBlock24Stack1.
            recoveredBlock24PC := 71.
        ].
        recoveredBlock24Step = 71 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 74.
        ].
        recoveredBlock24Step = 74 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) isSelectable.
            recoveredBlock24PC := 76.
        ].
        recoveredBlock24Step = 76 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 88] ifFalse: [recoveredBlock24PC := 80].
        ].
        recoveredBlock24Step = 80 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Local1.
            recoveredBlock24PC := 83.
        ].
        recoveredBlock24Step = 83 ifTrue: [
            recoveredBlock24Stack2 := 2.
            recoveredBlock24PC := 85.
        ].
        recoveredBlock24Step = 85 ifTrue: [
            recoveredBlock24Stack3 := true.
            recoveredBlock24PC := 86.
        ].
        recoveredBlock24Step = 86 ifTrue: [
            (recoveredBlock24Stack1) at: (recoveredBlock24Stack2) put: (recoveredBlock24Stack3).
            recoveredBlock24PC := 88.
        ].
        recoveredBlock24Step = 88 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 91.
        ].
        recoveredBlock24Step = 91 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) isAutofixable.
            recoveredBlock24PC := 93.
        ].
        recoveredBlock24Step = 93 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 107] ifFalse: [recoveredBlock24PC := 96].
        ].
        recoveredBlock24Step = 96 ifTrue: [
            recoveredBlock24Stack1 := Array.
            recoveredBlock24PC := 98.
        ].
        recoveredBlock24Step = 98 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 101.
        ].
        recoveredBlock24Step = 101 ifTrue: [
            recoveredBlock24Stack3 := nil.
            recoveredBlock24PC := 102.
        ].
        recoveredBlock24Step = 102 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) with: (recoveredBlock24Stack2) with: (recoveredBlock24Stack3).
            recoveredBlock24PC := 104.
        ].
        recoveredBlock24Step = 104 ifTrue: [
            recoveredBlock24Local1 := recoveredBlock24Stack1.
            recoveredBlock24PC := 107.
        ].
        recoveredBlock24Step = 107 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 110.
        ].
        recoveredBlock24Step = 110 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) protoItem.
            recoveredBlock24PC := 112.
        ].
        recoveredBlock24Step = 112 ifTrue: [
            (recoveredBlock24Stack1 ~~ nil) ifTrue: [recoveredBlock24PC := 146] ifFalse: [recoveredBlock24PC := 116].
        ].
        recoveredBlock24Step = 116 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 119.
        ].
        recoveredBlock24Step = 119 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) sourceFile.
            recoveredBlock24PC := 121.
        ].
        recoveredBlock24Step = 121 ifTrue: [
            (recoveredBlock24Stack1 ~~ nil) ifTrue: [recoveredBlock24PC := 132] ifFalse: [recoveredBlock24PC := 124].
        ].
        recoveredBlock24Step = 124 ifTrue: [
            recoveredBlock24Stack1 := 'unknown file'.
            recoveredBlock24PC := 126.
        ].
        recoveredBlock24Step = 126 ifTrue: [
            recoveredBlock24Local2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 129.
        ].
        recoveredBlock24Step = 129 ifTrue: [
            recoveredBlock24PC := 142.
        ].
        recoveredBlock24Step = 132 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 135.
        ].
        recoveredBlock24Step = 135 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) sourceFile.
            recoveredBlock24PC := 137.
        ].
        recoveredBlock24Step = 137 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) fileName.
            recoveredBlock24PC := 139.
        ].
        recoveredBlock24Step = 139 ifTrue: [
            recoveredBlock24Local2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 142.
        ].
        recoveredBlock24Step = 142 ifTrue: [
            recoveredBlock24PC := 173.
        ].
        recoveredBlock24Step = 146 ifTrue: [
            recoveredBlock24Stack1 := '.'.
            recoveredBlock24PC := 148.
        ].
        recoveredBlock24Step = 148 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 151.
        ].
        recoveredBlock24Step = 151 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) protoItem.
            recoveredBlock24PC := 153.
        ].
        recoveredBlock24Step = 153 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) namespace.
            recoveredBlock24PC := 155.
        ].
        recoveredBlock24Step = 155 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) , (recoveredBlock24Stack2).
            recoveredBlock24PC := 157.
        ].
        recoveredBlock24Step = 157 ifTrue: [
            recoveredBlock24Stack2 := '/'.
            recoveredBlock24PC := 159.
        ].
        recoveredBlock24Step = 159 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) , (recoveredBlock24Stack2).
            recoveredBlock24PC := 161.
        ].
        recoveredBlock24Step = 161 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 164.
        ].
        recoveredBlock24Step = 164 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) protoItem.
            recoveredBlock24PC := 166.
        ].
        recoveredBlock24Step = 166 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) baseName.
            recoveredBlock24PC := 168.
        ].
        recoveredBlock24Step = 168 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) , (recoveredBlock24Stack2).
            recoveredBlock24PC := 170.
        ].
        recoveredBlock24Step = 170 ifTrue: [
            recoveredBlock24Local2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 173.
        ].
        recoveredBlock24Step = 173 ifTrue: [
            recoveredBlock24Stack1 := issuesTree.
            recoveredBlock24PC := 175.
        ].
        recoveredBlock24Step = 175 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Local2.
            recoveredBlock24PC := 178.
        ].
        recoveredBlock24Step = 178 ifTrue: [
            recoveredBlock24Stack3 := [
    | block281140d0Value0 block281140d0Value1 |
    block281140d0Value0 := OrderedCollection.
    block281140d0Value1 := (block281140d0Value0) new.
    block281140d0Value1
].
            recoveredBlock24PC := 180.
        ].
        recoveredBlock24Step = 180 ifTrue: [
            recoveredBlock24PC := 188.
        ].
        recoveredBlock24Step = 188 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) at: (recoveredBlock24Stack2) ifAbsent: (recoveredBlock24Stack3).
            recoveredBlock24PC := 190.
        ].
        recoveredBlock24Step = 190 ifTrue: [
            recoveredBlock24Stack2 := [:recoveredBlock24Block190Arg1 | 
    | recoveredBlock24Block190Stack0 recoveredBlock24Block190Stack1 recoveredBlock24Block190Stack2 recoveredBlock24Block190Stack3 recoveredBlock24Block190Stack4 recoveredBlock24Block190PC recoveredBlock24Block190Step recoveredBlock24Block190Done recoveredBlock24Block190Result |
    recoveredBlock24Block190Stack0 := nil.
    recoveredBlock24Block190PC := 196.
    recoveredBlock24Block190Done := false.
    [recoveredBlock24Block190Done not] whileTrue: [
        recoveredBlock24Block190Step := recoveredBlock24Block190PC.
        recoveredBlock24Block190Step = 196 ifTrue: [
            recoveredBlock24Block190Stack1 := nil.
            recoveredBlock24Block190PC := 197.
        ].
        recoveredBlock24Block190Step = 197 ifTrue: [
            recoveredBlock24Block190Stack2 := recoveredBlock24Block190Arg1.
            recoveredBlock24Block190PC := 198.
        ].
        recoveredBlock24Block190Step = 198 ifTrue: [
            recoveredBlock24Block190Stack3 := 1.
            recoveredBlock24Block190PC := 200.
        ].
        recoveredBlock24Block190Step = 200 ifTrue: [
            recoveredBlock24Block190Stack2 := (recoveredBlock24Block190Stack2) at: (recoveredBlock24Block190Stack3).
            recoveredBlock24Block190PC := 202.
        ].
        recoveredBlock24Block190Step = 202 ifTrue: [
            recoveredBlock24Block190Stack3 := recoveredBlock24Arg1.
            recoveredBlock24Block190PC := 205.
        ].
        recoveredBlock24Block190Step = 205 ifTrue: [
            (recoveredBlock24Block190Stack2 ~~ recoveredBlock24Block190Stack3) ifTrue: [recoveredBlock24Block190PC := 214] ifFalse: [recoveredBlock24Block190PC := 208].
        ].
        recoveredBlock24Block190Step = 208 ifTrue: [
            recoveredBlock24Block190PC := 209.
        ].
        recoveredBlock24Block190Step = 209 ifTrue: [
            recoveredBlock24Block190Stack1 := recoveredBlock24Block190Arg1.
            recoveredBlock24Block190PC := 210.
        ].
        recoveredBlock24Block190Step = 210 ifTrue: [
            recoveredBlock24Block190Stack2 := recoveredBlock24Block190Stack1.
            recoveredBlock24Block190PC := 211.
        ].
        recoveredBlock24Block190Step = 211 ifTrue: [
            recoveredBlock24Local1 := recoveredBlock24Block190Stack2.
            recoveredBlock24Block190PC := 214.
        ].
        recoveredBlock24Block190Step = 214 ifTrue: [
            recoveredBlock24Block190Result := recoveredBlock24Block190Stack1.
            recoveredBlock24Block190Done := true.
        ].
    ].
    recoveredBlock24Block190Result
].
            recoveredBlock24PC := 215.
        ].
        recoveredBlock24Step = 215 ifTrue: [
            (recoveredBlock24Stack1) do: (recoveredBlock24Stack2).
            recoveredBlock24PC := 217.
        ].
        recoveredBlock24Step = 217 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal1.
            recoveredBlock24PC := 220.
        ].
        recoveredBlock24Step = 220 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Local2.
            recoveredBlock24PC := 223.
        ].
        recoveredBlock24Step = 223 ifTrue: [
            recoveredBlock24Stack3 := [
    | recoveredBlock24Block223Value0 recoveredBlock24Block223Value1 recoveredBlock24Block223Value2 recoveredBlock24Block223Value3 recoveredBlock24Block223Value4 recoveredBlock24Block223Value5 |
    recoveredBlock24Block223Value0 := recoveredLocal1.
    recoveredBlock24Block223Value1 := recoveredBlock24Local2.
    recoveredBlock24Block223Value2 := OrderedCollection.
    recoveredBlock24Block223Value3 := recoveredBlock24Local1.
    recoveredBlock24Block223Value4 := (recoveredBlock24Block223Value2) with: (recoveredBlock24Block223Value3).
    recoveredBlock24Block223Value5 := (recoveredBlock24Block223Value0) at: (recoveredBlock24Block223Value1) put: (recoveredBlock24Block223Value4).
    recoveredBlock24Block223Value5
].
            recoveredBlock24PC := 246.
        ].
        recoveredBlock24Step = 246 ifTrue: [
            recoveredBlock24Stack4 := [:recoveredBlock24Block246Arg1 | 
    | recoveredBlock24Block246Value0 recoveredBlock24Block246Value1 recoveredBlock24Block246Value2 |
    recoveredBlock24Block246Value0 := recoveredBlock24Block246Arg1.
    recoveredBlock24Block246Value1 := recoveredBlock24Local1.
    recoveredBlock24Block246Value2 := (recoveredBlock24Block246Value0) add: (recoveredBlock24Block246Value1).
    recoveredBlock24Block246Value2
].
            recoveredBlock24PC := 259.
        ].
        recoveredBlock24Step = 259 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) at: (recoveredBlock24Stack2) ifAbsent: (recoveredBlock24Stack3) ifPresent: (recoveredBlock24Stack4).
            recoveredBlock24PC := 262.
        ].
        recoveredBlock24Step = 262 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            issuesTree := recoveredStack1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

