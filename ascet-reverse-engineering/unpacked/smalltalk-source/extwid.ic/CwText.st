"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20000d98; bytecode file offset 0x52154"
!CwText methodsFor: 'recovered'!
dragDropFontStruct
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fontList.
    recoveredValue1 := (recoveredValue0) fontStruct.
    ^recoveredValue1
! !

"extwid.ic method 0x20008fd0; bytecode file offset 0x59dbc"
!CwText methodsFor: 'recovered'!
yTextInset
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) highlightThickness.
    recoveredValue1 := (self) shadowThickness.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    recoveredValue3 := (self) marginHeight.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredValue5 := (self) borderWidth.
    recoveredValue6 := (recoveredValue4) + (recoveredValue5).
    ^recoveredValue6
! !

"extwid.ic method 0x20008fe8; bytecode file offset 0x59dbc"
!CwText methodsFor: 'recovered'!
xTextInset
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) highlightThickness.
    recoveredValue1 := (self) shadowThickness.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    recoveredValue3 := (self) marginWidth.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredValue5 := (self) borderWidth.
    recoveredValue6 := (recoveredValue4) + (recoveredValue5).
    ^recoveredValue6
! !

"extwid.ic method 0x20018cf4; bytecode file offset 0x69ad8"
!CwText methodsFor: 'recovered'!
createSourceAdapter
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EwBlockSourceAdapter.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) widget: (self).
    recoveredValue3 := [
    | recoveredBlock11Local1 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) getSelection.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack0.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack0 := recoveredBlock11Local1.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            (recoveredBlock11Stack0 ~~ nil) ifTrue: [recoveredBlock11PC := 30] ifFalse: [recoveredBlock11PC := 24].
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Stack0 := #().
            recoveredBlock11PC := 26.
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack0 := Array.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack0 := (recoveredBlock11Stack0) with: (recoveredBlock11Stack1).
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack0.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    recoveredValue4 := (recoveredValue1) sourceItemsBlock: (recoveredValue3).
    ^recoveredValue4
! !

