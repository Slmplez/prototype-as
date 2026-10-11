"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20050520; bytecode file offset 0x94d048"
!CwWMShell methodsFor: 'recovered'!
openWidget
    (self) realizeWidget.
    ^self
! !

"ASDBase.ic method 0x200a2e90; bytecode file offset 0x99f74c"
!CwWMShell methodsFor: 'recovered'!
smallIcon: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := osWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) handle.
    (recoveredValue0) smallIcon: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20140c94; bytecode file offset 0xa3d564"
!CwWMShell methodsFor: 'recovered'!
realizeAndMap
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super realizeAndMap.
    recoveredValue0 := (self) shell.
    recoveredValue1 := (recoveredValue0) window.
    recoveredValue2 := CgIndexedPalette.
    recoveredValue3 := (recoveredValue2) etasDefault.
    (recoveredValue1) setPalette: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20323b50; bytecode file offset 0xc20434"
!CwWMShell methodsFor: 'recovered'!
abtResurface
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mapWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) deIconify.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) focusShell.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) allShells.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) parent.
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            recoveredBlock18Stack3 := self.
            recoveredBlock18PC := 29.
        ].
        recoveredBlock18Step = 29 ifTrue: [
            (recoveredBlock18Stack2 ~~ recoveredBlock18Stack3) ifTrue: [recoveredBlock18PC := 54] ifFalse: [recoveredBlock18PC := 32].
        ].
        recoveredBlock18Step = 32 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 33.
        ].
        recoveredBlock18Step = 33 ifTrue: [
            recoveredBlock18Stack3 := CwDialogShell.
            recoveredBlock18PC := 35.
        ].
        recoveredBlock18Step = 35 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) isKindOf: (recoveredBlock18Stack3).
            recoveredBlock18PC := 37.
        ].
        recoveredBlock18Step = 37 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 40] ifFalse: [recoveredBlock18PC := 54].
        ].
        recoveredBlock18Step = 40 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 41.
        ].
        recoveredBlock18Step = 41 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) mwmInputMode.
            recoveredBlock18PC := 43.
        ].
        recoveredBlock18Step = 43 ifTrue: [
            recoveredBlock18Stack3 := MWMINPUTMODELESS.
            recoveredBlock18PC := 45.
        ].
        recoveredBlock18Step = 45 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) = (recoveredBlock18Stack3).
            recoveredBlock18PC := 46.
        ].
        recoveredBlock18Step = 46 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 54] ifFalse: [recoveredBlock18PC := 50].
        ].
        recoveredBlock18Step = 50 ifTrue: [
            recoveredBlock18PC := 51.
        ].
        recoveredBlock18Step = 51 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 52.
        ].
        recoveredBlock18Step = 52 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) abtResurface.
            recoveredBlock18PC := 54.
        ].
        recoveredBlock18Step = 54 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

