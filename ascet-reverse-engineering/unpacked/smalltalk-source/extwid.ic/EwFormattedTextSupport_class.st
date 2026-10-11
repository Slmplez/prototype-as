"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20000028; bytecode file offset 0x50f8c"
!EwFormattedTextSupport class methodsFor: 'recovered'!
_PRAGMA_NlsCatEWc
    ^self
! !

"extwid.ic method 0x20000128; bytecode file offset 0x50f8c"
!EwFormattedTextSupport class methodsFor: 'recovered'!
_PRAGMA_EwFormatConstants
    ^self
! !

"extwid.ic method 0x200018ac; bytecode file offset 0x526c8"
!EwFormattedTextSupport class methodsFor: 'recovered'!
loaded
    (self) localize.
    ^self
! !

"extwid.ic method 0x20008c6c; bytecode file offset 0x59a44"
!EwFormattedTextSupport class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := NlsCatEWc.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    recoveredValue2 := EwError.
    (recoveredValue2) initializeErrors.
    ^self
! !

"extwid.ic method 0x20025a14; bytecode file offset 0x7680c"
!EwFormattedTextSupport class methodsFor: 'recovered'!
packagerIncludeSelectors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ('PTR') = ('8277').
    recoveredValue1 := Set.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := EwFormatConstants.
    recoveredValue4 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18Stack5 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
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
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) key.
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) size.
            recoveredBlock18PC := 30.
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18Stack3 := 3.
            recoveredBlock18PC := 32.
        ].
        recoveredBlock18Step = 32 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) > (recoveredBlock18Stack3).
            recoveredBlock18PC := 33.
        ].
        recoveredBlock18Step = 33 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 36] ifFalse: [recoveredBlock18PC := 69].
        ].
        recoveredBlock18Step = 36 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 37.
        ].
        recoveredBlock18Step = 37 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) key.
            recoveredBlock18PC := 39.
        ].
        recoveredBlock18Step = 39 ifTrue: [
            recoveredBlock18Stack3 := 1.
            recoveredBlock18PC := 41.
        ].
        recoveredBlock18Step = 41 ifTrue: [
            recoveredBlock18Stack4 := 3.
            recoveredBlock18PC := 43.
        ].
        recoveredBlock18Step = 43 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) copyFrom: (recoveredBlock18Stack3) to: (recoveredBlock18Stack4).
            recoveredBlock18PC := 45.
        ].
        recoveredBlock18Step = 45 ifTrue: [
            recoveredBlock18Stack3 := 'XmN'.
            recoveredBlock18PC := 47.
        ].
        recoveredBlock18Step = 47 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) = (recoveredBlock18Stack3).
            recoveredBlock18PC := 48.
        ].
        recoveredBlock18Step = 48 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 52] ifFalse: [recoveredBlock18PC := 69].
        ].
        recoveredBlock18Step = 52 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 53.
        ].
        recoveredBlock18Step = 53 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) value.
            recoveredBlock18PC := 55.
        ].
        recoveredBlock18Step = 55 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) isSymbol.
            recoveredBlock18PC := 57.
        ].
        recoveredBlock18Step = 57 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 60] ifFalse: [recoveredBlock18PC := 69].
        ].
        recoveredBlock18Step = 60 ifTrue: [
            recoveredBlock18PC := 61.
        ].
        recoveredBlock18Step = 61 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal1.
            recoveredBlock18PC := 64.
        ].
        recoveredBlock18Step = 64 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 65.
        ].
        recoveredBlock18Step = 65 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) value.
            recoveredBlock18PC := 67.
        ].
        recoveredBlock18Step = 67 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) add: (recoveredBlock18Stack2).
            recoveredBlock18PC := 69.
        ].
        recoveredBlock18Step = 69 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    (recoveredValue3) associationsDo: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

