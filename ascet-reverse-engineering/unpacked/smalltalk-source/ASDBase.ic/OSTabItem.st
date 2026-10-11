"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2026bc74; bytecode file offset 0xb68544"
!OSTabItem methodsFor: 'recovered'!
setTabGroupFocus
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) parent.
    recoveredValue1 := (recoveredValue0) owner.
    recoveredValue2 := (self) owner.
    (recoveredValue1) selectItem: (recoveredValue2) notify: (true).
    recoveredValue3 := (self) owner.
    recoveredValue4 := (recoveredValue3) userData.
    recoveredValue5 := (recoveredValue4) children.
    recoveredValue6 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) setTabItemFocus.
            recoveredBlock16PC := 26.
        ].
        recoveredBlock16Step = 26 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 30] ifFalse: [recoveredBlock16PC := 33].
        ].
        recoveredBlock16Step = 30 ifTrue: [
            recoveredBlock16PC := 31.
        ].
        recoveredBlock16Step = 31 ifTrue: [
            recoveredBlock16Stack1 := true.
            recoveredBlock16PC := 32.
        ].
        recoveredBlock16Step = 32 ifTrue: [
            ^recoveredBlock16Stack1
        ].
        recoveredBlock16Step = 33 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := (self) setTabItemFocus.
    ^recoveredValue7
! !

