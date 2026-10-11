"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20003178; bytecode file offset 0x7f418"
!CwFileSelectionPrompter methodsFor: 'recovered'!
accessType
    | recoveredValue0 |
    recoveredValue0 := cwAccessType.
    ^recoveredValue0
! !

"winsys.ic method 0x200033c0; bytecode file offset 0x7f5b8"
!CwFileSelectionPrompter methodsFor: 'recovered'!
searchMask
    | recoveredValue0 |
    recoveredValue0 := cwSearchMask.
    ^recoveredValue0
! !

"winsys.ic method 0x20003430; bytecode file offset 0x7f720"
!CwFileSelectionPrompter methodsFor: 'recovered'!
searchPath
    | recoveredValue0 |
    recoveredValue0 := cwSearchPath.
    ^recoveredValue0
! !

"winsys.ic method 0x200035f8; bytecode file offset 0x7f878"
!CwFileSelectionPrompter methodsFor: 'recovered'!
fileName
    | recoveredValue0 |
    recoveredValue0 := cwFileName.
    ^recoveredValue0
! !

"winsys.ic method 0x20003700; bytecode file offset 0x7f9b8"
!CwFileSelectionPrompter methodsFor: 'recovered'!
fileExtension
    | recoveredValue0 |
    recoveredValue0 := cwFileExtension.
    ^recoveredValue0
! !

"winsys.ic method 0x200077cc; bytecode file offset 0x83a6c"
!CwFileSelectionPrompter methodsFor: 'recovered'!
accessType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cwAccessType := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200078e0; bytecode file offset 0x83bb0"
!CwFileSelectionPrompter methodsFor: 'recovered'!
searchMask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cwSearchMask := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007b28; bytecode file offset 0x83ce8"
!CwFileSelectionPrompter methodsFor: 'recovered'!
searchPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cwSearchPath := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007b68; bytecode file offset 0x83df0"
!CwFileSelectionPrompter methodsFor: 'recovered'!
fileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cwFileName := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007cd0; bytecode file offset 0x83ed0"
!CwFileSelectionPrompter methodsFor: 'recovered'!
fileExtension: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cwFileExtension := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2001a99c; bytecode file offset 0x96b7c"
!CwFileSelectionPrompter methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := XmOPEN.
    cwAccessType := recoveredValue0.
    recoveredValue1 := MxCW12.
    cwTitle := recoveredValue1.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) defaultSearchPath.
    cwSearchPath := recoveredValue3.
    cwSearchMask := '*.*'.
    cwFileExtension := ''.
    cwFileName := ''.
    ^self
! !

"winsys.ic method 0x20029830; bytecode file offset 0xa5a48"
!CwFileSelectionPrompter methodsFor: 'recovered'!
prompt
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
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
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := OSFileDialog.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) parent: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) searchMask.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) filter: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) searchPath.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) filterPath: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileExtension.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) fileExtension: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) fileName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) title.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) label: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) accessType.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := XmSAVE.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) == (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) save: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) open.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) filterPath.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) defaultSearchPath: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

